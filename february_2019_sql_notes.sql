-- CREATE TABLE Halloween_candy (
-- Candy_type text,
-- Candy_owner text
-- );
-- 
-- GRANT ALL ON candy_purchases TO students;

SELECT DISTINCT candy_owner
FROM candy_purchases
-- GROUP BY candy_owner
-- WHERE record_id IN (46,47,48)

SELECT candy_owner, date_part('month', purchased_date) as month_eaten, count(candy_type)
FROM candy_purchases
WHERE date_part('year', purchased_date)::integer = 2018
GROUP BY candy_owner, date_part('month', purchased_date)

SELECT candy_owner, purchased_date
FROM candy_purchases
WHERE date_part('hour', purchased_date) < '13'


ALTER TABLE Halloween_candy RENAME TO candy_purchases;
ALTER TABLE candy_purchases add purchased_date timestamp;

INSERT INTO candy_purchases (candy_type, candy_owner) VALUES ('fireball', 'David')

UPDATE candy_purchases
SET purchased_date = '5/6/2015 2:35 PM'
WHERE record_id = 48


CREATE TABLE customer_id(
id serial,
first_name varchar(50),
last_name varchar(50),
birthday date,
favorite_color varchar(50),
birth_sign varchar(25),
zipcode integer
);

-- ALTER TABLE halloween_candy ADD record_id serial;
SELECT usename, datname, count(1)
-- * 
FROM pg_stat_activity
GROUP BY usename, datname
-- where usename = 'david'

GRANT ALL ON customer_id to students;
GRANT USAGE, SELECT ON SEQUENCE halloween_candy_record_id_seq TO students;

GRANT ALL ON customer_id to students;
GRANT USAGE, SELECT ON SEQUENCE customer_id_id_seq TO students;
