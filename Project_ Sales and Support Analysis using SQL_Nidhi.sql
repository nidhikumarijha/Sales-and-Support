create database interview;

use interview;

CREATE TABLE IF NOT EXISTS `agents` (
  `AGENT_CODE` varchar(6) NOT NULL DEFAULT '',
  `AGENT_NAME` varchar(40) DEFAULT NULL,
  `WORKING_AREA` varchar(35) DEFAULT NULL,
  `COMMISSION` decimal(10,2) DEFAULT NULL,
  `PHONE_NO` varchar(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AGENT_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007  ', 'Ramasundar                              ', 'Bangalore                          ', '0.15', '077-25814763   ', '\r'),
('A003  ', 'Alex                                    ', 'London                             ', '0.13', '075-12458969   ', '\r'),
('A008  ', 'Alford                                  ', 'New York                           ', '0.12', '044-25874365   ', '\r'),
('A011  ', 'Ravi Kumar                              ', 'Bangalore                          ', '0.15', '077-45625874   ', '\r'),
('A010  ', 'Santakumar                              ', 'Chennai                            ', '0.14', '007-22388644   ', '\r'),
('A012  ', 'Lucida                                  ', 'San Jose                           ', '0.12', '044-52981425   ', '\r'),
('A005  ', 'Anderson                                ', 'Brisban                            ', '0.13', '045-21447739   ', '\r'),
('A001  ', 'Subbarao                                ', 'Bangalore                          ', '0.14', '077-12346674   ', '\r'),
('A002  ', 'Mukesh                                  ', 'Mumbai                             ', '0.11', '029-12358964   ', '\r'),
('A006  ', 'McDen                                   ', 'London                             ', '0.15', '078-22255588   ', '\r'),
('A004  ', 'Ivan                                    ', 'Torento                            ', '0.15', '008-22544166   ', '\r'),
('A009  ', 'Benjamin                                ', 'Hampshair                          ', '0.11', '008-22536178   ', '\r');

CREATE TABLE IF NOT EXISTS `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  KEY `CUSTCITY` (`CUST_CITY`),
  KEY `CUSTCITY_COUNTRY` (`CUST_CITY`,`CUST_COUNTRY`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London                             ', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003  '),
('C00001', 'Micheal', 'New York                           ', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008  '),
('C00020', 'Albert', 'New York                           ', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008  '),
('C00025', 'Ravindran', 'Bangalore                          ', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011  '),
('C00024', 'Cook', 'London                             ', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006  '),
('C00015', 'Stuart', 'London                             ', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003  '),
('C00002', 'Bolt', 'New York                           ', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008  '),
('C00018', 'Fleming', 'Brisban                            ', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005  '),
('C00021', 'Jacks', 'Brisban                            ', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005  '),
('C00019', 'Yearannaidu', 'Chennai                            ', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010  '),
('C00005', 'Sasikant', 'Mumbai                             ', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002  '),
('C00007', 'Ramanathan', 'Chennai                            ', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010  '),
('C00022', 'Avinash', 'Mumbai                             ', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002  '),
('C00004', 'Winston', 'Brisban                            ', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005  '),
('C00023', 'Karl', 'London                             ', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006  '),
('C00006', 'Shilton', 'Torento                            ', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004  '),
('C00010', 'Charles', 'Hampshair                          ', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009  '),
('C00017', 'Srinivas', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007  '),
('C00012', 'Steven', 'San Jose                           ', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012  '),
('C00008', 'Karolina', 'Torento                            ', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004  '),
('C00003', 'Martin', 'Torento                            ', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004  '),
('C00009', 'Ramesh', 'Mumbai                             ', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002  '),
('C00014', 'Rangarappa', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001  '),
('C00016', 'Venkatpati', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007  '),
('C00011', 'Sundariya', 'Chennai                            ', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010  ');

CREATE TABLE IF NOT EXISTS `orders` (
  `ORD_NUM` decimal(6,0) NOT NULL,
  `ORD_AMOUNT` decimal(12,2) NOT NULL,
  `ADVANCE_AMOUNT` decimal(12,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` varchar(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ADVANCE_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
('200100', '1000.00', '600.00', '2008-01-08', 'C00015', 'A003  ', 'SOD\r'),
('200110', '3000.00', '500.00', '2008-04-15', 'C00019', 'A010  ', 'SOD\r'),
('200107', '4500.00', '900.00', '2008-08-30', 'C00007', 'A010  ', 'SOD\r'),
('200112', '2000.00', '400.00', '2008-05-30', 'C00016', 'A007  ', 'SOD\r'),
('200113', '4000.00', '600.00', '2008-06-10', 'C00022', 'A002  ', 'SOD\r'),
('200102', '2000.00', '300.00', '2008-05-25', 'C00012', 'A012  ', 'SOD\r'),
('200114', '3500.00', '2000.00', '2008-08-15', 'C00002', 'A008  ', 'SOD\r'),
('200122', '2500.00', '400.00', '2008-09-16', 'C00003', 'A004  ', 'SOD\r'),
('200118', '500.00', '100.00', '2008-07-20', 'C00023', 'A006  ', 'SOD\r'),
('200119', '4000.00', '700.00', '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
('200121', '1500.00', '600.00', '2008-09-23', 'C00008', 'A004  ', 'SOD\r'),
('200130', '2500.00', '400.00', '2008-07-30', 'C00025', 'A011  ', 'SOD\r'),
('200134', '4200.00', '1800.00', '2008-09-25', 'C00004', 'A005  ', 'SOD\r'),
('200115', '2000.00', '1200.00', '2008-02-08', 'C00013', 'A013  ', 'SOD\r'),
('200108', '4000.00', '600.00', '2008-02-15', 'C00008', 'A004  ', 'SOD\r'),
('200103', '1500.00', '700.00', '2008-05-15', 'C00021', 'A005  ', 'SOD\r'),
('200105', '2500.00', '500.00', '2008-07-18', 'C00025', 'A011  ', 'SOD\r'),
('200109', '3500.00', '800.00', '2008-07-30', 'C00011', 'A010  ', 'SOD\r'),
('200101', '3000.00', '1000.00', '2008-07-15', 'C00001', 'A008  ', 'SOD\r'),
('200111', '1000.00', '300.00', '2008-07-10', 'C00020', 'A008  ', 'SOD\r'),
('200104', '1500.00', '500.00', '2008-03-13', 'C00006', 'A004  ', 'SOD\r'),
('200106', '2500.00', '700.00', '2008-04-20', 'C00005', 'A002  ', 'SOD\r'),
('200125', '2000.00', '600.00', '2008-10-10', 'C00018', 'A005  ', 'SOD\r'),
('200117', '800.00', '200.00', '2008-10-20', 'C00014', 'A001  ', 'SOD\r'),
('200123', '500.00', '100.00', '2008-09-16', 'C00022', 'A002  ', 'SOD\r'),
('200120', '500.00', '100.00', '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
('200116', '500.00', '100.00', '2008-07-13', 'C00010', 'A009  ', 'SOD\r'),
('200124', '500.00', '100.00', '2008-06-20', 'C00017', 'A007  ', 'SOD\r'),
('200126', '500.00', '100.00', '2008-06-24', 'C00022', 'A002  ', 'SOD\r'),
('200129', '2500.00', '500.00', '2008-07-20', 'C00024', 'A006  ', 'SOD\r'),
('200127', '2500.00', '400.00', '2008-07-20', 'C00015', 'A003  ', 'SOD\r'),
('200128', '3500.00', '1500.00', '2008-07-20', 'C00009', 'A002  ', 'SOD\r'),
('200135', '2000.00', '800.00', '2008-09-16', 'C00007', 'A010  ', 'SOD\r'),
('200131', '900.00', '150.00', '2008-08-26', 'C00012', 'A012  ', 'SOD\r'),
('200133', '1200.00', '400.00', '2008-06-29', 'C00009', 'A002  ', 'SOD\r'),
('200132', '4000.00', '2000.00', '2008-08-15', 'C00013', 'A013  ', 'SOD\r');


-- Segment 1
/* 1) Identify the tables in the database and their respective columns */

SELECT
TABLE_NAME,
COLUMN_NAME
FROM 
INFORMATION_SCHEMA.COLUMNS
WHERE
TABLE_SCHEMA = 'interview';

/* 2) Determine the number of records in each table within the schema. */

SELECT 'agents' AS table_name, COUNT(*) AS COUNT FROM agents
UNION ALL
SELECT 'customer' AS table_name, COUNT(*) AS COUNT FROM customer
UNION ALL
SELECT 'order' AS table_name, COUNT(*) AS COUNT FROM orders;

/* 3) Identify and handle any missing or inconsistent values in the dataset.*/
   -- In the table customer, column, phone_no holds Inconsistent data, hence it can be updated.alter
   
UPDATE customer
SET phone_no = COALESCE(phone_no, 'default_value')
WHERE phone_no IS NULL;

/* 4) Analyse the data types of the columns in each table to ensure they are appropriate
for the stored data.*/
/* The data type in ord_num is decimal, which is not required as no numerical calculations are to performed with ord_num,
	hence modified to varchar data type. Smae is applicable to grade column */

ALTER table orders
MODIFY column ord_num VARCHAR(10);

ALTER table customer
MODIFY column grade CHAR(6);

/* 5) Identify any duplicate records within the tables and develop a strategy for handling them.*/
-- In this case to avoid duplicate values, columns can be convertedto primary key

SELECT cust_code
FROM orders
GROUP BY cust_code
HAVING COUNT(*) > 1
ORDER BY cust_code;

SELECT ord_num
FROM orders
GROUP BY ord_num
HAVING COUNT(*) > 1
ORDER BY ord_num;

-- SEGMENT 2
/* 1) Write SQL queries to retrieve the total number of orders, total revenue, and average order value. */

SELECT
	   COUNT(ord_num) AS total_number_orders,
       AVG(ord_amount) AS average_total_revenue,
       SUM(ord_amount) AS total_revenue
FROM orders;

/* 2) The operations team needs to track the agent who has handled the maximum
number of high-grade customers. Write a SQL query to find the agent_name who has
the highest count of customers with a grade of 5. Display the agent_name and the
count of high-grade customers. */
-- highest grade in the given data is 3, hence grade=3 is considered in the query.

SELECT a.agent_code, agent_name, COUNT(*) AS high_grade_customers
FROM agents a
JOIN customer c
ON a.agent_code = c.agent_code
WHERE c.grade = 3
GROUP BY a.agent_name, a.agent_code
ORDER BY high_grade_customers DESC
LIMIT 3;

/* 3)The company wants to identify the most active customer cities in terms of the total
order amount. Write a SQL query to find the top 3 customer cities with the highest
total order amount. Include cust_city and total_order_amount in the output. */

SELECT o.ord_amount, c.cust_code, c.cust_city
FROM customer c
JOIN orders o
ON c.cust_code = o.cust_code
ORDER BY o.ord_amount DESC
LIMIT 3;

-- SEGMENT 3
/* 1) Calculate the total number of customers. */

SELECT COUNT(cust_code) AS total_customer
FROM customer;

/* 2) Identify the top-spending customers based on their total order value. */
-- first 10 customers are considered.

SELECT cust_code, SUM(ord_amount) AS total_order_value
FROM orders
GROUP BY cust_code
ORDER BY total_order_value DESC
LIMIT 10;

/* 3) Analyse customer retention by calculating the percentage of repeat customers. */

SELECT (COUNT(*) / (SELECT COUNT(DISTINCT cust_code) FROM orders)) * 100 AS repeat_customer_percentage
FROM (
    SELECT cust_code, COUNT(*) AS occurrence_count
    FROM orders
    GROUP BY cust_code
    HAVING COUNT(*) > 1 
) AS subquery;

/* 4)Find the name of the customer who has the maximum outstanding amount from
every country. */

SELECT cust_country, MAX(outstanding_amt) AS max_outstanding_amt, MAX(cust_name) AS customer_name
FROM customer
GROUP BY cust_country;

/* 5) Write a SQL query to calculate the percentage of customers in each grade category (1 to 5). */

SELECT 
    grade,
    COUNT(*) AS total_customers,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer) AS percentage
FROM customer
GROUP BY grade;

-- SEGMENT 4
/* 1)Company wants to provide a performance bonus to their best agents based on the
maximum order amount. Find the top 5 agents eligible for it. */

SELECT DISTINCT (ord_amount), o.agent_code, agent_name
FROM orders o
JOIN agents a
ON o.agent_code = a.agent_code
ORDER BY ord_amount DESC
LIMIT 5;

/* 2)The company wants to analyse the performance of agents based on the number of
orders they have handled. Write a SQL query to rank agents based on the total
number of orders they have processed. Display agent_name, total_orders, and their
respective ranking. */

SELECT agent_name, total_orders,
       RANK() OVER (ORDER BY total_orders DESC) AS agent_rank
FROM (
    SELECT a.agent_name, COUNT(*) AS total_orders
    FROM agents a
    JOIN orders o ON a.agent_code = o.agent_code
    GROUP BY a.agent_name
) AS subquery;

/* 3)Company wants to change the commission for the agents, basis advance payment
they collected. Write a sql query which creates a new column updated_commision on
the basis below rules.
○ If the average advance amount collected is less than 750, there is no change
in commission.
○ If the average advance amount collected is between 750 and 1000
(inclusive), the new commission will be 1.5 times the old commission.
○ If the average advance amount collected is more than 1000, the new
commission will be 2 times the old commission. */

ALTER TABLE agents
ADD COLUMN updated_commission DECIMAL(10,2);

UPDATE agents
SET updated_commission = commission * 1.5
WHERE agent_code IN (
    SELECT agent_code
    FROM orders
    GROUP BY agent_code
    HAVING AVG(advance_amount) BETWEEN 750 AND 1000
);

UPDATE agents
SET updated_commission = commission * 2
WHERE agent_code IN (
    SELECT agent_code
    FROM orders
    GROUP BY agent_code
    HAVING AVG(advance_amount) > 1000
); 
SELECT * FROM agents; -- to verify the output

-- SEGMENT 5 
/* 1)Add a new column named avg_rcv_amt in the table customers which contains the
average receive amount for every country. Display all columns from the customer
table along with the avg_rcv_amt column in the last. */

ALTER TABLE customer
ADD COLUMN avg_rcv_amt DECIMAL(10, 2);

UPDATE customer AS c
JOIN (
    SELECT cust_country, AVG(receive_amt) AS avg_receive_amt
    FROM customer
    GROUP BY cust_country
) AS subquery ON c.cust_country = subquery.cust_country
SET c.avg_rcv_amt = subquery.avg_receive_amt; 

SELECT *
FROM customer;

/* 2)Write a sql query to create and call a UDF named avg_amt to return the average
outstanding amount of the customers which are managed by a given agent. Also, call
the UDF with the agent name ‘Mukesh’. */
DELIMITER //
CREATE FUNCTION avg_amt(agent_name_param VARCHAR(100))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
  DECLARE agent_id VARCHAR(6);
  DECLARE avg_outstanding_amt DECIMAL(10, 2);
  
  SELECT AVG(outstanding_amount) INTO avg_outstanding
  FROM customers
  WHERE agent_name = agent_name_param;
  
  RETURN avg_outstanding;
END //

DELIMITER ;
SELECT avg_amt('Mukesh');


/* 3)Write a sql query to create and call a subroutine called cust_detail to return all the
details of the customer which are having the given grade. Also, call the subroutine
with grade 2. */

DELIMITER //

CREATE PROCEDURE cust_detail(IN grade_para INT)
BEGIN
  SELECT *
  FROM customer
  WHERE grade = grade_para;
END //

DELIMITER ;

SELECT *
FROM customer;

/* 4)Write a stored procedure sp_name which will return the concatenated ord_num
(comma separated) of the customer with input customer code using cursor. Also,
write the procedure call query with cust_code ‘C00015’. */

DELIMITER //

CREATE PROCEDURE s_name(IN p_cust_code VARCHAR(10))
BEGIN
		DECLARE ord_num_list VARCHAR(1000);
		DECLARE done INT DEFAULT 0;
		DECLARE v_ord_num VARCHAR(10);
        
        DECLARE cur CURSOR FOR
				SELECT ord_num
				FROM orders
				WHERE cust_code = p_cust_code;
                
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
        
        SET ord_num_list = '';
        
        OPEN cur;
        
        read_loop: LOOP
				FETCH cur INTO v_ord_num;
				
				IF done THEN
					LEAVE read_loop;
				END IF;
                
                SET ord_num_list = CONCAT_WS(',', ord_num_list, v_ord_num);
			END LOOP;
            
            CLOSE cur;
            
            SELECT ord_num_list AS concatenated_ord_num;
		END //

		DELIMITER ;
        
        CALL s_name('C00015'); 
			
			
            
        
        
        
        
			


  
  
  

























        
   
   


