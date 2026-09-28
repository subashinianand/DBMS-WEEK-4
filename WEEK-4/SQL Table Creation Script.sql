CREATE DATABASE ecommerce_db;
USE ecommerce_db;
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT NOT NULL,
    Order_Date DATE NOT NULL,
    Total_Amount DECIMAL(10,2) NOT NULL,
    Order_Status VARCHAR(20) NOT NULL,

    FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),

    CHECK (Total_Amount >= 0),

    CHECK (Order_Status IN ('Pending', 'Shipped', 'Delivered'))
);

CREATE TABLE Order_Details (
    Order_Detail_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    Price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (Order_ID)
        REFERENCES Orders(Order_ID),

    FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID),

    CHECK (Quantity > 0),
    CHECK (Price >= 0)
);