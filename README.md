## Description
This repository contains SQL scripts for managing users and privileges in a MySQL database.
## Files
[mysql_create_grant.sql](mysql_create_grant.sql) :
1. Created four users (User1, User2, User3, User4) on localhost.
2. Granted the following privileges:  
    User1 was granted SELECT privilege on all tables in the centre_formation database.  
    User2 was granted INSERT privilege on all tables in the centre_formation database.  
    User3 was granted all privileges (ALL PRIVILEGES) on all tables in the centre_formation database.  
    User4 was granted UPDATE privilege on the etudiant table in the centre_formation database.    
3. Checked the grants for each user to verify the privileges.

[mysql_switch_revoke.sql](mysql_switch_revoke.sql) :
1. Connected to MySQL as User4 and updated the villeEtu field to "kenitra" for all records in the etudiant table in the centre_formation database.
2. Connected to MySQL as root and revoked the DELETE privilege on all tables in the centre_formation database from User3.
3. Verified that the DELETE privilege was successfully revoked for User3.
