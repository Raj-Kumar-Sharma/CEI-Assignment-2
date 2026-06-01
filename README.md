# CSI-Assignment-2
# SQL-Based Sales Data Analysis using Sample Superstore Dataset

## Overview

This project was completed as part of the **Celebal Summer Internship 2026 - Week 2 Assignment**.

The objective of this project is to perform comprehensive sales data analysis using SQL by applying data exploration, filtering, aggregation, sorting, ranking, business-oriented queries, and data validation techniques on the Sample Superstore Dataset.

The analysis helps derive meaningful insights regarding:

- Sales Performance
- Customer Behavior
- Product Trends
- Regional Performance
- Profitability Analysis
- Data Quality Validation

---

## Project Structure

```text
├── Assignment-2.ipynb          # Python Notebook
├── Assignment-2.sql            # SQL Queries
├── Assignment - 2.pdf          # Final Report
├── Sample - Superstore.csv     # Dataset
└── README.md
```

---

## Dataset Information

| Attribute | Value |
|------------|------------|
| Dataset Name | Sample Superstore Dataset |
| Domain | Retail Sales |
| Records | 9,994 |
| Columns | 21 |
| Database | MySQL |

The dataset contains information related to:

- Orders
- Customers
- Products
- Categories
- Sales
- Profit
- Discounts
- Regions
- States
- Shipping Information

---

## Technologies Used

### Programming Language

- Python

### Libraries

- Pandas
- SQLAlchemy
- PyMySQL

### Database

- MySQL

### Development Environment

- Jupyter Notebook
- MySQL Workbench

---

## Project Workflow

### Step 1: Install Required Libraries

```bash
pip install pandas sqlalchemy pymysql
```

---

### Step 2: Load Dataset

The Superstore CSV file is loaded using Pandas.

```python
df = pd.read_csv(
    "Sample - Superstore.csv",
    encoding="latin1"
)
```

---

### Step 3: Data Preprocessing

Date columns are converted into DateTime format.

```python
df["Order Date"] = pd.to_datetime(
    df["Order Date"],
    errors="coerce"
)

df["Ship Date"] = pd.to_datetime(
    df["Ship Date"],
    errors="coerce"
)
```

---

### Step 4: Create Database

The script automatically creates a MySQL database if it does not already exist.

```sql
CREATE DATABASE IF NOT EXISTS superstore_db;
```

---

### Step 5: Load Data into MySQL

The dataset is transferred from Pandas DataFrame to a MySQL table named:

```sql
superstore
```

using:

```python
df.to_sql()
```

---

### Step 6: Verify Data Loading

The row count is validated after insertion.

```sql
SELECT COUNT(*)
FROM superstore;
```

Expected Result:

```text
9994
```

---

## SQL Analysis Performed

### 1. Data Exploration

Performed basic dataset inspection.

Queries:

- DESCRIBE superstore
- Sample Records
- Total Record Count

Purpose:

- Understand table structure
- Verify successful loading
- Validate dataset size

---

### 2. Data Filtering

Applied SQL WHERE clauses based on:

- Region
- Category
- Order Date
- Sales Amount
- Combined Conditions

Purpose:

- Analyze specific subsets of data
- Perform targeted business analysis

---

### 3. Aggregation Analysis

Used aggregate functions:

- SUM()
- AVG()
- COUNT()

with GROUP BY.

Calculated:

- Total Sales
- Total Quantity Sold
- Average Sales
- Category-wise Sales
- Category-wise Profit

Purpose:

- Evaluate overall business performance

---

### 4. Sorting and Ranking

Used:

```sql
ORDER BY
LIMIT
```

to identify:

- Top Selling Products
- Top Categories
- Most Profitable States

Purpose:

- Identify high-performing business entities

---

### 5. Business Use Cases

Performed real-world business analysis:

#### Monthly Sales Trend

Analyzed monthly revenue patterns.

#### Top Customers

Identified highest revenue-generating customers.

#### Customer Profitability Analysis

Identified most profitable customers.

#### Duplicate Record Detection

Detected duplicate Order IDs.

---

### 6. Data Validation

Performed data quality checks:

- Total Row Validation
- Duplicate Detection
- Missing Value Checks
- Negative Profit Transactions

Purpose:

- Ensure reliability and consistency of analysis

---

## Key Insights

- The dataset contains 9,994 sales records.
- Technology category generated the highest sales.
- Top products contribute significantly to overall revenue.
- Several customers account for a large portion of sales.
- Monthly sales fluctuate throughout the year.
- Some transactions resulted in negative profit.
- Duplicate Order IDs exist because a single order may contain multiple products.
- The dataset passed basic data quality validation checks.

---

## Files Included

### Assignment-2.ipynb

Contains:

- Data Loading Script
- Database Connectivity
- Data Verification

### Assignment-2.sql

Contains:

- All SQL Queries
- Filtering Queries
- Aggregation Queries
- Business Use Cases
- Validation Queries

### Assignment - 2.pdf

Contains:

- Complete Project Report
- Query Outputs
- Screenshots
- Observations
- Insights

---

## Learning Outcomes

Through this project, the following SQL concepts were applied:

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- LIMIT
- HAVING
- Aggregate Functions
- Data Validation Techniques

The project demonstrates how SQL can be used to transform raw transactional data into meaningful business insights.

---

## Author

**Raj Kumar**

B.Tech (Computer Science Engineering)
Specialization: AI & Data Science

Celebal Summer Internship 2026
