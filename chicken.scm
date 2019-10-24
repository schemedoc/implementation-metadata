(id "chicken")
(short-title "Chicken")
(title "CHICKEN Scheme")
(tagline "Scheme-to-C compiler with lots of libraries and friendly community")

(homepage-url "https://www.call-cc.org/")
(wikipedia-url "https://en.wikipedia.org/wiki/Chicken_%28Scheme_implementation%29")
(issue-tracker-url "https://bugs.call-cc.org/")

(documentation
 (title "Manual (version 4)")
 (web-url "https://wiki.call-cc.org/man/4/The%20User%27s%20Manual"))

(documentation
 (title "Manual (version 5)")
 (web-url "https://wiki.call-cc.org/man/5/The%20User%27s%20Manual"))

(irc-channel
 (channel "#chicken")
 (network "irc.freenode.net")
 (webchat "https://webchat.freenode.net/?channels=%23chicken"))

(mailing-list
 (name "users")
 (list-address "chicken-users" "nongnu.org")
 (archive-url "https://lists.nongnu.org/archive/html/chicken-users/")
 (instructions-url "https://lists.nongnu.org/mailman/listinfo/chicken-users"))

(mailing-list
 (name "hackers")
 (list-address "chicken-hackers" "nongnu.org")
 (archive-url "https://lists.nongnu.org/archive/html/chicken-hackers/")
 (instructions-url "https://lists.nongnu.org/mailman/listinfo/chicken-hackers"))

(mailing-list
 (name "janitors")
 (list-address "chicken-janitors" "nongnu.org")
 (archive-url "https://lists.nongnu.org/archive/html/chicken-janitors/")
 (instructions-url "https://lists.nongnu.org/mailman/listinfo/chicken-janitors"))

(package
 (manager homebrew)
 (name "chicken"))

(version-control
 (web-url "https://code.call-cc.org/cgi-bin/gitweb.cgi?p=chicken-core.git")
 (git-url "https://code.call-cc.org/git/chicken-core.git")
 (git-url "git://code.call-cc.org/chicken-core"))

(features
 c-ffi
 interpreter
 compile-to-c
 cheney-on-the-mta
 green-threads
 full-continuations
 full-tail-recursion
 concurrent-gc
 copying-gc)

(release
 (date (2018 11 7))
 (version-number "5.0.0")
 (source-archive
  (url "https://code.call-cc.org/releases/5.0.0/chicken-5.0.0.tar.gz")
  (hash sha256 "a8b94bb94c5d6a4348cedd75dc334ac80924bcd9a7a7a3d6af5121e57ef66595")))
