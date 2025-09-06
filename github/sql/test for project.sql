select * from Fact_Book_sales

select * from Fact_Book_sales
where order_id_Bk = 5657

SELECT 
   *
FROM Fact_Book_Sales f
 right JOIN order_history_status ohs
    ON ohs.history_Bk = f.history_fk
	
	where status_value = 'delivered'


	where order_id_Bk = 5657


	select * from Fact_Book_sales fc 
left join order_history_status oh on fc.history_fk = oh.history_sk
where status_Bk = 6

select * from Fact_Book_sales fc 
left join order_history_status oh on fc.history_fk = oh.history_sk
where order_id_Bk = 4272
order by status_Bk