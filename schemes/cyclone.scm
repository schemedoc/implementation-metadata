(short-title "Cyclone")
(title "Cyclone Scheme")

(repology "cyclone-scheme")
(github "justinethier/cyclone")
(homepage-url "https://justinethier.github.io/cyclone/")
(issue-tracker-url "https://github.com/justinethier/cyclone/issues")
(version-control
  (web-url "https://github.com/justinethier/cyclone")
  (git-url "https://github.com/justinethier/cyclone-bootstrap.git"))

(person "Justin Ethier")

(documentation
 (document
  (title "User Manual")
  (web-url "https://justinethier.github.io/cyclone/docs/User-Manual"))
 (document
  (title "API Documentation")
  (web-url "https://justinethier.github.io/cyclone/docs/API")))

(features
 c-ffi
 interpreter
 compile-to-c
 cheney-on-the-mta
 native-threads
 full-continuations
 full-tail-recursion
 concurrent-gc
 generational-gc)

(release
 (date (2019 4 15))
 (version-number "0.11")
 (source-archive
  (url "https://github.com/justinethier/cyclone-bootstrap/archive/v0.11.tar.gz")
  (hash sha256 "acc77b2db98074a41621f8c85b79361d7f3c94fc4af0aae061a1f64e5070b3f9")))
