(id sisc)
(title "SISC")
(long-title "Second Interpreter of Scheme Code")
(tagline "fast, complete R5RS interpreter for the JVM")

(homepage-url "http://sisc-scheme.org/")
(sourceforge "sisc")
(wikipedia "SISC")

(documentation
 (title "SISC for Seasoned Schemers ")
 (web-url "http://www.sisc-scheme.org/manual/html/")
 (pdf-url "http://www.sisc-scheme.org/manual/sss.pdf"))

(person "Scott G. Miller")
(person "Matthias Radestock")

(feature
 full-continuations
 jvm
 r5rs)

(package
 (manager freebsd-ports)
 (directory "lang")
 (name "sisc"))
