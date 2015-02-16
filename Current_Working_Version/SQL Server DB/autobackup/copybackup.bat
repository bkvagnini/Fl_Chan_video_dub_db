net use m: \\tfc-server\e$\dubdb /user:flch\administrator PASSWORD
cd E:\database_backups\autobackup
copy *.* m:
net use m: /delete 