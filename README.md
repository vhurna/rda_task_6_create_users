# Creating database users

User and permission management is one of the most important database administration activities, and now it's time to master it! In this task you will work with the `ShopDB` database for online store. As shop is maturing and getting ready for the release to production, so you need to prepare the service database users. 

The database has the following tables:
- `Countries`, which has the following columns: `ID`, `Name`. 

## Task

### Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine, connect to it with the MySQL client.
2. Fork this repository.

### Requirements

In this task, you need to write SQL code, which creates database users and configures permissions for them:
- Connect to your database server. 
- Write a code, which creates users and cofigures permissions for them in the file `task.sql`. 

In this task you need to create 2 users: 

- First database user is called `webappuser` (password: `P@ssw0rd`). It will be used by the web app application, and should be able to perform only basic CRUD operations in the `ShopDB` database (read data, create new records, update and delete existing records).
- Second database user you need to create is called `deploymentuser` (password: `P@ssw0rd`). It will be used by the automated deployment pipeline to create new tables in the database. The user should be able to perform all actions on the `ShopDB` database.

### How to Test Yourself

Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions: 

1. Run database creation script `create-database.sql` on your database server. 
2. Run the script you wrote in the `task.sql` on your database server. Take a note that you will need to run the commands from the vitrual machine, where database server is installed, under the root user.   
3. Connect to your database with `webappuser`, and check if you can berform CRUD operations on the `ShopDB` database (try to perform them on the `Countries` table). Try to create a new table in the  - you should get an error.  
4. Connect to your database with `deploymentuser`, and check if you can berform CRUD operations on the `ShopDB` database (try to perform them on the `Countries` table). Try to create a new table in the  - you should get the table created without any errors. 
