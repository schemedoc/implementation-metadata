(title "Gauche")

(homepage-url "https://practical-scheme.net/gauche/")
(wikipedia en "Gauche (Scheme implementation)")

(person "Shiro Kawai")

(documentation
 (title "Reference Manual")
 (web-url "https://practical-scheme.net/gauche/man/gauche-refe/index.html")
 (pdf-url "https://practical-scheme.net/vault/Gauche-0.9.7-refe.pdf"))

(mailing-list
 (name "gauche-devel")
 (list-address sourceforce))

(repology "gauche")
(sourceforge "gauche")
(version-control
  (web-url "https://github.com/shirok/Gauche")
  (git-url "https://github.com/shirok/Gauche.git"))

(features
 interpreter
 stack-based-vm)

(release
 (date (2018 12 20))
 (version-number "0.9.7")
 (source-archive
  (url "https://prdownloads.sourceforge.net/gauche/Gauche-0.9.7.tgz"))
 (release-notes-html-url
  "https://practical-scheme.net/gauche/gmemo/?Release%200.9.7"))

(release
 (date (2019 06 16))
 (version-number "0.9.8")
 (source-archive
  (url "http://prdownloads.sourceforge.net/gauche/Gauche-0.9.8.tgz"))
 (release-notes-html-url
  "https://practical-scheme.net/gauche/gmemo/?Release%200.9.8"))

(release
 (date (2024 4 23))
 (version-number "0.9.15")
 (source-archive
  (url "https://github.com/shirok/Gauche/releases/download/release0_9_15/Gauche-0.9.15.tgz")
  (hash sha256 "3643e27bc7c8822cfd6fb2892db185f658e8e364938bc2ccfcedb239e35af783"))
 (release-notes-html-url
  "https://practical-scheme.net/gauche/gmemo/?Release%200.9.15"))
