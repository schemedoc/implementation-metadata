(id "owl")
(short-title "Owl")
(title "Owl Lisp")
(tagline "a functional Scheme for world domination")

(homepage-url "https://haltp.org/n/owl")
(gitlab "owl-lisp/owl")
(github "owl-lisp/owl")

(person "Aki Helin")

(package
 (manager freebsd-ports)
 (directory "lang")
 (name "owl-lisp"))

(features
 compile-to-c
 interpreter
 purely-functional
 r7rs)
