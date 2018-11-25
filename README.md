# Fl_Chan_video_dub_db
Florida Channel Video Dubbing tracking database

Access to Microsoft SQL Server 2005

Scope of Project

Goal:

Allow simultaneous access to an Access database, ensuring frequent backups of the data and allowing for near real-time replication to minimize downtime.

Design: 

SQl Server database as the back-end, using Access as the client application (front-end)(due to their familiarity of the tool.) Done as a VMWare Virtual Machine with a 15 GB C: partition housing SQL Server and Windows Server 2003 Standard and a 65 GB E: partition housing the database and database backups. Virtual machine chosen for rapid restoration in the event of physical machine hardware failure - backup VMWare is the IT-Shop PC. Second Virtual machine is for Replication purposes, allowing for near real-time access to the data. Full Backups are done once daily at noon and a second full backup is done every hour. The backups are copied to another server (TFC-Server\dubdb) via a scheduled task on the Virtual Machine. 

Database is split into 8 tables, to allow for normalization and integrity of the data. Dub_Request_form writes data to the Dub_Request_tbl, while all other support tables write to their respective tables. Queries and Reports are written against a view created using multiple joins, combining all of the data back into a single object that the users can write queries against without involving me. This allows for much faster response time for their query/reporting needs. Training is delivered to certain members on how to write the queries and reports.
