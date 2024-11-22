(short-title "Gambit")
(title "Gambit Scheme")
(alternative-title "Gambit-C")

(repology "gambit-c")
(issue-tracker github)
(version-control
  (web-url "https://github.com/gambit/gambit")
  (git-url "https://github.com/gambit/gambit.git"))
(wikipedia en "Gambit (scheme implementation)")
(homepage-url "http://gambitscheme.org/")

(person "Marc Feeley")
(academy "Universite de Montreal")

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


(release
 (date (2019 02 05))
 (version-number "4.9.3")
 (source-archive
  (url "https://www-labs.iro.umontreal.ca/~gambit/download/gambit/v4.9/source/gambit-v4_9_3.tgz"))
 (source-archive
  (url "https://www-labs.iro.umontreal.ca/~gambit/download/gambit/v4.9/source/gambit-v4_9_3-devel.tgz")))

(release
 (date (2023 4 1))
 (version-number "4.9.5")
 (source-archive
  (url "https://gambitscheme.org/latest/gambit-v4_9_5.tgz")
  (hash sha256 "e28ef8db5f0e7b1159720c150053dcab8f7c4cae1f0e5c838944797073f8c1dc")))
