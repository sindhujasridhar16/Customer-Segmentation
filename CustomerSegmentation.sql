select customer_id, gender, age, total_orders, price, payment_method, shopping_mall,
substring_index(invoice_date, ' ', 1) invoice_date
from customer_shopping_data;
