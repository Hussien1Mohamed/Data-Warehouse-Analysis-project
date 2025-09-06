alter table fact_book_sales
drop fk5_fact, fk6_fact

drop table time_dim

alter table Fact_Book_sales add constraint  fk6_fact_time foreign key  (time_fk) references dim_time (time_SK)

alter table Fact_Book_sales add constraint  fk6_fact_date foreign key  (date_fk) references Dim_Date (Date_SK)


SELECT 
    b.book_id AS BookKey,
    b.title AS Title,
    b.isbn13 AS ISBN,
    l.language_id,
    l.language_code  ,
    l.language_name AS Language,
    b.num_pages AS NumPages,
    p.publisher_id,
    b.publication_date AS PublicationDate,
    p.publisher_name AS Publisher

FROM dbo.book b
LEFT JOIN dbo.book_language l ON b.language_id = l.language_id
LEFT JOIN dbo.publisher p ON b.publisher_id = p.publisher_id

alter table book alter column language_code nvarchar (20)

select * from Book

alter table shipping_method add cost float , [start_date] date ,end_date date, iscurrent tinyint
alter table fact_book_sales drop column shiping_cost

alter table shipping_method drop column start_date, end_date,iscurrent

ALTER TABLE dbo.shipping_method
ADD [start_date] DATETIME,
    end_date DATETIME,
    iscurrent BIT;

	select * from shipping_method

	alter table order_history_status drop column status_date

    alter table order_history_status add status_date date , status_time time

	ALTER TABLE [dbo].[order_history_status]
ADD status_time TIME(7)

ALTER TABLE [dbo].[order_history_status]
DROP COLUMN status_time

select * from [dbo].[order_history_status]