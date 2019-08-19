(id chez)
(short-title "Chez")
(title "Chez Scheme")

(homepage-url "https://www.scheme.com/")
(homepage-url "https://cisco.github.io/ChezScheme/")
(wikipedia-url "https://en.wikipedia.org/wiki/Chez_Scheme")
(issue-tracker-url "https://github.com/cisco/ChezScheme/issues")

(documentation
 (title "User's Guide")
 (web-url "https://cisco.github.io/ChezScheme/csug9.5/csug.html"))

(irc-channel
 (channel "#chez")
 (network "irc.freenode.net")
 (webchat "https://webchat.freenode.net/?channels=%23chez"))

(mailing-list
 (name "Google group")
 (archive-url "https://groups.google.com/group/chez-scheme"))

(package
 (manager freebsd-ports)
 (directory "lang")
 (name "chez-scheme"))

(package
 (manager freebsd-ports)
 (directory "lang")
 (name "petite-chez"))

(package
 (manager homebrew)
 (name "chezscheme"))

(package
 (manager pkgsrc)
 (directory "wip")
 (name "chezscheme"))

(version-control
 (web-url "https://github.com/cisco/ChezScheme")
 (git-url "https://github.com/cisco/ChezScheme.git")
 (git-url "git@github.com:cisco/ChezScheme.git"))

(release
 (date (2019 3 22))
 (version-number "9.5.2")
 (source-archive
  (url "https://github.com/cisco/ChezScheme/archive/v9.5.2.zip"))
 (source-archive
  (url "https://github.com/cisco/ChezScheme/archive/v9.5.2.tar.gz")))
