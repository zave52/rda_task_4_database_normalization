# Database Normalization

Database normalization ensures data consistency in the database and minimizes the possibility of logical errors. Let's practice the database normalization! 

You will work with a `ShopDB` online shop database in this task. This is the new development iteration for the database you saw in the previous tasks. The shop is growing and expanding, so the development team is working on adding support for multiple warehouses. In the new online shop version, the number of products in different warehouses should be possible. The development team has already started rewriting the database creation SQL code. At this point, the database has the following tables: 

- `Countries`, which has the following columns: `ID` and `Name`. 
- `ProductInventory`, which has the following columns: `ID`, `ProductName`, `WarehouseAmount`, `WarehouseName`,`WarehouseAddress`, and `CountryID`. 

## Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine and connect to it with the MySQL client.
2. Fork this repository.

## Requirements

Help the development team to normalize the database `ShopDB`. To do that, review and update the SQL code, which creates the database, in the `task.sql` file: 

1. Connect to your database server. 
2. If you already have the `ShopDB` database on your database server from the previous tasks, delete it using the `DROP DATABASE ShopDB;`  statement. 
3. Analyze the existing SQL code in the `task.sql` file to normalize the database. The database is already in the *first normal form*; you need to update it to the *third normal form*.
4. After updating the database schema (table structure), update the `INSERT` statements at the end of the `task.sql` file. The new `INSERT` statements should populate the same test data but should do it for the database structure *you* defined. 

## How to Test Yourself

Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions: 

1. Drop the `ShopDB` database using the `DROP DATABASE ShopDB;` statement if you already have it on your database server. 
2. Run the script you wrote in the `task.sql` on your database server.
3. Run the `test.sql` script on your database. If the script execution is finished without errors, you are ready to submit a pull request. 
