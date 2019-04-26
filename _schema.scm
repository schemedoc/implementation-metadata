(title <string>)

(homepage-url <uri>)
(issue-tracker-url <uri>)
(community-wiki-url <uri>)
(community-forum-url <uri>)

(documentation
 (title <string>)
 (web-url <uri>)
 (pdf-url <uri>))

(web-chat-url <uri>)

(irc-channel
 (channel <#name>)
 (network <irc.example.net>)
 (webchat <uri>))

(mailing-list
 (name)
 (list-address <local-part> <domain>)
 (archive-url <uri>)
 (instructions-url <url>)
 (subscribe-url <uri>))

(version-control
 (web-url <uri>)
 (git-url <uri>))

(release
 (date (<y:nat> <m:nat> <d:nat>))
 (version-number <string>)
 (bundled-srfi-implementations <nat...>)
 (source-archive
  (url <uri>)
  (hash <sha1/sha256/...> <hash-value>)))
