-- Create the database for the project
CREATE DATABASE OrdersAnalysis;
USE OrdersAnalysis;

-- Create the Orders table to store main order details
CREATE TABLE Orders (
    ID INT PRIMARY KEY, -- Unique identifier for each order
    Name VARCHAR(255), -- Customer name
    City VARCHAR(255), -- City of the customer
    State VARCHAR(255), -- State of the customer
    Address TEXT, -- Full address of the customer
    isCOD BOOLEAN, -- Indicates if the order is Cash on Delivery
    Date_Placed DATETIME, -- Date and time when the order was placed
    Status VARCHAR(50), -- Status of the order (e.g., Delivered, Returned)
    IVR VARCHAR(50), -- Type of confirmation
    Remarks TEXT, -- Any additional comments or notes
    Total INT, -- Total cost of the order
    Date_Delivered DATETIME, -- Date when the order was delivered
    Date_Returned DATETIME -- Date when the order was returned, if applicable
);

-- Insert cleaned data into the Orders table
-- Replace the example rows with actual cleaned dataset records
INSERT INTO Orders (ID, Name, City, State, Address, isCOD, Date_Placed, Status, IVR, Remarks, Total, Date_Delivered, Date_Returned)
VALUES
(30145, 'Man', 'Nayagarh', 'Odisha', 'Jagadish Prasad, Golapokhari-Bhapur Road, Fatehgarh', TRUE, '2021-01-31 17:45:59', 'Delivered', 'Confirmed', 'pickrr', 999, '2021-02-14 04:37:00', NULL),
(30144, 'Dik', 'Thane', 'Maharashtra', 'Shanti Garden Sector 4, flat 401, building 2,', TRUE, '2021-01-31 17:33:57', 'Delivered', 'Confirmed', NULL, 599, '2021-02-02 23:19:18', NULL);

-- Create the Order_Items table to store product details within each order
CREATE TABLE Order_Items (
    Order_ID INT, -- Reference to the order from the Orders table
    Product_ID INT, -- Unique identifier for each product in the order
    Product_Name VARCHAR(255), -- Name of the product
    PRIMARY KEY (Order_ID, Product_ID), -- Composite key to ensure uniqueness
    FOREIGN KEY (Order_ID) REFERENCES Orders(ID) -- Maintain referential integrity
);

-- Insert product details into the Order_Items table
-- Replace the example rows with actual parsed data from the Cart column
INSERT INTO Order_Items (Order_ID, Product_ID, Product_Name)
VALUES
(30145, 32, 'One Week Weight-Loss (Personalized)'),
(30144, 23, 'One Week Detox Trial');

-- Calculate total sales by state
SELECT State, SUM(Total) AS Total_Sales
FROM Orders
GROUP BY State
ORDER BY Total_Sales DESC;

-- Calculate the average delivery time in days
SELECT 
    AVG(TIMESTAMPDIFF(DAY, Date_Placed, Date_Delivered)) AS Avg_Delivery_Days
FROM Orders
WHERE Date_Delivered IS NOT NULL;

-- Calculate the percentage of orders that are Cash on Delivery (COD)
SELECT 
    isCOD, 
    COUNT(*) AS Count, 
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Orders), 2) AS Percentage
FROM Orders
GROUP BY isCOD;

-- Calculate the frequency of products ordered
SELECT Product_Name, COUNT(*) AS Frequency
FROM Order_Items
GROUP BY Product_Name
ORDER BY Frequency DESC;

-- Prepare the data for Tableau visualization
-- Combine data from Orders and Order_Items for comprehensive analysis
SELECT o.ID, o.City, o.State, o.Date_Placed, o.Total, i.Product_Name
FROM Orders o
LEFT JOIN Order_Items i ON o.ID = i.Order_ID;
