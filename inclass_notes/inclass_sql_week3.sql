-- Statement for creating the table (DDL)
CREATE TABLE family (
    first_name varchar(255),
    last_name char(255),
    middle_init char(1)
    );

INSERT INTO family (first_name,last_name) VALUES ('David', 'Haynes'), ('Haynes II', 'David'), ('David', 'HayneZ');

-- Statement for changing the value of the table  
UPDATE family
SET last_name = 'Haynes'
WHERE last_name = 'HayneZ';

UPDATE family
SET first_name = 'David', last_name = 'Haynes'
WHERE first_name = 'Haynes II';
	
INSERT INTO family (first_name,last_name) VALUES ('David', 'Heckles')

SELECT * 
FROM family;

DELETE FROM family WHERE last_name = 'Heckles';

CREATE TABLE candy_makers
(
    co_id bigserial, 
    maker_name character varying(250),
    address character varying(250),
    city character varying(250),
    state_abbrev character(2),
    country character varying(250),
    employees integer,
    founded date
);

-- Escaping Single Quotes
SELECT *
FROM candy_mess
WHERE candy_type = 'Twizzler''s'


UPDATE candy_sales
SET purchased_date = '2017-11-01 05:00'
WHERE rec_id BETWEEN 117 AND 118
WHERE candy_owner = 'David' AND candy_type = 'Rolo'

    
INSERT INTO candy_sales (candy_type, candy_owner) VALUES
('Rolo', 'David'), ('Rolo', 'David')

SELECT DISTINCT candy_owner
-- , candy_owner 
FROM halloween_candy
ORDER by 1


ALTER TABLE halloween_candy rename to candy_sales;
ALTER TABLE candy_sales add purchased_date timestamp;

SELECT candy_type
FROM halloween_candy
WHERE lower(candy_type) LIKE '%kit%'

-- 38 on initial load
-- Where candy_owner = 'Venky' AND candy_type = 'Snickers,Hersheys'

UPDATE candy_sales
SET customer_id = 50
WHERE candy_owner = 'David'

UPDATE halloween_candy
SET candy_type = 'Snickers'
WHERE candy_owner = 'Venky' AND candy_type = 'Snickers,Hersheys'

SELECT * 
FROM candy_sales


CREATE TABLE Ingredients (
    Candy_ID varchar(50),
    Ingredient varchar(50),
    Amount int,
    Unit varchar(10)
);

CREATE Table candy_customers
(
candy_customer_id bigserial,
first_name varchar(255),
last_name varchar(255),
address varchar(255),
birthday date,
has_children boolean,
salary money
);


-- Alter Table
alter table candy_sales add customer_id int;


-- Granting privileges on tables
grant update on halloween_candy_rec_id_seq to students;
grant all on Ingredients to students
grant all on candy_makers to students


-- select * from family limit 1
CREATE TABLE halloween_candy
( 
candy_type text,
candy_owner text
);

SELECT candy_owner, count(candy_owner)
FROM halloween_candy
GROUP BY candy_owner
ORDER BY 2 DESC;

SELECT candy_type, candy_owner
FROM halloween_candy;

SELECT candy_type, count(candy_owner)
FROM halloween_candy
Group by candy_type;


ALTER TABLE candy_sales add candy_id bigint;
ALTER TABLE candy_sales rename to candy_mess;


--String functions with nesting
SELECT split_part(repeat(1 || ' apple',2), ' ', 1);
--Time/Date Functions
SELECT date_part('hour', '2015-05-1 10:00'::timestamp);

ALTER TABLE ingredients RENAME to candy_ingredients;
ALTER TABLE candy_ingredients RENAME ingredient to ingredient_id;

DROP TABLE candy_sales;
CREATE TABLE candy_sales
(
transaction_id bigserial primary key,
purchased_date timestamp,
customer_id bigserial,
    -- references candy_customers(candy_customer_id),
candy_id bigint 
);

ALTER TABLE candy_customers ADD CONSTRAINT candy_customer_id_constraint UNIQUE (candy_customer_id)

Select * 
from candy_customers;

SELECT *
From candy_makers;




