(short-title "Chicken")
(title "CHICKEN Scheme")
(tagline "Scheme-to-C compiler with lots of libraries and friendly community")

(homepage (url "https://www.call-cc.org/"))
(issue-tracker (url "https://bugs.call-cc.org/"))

(documentation
 (title "Manual (version 4)")
 (web-url "https://wiki.call-cc.org/man/4/The%20User%27s%20Manual"))

(documentation
 (title "Manual (version 5)")
 (web-url "https://wiki.call-cc.org/man/5/The%20User%27s%20Manual"))

(repology "chicken")
(wikipedia en "Chicken (Scheme implementation)")
(irc-channel (freenode "#chicken"))
(mailing-list (nongnu "chicken-users"))
(mailing-list (nongnu "chicken-hackers"))
(mailing-list (nongnu "chicken-janitors"))

(version-control
 (web-url "https://code.call-cc.org/cgi-bin/gitweb.cgi?p=chicken-core.git")
 (git-url "https://code.call-cc.org/git/chicken-core.git"))

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
