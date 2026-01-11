# Data Catalog for Gold Layer

## Overview
The Gold Layer is the business-level data representation, structured to support analytical and reporting use cases. It consists of dimension tables and fact tables for specific business metrics.

## 1. gold.dim_customers
**Purpose:** Stores customer details enriched with demographic and geographic data.

### Columns:

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| customer_key | INT | Surrogate key for each customer record. |
| customer_id | INT | Unique identifier for each customer. |
| customer_number | NVARCHAR(50) | Alphanumeric customer identifier. |
| first_name | NVARCHAR(50) | Customer's first name. |
| last_name | NVARCHAR(50) | Customer's last name. |
| country | NVARCHAR(50) | Customer's country of residence. |
| marital_status | NVARCHAR(50) | Customer's marital status. |
| gender | NVARCHAR(50) | Customer's gender. |
| birthdate | DATE | Customer's date of birth. |
| create_date | DATE | Date the customer record was created. |

## 2. gold.dim_products
**Purpose:** Provides information about the products and their attributes.

### Columns:

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| product_key | INT | Surrogate key for each product record. |
| product_id | INT | Unique identifier for the product. |
| product_number | NVARCHAR(50) | Alphanumeric product code. |
| product_name | NVARCHAR(50) | Descriptive name of the product. |
| category_id | NVARCHAR(50) | Unique identifier for product category. |
| category | NVARCHAR(50) | Product category classification. |
| subcategory | NVARCHAR(50) | Detailed product classification. |
| maintenance_required | NVARCHAR(50) | Whether product requires maintenance. |
| cost | INT | Base price of the product. |
| product_line | NVARCHAR(50) | Product line or series. |
| start_date | DATE | Date product became available. |

## 3. gold.fact_sales
**Purpose:** Stores transactional sales data for analytical purposes.

### Columns:

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| order_number | NVARCHAR(50) | Unique identifier for each sales order. |
| product_key | INT | Foreign key to product dimension. |
| customer_key | INT | Foreign key to customer dimension. |
| order_date | DATE | Date the order was placed. |
| shipping_date | DATE | Date the order was shipped. |
| due_date | DATE | Date payment was due. |
| sales_amount | INT | Total sale value for the line item. |
| quantity | INT | Number of units ordered. |
| price | INT | Price per unit. |
