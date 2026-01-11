# **Naming Conventions**

This document defines naming standards for all data warehouse objects including schemas, tables, views, columns, and stored procedures.

## **Table of Contents**
1. [Core Principles](#core-principles)
2. [Table Naming](#table-naming)
   - [Bronze Layer](#bronze-layer)
   - [Silver Layer](#silver-layer)
   - [Gold Layer](#gold-layer)
3. [Column Naming](#column-naming)
   - [Surrogate Keys](#surrogate-keys)
   - [Technical Columns](#technical-columns)
4. [Stored Procedures](#stored-procedures)

## **Core Principles**
- **Format**: snake_case (lowercase + underscores)
- **Language**: English only
- **Reserved Words**: Never use SQL reserved keywords

## **Table Naming**

### **Bronze Layer**
Raw source system tables - preserve original names exactly.
- **Pattern**: `<sourcesystem>_<entity>`
- Examples: `crm_cust_info`, `erp_cust_az12`

### **Silver Layer**  
Cleaned source system tables - preserve original names exactly.
- **Pattern**: `<sourcesystem>_<entity>`
- Examples: `crm_cust_info`, `erp_cust_az12`

### **Gold Layer**
Business-ready tables with descriptive names.
- **Pattern**: `<category>_<entity>`
- **Categories**:
  | Prefix | Purpose | Examples |
  |--------|---------|----------|
  | `dim_` | Dimension | `dim_customers`, `dim_products` |
  | `fact_` | Fact | `fact_sales` |
  | `report_` | Reports | `report_monthly_sales` |

## **Column Naming**

### **Surrogate Keys**
Primary keys in dimension tables.
- **Pattern**: `<entity>_key`
- Example: `customer_key`

### **Technical Columns**  
System-generated metadata columns.
- **Pattern**: `dwh_<purpose>`
- Examples: `dwh_load_date`, `dwh_batch_id`

## **Stored Procedures**
Data loading procedures.
- **Pattern**: `load_<layer>`
- Examples: `load_bronze`, `load_silver`, `load_gold`
