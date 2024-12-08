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
- **Description:** Includes columns such as Date Placed, Date Delivered, Cart, isCOD, Status, and Remarks.


---

## Objectives
1. Perform data cleaning and preprocessing to handle missing values and outliers.
2. Analyze sales performance with a focus on healthcare orders.
3. Evaluate delivery efficiency for healthcare products.
4. Uncover trends in customer behavior and product popularity.
5. Assess the impact of payment and confirmation methods on healthcare orders.

---

## Tools and Libraries
- **Python Libraries:**
- `pandas`, `numpy`: Data manipulation and preprocessing.
- `ast`: For parsing structured data in text format.
- **Tableau:** For interactive dashboards and advanced visualizations.

---

## Methodology
1. **Data Cleaning and Preprocessing**
- Converted date columns (Date Placed, Date Delivered, and Date Returned) to datetime format, handling parsing errors gracefully.
- Replaced missing values:
- City and State were filled with "Unknown".
- Remarks was filled with "No Remarks".
- Created new columns: (Delivery Duration, Status Category, Product Count, Order Month, Order Year and isCOD).
  - Delivery Duration: Calculated as the difference between Date Delivered and Date Placed.
  - Status Category: Categorized Status into "Completed," "Returned," or "Other".
  - Product Count: Extracted the number of products in each order from the Cart column using Python's ast library.
  - Order Month and Year: Extracted month names and years from Date Placed.
  - isCOD Descriptive Values: Converted the isCOD boolean column into "Yes" or "No".
2. **Feature Engineering**
- Defined metrics to analyze order behavior and delivery efficiency, such as average delivery duration, late delivery percentages, and monthly order distribution.
3. **Visualization in Tableau**
- Visualized data through Tableau dashboards, highlighting:
  -Order frequency and revenue trends by city.
  -Delivery performance, including average delivery duration and product counts.
  -Customer payment preferences and healthcare order proportions.

---

## Findings
1. **Sales Otherview**
- Top States: Certain regions dominate in healthcare sales, indicating geographically concentrated demand.
- Trends: Monthly healthcare sales display steady growth, driven by recurring product purchases.

2. **Customer Insights**
- Order Frequency: Urban areas see the highest order frequencies.
- Average Order Value: Healthcare orders consistently outperform non-healthcare categories in value.

3. **Delivery Performance**
- Average Delivery Time: Healthcare orders take slightly longer to deliver due to specialized requirements.
- Late Deliveries: The rate of late deliveries has improved over time.

4. **Healthcare Product Insights**
- Top Products: A handful of healthcare products account for a significant portion of revenue.
- Revenue Distribution: Revenue is heavily skewed towards these popular items.

5. **Payment and Confirmation Insights**
- COD Preference: Cash on Delivery (COD) remains popular, especially for healthcare products.
- Confirmation Methods: IVR confirmation is widely used for order verification.

6. **Results and Insights**
- Revenue Contribution: Healthcare orders represent a substantial portion of total revenue in certain regions.
- Delivery Efficiency: Delivery times are improving, yet remain a challenge for certain healthcare items.
- Customer Behavior: Urban areas dominate in healthcare demand, and average order values are higher for healthcare items.
- Product Trends: Popular healthcare products drive a disproportionate share of revenue, highlighting cross-sell opportunities.

---

## Conclusion and Recommendations
**Key Takeaways**
- Focus on High-Demand Regions: Tailor marketing strategies to states with the highest healthcare order volumes.
- Optimize Delivery Operations: Prioritize efficiency improvements for healthcare orders to reduce delivery times further.
- Leverage Product Popularity: Promote high-performing products while exploring opportunities to boost sales of lesser-known items.
- Refine Payment Methods: Enhance support for COD while encouraging digital payment options for greater convenience.

## How to Run the Project  
1. Clone this repository:  
   ```bash
   git clone https://github.com/alice-patrick/E-Commerce-Healthcare-Orders-Dataset-Data-Analysis-Using-Python.git 
