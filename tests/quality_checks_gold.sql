/*
--------------------------------------------------------------------===========
Quality Checks - Gold Layer Validation
--------------------------------------------------------------------===========
Script Purpose:
Validates gold layer data quality by checking:
- Key uniqueness in dimension tables
- Referential integrity between fact and dimension tables

Usage Example:
Run entire script - ALL queries should return 0 rows!
--------------------------------------------------------------------===========
*/

-- --------------------------------------------------------------------
-- Checking 'gold.dim_customers'
-- --------------------------------------------------------------------
SELECT 
    cust_id AS customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY cust_id
HAVING COUNT(*) > 1;

-- --------------------------------------------------------------------
-- Checking 'gold.dim_products'  
-- --------------------------------------------------------------------
SELECT 
    prd_id AS product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY prd_id
HAVING COUNT(*) > 1;

-- --------------------------------------------------------------------
-- Checking referential integrity
-- --------------------------------------------------------------------
SELECT COUNT(*) AS orphaned_count
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c ON f.cust_id = c.cust_id
LEFT JOIN gold.dim_products p ON f.prd_id = p.prd_id
WHERE c.cust_id IS NULL OR p.prd_id IS NULL;
