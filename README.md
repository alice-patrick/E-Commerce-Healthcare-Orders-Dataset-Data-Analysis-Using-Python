Comprehensive Data Analysis of Healthcare Orders in E-Commerce
This project provides an in-depth analysis of healthcare-related e-commerce data. It focuses on uncovering trends, customer behaviors, and delivery performance while providing actionable insights for stakeholders in the healthcare and e-commerce industries. The analysis was performed using Python for data cleaning and preprocessing, with visualizations created in Tableau.

Table of Contents
Introduction
Dataset
Objectives
Tools and Libraries
Methodology
Insights and Visualizations
Sales and Revenue Analysis
Customer Behavior Analysis
Delivery Performance
Healthcare Product Trends
COD and Confirmation Insights
Conclusion and Recommendations
How to Run the Project
Introduction
This project analyzes e-commerce data with a focus on healthcare-related orders. The goal is to uncover patterns in sales, customer preferences, and delivery performance to optimize operations and enhance user satisfaction.

Dataset
Source: Provided as orders.csv.
Description: Includes order information such as delivery dates, product categories, order value, and customer details.
Size: ~50K records (example; adjust to your dataset's size).
Objectives
Analyze sales and revenue trends in healthcare orders.
Understand customer behavior for healthcare products.
Evaluate delivery performance of healthcare orders.
Identify the most popular and highest-revenue-generating healthcare products.
Compare cash-on-delivery (COD) usage in healthcare versus other product categories.
Tools and Libraries
Python: Data preprocessing and feature engineering.
pandas: Data manipulation and cleaning.
ast: Parsing product cart data.
Tableau: Interactive dashboards and visualizations.
Methodology
Data Cleaning:
Converted date columns to datetime objects.
Handled missing values in key fields (City, State, etc.).
Created new columns for delivery duration, status categorization, and product counts.
Extracted month and year for temporal analysis.
Feature Engineering:
Classified healthcare products.
Measured delivery performance (e.g., delays, speed).
Derived customer insights (e.g., order frequency by city).
Visualization:
Built Tableau dashboards to present findings interactively.
Insights and Visualizations
1. Sales and Revenue Analysis
Objective: Understand sales performance of healthcare orders.
Visualizations:
Filled map showing total revenue by state, filtered for healthcare orders.
Monthly revenue trends for healthcare products (area chart).
Stacked bar chart illustrating revenue contribution of healthcare orders.
2. Customer Behavior Analysis
Objective: Explore customer purchasing habits for healthcare products.
Visualizations:
Heatmap showing frequency of healthcare orders by city.
Bar chart comparing average order value: Healthcare vs. Non-Healthcare.
3. Delivery Performance
Objective: Evaluate delivery efficiency for healthcare orders.
Visualizations:
Bar chart comparing average delivery duration of healthcare vs. non-healthcare orders.
Line chart tracking late deliveries over time for healthcare products.
4. Healthcare Product Trends
Objective: Highlight popular and revenue-driving healthcare products.
Visualizations:
Word cloud of top-selling healthcare products.
Bar chart showing revenue distribution across healthcare products.
5. COD and Confirmation Insights
Objective: Assess COD usage and order confirmation methods for healthcare purchases.
Visualizations:
Pie chart showing the proportion of COD in healthcare orders.
Bar chart analyzing preferred confirmation methods (e.g., IVR).
Conclusion and Recommendations
Key Findings:
Healthcare orders contribute significantly to revenue, with higher demand in urban areas.
Delivery delays for healthcare products occur more frequently during peak periods.
Cash-on-delivery is a popular payment method for healthcare orders.
Recommendations:
Streamline delivery operations to minimize delays.
Focus marketing efforts on high-revenue healthcare products.
Enhance customer experience in cities with high order frequency.
How to Run the Project
Clone the repository:
bash

git clone https://github.com/yourusername/healthcare-ecommerce-analysis.git
