(title "STklos")
(long-title "STklos Scheme")
(tagline "R7RS interpreter with GTK GUI and CLOS-like object system")
(based-on "stk")

(homepage-url "https://www.stklos.net/")
(repology "stklos")
(issue-tracker github)
(version-control
  (web-url "https://github.com/egallesio/STklos")
  (git-url "https://github.com/egallesio/STklos.git"))

(person "Erick Gallesio")
(academy "Université Nice-Sophia-Antipolis")

(pseudorelease
 (features
  full-numeric-tower
  generic-functions
  interpreter
  meta-object-protocol
  multi-methods
  multiple-inheritance
  object-system
  r7rs
  tiny-clos))

(release
 (version "0.50")
 (date "2001-01-18")
 (archive
  (source
   (url "https://www.stklos.net/download/stklos-{version}.tar.gz")
   (source-directory "stklos-{version}")
   (target-directory "stklos")
   (basename "stklos.tar.gz"))))

(release
 (version "0.51")
 (date "2001-03-13"))

(release
 (version "0.52")
 (date "2002-04-09"))

(release
 (version "0.53")
 (date "2002-08-06"))

(release
 (version "0.54")
 (date "2003-02-13"))

(release
 (version "0.55")
 (date "2003-06-25"))

(release
 (version "0.56")
 (date "2003-11-06"))

(release
 (version "0.57")
 (date "2004-01-14"))

(release
 (version "0.58")
 (date "2004-07-17"))

(release
 (version "0.59")
 (date "2004-11-04"))

(release
 (version "0.60")
 (date "2004-11-30"))

(release
 (version "0.61")
 (date "2005-04-05"))

(release
 (version "0.70")
 (date "2006-01-04"))

(release
 (version "0.71")
 (date "2005-11-03"))

(release
 (version "0.72")
 (date "2006-01-04"))

(release
 (version "0.80")
 (date "2006-10-28"))

(release
 (version "0.81")
 (date "2006-11-06"))

(release
 (version "0.82")
 (date "2006-12-19"))

(release
 (version "0.95")
 (date "2007-06-08")
 (build-deps "gcc" "make" "file" "texinfo" "libffi" "bdw-gc" "gmp" "pcre")
 (build-step configure (exec "./configure"
                             "--without-provided-bignum"
                             "--without-provided-gc"
                             "--without-provided-regexp"))
 (build-step make (exec "make"))
 (build-steps configure make)
 (scheme-banner "stklos"))

(release
 (version "0.96")
 (date "2007-06-30"))

(release
 (version "0.97")
 (date "2007-12-16"))

(release
 (version "0.98")
 (date "2008-05-18"))

(release
 (version "1.00")
 (date "2010-08-11"))

(release
 (version "1.01")
 (date "2010-12-30"))

(release
 (version "1.10")
 (date "2011-12-31")
 (scheme-banner "stklos --utf8-encoding=yes"))

(release
 (version "1.20")
 (date "2018-06-04")
 (build-step make (exec "env" "TERM=dumb" "make")))

(release
 (version "1.30")
 (date "2019-07-04"))

(release
 (version "1.31")
 (date "2019-07-13")
 (sources
  (archive
   (sha-256 "b67910a7eb2124950751766d1b498a9e3acda80dad73c948398db7c72868bcc2"))))

(release
 (version "1.40")
 (date "2020-06-05")
 (build-step make (exec "make")))

(release
 (version "1.50")
 (date "2020-08-17"))

(release
 (date (2024 10 10))
 (version-number "2.10")
 (source-archive
   (url "https://stklos.net/download/stklos-2.10.tar.gz")
   (hash sha256 "6dbf0345f92048fec6133ad6e55d71d0be3b776d58174b087ed08f7c4b2ea041")))
