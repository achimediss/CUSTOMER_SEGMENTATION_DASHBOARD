-- TABLE CREATION///////........

-- CREATE TABLE online_retail(
-- invoiceNo VARCHAR,
-- stockCode VARCHAR,
-- Description TEXT,
-- Quantity INTEGER,
-- InvoiceDate DATE,
-- UnitPrice DECIMAL,
-- CustomerID NUMERIC,
-- Country VARCHAR,
-- total_price NUMERIC
-- );


-- LATEST PURCHASE DATE
-- select max(invoicedate)  as latest_date from online_retail;

-- PERFORMING A DML OPERTION TO REMOVE ROWS WITH <= 0 price or qty
-- delete from online_retail where total_price <=0 or quantity <=0;

-- ANOTHER DML to remove customers with null id
-- delete from online_retail where customerid is null;


-- RFM PER CUSTOMER
-- create view rfm_table as
-- select customerid, sum(total_price) AS "monetary",
-- sum(quantity) as "total_quantity",
-- count(distinct invoiceno) as "frequency",
-- max(invoicedate) as "last_purchase" from online_retail
-- GROUP BY customerid 
-- order by monetsry desc;
-- select * from rfm_table;


-- CALCULATING RECENCY
-- create view recency as
-- select customerid, DATE_PART('day',(select max(invoicedate::timestamp) 
-- from online_retail)-max(invoicedate::timestamp)) as "recency",
-- count (distinct invoiceno) as "frequency",
-- sum(total_price) as "monetary" from online_retail
-- group by customerid;
-- select * from recency;

-- create view rfm_sources as
-- select *,
-- ntile(5) over(order by recency desc ) as r_score,
-- ntile(5) over(order by frequency asc) as f_score,
-- ntile(5) over (order by monetary asc) as m_score
-- from recency;

select * from rfm_sources;

-- create view customer_segment as
-- SELECT *,
--     CASE
--         WHEN r_score = 5 AND f_score = 5 AND m_score = 5 THEN 'Champions'
--         WHEN r_score >= 4 AND f_score >= 4 THEN 'Loyal Customers'
--         WHEN r_score >= 4 AND f_score <= 2 THEN 'New Customers'
--         WHEN r_score <= 2 AND f_score >= 4 THEN 'At Risk'
--         ELSE 'Others'
--     END AS customer_segment
-- FROM rfm_sources;

-- select * from customer_segment;