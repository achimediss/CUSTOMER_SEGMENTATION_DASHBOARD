# 🧠 Customer Segmentation Analysis using RFM (Online Retail Dataset)

## 📌 Project Overview
This project applies **RFM (Recency, Frequency, Monetary) analysis** to segment customers based on purchasing behavior using an online retail dataset.

The goal is to identify high-value customers, at-risk customers, and opportunities for improving customer retention and revenue.

---

## 🎯 Objectives
- Analyze customer purchasing patterns
- Segment customers into meaningful groups
- Identify high-value and at-risk customers
- Provide business insights for decision-making

---

## 🛠️ Tools & Technologies
- **Excel** → Data cleaning & preprocessing  
- **PostgreSQL** → Data transformation & RFM analysis  
- **Power BI** → Data visualization & dashboard creation  

---

## 📂 Dataset
- Online Retail Dataset
- Contains transactional data including:
  - InvoiceNo
  - CustomerID
  - InvoiceDate
  - Quantity
  - UnitPrice
  - Country

---

## ⚙️ Data Cleaning
- Removed missing `CustomerID`
- Filtered out negative/zero quantities and prices
- Created a new column:  
  **TotalPrice = Quantity × UnitPrice**

---

## 🧮 RFM Analysis

### Recency (R)
Number of days since the customer's last purchase

### Frequency (F)
Total number of transactions per customer

### Monetary (M)
Total amount spent by each customer

---

## 🏷️ Customer Segmentation

Customers were grouped into segments such as:

- Champions  
- Loyal Customers  
- New Customers  
- At Risk  
- Others  

---

## 📊 Dashboard Features (Power BI)

### 🔹 KPI Cards
- Total Revenue  
- Total Customers  
- Total Orders  
- Average Frequency  
- Average Monetary Value  

### 🔹 Visualizations
- Customer Segment Distribution  
- Revenue by Segment  
- RFM Scatter Plot (Recency vs Monetary with Frequency size)  
- Recency Distribution  
- Top Customers Table  

---

## 🔍 Key Insights

- High-value customers (Champions) contribute the largest share of revenue  
- A significant number of customers fall into the **At-Risk** category  
- Many customers have low purchase frequency, indicating growth opportunities  
- Recent customers with low frequency represent potential loyal customers  

---

## 💡 Business Recommendations

- 🎯 Target **Champions** with loyalty and reward programs  
- 🔄 Re-engage **At-Risk customers** with personalized offers  
- 📈 Convert **New Customers** into repeat buyers through marketing campaigns  
- 🚫 Reduce focus on low-value customers to optimize marketing spend  

---

## 📸 Dashboard Preview
## 📸 Dashboard Preview

![images](final_dashboard.png)
## 🚀 How to Use This Project
1. Clone the repository  
2. Open the dataset  
3. Run SQL queries for RFM analysis  
4. Load data into Power BI  
5. Explore the dashboard  

---
