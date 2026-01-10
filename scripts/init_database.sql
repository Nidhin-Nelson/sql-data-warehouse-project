/*
-------------------------------------------------------------
Create DataWarehouse Database (Medallion Architecture)
-------------------------------------------------------------
Script Purpose:
    Creates 'DataWarehouse' database using Medallion Architecture.
    • bronze - Raw source data layer
    • silver - Cleaned/transformed data layer  
    • gold   - Aggregated business-ready layer

WARNING:
    DROPS existing 'DataWarehouse' database + ALL data!
    Ensure backups exist before running.
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
    DROP DATABASE DataWarehouse;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
