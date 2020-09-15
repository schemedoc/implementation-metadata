(scheme-id "guile")
(short-title "Guile")
(title "GNU Guile")

(based-on "scm")

(homepage-url "https://www.gnu.org/software/guile/")
(wikipedia-url "https://en.wikipedia.org/wiki/GNU_Guile")
(issue-tracker-url "https://debbugs.gnu.org/cgi/pkgreport.cgi?pkg=guile")
(repology "guile")

(person "Aubrey Jaffer")
(person "Tom Lord")
(person "Miles Bader")
(person "Andy Wingo")
(person "Ludovic Courtès")
(person "Jim Blandy")

(documentation
 (title "Reference Manual")
 (web-url "https://www.gnu.org/software/guile/manual/"))

(documentation
 (title "FAQ")
 (web-url "https://www.gnu.org/software/guile/docs/faq/guile-faq.html"))

(irc-channel
 (channel "#guile")
 (network "irc.freenode.net")
 (webchat "https://webchat.freenode.net/?channels=%23guile"))

(mailing-list
 (name "user")
 (list-address "guile-user" "gnu.org")
 (archive-url "https://lists.gnu.org/archive/html/guile-user/")
 (instructions-url "https://lists.gnu.org/mailman/listinfo/guile-user/"))

(mailing-list
 (name "devel")
 (list-address "guile-devel" "gnu.org")
 (archive-url "https://lists.gnu.org/archive/html/guile-devel/")
 (instructions-url "https://lists.gnu.org/mailman/listinfo/guile-devel"))

(repology "guile")

(version-control
 (web-url "https://savannah.gnu.org/git/?group=guile")
 (git-url "https://git.savannah.gnu.org/git/guile.git"))

(release
 (date "2018-07-02")
 (version-number "2.2.4")
 (source-archive
  (url "https://ftp.gnu.org/gnu/guile/guile-2.2.4.tar.gz"))
 (source-archive
  (url "https://ftp.gnu.org/gnu/guile/guile-2.2.4.tar.lz"))
 (source-archive
  (url "https://ftp.gnu.org/gnu/guile/guile-2.2.4.tar.xz"))
 (documentation
  (title "Reference Manual")
  (files "doc" ".texi" texinfo)
  (top-file "doc/ref/guile.texi"))
 (bundled-srfi-implementations
  1 2 4 6 8 9 10 11 13 14
  16 17 18 19 26 27 28 31 34 35
  37 38 39 41 42 43 45 60 64 67
  69 71 88 98 111)
 (library (name (srfi :1)))
 (library (name (srfi :2)))
 (library (name (srfi :4)))
 (library (name (srfi :6)))
 (library (name (srfi :8)))
 (library (name (srfi :9)))
 (library (name (srfi :10)))
 (library (name (srfi :11)))
 (library (name (srfi :13)))
 (library (name (srfi :14)))
 (library (name (srfi :16)))
 (library (name (srfi :17)))
 (library (name (srfi :18)))
 (library (name (srfi :19)))
 (library (name (srfi :26)))
 (library (name (srfi :27)))
 (library (name (srfi :28)))
 (library (name (srfi :31)))
 (library (name (srfi :34)))
 (library (name (srfi :35)))
 (library (name (srfi :37)))
 (library (name (srfi :38)))
 (library (name (srfi :39)))
 (library (name (srfi :41)))
 (library (name (srfi :42)))
 (library (name (srfi :43)))
 (library (name (srfi :45)))
 (library (name (srfi :60)))
 (library (name (srfi :64)))
 (library (name (srfi :67)))
 (library (name (srfi :69)))
 (library (name (srfi :71)))
 (library (name (srfi :88)))
 (library (name (srfi :98)))
 (library (name (srfi :111))))
