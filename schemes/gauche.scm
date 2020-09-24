(title "Gauche")

(homepage-url "https://practical-scheme.net/gauche/")
(wikipedia-url "https://en.wikipedia.org/wiki/Gauche_%28Scheme_implementation%29")
(issue-tracker-url "https://sourceforge.net/p/gauche/bugs/")

(person "Shiro Kawai")

(documentation
 (title "Reference Manual")
 (web-url "https://practical-scheme.net/gauche/man/gauche-refe/index.html")
 (pdf-url "https://practical-scheme.net/vault/Gauche-0.9.7-refe.pdf"))

(mailing-list
 (name "devel")
 (list-address "gauche-devel" "lists.sourceforge.net")
 (archive-url "https://sourceforge.net/p/gauche/mailman/gauche-devel/")
 (instructions-url "https://sourceforge.net/projects/gauche/lists/gauche-devel"))

(repology "gauche")

(github "shirok/Gauche")
(version-control github)

(features
 interpreter
 stack-based-vm)

(release
 (date "2018-12-20")
 (version-number "0.9.7")
 (source-archive
  (url "https://prdownloads.sourceforge.net/gauche/Gauche-0.9.7.tgz"))
 (release-notes-html-url
  "https://practical-scheme.net/gauche/gmemo/?Release%200.9.7"))

(release
 (date "2019-06-16")
 (version-number "0.9.8")
 (source-archive
  (url "http://prdownloads.sourceforge.net/gauche/Gauche-0.9.8.tgz"))
 (release-notes-html-url
  "https://practical-scheme.net/gauche/gmemo/?Release%200.9.8"))
