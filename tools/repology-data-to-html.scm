#! /usr/bin/env gosh

(import (scheme base) (scheme char) (scheme file)
        (scheme read) (scheme write))
(import (srfi 1) (srfi 13) (srfi 132) (srfi 193))
(import (gauche base) (sxml serializer))
(import (srfi 69))

(define (disp . xs) (for-each display xs) (newline))
(define (writeln x) (write x) (newline))
(define (assoc? key alist) (cdr (or (assoc key alist) '(#f #f))))

(define data (with-input-from-file "repology-data.scm" read))

(define project-repo-names (make-hash-table equal?))

(define implementations
  (for-each (lambda (project-data)
              (let ((project (car project-data)))
                (cons project
                      (for-each (lambda (x)
                                  (let ((repo (assoc? "repo" x))
                                        (name (assoc? "visiblename" x)))
                                    (hash-table-update!/default
                                     project-repo-names
                                     project
                                     (lambda (repo-names)
                                       (hash-table-set! repo-names
                                                        repo
                                                        name)
                                       repo-names)
                                     (make-hash-table equal?))))
                                (vector->list (cdr project-data))))))
            data))

(define projects
  (list-sort string-ci<?
             (hash-table-keys project-repo-names)))

(define repo-counts
  (hash-table-fold project-repo-names
                   (lambda (project repo-names repo-counts)
                     (let ((project-repos (hash-table-keys repo-names)))
                       (for-each (lambda (repo)
                                   (hash-table-update!/default
                                    repo-counts
                                    repo
                                    (lambda (count) (+ count 1))
                                    0))
                                 project-repos)
                       repo-counts))
                   (make-hash-table equal?)))

(define repos
  (list-sort
   (lambda (a b)
     (let ((a-count (hash-table-ref repo-counts a))
           (b-count (hash-table-ref repo-counts b)))
       (if (= a-count b-count)
           (string-ci<? a b)
           (> a-count b-count))))
   (hash-table-keys repo-counts)))

(define (project-repo-name project repo)
  (let ((names (hash-table-ref project-repo-names project)))
    (hash-table-ref/default names repo #f)))

(define (generate-sxml)
  (define (pkg-tds pkg)
    `((td ,(list-ref pkg 0))
      (td ,(list-ref pkg 1))))
  `(html
    (head
     (title "Repology data")
     (style ,(string-append
              "table, td, th { border: 1px solid black; }"
              "td { vertical-align: top }"
              "td.canonical { background-color: lightgreen; }"
              "td.noncanonical { background-color: pink; }"
              "td.missing { }")))
    (body
     (h1 "Repology data")
     (table
      (tr (th "")
          ,@(map (lambda (project) `(th ,project))
                 projects))
      ,@(map (lambda (repo)
               `(tr (td ,repo)
                    ,@(map (lambda (project)
                             (let* ((name (or (project-repo-name project repo)
                                              ""))
                                    (class (cond ((string=? name "")
                                                  "missing")
                                                 ((string=? name project)
                                                  "canonical")
                                                 (else
                                                  "noncanonical"))))
                               `(td (@ (class ,class))
                                    ,(or name ""))))
                           projects)))
             repos)))))

(let ((sxml (generate-sxml)))
  (with-output-to-file "repology-data.html"
    (lambda () (srl:sxml->html sxml (current-output-port)))))
