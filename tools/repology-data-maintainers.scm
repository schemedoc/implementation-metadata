#! /usr/bin/env gosh

(import (scheme base)
        (scheme char)
        (scheme file)
        (scheme read)
        (scheme write)
        (srfi 1)
        (srfi 69)
        (srfi 132))

(define (disp . xs) (for-each display xs) (newline))

(define (alist-ref/default alist key default)
  (let ((pair (assoc key alist)))
    (if pair (cdr pair) default)))

(define data (with-input-from-file "repology-data.scm" read))

(define repo->maintainers (make-hash-table))

(for-each
 (lambda (project)
   (for-each
    (lambda (alist)
      (let ((project-name
             (car project))
            (repo-name
             (alist-ref/default alist "repo" #f))
            (maintainers
             (vector->list (alist-ref/default alist "maintainers"
                                              (vector)))))
        (for-each (lambda (maintainer)
                    (hash-table-update!/default
                     repo->maintainers
                     repo-name
                     (lambda (existing)
                       (list-delete-neighbor-dups
                        string=?
                        (list-sort
                         string-ci<?
                         (append existing
                                 (list (string-append project-name " "
                                                      maintainer))))))
                     '()))
                  maintainers)))
    (vector->list (cdr project))))
 data)
(for-each (lambda (project-name)
            (disp project-name)
            (for-each (lambda (maintainer)
                        (disp "  " maintainer))
                      (hash-table-ref repo->maintainers project-name))
            (newline))
          (list-sort string-ci<? (hash-table-keys repo->maintainers)))
