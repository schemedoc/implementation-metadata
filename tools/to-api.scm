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

(define (key-symbol->string key-symbol optional-key-string)
  (if (not (null? optional-key-string))
      (car optional-key-string)
      (map-string-chars char->identifier-char (symbol->string key-symbol))))

(define (get-one raw key-symbol . optional-key-string)
  (let ((key-string (key-symbol->string key-symbol optional-key-string))
        (raw-entry (assoc key-symbol raw)))
    (if (list? raw-entry)
        (list (cons key-string (cadr raw-entry)))
        '())))

(define (get-one+ raw key-symbol combine . optional-key-string)
  (let ((key-string (key-symbol->string key-symbol optional-key-string))
        (raw-entry (assoc key-symbol raw)))
    (if (list? raw-entry)
        (list (cons key-string (apply combine (cdr raw-entry))))
        '())))

(define (get-all raw key-symbol . optional-key-string)
  (cons (key-symbol->string key-symbol optional-key-string)
        (map cdr (filter (lambda (acons) (equal? key-symbol (car acons)))
                         raw))))

(define (map-all raw key-symbol key-string mapfun)
  (let ((all (get-all raw key-symbol key-string)))
    (list (cons key-string (list->vector (map mapfun (cdr all)))))))

(define (mailing-list->json mailing-list)
  (append (get-one mailing-list 'name "id")
          (get-one mailing-list 'name)
          (get-one+ mailing-list 'list-address
                    (lambda (mailbox domain) (string-append mailbox "@" domain))
                    "email_address")
          (get-one mailing-list 'archive-url "archive_web_url")
          (get-one mailing-list 'instructions-url "instructions_web_url")))

(define (release->json release)
  (let ((raw (cdr release)))
    (get-all raw 'library "libraries")))

(define (implementation->alist scm-filename)
  (let ((raw (with-input-from-file scm-filename read-all)))
    (append (list (cons "id" (filename-implementation-id scm-filename)))
            (get-one raw 'title "full_title")
            (get-one raw 'homepage-url)
            (get-one raw 'wikipedia-url)
            (map-all raw 'mailing-list "mailing_lists" mailing-list->json)
            #; (map-all raw 'releases "releases" release->json))))

(construct-json (list->vector (map implementation->alist (glob "../*.scm"))))
