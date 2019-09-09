(id "gerbil")
(short-title "Gerbil")
(title "Gerbil Scheme")

(homepage-url "https://cons.io/")
(homepage-url "https://github.com/vyzo/gerbil")
(issue-tracker-url "https://github.com/vyzo/gerbil/issues")

(documentation
 (title "Guide")
 (web-url "https://cons.io/guide/"))

(documentation
 (title "Tutorials")
 (web-url "https://cons.io/tutorials/"))

(documentation
 (title "Reference")
 (web-url "https://cons.io/reference/"))

(irc-channel
 (channel "#gerbil-scheme")
 (network "irc.freenode.net")
 (webchat "https://webchat.freenode.net/?channels=%23gerbil-scheme"))

(package
 (manager homebrew)
 (name "gerbil-scheme"))

(version-control
 (web-url "https://github.com/vyzo/gerbil")
 (git-url "https://github.com/vyzo/gerbil.git")
 (git-url "git@github.com:vyzo/gerbil.git"))

(release
 (date (2019 2 9))
 (version-number "0.15.1")
 (source-archive
  (url "https://github.com/vyzo/gerbil/archive/v0.15.1.tar.gz")
  (hash sha256 "3d29eecdaa845b073bf8413cd54e420b3f48c79c25e43fab5a379dde029d0cde")))
