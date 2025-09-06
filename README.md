# 📚 Bookstore Data Warehouse

## 📖 Overview

This project demonstrates the design and implementation of a **Data Warehouse** for a bookstore. It covers the full BI lifecycle:

* **ETL with SSIS** – loading and transforming raw data into a star schema.
* **Power BI Dashboards** – interactive reporting for decision-making.

---

## 🗄️ Schema Design

* **Fact Table**: `Fact_Book_Sales` – captures transactions (price, quantity, date, status).
* **Dimensions**:

  * Customer
  * Address
  * Book
  * Author
  * Date
  * Time
  * Shipping
  * Order Status
* **Bridge Tables**: Handle many-to-many (e.g., Customer ↔ Address, Author ↔ Book).

---

## ⚙️ Workflow

1. **Database Setup**: Run SQL scripts from `/sql/` to create schema + load sample data.
2. **ETL**: Execute SSIS packages in `/ssis/` to populate the warehouse.
3. **Visualization**: Open Power BI reports from `/powerbi/`.

---

## 📊 Key Features

* Calculation of **Net Sales** = Delivered – Returned orders.
* ETL includes **Slowly Changing Dimensions** handling.
* Dashboards include:

  * Top selling books & authors
  * Customer purchase analysis
  * Returned vs Delivered orders
  * Monthly/Yearly sales trends

---

## 📂 Project Structure

```
├── sql/       # Database scripts
├── ssis/      # ETL packages
├── powerbi/   # Reports (PBIX files)
├── docs/      # ERD + screenshots
└── README.md
```

---

## 🚀 Future Enhancements

* Automate ETL with **SQL Agent jobs**.
* Add KPIs such as **Profit Margin**, **Delivery Time**, **Customer Lifetime Value**.
* Migrate to **Azure Synapse + Power BI Service** for cloud deployment.

---

👉 This version is **detailed enough for professionals** but still **short enough to read quickly**.

Do you want me to also prepare a **sample screenshot section** (with placeholders) so that your GitHub page looks more visual?
