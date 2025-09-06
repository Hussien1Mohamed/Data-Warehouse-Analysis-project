SELECT
    co.order_id    ,
    sm.method_id,
   ISNULL(oh.history_id, 99999) as history_id ,
    c.customer_id,
    b.book_id,

 CAST([order_date] AS DATE) AS split_order_date,
 CAST([order_date] AS TIME(0)) AS split_order_time,
    ol.price
FROM cust_order AS co
LEFT JOIN shipping_method AS sm
ON co.shipping_method_id = sm.method_id
LEFT JOIN order_history AS oh
ON co.order_id = oh.order_id
LEFT JOIN customer AS c
ON co.customer_id = c.customer_id
LEFT JOIN order_line AS ol
ON co.order_id = ol.order_id
LEFT JOIN book AS b
ON ol.book_id = b.book_id

alter table fact_book_sales drop column order_date

alter table fact_book_sales add order_time time , order_date date

alter table fact_book_sales drop column order_time , order_date

alter table fact_book_sales add cost decimal(10,6)

alter table fact_book_sales add address_dest int

alter table fact_book_sales add constraint address_order_fk foreign key ([address_dest]) references adress_dim ([Adress_sk])

insert into [dbo].[order_history_status]([history_Bk], [status_Bk],[status_value], [status_date], [status_time])
values(99999,99999,'Order Deprecated','2000-01-01','07:28:00.0000000')

select * from Fact_Book_sales

select @@SERVERNAME