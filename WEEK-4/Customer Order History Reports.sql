SELECT
    Customer.Customer_Name,
    Orders.Order_ID,
    Orders.Order_Date,
    Orders.Total_Amount,
    Orders.Order_Status
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID;

SELECT
    Customer.Customer_Name,
    Orders.Order_ID,
    Orders.Order_Date,
    Product.Product_Name,
    Order_Details.Quantity,
    Order_Details.Price,
    Orders.Total_Amount,
    Orders.Order_Status
FROM Customer
JOIN Orders
    ON Customer.Customer_ID = Orders.Customer_ID
JOIN Order_Details
    ON Orders.Order_ID = Order_Details.Order_ID
JOIN Product
    ON Order_Details.Product_ID = Product.Product_ID;
    
    SELECT
    Product.Product_Name,
    COUNT(Order_Details.Order_ID) AS Times_Ordered,
    SUM(Order_Details.Quantity) AS Total_Quantity_Sold
FROM Product
JOIN Order_Details
ON Product.Product_ID = Order_Details.Product_ID
GROUP BY Product.Product_ID, Product.Product_Name;

SELECT
Customer.Customer_Name,
SUM(Orders.Total_Amount) AS Total_Spending
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
GROUP BY Customer.Customer_ID, Customer.Customer_Name;

SELECT
Customer.Customer_Name,
AVG(Orders.Total_Amount) AS Average_Order_Value
FROM Customer
JOIN Orders
ON Customer.Customer_ID = Orders.Customer_ID
GROUP BY Customer.Customer_ID, Customer.Customer_Name;

SELECT
    SUM(Total_Amount) AS Total_Sales
FROM Orders;