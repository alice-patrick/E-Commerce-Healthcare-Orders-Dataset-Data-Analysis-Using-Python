# E-Commerce Healthcare Orders: Methodology and Findings

This project focuses on analyzing e-commerce data with an emphasis on healthcare orders. The objective is to uncover key sales, customer, delivery, and product insights. The process involved data cleaning using Python, feature engineering, and visualization through Tableau dashboards. The findings provide actionable insights for improving business operations and customer satisfaction in the healthcare segment.

## Table of Contents
1. [Introduction](#introduction)  
2. [Dataset](#dataset)
3. [Objectives](#objectives)  
4. [Tools and Libraries](#tools-and-libraries)  
5. [Methodology](#Methodology)  
6. [Findings](#Findings)  
7. [Results and Insights](#Results-and-Insights)  
8. [Conclusion and Recommendations](#Conclusion-and-Recommendations)
9. [How to Run the Project](#How-to-Run-the-Project)

---

## Introduction
E-commerce data can reveal valuable insights about customer behavior, sales performance, and operational efficiency. In this project, we focused on healthcare orders to identify trends, evaluate delivery performance, and assess customer preferences. These insights aim to support strategic decisions for optimizing operations and enhancing customer experience.

---

## Dataset
- **Source:** [Kaggle - E-Commerce Healthcare Orders Dataset](https://www.kaggle.com/datasets/adishgolechha/ecommerce-healthcare-orders-dataset).
- **Size:** 18 columns x 1589 rows (contaiing multiple fields related to order details, sales, delivery, and customer preferences).
- **Description:** Includes information on product categories (healthcare vs. non-healthcare), revenue, delivery times, and payment methods.

---

## Objectives
1. Perform data cleaning and preprocessing to handle missing values and outliers.
2. Analyze sales performance with a focus on healthcare orders.
3. Evaluate delivery efficiency for healthcare products.
4. Uncover trends in customer behavior and product popularity.
5. Assess the impact of payment and confirmation methods on healthcare orders.

---

## Tools and Libraries
Python Libraries:
pandas, numpy: For data cleaning and preprocessing.
matplotlib, seaborn: For exploratory data visualization.
Tableau: For interactive dashboards and advanced visualizations.

---

## Methodology
1. Data Cleaning and Preprocessing
Tools Used: Python (pandas and numpy).
Steps:
Removed duplicate and irrelevant entries.
Handled missing values using mean/mode imputation.
Ensured consistent formatting for categorical data (e.g., Healthcare and Non-Healthcare).
Created a calculated field for delivery time (Date Delivered - Date Placed).
2. Feature Engineering
Derived KPIs, such as:
% Healthcare Revenue: Calculated as [Healthcare Revenue] / [Total Revenue].
Average Order Value: Computed as Sum(Revenue) / Count(Order ID).
Late Delivery Percentage: Count(Late Deliveries) / Total Orders.
3. Visualization in Tableau
Designed interactive dashboards to visualize:
Sales trends by state and category.
Customer behavior, including order frequency and average order value.
Delivery performance metrics, such as average delivery times and late delivery rates.
Product popularity and revenue contribution for healthcare items.
Payment method preferences and confirmation methods for healthcare orders.
Findings
Sales Overview

Top States: Certain regions dominate in healthcare sales, indicating geographically concentrated demand.
Trends: Monthly healthcare sales display steady growth, driven by recurring product purchases.
Customer Insights

Order Frequency: Urban areas see the highest order frequencies.
Average Order Value: Healthcare orders consistently outperform non-healthcare categories in value.
Delivery Performance

Average Delivery Time: Healthcare orders take slightly longer to deliver due to specialized requirements.
Late Deliveries: The rate of late deliveries has improved over time.
Healthcare Product Insights

Top Products: A handful of healthcare products account for a significant portion of revenue.
Revenue Distribution: Revenue is heavily skewed towards these popular items.
Payment and Confirmation Insights

COD Preference: Cash on Delivery (COD) remains popular, especially for healthcare products.
Confirmation Methods: IVR confirmation is widely used for order verification.
Results and Insights
Revenue Contribution: Healthcare orders represent a substantial portion of total revenue in certain regions.
Delivery Efficiency: Delivery times are improving, yet remain a challenge for certain healthcare items.
Customer Behavior: Urban areas dominate in healthcare demand, and average order values are higher for healthcare items.
Product Trends: Popular healthcare products drive a disproportionate share of revenue, highlighting cross-sell opportunities.
Conclusion and Recommendations
Key Takeaways
Focus on High-Demand Regions: Tailor marketing strategies to states with the highest healthcare order volumes.
Optimize Delivery Operations: Prioritize efficiency improvements for healthcare orders to reduce delivery times further.
Leverage Product Popularity: Promote high-performing products while exploring opportunities to boost sales of lesser-known items.
Refine Payment Methods: Enhance support for COD while encouraging digital payment options for greater convenience.
How to Run the Project
Open the Tableau dashboard from this link.
Use the interactive filters to explore different categories and KPIs.
Analyze findings across dashboards to draw insights and take informed actions.
