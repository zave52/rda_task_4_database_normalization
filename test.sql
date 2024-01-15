USE ShopDB;

-- 1. check the number of tables (should be 4 - 1 new table for the Warehouses + 1 new table for Products) 
SET @TablesCount := ( SELECT count(*) AS TOTALNUMBEROFTABLES
    FROM INFORMATION_SCHEMA.TABLES
    WHERE TABLE_SCHEMA = 'ShopDB'); 
SELECT IF( @TablesCount = 4, 'The total number of tables in the database is correct', 'Error: too many or not enough tables were created in the database');

-- 2. check the number of columns in the ProductInventory table - should be 4 (ID, ProductID, WarehouseAmount, WarehouseID) 
SET @ColumntCount := (SELECT count(*)
FROM information_schema.columns
WHERE table_name = 'ProductInventory' and TABLE_SCHEMA = 'ShopDB'); 
SELECT IF( @ColumntCount = 4, 'The total number of columns in the ProductInventory is correct', 'Error: too many or not enough columnts in the ProductInventory table');

-- 3. check the number of foreign keys in the ProductInventory table - should be 2 (ProductID, WarehouseID) 
SET @ForeignKeysCount := (SELECT count(*) FROM information_schema.TABLE_CONSTRAINTS 
WHERE information_schema.TABLE_CONSTRAINTS.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND information_schema.TABLE_CONSTRAINTS.TABLE_SCHEMA = 'ShopDB'
AND information_schema.TABLE_CONSTRAINTS.TABLE_NAME = 'ProductInventory'); 
SELECT IF( @ForeignKeysCount = 2, 'The total number of foreign keys in the ProductInventory is correct', 'Error: too many or not enough foreign keys in the ProductInventory table');

-- 4. check if the CountryID foreign key is removed - it should be in the Warehouses table now 
SET @CountryForeignKeysCount := (SELECT count(*) FROM information_schema.REFERENTIAL_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = 'ShopDB'
AND TABLE_NAME = 'ProductInventory'
AND REFERENCED_TABLE_NAME = 'Countries'); 
SELECT IF( @CountryForeignKeysCount = 0, 'The Country foreign key is not present in the ProductInventory table', 'Error: CountryID foreign key is present in the ProductInventory table');

-- 5. check the number of records in the product inventory
SET @ProductInventoryItemsCount := (SELECT count(*) FROM ProductInventory); 
SELECT IF( @ProductInventoryItemsCount = 2, 'The Product inventory items are in place', 'Error: too many or not enough ProductInventory items in the database!');
