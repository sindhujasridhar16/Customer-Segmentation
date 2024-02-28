-- Explore the Data
-- Inspect the data, we have to make sure the columns required for RFM analysis exist 
-- (last purchase date, total orders, and total money spent).
-- In this case, we use MySQL Workbench and query.

select customer_id, gender, age, total_orders, price, payment_method, shopping_mall,
substring_index(invoice_date, ' ', 1) invoice_date
from customer_shopping_data;


-- inspect data

select count(*) -- check how many records
from customer_shopping_data;

select count(distinct(customer_id)) -- customer id has to be unique, check if it's correct
from customer_shopping_data;

select * from customer_shopping_data -- check if there are null values
where shopping_mall is null;


-- spending by gender

select gender, sum(total_orders) orders, sum(price) sales
from customer_shopping_data
group by gender
order by 3 desc;

-- spending by mall

select shopping_mall, sum(total_orders) orders, sum(price) sales
from customer_shopping_data
group by shopping_mall
order by 3 desc;

-- top spending by year

select distinct(year(invoice_date)) year, gender, sum(total_orders) sales, sum(price) revenue
from customer_shopping_data
group by year, gender
order by revenue desc;

select
  customer_id, gender, age, payment_method, shopping_mall, 
  datediff('2023-03-10', invoice_date) last_date_order,
  sum(total_orders) total_orders,
  sum(price) spending
from customer_shopping_data
group by customer_id, gender, age, payment_method, shopping_mall, invoice_date
order by last_date_order


with rfm as (
 select
  customer_id, gender, age, payment_method, shopping_mall, 
  datediff('2023-03-10', invoice_date) last_date_order,
  sum(total_orders) total_orders,
  sum(price) spending
 from customer_shopping_data
 group by customer_id, gender, age, payment_method, shopping_mall, invoice_date
 order by last_date_order
)
select *,
  ntile(3) over (order by last_date_order) rfm_recency,
  ntile(3) over (order by total_orders) rfm_frequency,
  ntile(3) over (order by spending) rfm_monetary
 from rfm

with rfm as (
 select
  customer_id, gender, age, payment_method, shopping_mall, 
  datediff('2023-03-10', invoice_date) last_date_order,
  sum(total_orders) total_orders,
  sum(price) spending
 from customer_shopping_data
 group by customer_id, gender, age, payment_method, shopping_mall, invoice_date
 order by last_date_order
),

rfm_calc as (
 select *,
  ntile(3) over (order by last_date_order) rfm_recency,
  ntile(3) over (order by total_orders) rfm_frequency,
  ntile(3) over (order by spending) rfm_monetary
 from rfm
 order by rfm_monetary desc
)

select *, rfm_recency + rfm_frequency + rfm_monetary as rfm_score,
concat(rfm_recency, rfm_frequency, rfm_monetary) as rfm
from rfm_calc


-- RFM

select *, case
 when rfm in (311, 312, 311) then 'new customers'
 when rfm in (111, 121, 131, 122, 133, 113, 112, 132) then 'lost customers'
 when rfm in (212, 313, 123, 221, 211, 232) then 'regular customers'
 when rfm in (223, 222, 213, 322, 231, 321, 331) then 'loyal customers'
 when rfm in (333, 332, 323, 233) then 'champion customers'
end rfm_segment
from
(
with rfm as (
 select
  customer_id, gender, age, payment_method, shopping_mall, 
  datediff('2023-03-10', invoice_date) last_date_order,
  sum(total_orders) total_orders,
  sum(price) spending
 from customer_shopping_data
 group by customer_id, gender, age, payment_method, shopping_mall, invoice_date
 order by last_date_order
),

rfm_calc as (
 select *,
  ntile(3) over (order by last_date_order) rfm_recency,
  ntile(3) over (order by total_orders) rfm_frequency,
  ntile(3) over (order by spending) rfm_monetary
 from rfm
 order by rfm_monetary desc
)

select *, rfm_recency + rfm_frequency + rfm_monetary as rfm_score,
concat(rfm_recency, rfm_frequency, rfm_monetary) as rfm
from rfm_calc
) rfm_tb;

