#! /usr/bin/env chibi-scheme

(import (scheme base)
        (scheme read)
        (scheme write)
        (srfi 95))

(define (writeln x)
  (write x)
  (newline))

(define (read-all)
  (let loop ((forms '()))
    (let ((form (read)))
      (if (eof-object? form)
          (reverse forms)
          (loop (cons form forms))))))

(define (symbols x)
  (cond ((pair? x) (append (symbols (car x)) (symbols (cdr x))))
        ((symbol? x) (list x))
        (else '())))

(define (symbols<? a b)
  (cond ((null? a) #t)
        ((null? b) #f)
        ((equal? (car a) (car b)) (symbols<? (cdr a) (cdr b)))
        (else (string<? (symbol->string (car a)) (symbol->string (car b))))))

(define (map<? alter less?)
  (lambda (a b) (less? (alter a) (alter b))))

(for-each writeln (sort (read-all) (map<? symbols symbols<?)))
