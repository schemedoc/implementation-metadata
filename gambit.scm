(title "Gambit")

(homepage-url "http://dynamo.iro.umontreal.ca/wiki/index.php/Main_Page")
(wikipedia-url "https://en.wikipedia.org/wiki/Gambit_(scheme_implementation)")
(issue-tracker-url "https://github.com/gambit/gambit/issues")

(documentation
 (title "Manual")
 (web-url "https://www.iro.umontreal.ca/~gambit/doc/gambit.html")
 (pdf-url "https://www.iro.umontreal.ca/~gambit/doc/gambit.pdf"))

(web-chat-url "https://gitter.im/gambit/gambit")

(irc-channel
 (channel "#gambit")
 (network "irc.freenode.net")
 (webchat "https://webchat.freenode.net/?channels=%23gambit"))

(mailing-list
 (name "gambit-list")
 (list-address "gambit-list" "iro.umontreal.ca")
 (archive-url "https://mailman.iro.umontreal.ca/pipermail/gambit-list/")
 (instructions-url "https://mailman.iro.umontreal.ca/mailman/listinfo/gambit-list"))

(package
 (manager homebrew)
 (name "gambit-scheme"))

(version-control
 (web-url "https://github.com/gambit/gambit")
 (git-url "https://github.com/gambit/gambit.git")
 (git-url "git@github.com:gambit/gambit.git"))

(release
 (date (2019 2 5))
 (version-number "4.9.3")
 (source-archive
  (url "https://www-labs.iro.umontreal.ca/~gambit/download/gambit/v4.9/source/gambit-v4_9_3.tgz"))
 (source-archive
  (url "https://www-labs.iro.umontreal.ca/~gambit/download/gambit/v4.9/source/gambit-v4_9_3-devel.tgz")))
