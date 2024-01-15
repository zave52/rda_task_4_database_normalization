# Database normalization

Database normalization allows to ensure consistensy of data in the database and to minimize the posibility of logical errors. Let's practice the database normalization! 

In this task, you will work with a `ShopDB` online shop database. This is the new iteration of development for the database you saw in the previous tasks. The shop is growing and expanding, so the development team is working on adding support for multiple warehouses. In the new version of the online shop it should be possible to see the amount of product on different warehouses. The development team already started rewritting the database creation SQL code. At this point the database has the following tables: 
- `Countries`, which has the following columns: `ID`, `Name`. 
- `ProductInventory`, which has the following columns: `ID`, `ProductName`, `WarehouseAmount`, `WarehouseName`,`WarehouseAddress` and `CountryID`. 

## Task

### Prerequisites

1. Install and configure a MySQL database server on a Virtual Machine, connect to it with the MySQL client.
2. Fork this repository.

### Requirements

In this task, you need to help the development team to normalize the database `ShopDB`. For that, you need to review and update the SQL code, which creates the database, in the file `task.sql`: 

- Connect to your database server. 
- If you already have the `ShopDB` database on your database server from the previous tasks, delete it using the "DROP DATABASE ShopDB;"  statement. 
- Analyze the existing SQL code in the file `task.sql` to normalize the database. Currently, database is already in First normal form, you need to update it to the Third normal form.
- After updating the database scheema (table structure), update the INSERT statements at the end of the `task.sql`. The new INSERT statements should populate the same test data, but should do it for the database structure **you** defined. 

### How to Test Yourself

Just in case you want to test your script on your database before submitting a pull request, you can do it by performing the following actions: 

1. Drop the `ShopDB` database using "DROP DATABASE ShopDB;" statement if you already have it on your database server. 
2. Run the script you wrote in the `task.sql` on your database server.
3. Run the `test.sql` script on your database. If the script execution is finished without errors, you are ready to submit a pull request. 
