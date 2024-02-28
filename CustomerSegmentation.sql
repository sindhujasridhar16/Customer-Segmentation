-- Explore the Data
-- Inspect the data, we have to make sure the columns required for RFM analysis exist 
-- (last purchase date, total orders, and total money spent).
-- In this case, we use MySQL Workbench and query.
select customer_id, gender, age, total_orders, price, payment_method, shopping_mall,
substring_index(invoice_date, ' ', 1) invoice_date
from customer_shopping_data;


