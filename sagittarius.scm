(id sagittarius)
(short-title "Sagittarius")
(title "Sagittarius Scheme")

(homepage-url "https://bitbucket.org/ktakashi/sagittarius-scheme")
(issue-tracker-url "https://bitbucket.org/ktakashi/sagittarius-scheme/issues")

(documentation
 (title "Users' Reference")
 (web-url "https://ktakashi.github.io/sagittarius-online-ref.html"))

(social-media-profile "https://twitter.com/tk_riple")
(blog-url "https://compassoftime.blogspot.com/")

(package
 (manager arch-linux-aur)
 (name "sagittarius"))

(package
 (manager freebsd-ports)
 (directory "lang")
 (name "sagittarius-scheme"))

(package
 (manager homebrew)
 (name "sagittarius-scheme"))

(version-control
 (web-url "https://bitbucket.org/ktakashi/sagittarius-scheme/src")
 (mercurial-url "ssh://hg@bitbucket.org/ktakashi/sagittarius-scheme"))

(release
 (date (2019 6 5))
 (version-number "0.9.6")
 (source-archive
  (url "https://bitbucket.org/ktakashi/sagittarius-scheme/downloads/sagittarius-0.9.6.tar.gz")
  (hash sha256 "b946b168fca70f84d922bcfa2125e2e64ad5fb8cf67e4204deb43dd2dcdedb0e")))

;; https://github.com/ktakashi/sagittarius-scheme -- GitHub mirror of Bitbucket hg
;; https://github.com/ktakashi/pegasus -- Package repository for Sagittarius Scheme
;; https://code.google.com/archive/p/sagittarius-scheme/ -- old Google Code page
