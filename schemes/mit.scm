(title "MIT Scheme")
(long-title "MIT/GNU Scheme")
(alternative-title "C-Scheme")

(homepage-url "https://www.gnu.org/software/mit-scheme/")
(wikipedia "MIT/GNU_Scheme")
(issue-tracker-url "https://savannah.gnu.org/bugs/?func=addbug&group=mit-scheme")

(person "Chris Hanson")
(person "Guillermo J. Rozas")
(person "Taylor R. Campbell")
(person "Stephen Adams")
(person "Matt Birkholz")
(person "Arthur A. Gleckler")
(person "Joe Marshall")
(person "Brian A. LaMacchia")
(person "Mark Friedman")
(person "Henry M. Wu")
(academy "Massachusetts Institute of Technology")

(documentation
 (title "User's Manual")
 (web-url "https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-user/index.html")
 (pdf-url "https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-user.pdf"))

(documentation
 (title "Reference Manual")
 (web-url "https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/index.html")
 (pdf-url "https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref.pdf"))

(mailing-list
 (name "announce")
 (list-address "mit-scheme-announce" "gnu.org")
 (archive-url "https://lists.gnu.org/archive/html/mit-scheme-announce/")
 (instructions-url "https://lists.gnu.org/mailman/listinfo/mit-scheme-announce"))

(mailing-list
 (name "devel")
 (list-address "mit-scheme-devel" "gnu.org")
 (archive-url "https://lists.gnu.org/archive/html/mit-scheme-devel/")
 (instructions-url "https://lists.gnu.org/mailman/listinfo/mit-scheme-devel"))

(repology "mit-scheme")

(version-control
 (web-url "https://git.savannah.gnu.org/cgit/mit-scheme.git")
 (git-url "https://git.savannah.gnu.org/git/mit-scheme.git"))

(release
 (date (2020 06 04))
 (version-number "10.1.11")
 (source-archive
  (url "https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/10.1.11/mit-scheme-10.1.11.tar.gz")))

(release
 (date (2023 1 7))
 (version-number "12.1")
 (source-archive
  (url "https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/12.1/mit-scheme-12.1.tar.gz")
  (hash sha256 "5509fb69482f671257ab4c62e63b366a918e9e04734feb9f5ac588aa19709bc6")))

(features
 32-bit
 64-bit
 native-code-compiler)