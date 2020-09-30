(import (scheme base) (scheme char) (scheme file)
        (scheme read) (scheme write))
(import (srfi 1) (srfi 13) (srfi 132) (srfi 193) (srfi 69))
(import (gauche base) (gauche process) (file util) (rfc http) (rfc json))

;;

(define (read-all)
  (let loop ((xs '()))
    (let ((x (read)))
      (if (eof-object? x) (reverse xs) (loop (cons x xs))))))

(define (scm-file? path)
  (and (not (string-prefix? "." (sys-basename path)))
       (string-suffix? ".scm" path)))

(define schemes-dir (string-append (script-directory) "../schemes/"))

(define (list-implementations)
  (list-sort string-ci<?
             (map path-sans-extension
                  (directory-list schemes-dir :filter scm-file?))))

(define (implementation-data impl)
  (let ((filename (string-append schemes-dir impl ".scm")))
    (with-input-from-file filename read-all)))

;;

(define (get-parent-ids data)
  (fold (lambda (form parents)
          (if (eq? 'based-on (car form))
              (append parents (cdr form))
              parents))
        '() data))

(define (displayln x) (display x) (newline))

(define (write-graphviz implementations)
  (let ((titles (make-hash-table 'equal?)))
    (for-each (lambda (impl-id)
                (let* ((data  (implementation-data impl-id))
                       (title (cadr (or (assoc 'title data) '(#f #f)))))
                  (when title
                    (hash-table-set! titles impl-id title))))
              implementations)
    (displayln "digraph {")
    (displayln "  graph [ rankdir=LR ];")
    (for-each (lambda (impl-id)
                (let* ((data (implementation-data impl-id))
                       (parent-ids (get-parent-ids data)))
                  (unless (null? parent-ids)
                    (let ((impl-title (hash-table-ref titles impl-id)))
                      (for-each (lambda (parent-id)
                                  (let ((parent-title
                                         (hash-table-ref titles parent-id)))
                                    (display "  ")
                                    (write parent-title)
                                    (display " -> ")
                                    (write impl-title)
                                    (displayln ";")))
                                parent-ids)))))
              implementations)
    (displayln "}")))

(define (main) (write-graphviz (list-implementations)))

(main)
