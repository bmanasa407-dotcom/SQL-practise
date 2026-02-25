CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(100),
    Product_Category VARCHAR(100),
    Product_Name VARCHAR(150),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Payment_Mode VARCHAR(50),
    Store_Location VARCHAR(100)
);

select * from ORDERS

INSERT INTO Orders
(Order_ID, Order_Date, Customer_ID, Customer_Name, Product_Category, Product_Name, Quantity, Unit_Price, Payment_Mode, Store_Location)
VALUES
(1001, '2026-02-01', 'C001', 'Ravi Kumar', 'Electronics', 'Wireless Mouse', 2, 799, 'UPI', 'Bangalore'),

(1002, '2026-02-02', 'C002', 'Sneha Reddy', 'Grocery', 'Basmati Rice 5kg', 1, 650, 'Credit Card', 'Hyderabad'),

(1003, '2026-02-03', 'C003', 'Arjun Mehta', 'Fashion', 'Men''s T-Shirt', 3, 499, 'Cash', 'Chennai'),

(1004, '2026-02-04', 'C004', 'Priya Sharma', 'Electronics', 'Bluetooth Speaker', 1, 1499, 'Debit Card', 'Mumbai'),

(1005, '2026-02-05', 'C005', 'Kiran Rao', 'Home & Kitchen', 'Mixer Grinder', 1, 2499, 'UPI', 'Bangalore'),

(1006, '2026-02-06', 'C006', 'Neha Verma', 'Beauty', 'Face Cream', 4, 299, 'Credit Card', 'Delhi'),

(1007, '2026-02-07', 'C007', 'Rahul Das', 'Grocery', 'Cooking Oil 1L', 5, 180, 'Cash', 'Kolkata'),

(1008, '2026-02-08', 'C008', 'Anjali Nair', 'Fashion', 'Women''s Jeans', 2, 1199, 'UPI', 'Kochi'),

(1009, '2026-02-09', 'C009', 'Suresh Patel', 'Electronics', 'Smartphone', 1, 15999, 'Debit Card', 'Ahmedabad'),

(1010, '2026-02-10', 'C010', 'Meena Iyer', 'Home & Kitchen', 'Pressure Cooker', 1, 1899, 'Credit Card', 'Pune');



--Write a query to convert all customer names to uppercase.
select upper(Customer_Name) as Customer_Name_Upper from orders;

--Extract the first 5 characters from Product_Name.
select substr(Product_Name, 1, 5) as first_5_char from orders;

--Find the length of each Customer_Name.
select length(Customer_Name) as name_length from Orders;

--Replace the word "Rice" with "Premium Rice" in Product_Name.
SELECT REPLACE(Product_Name, 'Rice', 'Premium Rice') from Orders;

--Remove leading and trailing spaces from Customer_Name.
select trim(Customer_Name) from Orders;

--Concatenate First_Name and Last_Name as Full_Name.
select concat(First_Name, ' ', Last_Name) as fullname from orders;


--Find customers whose names start with 'A'.
select Customer_Name from orders where Customer_Name like 'A%';


--Extract the domain name from Email_ID.
select substr(Email_id,instr(Email_id)'@') FROM Orders;


--Find the position of '@' in Email_ID.
select instr('@', Email_ID) from Orders;

--Reverse the Product_Name.
select  REVERSE(Product_Name) from Orders;

--Convert the first letter of each word in Product_Name to uppercase.
SELECT INITCAP(Product_Name) AS Capital_Name FROM Orders;

--Extract the last 3 characters from Order_ID.
select substr(Order_ID,3) from Orders;


--Count how many times letter 'a' appears in Customer_Name.
select Customer_Name,length(Customer_Name) - LENGTH(REPLACE(LOWER(Customer_Name),'a','')) as count_a FROM Orders;


--Mask the last 4 digits of a phone number.
select substr(phone_number,1,length(PHONE_NUMBER)-4)||'****' from orders;

--Split Full_Name into First_Name and Last_Name.
select substr(customer_name,1,instr(customer_name,' ')) First_name, substr(customer_name,instr(customer_name,' ')+1) Last_name from orders;


--Remove all special characters from Product_Code.
select replace(product_category,'&','') as product_category from orders;


--Compare two columns ignoring case sensitivity.
select * from orders where upper(customer_name) = upper(product_name);


--Find customers whose name contains 'kumar'.
select customer_name from orders where lower(customer_name) like '%kumar%';


--Pad Order_ID with leading zeros to make it 6 digits.
select LPAD(order_id,6,0) order_id from orders;


--Extract substring between two characters.
select substr(customer_name, instr(lower(customer_name),'a'),instr(lower(customer_name),'e')) as sub_string from orders;