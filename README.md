# Retail Sales SQL Analytics

SQL-based retail sales analytics project using PostgreSQL.  
Includes schema, sample dataset, and analytical SQL queries for revenue trends, customer behaviour, product performance, and category-level insights.

---

## 🧠 Project Objective

The goal of this project is to practice and showcase SQL skills by analysing a small retail sales dataset. Using only SQL (joins, aggregations, CTEs, and window functions), we answer questions such as:

- What is the total revenue?
- Which categories and products perform best?
- Who are the top customers by spending and order frequency?
- How do discounts impact revenue?
- What does the monthly revenue trend look like?

---

## 🛠 Tech Stack

- **Database:** PostgreSQL (hosted on Neon)
- **Language:** SQL
- **Concepts:** Joins, aggregations, window functions, basic dimensional modelling

---

## 🗄 Schema Design

Tables:

- `customers(customer_id, customer_name, email, city, join_date)`
- `categories(category_id, category_name)`
- `products(product_id, product_name, category_id, price)`
- `orders(order_id, customer_id, order_date)`
- `order_items(order_item_id, order_id, product_id, quantity, selling_price, discount)`

This follows a simple star-schema style:
- `orders` + `order_items` = fact table
- `customers`, `products`, `categories` = dimensions

---

## 📂 Folder Structure

```text
schema/
  create_tables.sql      -- DDL: all table definitions

data/
  insert_data.sql        -- Sample retail dataset

analysis/
  total_revenue.sql
  revenue_by_category.sql
  best_selling_products.sql
  monthly_sales_trend.sql
  top_customers.sql
  discount_impact.sql
  order_frequency_ranking.sql
  recent_purchase.sql
```

## ▶️ How to Run

Follow these steps to set up and run the project:

---

### **1. Create a PostgreSQL database**
Use either:
- A local PostgreSQL installation, or  
- A cloud-hosted option like **Neon** (recommended)

---

### **2. Create all tables**
Execute the schema file to create the database structure:

```sql
\i schema/create_tables.sql
```

### 3. Load sample data

Insert all sample retail records:

```sql
\i data/insert_data.sql
```

### 4. Run analysis queries

Execute any SQL script from the `analysis/` folder to generate insights:

```sql
\i analysis/total_revenue.sql
```

**Example:**

```sql
-- Total revenue
SELECT 
    SUM((selling_price - discount) * quantity) AS total_revenue
FROM order_items;
```

## 📊 Example Insights

From the sample dataset:

- **Electronics** contribute the highest revenue among all categories.
- Staples like **Milk 1L** and **Rice 5kg Pack** dominate in quantity sold.
- High-value customers can be identified by combining total spending and purchase frequency.
- Discount-heavy products still generate strong revenue even after discounts.

---

## 🚀 Possible Extensions

- Add more time periods and customers for richer sales trends.
- Build **views** or **materialized views** for faster dashboard queries.
- Connect this database to a BI tool such as **Power BI** or **Tableau**.
- Add **CTEs for RFM analysis** (Recency, Frequency, Monetary) to segment customers.

## 📌 Learning Focus

This project is meant to demonstrate:

- Practical SQL for analytics  
- Data modelling for retail sales  
- Writing readable, modular SQL scripts  

