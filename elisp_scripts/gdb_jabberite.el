(defun debug-jabberite ()
  (interactive)
  (cd "~/doc/code/np1sec/contrib/prosody-hg")
  (async-shell-command "lsof -i :5222 || lua5.1 prosody")
  (cd "~/doc/code/np1sec/")
  (gdb "libtool --mode=execute gdb -i=mi --args ./jabberite --account=alice@localhost --password=12345678 --server=conference.localhost --room=np1sectestroom "))