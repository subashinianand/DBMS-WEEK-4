# Order Management System

## Project Overview

The **Order Management System** is an e-commerce database project used to manage customer orders and products.

It stores order details such as customer, order date, products, quantity, price, total amount, and order status.

## Objectives

* Create customer orders.
* Add multiple products to an order.
* Store product quantity and price.
* Calculate total order amount.
* Update order status.
* Delete cancelled orders.
* View customer order history.
* Generate simple reports.

## Tables Used

### 1. Customer

Stores customer information.

### 2. Product

Stores product information.

### 3. Orders

Stores the main order information.

**Columns:**

* Order_ID
* Customer_ID
* Order_Date
* Total_Amount
* Order_Status

### 4. Order_Details

Stores products included in an order.

**Columns:**

* Order_Detail_ID
* Order_ID
* Product_ID
* Quantity
* Price

### 5. Inventory

Stores product stock information.

## Relationships

```text
Customer
   |
   | 1 : Many
   ↓
Orders
   |
   | 1 : Many
   ↓
Order_Details
   |
   | Many : 1
   ↓
Product
```

## Constraints Used

* Primary Key
* Foreign Key
* NOT NULL
* CHECK

Examples:

```sql
CHECK (Quantity > 0)
```

```sql
CHECK (Total_Amount >= 0)
```

## Main Operations

### Insert

Add new orders and products.

### Update

Update order status and product quantity.

### Delete

Delete cancelled orders.

### Reports

The system can generate:

* Customer Order History
* Product-wise Order Report
* Total Sales
* Customer Purchase Analysis

## Example

```text
Order ID: 5001
Customer: Rahul

Product      Quantity
Laptop          1
Mouse           2
```

## Technologies Used

* MySQL
* SQL
* MySQL Workbench
* GitHub

## Conclusion

The Order Management System provides a simple way to manage customer orders, products, quantities, prices, and order status in an e-commerce database.
