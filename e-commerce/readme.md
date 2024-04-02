## E-commerce Database Management

### Problem Statement:

You are tasked with designing a simplified relational database schema for an e-commerce platform. The database should manage information about products, customers, orders, and their relationships.

#### Entities:
1. **Customers:** Keep track of customer information such as customer ID, name, email, and address.
2. **Products:** Store details about products including product ID, name, description, price, and quantity available.
3. **Orders:** Record information about orders placed by customers, including order ID, customer ID (foreign key referencing Customers), order date, and total amount.
4. **Order_Items:** Capture the association between orders and the products within those orders. It should include order ID (foreign key referencing Orders), product ID (foreign key referencing Products), quantity, and unit price.

#### Requirements:
1. Design and create the necessary tables for the entities mentioned above with appropriate data types and constraints.
2. Insert sample data into the tables to ensure they are populated.
3. Write SQL queries to perform the following tasks:
   - Retrieve the list of all customers along with their total order count.
   - Calculate the total revenue generated from all orders.
   - Find out which products have not been ordered yet.
   - Display the details of customers who have made at least one order along with the total amount they have spent.
   - List the top 5 best-selling products by the total quantity sold.
   - Retrieve the order details for a specific customer by providing their email address.
   - Calculate the average order value.

#### Bonus Tasks:
1. Implement foreign key constraints to enforce referential integrity.
2. Utilize INNER JOINs, LEFT JOINs, and/or other relevant joins for querying data.
3. Optimize the queries for performance where possible.

**Note:** Ensure to handle edge cases appropriately and provide suitable error handling mechanisms where necessary.
