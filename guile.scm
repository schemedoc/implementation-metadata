(title "Guile")

(homepage-url "https://www.gnu.org/software/guile/")
(issue-tracker-url "https://debbugs.gnu.org/cgi/pkgreport.cgi?pkg=guile")

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

(version-control
 (web-url "https://savannah.gnu.org/git/?group=guile")
 (git-url "https://git.savannah.gnu.org/git/guile.git"))

(release
 (date (2018 7 2))
 (version-number "2.2.4")
 (source-archive
  (url "https://ftp.gnu.org/gnu/guile/guile-2.2.4.tar.gz"))
 (source-archive
  (url "https://ftp.gnu.org/gnu/guile/guile-2.2.4.tar.lz"))
 (source-archive
  (url "https://ftp.gnu.org/gnu/guile/guile-2.2.4.tar.xz"))
 (bundled-srfi-implementations
  1 2 4 6 8 9 10 11 13 14
  16 17 18 19 26 27 28 31 34 35
  37 38 39 41 42 43 45 60 64 67
  69 71 88 98 111))
