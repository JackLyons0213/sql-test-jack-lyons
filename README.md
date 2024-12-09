# README

## **Introduction**
This project is a demonstration of SQL skills for designing and working with relational databases. The scope includes:
- Designing a database schema that supports entity relationships.
- Writing SQL scripts for data definition, insertion, and queries.
- Optimizing database operations for efficiency and clarity.

The goal is to simulate the operations of an e-commerce platform, showcasing the ability to manage structured data, perform CRUD operations, and write complex queries for data analytics.

---

## **Scenario**
### **E-Commerce Platform**
This SQL project is based on a fictional e-commerce platform where users can purchase products, leave reviews, and view order details. The platform's operations involve the following entities:

### **Entities**
#### 1. **Users**
- Personal information such as name and email.
- Unique identification for each user.
- Registration date captured automatically.

#### 2. **Products**
- Details such as product name, price, and category.
- Each product is assigned to a specific category.

#### 3. **Categories**
- Product categories to organize items (e.g., Electronics, Books, Clothing).

#### 4. **Orders**
- Order details, including the user placing the order and the order date.
- Contains information about the products purchased and their quantities.

#### 5. **Reviews**
- Ratings and comments left by users for products.
- Links to both the user and the product being reviewed.

---

## **Database Structure**
The database schema includes the following tables:
- **Users**: Stores user details.
- **Products**: Stores product information.
- **Categories**: Stores product categories.
- **Orders**: Tracks user orders.
- **OrderItems**: Tracks the products within each order.
- **Reviews**: Tracks reviews left by users for products.

---

## **Key Features**
1. **CRUD Operations**:
   - Insert new users.
   - Update product prices.
   - Delete outdated orders.

2. **Analytics and Insights**:
   - Calculate total sales by category for a specific month.
   - Identify users who have never placed an order.
   - Display the top 5 products by average review rating.
   - Analyze daily order volumes for the last 30 days.

3. **Optimized Queries**:
   - Use of indexes and constraints for improved performance.
   - Common Table Expressions (CTEs) for complex queries.

---

## **How to Use**
1. Run the `schema.sql` script to create the database schema.
2. Execute the `data_insertion.sql` script to populate the database with sample data.
3. Test the queries provided in `queries.sql` to verify functionality and analytics.

---

## **Future Improvements**
- Expand the schema to include additional features like product inventory management.
- Implement advanced analytics queries for customer behavior insights.
- Optimize further with materialized views for frequently accessed reports.
