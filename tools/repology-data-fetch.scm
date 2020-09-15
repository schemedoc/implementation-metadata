#! /usr/bin/env gosh

(import (scheme base) (scheme char) (scheme file)
        (scheme read) (scheme write))
(import (srfi 1) (srfi 13) (srfi 132) (srfi 193))
(import (gauche base) (gauche process) (file util) (rfc http) (rfc json))

(define (read-all)
  (let loop ((xs '()))
    (let ((x (read)))
      (if (eof-object? x) (reverse xs) (loop (cons x xs))))))

(define (http-get host path)
  (let* ((url (string-append "https://" host path))
         (curl (run-process `("curl" "--fail" "--silent" "--show-error" ,url)
                            :redirects '((> 1 stdout))))
         (body (port->string (process-output curl 'stdout))))
    (process-wait curl :error-on-nonzero-status #t)
    (values "200" '() body)))

(define (get-repology-json project)
  (receive (status header body)
      (http-get "repology.org"
                (string-append "/api/v1/project/" project))
    (unless (equal? "200" status) (error "HTTP fail" status))
    (parse-json-string body)))

(define (scm-file? path)
  (and (not (string-prefix? "." (sys-basename path)))
       (string-suffix? ".scm" path)))

(define (list-implementations)
  (let ((dir (string-append (script-directory) "..")))
    (list-sort string-ci<?
               (map path-sans-extension
                    (directory-list dir :filter scm-file?)))))

(define (implementation-data impl)
  (let ((filename (string-append (script-directory) "../" impl ".scm")))
    (with-input-from-file filename read-all)))

(define (repology-project form)
  (and (pair? form)
       (eq? 'repology (car form))
       (or (and (list? form) (= 2 (length form)))
           (error "Bad (repology ...) form" form))
       (let ((project (list-ref form 1)))
         (or (string? project) (error "Not a string" form))
         project)))

(let ((data (map (lambda (project) (cons project (get-repology-json project)))
                 (filter-map repology-project
                             (append-map implementation-data
                                         (list-implementations))))))
  (with-output-to-file "repology-data.scm"
    (lambda () (write data) (newline))))
