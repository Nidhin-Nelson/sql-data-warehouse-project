# Data Warehouse and Analytics Project

Welcome to my **Data Warehouse and Analytics Project** repository! 🎓  
This project demonstrates a complete data warehousing and analytics solution built as part of my data engineering portfolio. It showcases industry best practices in data architecture, ETL development, and SQL analytics.

---

## ⚓ Data Architecture

The project follows the **Medallion Architecture** pattern:

```
📁 Bronze Layer  →  📁 Silver Layer  →  📁 Gold Layer
  (Raw Data)      (Cleaned Data)     (Analytics Ready)
```

- **Bronze Layer**: Raw data from CSV files loaded into SQL Server with minimal changes
- **Silver Layer**: Data cleansing, validation, and standardization applied
- **Gold Layer**: Business-ready star schema optimized for analytics and reporting

---

## 📖 Project Overview

This project encompasses:

1. **Data Architecture Design**: Building a modern data warehouse using the Medallion Architecture with **Bronze**, **Silver**, and **Gold** layers.
2. **ETL Pipeline Development**: Extracting, transforming, and loading data from multiple source systems into the warehouse.
3. **Data Modeling**: Creating fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Developing SQL-based analytics to generate actionable business insights.

🎯 This repository demonstrates proficiency in:
- SQL Development & Query Optimization
- Data Warehouse Design
- ETL Pipeline Development  
- Data Modeling & Star Schema Design  
- Data Quality & Cleansing  
- Technical Documentation

---

## 🛠️ Tools & Technologies

- **SQL Server Express** - Database platform
- **SQL Server Management Studio (SSMS)** - Database development IDE
- **Git & GitHub** - Version control
- **Draw.io** - Architecture diagrams

---

## 🎯 Project Requirements

### Building the Data Warehouse

#### Objective
Develop a modern data warehouse using SQL Server to consolidate sales data from multiple sources, enabling analytics and business intelligence.

#### Key Specifications
- **Data Sources**: Import data from ERP and CRM systems provided as CSV files.
- **Data Quality**: Implement data cleansing and validation to ensure accuracy.
- **Integration**: Combine multiple sources into a unified, analytics-ready data model.
- **Scope**: Focus on current dataset; historical data tracking is not required.
- **Documentation**: Provide comprehensive documentation including data catalogs and architecture diagrams.

---

### Analytics & Reporting

#### Objective
Develop SQL-based analytics to deliver insights on:
- **Customer Behavior & Segmentation**
- **Product Performance Metrics**
- **Sales Trends & Patterns**

These analytics provide stakeholders with key business metrics for data-driven decision-making.

---

## 📂 Repository Structure

```
data-warehouse-project/
│
├── datasets/                           # Source data files
│
├── docs/                               # Documentation
│   ├── naming_conventions.md           # Naming standards and guidelines
│   └── data_catalog.md                 # Data dictionary
│
├── scripts/                            # SQL scripts organized by layer
│   ├── bronze/                         # Bronze layer scripts
│   │   ├── ddl_bronze.sql             # Table definitions
│   │   └── proc_load_bronze.sql       # Data loading procedures
│   ├── silver/                         # Silver layer scripts
│   │   ├── ddl_silver.sql             # Table definitions
│   │   └── proc_load_silver.sql       # Data transformation procedures
│   └── gold/                           # Gold layer scripts
│       └── ddl_gold.sql               # Analytics table definitions
│
├── tests/                              # Data quality validation scripts
│   ├── quality_checks_silver.sql       # Silver layer quality checks
│   └── quality_checks_gold.sql         # Gold layer quality checks
│
├── .gitignore                          # Git ignore rules
├── LICENSE                             # License information
└── README.md                           # Project documentation
```

---

## 💡 Skills Demonstrated

### Technical Competencies
- **SQL Development**: Complex queries, CTEs, window functions, stored procedures
- **Data Architecture**: Medallion architecture implementation (Bronze/Silver/Gold)
- **ETL Development**: Building data pipelines for extraction, transformation, and loading
- **Data Modeling**: Star schema design with fact and dimension tables
- **Data Quality**: Implementing validation, cleansing, and standardization processes
- **Performance Optimization**: Query tuning and indexing strategies
- **Version Control**: Git workflows and collaborative development
- **Documentation**: Creating technical documentation and data catalogs

### Analytical Skills
- Business requirements analysis
- Data profiling and exploration
- Problem-solving and troubleshooting
- Technical communication

---

## ✨ Key Features

### Multi-Source Data Integration
- Consolidated data from ERP and CRM systems
- Handled data quality issues across different sources
- Unified data formats and standards

### Layered Architecture
- **Bronze**: Raw data preservation
- **Silver**: Cleaned and validated data
- **Gold**: Analytics-ready star schema

### Analytical Capabilities
- Customer behavior analysis and segmentation
- Product performance tracking
- Sales trend identification
- Custom business metrics and KPIs

### Comprehensive Documentation
- Detailed data catalog with metadata
- Architecture and data flow diagrams
- Clear naming conventions
- Well-commented SQL code

---

## 📚 Learning Outcomes

Through this project, I gained hands-on experience with:

✅ **Data Warehouse Architecture**: Understanding medallion architecture and layer-based design patterns  
✅ **ETL Pipeline Development**: Building robust data pipelines from source to analytics  
✅ **Advanced SQL**: Complex transformations, aggregations, and query optimization  
✅ **Data Modeling**: Designing efficient star schemas for analytical workloads  
✅ **Data Quality Management**: Implementing validation and cleansing processes  
✅ **Best Practices**: Following industry standards for data engineering  
✅ **Technical Documentation**: Creating clear, professional documentation  
✅ **Version Control**: Managing projects with Git and GitHub  

---

## 🙏 Acknowledgments

This project was completed as part of my data engineering learning journey. Special thanks to:

### Course Instructor
**Baraa Khatib Salkini (Data With Baraa)**

[![YouTube](https://img.shields.io/badge/YouTube-red?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/@datawithbaraa)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/baraa-khatib-salkini)
[![Website](https://img.shields.io/badge/Website-000000?style=for-the-badge&logo=google-chrome&logoColor=white)](https://www.datawithbaraa.com)

- **Course**: [SQL Data Warehouse Project](https://youtu.be/SSKVgrwhzus)
- **Materials**: [Download Course Materials](https://www.datawithbaraa.com/sql-introduction/advanced-sql-project/)
- **GitHub**: [Course Repository](https://github.com/DataWithBaraa/sql-data-warehouse-project)

This project is based on the comprehensive SQL Data Warehouse course by Data With Baraa. The course provided excellent guidance on data warehouse design, ETL development, and SQL best practices.

---

## 📫 Contact

**Nidhin Joseph Nelson**

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/nidhin-jn/)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:nidhinnelson1@gmail.com)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://instagram.com/nidhin.jsp/)

Feel free to reach out for questions, feedback, or collaboration opportunities!

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Note**: This is a student portfolio project created for educational purposes. All data used is synthetic and for demonstration only.
