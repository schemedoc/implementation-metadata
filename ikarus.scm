(short-title "Ikarus")
(title "Ikarus Scheme")

(homepage-url "http://ikarus-scheme.org/")
(homepage-url "https://launchpad.net/ikarus/")
(wikipedia-url "https://en.wikipedia.org/wiki/Ikarus_%28Scheme_implementation%29")
(issue-tracker-url "https://bugs.launchpad.net/ikarus")
(community-forum-url "https://answers.launchpad.net/ikarus")

(documentation
 (title "User's Guide")
 (web-url "http://ikarus-scheme.org/ikarus-scheme-users-guide.pdf"))

(version-control
 (web-url "https://code.launchpad.net/ikarus")
 (bazaar-url "https://code.launchpad.net/~aghuloum/ikarus/ikarus.dev"))

(release
 (date (2007 10 31))
 (version-number "0.0.1")
 (source-archive (url "http://ikarus-scheme.org/ikarus-0.0.1.tar.gz")))

(release
 (date (2007 11 29))
 (version-number "0.0.2")
 (source-archive (url "http://ikarus-scheme.org/ikarus-0.0.2.tar.gz")))

(release
 (date (2008 2 2))
 (version-number "0.0.3")
 (source-archive (url "http://ikarus-scheme.org/ikarus-0.0.3.tar.gz"))
 (library (name (chez modules)))
 (library (name (ikarus)))
 (library (name (ikarus interaction)))
 (library (name (ikarus parameters)))
 (library (name (ikarus symbols)))
 (library (name (ikarus system interrupts)))
 (library (name (match)))
 (library (name (pregexp)))
 (library (name (psyntax null-environment-5)))
 (library (name (psyntax scheme-report-environment-5)))
 (library (name (streams)))
 (library (name (streams derived)))
 (library (name (streams primitive))))
