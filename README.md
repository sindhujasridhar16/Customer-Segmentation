# RFM Analysis and Customers Segmentation Using SQL/Python and Tableau


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

Explorartory analysis Conclusion and Insights :

The customers of age between 25 to 65 shop more than the customers of any other age groups, the customers of age between 35 to 45 are the frequent shoppers. This means that young adults and middle aged people are shopping more. The old aged people between 65 to 75 are not actively shopping. We should attract more young people of age between 18 to 25 by introducing strategies and campaigns.

The females shop more than males. More than half of the total is females the pie chart with 59.8% of the population being female and 40.2% being male, we can draw the following demographic insights:

The mall has a slight majority of female patrons.

The mall's target audience may be more inclusive of both genders, potentially reflecting the demographics of Istanbul as a whole.

Marketing strategies and product offerings could be tailored to appeal to both male and female customers.

Store layout and ambiance could be designed to cater to both genders to create a more welcoming and inclusive environment.

The most sought-after product categories among all age groups are clothing, cosmetics, food and beverage. This suggests that these are the most popular categories for shoppers at the mall, regardless of their age.
The popularity of clothing suggests that there is a strong demand for fashion at the mall. Retailers could capitalize on this by stocking a wide variety of clothing, including trendy items, classic pieces, and affordable options.

The popularity of food and beverage suggests that there is a strong demand for dining options at the mall. Retailers could capitalize on this by offering a variety of dining options, including fast food, casual dining, and fine dining.

The females have a higher number of customers in all categories except books, souvenir and toys. This suggests that females are more likely to purchase products in most categories, while males are more likely to purchase technology products and toys.
There are more female customers than male customers in all age groups except for the 18-25 age group. This suggests that the malls are more popular among women than men.
The number of female customers peaks in the 35-45 age group, while the number of male customers peaks in the 45-55 age group.

The number of customers of both genders declines steadily after the age of 55. This suggests that the mall is less popular among older shoppers.
Clothing is the most popular product category, with a quantity more than 1 lakh. This suggests that there is a strong demand for fashion at the mall. Retailers could capitalize on this by stocking a wide variety of clothing, including trendy items, classic pieces, and affordable options.
Cosmetics: Cosmetics is the second most popular product category. This suggests that there is a strong demand for cosmetics at the mall. Retailers could capitalize on this by stocking a wide variety of cosmetics, including makeup, skincare, and fragrance.

Food & Beverage: Food & Beverage is the third most popular product category. This suggests that there is a strong demand for dining options at the mall. Retailers could capitalize on this by offering a variety of dining options, including fast food, casual dining, and fine dining.

Cash is the most used payment method among customers of different age groups. and credit card and debit card comes after that. From which debit card is the least used payment method among customers of different age groups.

There are 10 malls in Istanbul from which the top 3 malls popular among people are: Mall of Istanbul, Kanyon and Metrocity.

In January of each year (2021, 2022 and 2023) they have the most sales volume. The sales volume in the year 2022 will increase month by month following a zigzagging trend.

Sales tend to be higher during the Winter season (December, January and February). This suggests that shoppers are more likely to visit the malls and make purchases during this time of year.Sales tend to be lower during the summer months (June, July, and August). This suggests that shoppers are less likely to visit the mall and make purchases during this time of year.

The malls may want to consider extending its opening hours during the winter season to accommodate increased customer traffic.

The malls may want to invest in marketing campaigns that target shoppers during the summer months to drive sales during this slower period.

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
