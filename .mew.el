(setq mew-config-alist
  '(("default"
     ("proto" . "%")
     ("name" . "John")
     ("user" . "john")
     ("mail-domain" . "polyomino.jp")
     ("smtp-user" . "john@polyomino.jp")
     ("smtp-server" . "smtp.gmail.com")
     ("smtp-auth" . t)
     ("smtp-ssl-port" . "587")
     ("smtp-port" . "587")
     ("smtp-ssl" . t)
     ("imap-server" . "imap.gmail.com")
     ("imap-user" . "john@polyomino.jp")
     ("imap-ssl" . t)
     ("imap-port" . "993")
     ("imap-delete" . "nil")
     )))

(setq mew-imap-size 100000000)

(setq mew-summary-form
      '(type (15 from) " " (5 date) " " (5 time) " " (10 subj) " " (0 body)))
