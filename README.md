# RFM Analysis and Customers Segmentation Using SQL


RFM stands for Recency, Frequency, and Monetary Value. It is a method used by businesses to analyze customer behavior and segment customers based on their purchasing patterns. Here's a breakdown of each component:

Recency (R): This refers to how recently a customer has made a purchase. Customers who have made a purchase more recently are often considered more valuable because they are likely to be more engaged with the brand and more likely to make future purchases.

Frequency (F): This refers to how often a customer makes purchases. Customers who make frequent purchases are often considered more loyal and valuable to the business.

Monetary Value (M): This refers to the monetary value of a customer's purchases. Customers who spend more money on each purchase are often considered more valuable because they contribute more revenue to the business.

By analyzing these three factors together, businesses can segment their customers into different groups based on their overall value to the business. This allows businesses to better understand their customers, tailor their marketing efforts to specific customer segments, and ultimately improve customer satisfaction and loyalty. RFM analysis can be conducted using customer transaction data and is often used in combination with other customer segmentation techniques to provide deeper insights into customer behavior.

In this case, I will use the dataset that I get from https://www.kaggle.com/datasets/mehmettahiraslan/customer-shopping-dataset

Explore the Data
Inspect the data, we have to make sure the columns required for RFM analysis exist (last purchase date, total orders, and total money spent). In this case, we use SQL/Python.

These are the columns in the data :

customer_id: unique code for each customer;
gender: male or female customers gender;
age: range number of customers age;
total_orders: shows how frequently customers order;
price: total money spent by customers;
payment_method: method of customers payment;
shopping_mall: location of customers’ purchase
invoice_date: last customer’s orders date.

Result : 
As per the analysis, women tend to shop greater than men.
Mall of Istanbul has the most sales, whilst Cehavier AVM is the least.
In 2021 and 2022, women tend to shop best.
Finally from the RFM code, We get to have these five customers segment which would give us Customer loyalty

1. New customers, for those who just purchased recently, regardless the purchase frequency and total spending;
2. Lost customers, for those who haven’t purchased for a long time ;
3. Regular customers, business as usual, very good to have them;
4. Loyal customers, precisely our target market, surely the customers who love our products;
5. Champion customers, best of the best, certainly we want to keep them forever.
