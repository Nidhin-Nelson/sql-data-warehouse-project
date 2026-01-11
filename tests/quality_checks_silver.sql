/*
-------------------------------------------------------------
Quality Checks - Silver Layer Validation
-------------------------------------------------------------
Script Purpose:
Validates silver layer data quality by checking:
- NULLs or duplicate primary keys
- Unwanted spaces in string fields
- Data standardization and consistency
- Invalid date ranges and business rules

Usage Example:
Run after silver.load_silver - ALL checks should return 0 rows!
-------------------------------------------------------------
*/

-- Check for NULLs or Duplicates in Primary Key
-- Expectation: No Results

SELECT 
    cst_id,
    COUNT(*) 
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL;

-- Check for Unwanted Spaces
-- Expectation: No Results

SELECT 
    cst_key 
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key);

-- Data Standardization & Consistency

SELECT DISTINCT 
    cst_marital_status 
FROM silver.crm_cust_info;

-- Check for NULLs or Duplicates in Primary Key
-- Expectation: No Results

SELECT 
    prd_id,
    COUNT(*) 
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

-- Check for Unwanted Spaces
-- Expectation: No Results

SELECT 
    prd_nm 
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm);

-- Check for NULLs or Negative Values in Cost
-- Expectation: No Results

SELECT 
    prd_cost 
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

-- Data Standardization & Consistency

SELECT DISTINCT 
    prd_line 
FROM silver.crm_prd_info;

-- Check for Invalid Date Orders (Start Date > End Date)
-- Expectation: No Results

SELECT 
    * 
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt;

-- Check Data Consistency: Sales = Quantity * Price
-- Expectation: No Results

SELECT DISTINCT 
    sls_sales,
    sls_quantity,
    sls_price 
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
   OR sls_sales IS NULL 
   OR sls_quantity IS NULL 
   OR sls_price IS NULL
   OR sls_sales <= 0 
   OR sls_quantity <= 0 
   OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price;
