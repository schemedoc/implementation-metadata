#! /usr/bin/env lila
#;
(declare-file
  (language scheme 7)
  (implementations gauche))

(cond-expand
  (gauche
   (use file.util)
   (use rfc.json)))

;;

(define (read-all)
  (let loop ((xs '()))
    (let ((x (read)))
      (if (eof-object? x) xs (loop (append xs (list x)))))))

(define (map-string-chars transform-char s)
  (let loop ((chars '()) (cs (string->list s)))
    (if (null? cs)
        (list->string chars)
        (loop (append chars (list (transform-char (car cs))))
              (cdr cs)))))

;;

(define (filename-implementation-id scm-filename)
  (let-values (((_ implementation-id _) (decompose-path scm-filename)))
    implementation-id))

(define (char->identifier-char c)
  (if (or (char-alphabetic? c) (char-numeric? c)) c #\_))

(define (get-one raw key-symbol)
  (let ((key-string
         (map-string-chars char->identifier-char (symbol->string key-symbol)))
        (raw-entry (assoc key-symbol raw)))
    (if (list? raw-entry)
        (list (cons key-string (cadr raw-entry)))
        '())))

(define (implementation->alist scm-filename)
  (let ((raw (with-input-from-file scm-filename read-all)))
    (append (list (cons "id" (filename-implementation-id scm-filename)))
            (get-one raw 'title)
            (get-one raw 'homepage-url)
            (get-one raw 'wikipedia-url))))

(construct-json (list->vector (map implementation->alist (glob "../*.scm"))))
