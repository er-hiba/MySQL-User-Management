mysql> use centre_formation;
Database changed
mysql> CREATE USER 'User1'@'localhost' IDENTIFIED BY 'Modep@sse1' ;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE USER 'User2'@'localhost' IDENTIFIED BY 'Modep@sse2' ;
Query OK, 0 rows affected (0.01 sec)

mysql> CREATE USER 'User3'@'localhost' IDENTIFIED BY 'Modep@sse3' ;
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE USER 'User4'@'localhost' IDENTIFIED BY 'Modep@sse4' ;
Query OK, 0 rows affected (0.02 sec)

mysql> SELECT user, host FROM mysql.user;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| hiba             | %         |
| User1            | localhost |
| User2            | localhost |
| User3            | localhost |
| User4            | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
9 rows in set (0.00 sec)

mysql> select user, host from mysql.user
    -> where host = "localhost" ;
+------------------+-----------+
| user             | host      |
+------------------+-----------+
| User1            | localhost |
| User2            | localhost |
| User3            | localhost |
| User4            | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
8 rows in set (0.00 sec)

mysql> GRANT SELECT ON centre_formation.* TO 'User1'@'localhost' ;
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT INSERT ON centre_formation.* TO 'User2'@'localhost' ;
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT ALL PRIVILEGES ON centre_formation.* TO 'User3'@'localhost' ;
Query OK, 0 rows affected (0.01 sec)

mysql> GRANT UPDATE ON centre_formation.etudiant TO 'User4'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW GRANTS FOR 'User1'@'localhost' ;
+-------------------------------------------------------------+
| Grants for User1@localhost                                  |
+-------------------------------------------------------------+
| GRANT USAGE ON *.* TO `User1`@`localhost`                   |
| GRANT SELECT ON `centre_formation`.* TO `User1`@`localhost` |
+-------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SHOW GRANTS FOR 'User2'@'localhost' ;
+-------------------------------------------------------------+
| Grants for User2@localhost                                  |
+-------------------------------------------------------------+
| GRANT USAGE ON *.* TO `User2`@`localhost`                   |
| GRANT INSERT ON `centre_formation`.* TO `User2`@`localhost` |
+-------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SHOW GRANTS FOR 'User3'@'localhost' ;
+---------------------------------------------------------------------+
| Grants for User3@localhost                                          |
+---------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `User3`@`localhost`                           |
| GRANT ALL PRIVILEGES ON `centre_formation`.* TO `User3`@`localhost` |
+---------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql> SHOW GRANTS FOR 'User4'@'localhost' ;
+----------------------------------------------------------------------+
| Grants for User4@localhost                                           |
+----------------------------------------------------------------------+
| GRANT USAGE ON *.* TO `User4`@`localhost`                            |
| GRANT UPDATE ON `centre_formation`.`etudiant` TO `User4`@`localhost` |
+----------------------------------------------------------------------+
2 rows in set (0.00 sec)

mysql>
