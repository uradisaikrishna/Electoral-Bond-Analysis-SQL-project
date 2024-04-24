/************************************************************============ Electoral Bonds Database =========== *******************************************************************
 -- Database created by: V. M R
 -- Database Name: electoralbonddata
 -- Author of Queries : V. M R
 -- Organization : Careerpedia
 -- Description: This is a database which has electoral bonds data provided by Govenement of INDIA after Supreme Court Ruling. 
 -- Date : 02-April-2024
**********************************************************************************************************************************************************************************/

/*************************************************************************Tables and Data Description*****************************************************************************

The data was provided as 2 Tables and extra data recarding the bank branches has been extracted from GOVT website and the overall data is distributed in 4 tables. So that the 
whole data is in 3rd Normalization Form. 

 Tables in the database: 


The data base has 4 tables : `SHOW TABLES` 

+-------------------------------+
| Tables_in_electoralbonddata   |
+-------------------------------+
| bankdata                      |
| bonddata                      |
| donordata                     |
| receiverdata                  |
+-------------------------------+

#### Bonddata

+--------------+------------+------+-----+---------+-------+
| Field        | Type       | Null | Key | Default | Extra |
+--------------+------------+------+-----+---------+-------+
| Unique_key   | varchar(8) | NO   | PRI | NULL    |       |
| Denomination | int        | YES  |     | NULL    |       |
+--------------+------------+------+-----+---------+-------+


+------------+--------------+
| Unique_key | Denomination |
+------------+--------------+
| OC10000    |     10000000 |
| OC10001    |     10000000 |
| OC10002    |     10000000 |
| OC10003    |     10000000 |
| OC10004    |     10000000 |
+------------+--------------+


#### bankdata

+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| branchCodeNo | int          | NO   | PRI | NULL    |       |
| STATE        | varchar(50)  | YES  |     | NULL    |       |
| Address      | varchar(255) | YES  |     | NULL    |       |
| CITY         | varchar(30)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
| branchCodeNo | STATE                            | Address                                                                                                                     | CITY        |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
|            1 | West Bengal and Andaman& Nicobar | Kolkata Main Branch,Samriddhi Bhawan1, Strand Road, Kolkata, West Bengal,District :Kolkata. State: West Bengal.Pin : 700001 | Kolkata     |
|            2 | Tripura                          | Agartala BranchHari Ganga Basak Road,Agartala, District: Tripura (W), Tripura, Pin: 799001                                  | Agartala    |
|           41 | Odisha                           | Bhubaneswar Main BranchP.B.No.14, BhubaneswarBhubaneswar, Orissa. District : KhurdaState: Odisha, Pin : 751001              | Bhubaneswar |
|           78 | Assam                            | Guwahati Branch,Pan Bazar,MG Road, Kamrup, Guwahati.  Pin: 781001                                                           | Guwahati    |
|           92 | Manipur                          | lmphal BranchM G Avenue, lmphal west, Manipur, Pin: 795001                                                                  | Imphal      |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+


#### DonorData

+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Urn           | varchar(30)  | YES  |     | NULL    |       |
| JournalDate   | date         | YES  |     | NULL    |       |
| PurchaseDate  | date         | YES  |     | NULL    |       |
| ExpiryDate    | date         | YES  |     | NULL    |       |
| Purchaser     | varchar(255) | YES  |     | NULL    |       |
| PayBranchCode | int          | YES  | MUL | NULL    |       |
| PayTeller     | int          | YES  |     | NULL    |       |
| Unique_key    | varchar(8)   | NO   | PRI | NULL    |       |
+---------------+--------------+------+-----+---------+-------+

+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| Urn                     | JournalDate | PurchaseDate | ExpiryDate | Purchaser                         | PayBranchCode | PayTeller | Unique_key |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| 00847202204080000002387 | 2022-04-08  | 2022-04-08   | 2022-04-22 | KOYA AND COMPANY CONSTRUCTION LTD |           847 |   3898296 | OC10000    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10001    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10002    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10003    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10004    |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+


#### Receiverdata

+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| DateEncashment | date         | YES  |     | NULL    |       |
| PartyName      | varchar(255) | YES  |     | NULL    |       |
| AccountNum     | varchar(50)  | YES  |     | NULL    |       |
| PayBranchCode  | int          | YES  | MUL | NULL    |       |
| PayTeller      | int          | YES  |     | NULL    |       |
| Unique_key     | varchar(8)   | NO   | PRI | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


+----------------+------------------------+-------------+---------------+-----------+------------+
| DateEncashment | PartyName              | AccountNum  | PayBranchCode | PayTeller | Unique_key |
+----------------+------------------------+-------------+---------------+-----------+------------+
| 2022-04-12     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   3898296 | OC10000    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10001    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10002    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10003    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10004    |
+----------------+------------------------+-------------+---------------+-----------+------------+

 *********************************************************************************************************************************************************************************/ 


/***************************************************************************Questions On Electoral Bonds***************************************************************************

Here are the Some questions we have tried to answer by writing some queries. 

> The Questions are not too elaboratated so there can be some ambiguity.
> In further session some more questions are added. 
> Some questions could have repeated or asked in a different way please forgive me for that. 

-- 1. Find out how much donors spent on bonds (k)
-- 2. Find out total fund politicians got (k)
-- 3. Find out the total amount of unaccounted money recived by parties (k)
-- 4. Find year wise how much money is spend on bonds (k)
-- 5. In which month most amount is spent on bonds (k)
-- 6. Find out which company bought the highest number of bonds. (k)
-- 7. Find out which company spent the most on electoral bonds. (k)
-- 8. List companies which paid the least to political parties. (k)
-- 9. Which political party received the highest cash? (k) 
-- 10. Which political party received the highest number of electoral bonds? (k) 
-- 11. Which political party received the least cash? (k) 
-- 12. Which political party received the least number of electoral bonds? (k) 
-- 13. Find the 2nd higest donor in terms of amount he paid?
-- 14. Find the party which received the second highest donations?
-- 15. Find the party which received the second highest number of bonds?
-- 16. In which city were the most number of bonds purchased?
-- 17. In which city was the highest amount spent on electoral bonds?
-- 18. In which city were the least number of bonds purchased?
-- 19. In which city were the most number of bonds encashed?
-- 20. In which city were the least number of bonds encashed
-- 14. Find the party which received the second highest donations?
-- 15. Find the party which received the second highest number of bonds?
-- 16. In which city were the most number of bonds purchased?
-- 17. In which city was the highest amount spent on electoral bonds?
-- 18. In which city were the least number of bonds purchased?
-- 19. In which city were the most number of bonds encashed?
-- 20. In which city were the least number of bonds encashed?
-- 21. List the branches where no electoral bonds were bought; if none, mention it as null.
-- 22. Break down how much money is spent on electoral bonds for each year.
-- 23. Break down how much money is spent on electoral bonds for each year and provide the year and the amount. Provide values for the highest and least year and amount.
-- 24. Find out how many donors bought the bonds but did not donate to any political party?
-- 25. Find out the money that could have gone to the PM Office, assuming the above question assumption (Domain Knowledge)
-- 26. Find out how many bonds don't have donors associated with them.
-- 27. PayTeller is the employee ID who either created the bond or redeemed it. So find the employee ID who issued the highest number of bonds.
-- 28. Find the employee ID who issued the least number of bonds.
-- 29. Find the employee ID who assisted in redeeming or encashing bonds the most.
-- 30. Find the employee ID who assisted in redeeming or encashing bonds the least
**************************************************************************************************************************************************/


-- 1. Find out how much donors spent on bonds (k)

SELECT SUM(Denomination) as 'Total Amount bought'
FROM donordata d  
JOIN bonddata b on d.Unique_key = b.Unique_key;

-- 2. Find out total fund politicians got (k)

SELECT SUM(Denomination) as 'Total Recived Amount'
FROM receiverdata r 
JOIN bonddata b on r.Unique_key = b.Unique_key;

-- 3. Find out the total amount of unaccounted money recived by parties (Money without donors) (k) 

SELECT SUM(Denomination) as 'Unaccounted Amount'
FROM donordata d 
RIGHT JOIN receiverdata r ON r.Unique_key = d.Unique_key
JOIN bonddata b ON r.Unique_key = b.Unique_key
WHERE purchaser IS NULL; 


-- 4. Find year wise how much money is spent on bonds (k)

SELECT YEAR(d.PurchaseDate) AS `year`,SUM(Denomination) AS 'year wise bond spending'
FROM donordata d
JOIN bonddata b ON b.unique_key = d.unique_key
GROUP BY `year`
ORDER BY `year wise bond spending` DESC;


-- 5. In which month most amount is spent on bonds (k)

-- Output gives you a month number 

WITH city_bond_spending_cte AS (
    SELECT MONTH(d.PurchaseDate) AS `Month`, SUM(b.Denomination) AS 'city_bond_spending'   
    FROM donordata d
    JOIN bonddata b ON b.unique_key = d.unique_key
    GROUP BY `Month`
)
SELECT *
FROM city_bond_spending_cte
WHERE city_bond_spending = (
    SELECT MAX(city_bond_spending)
    FROM city_bond_spending_cte
);

-- Output gives you a month name 

WITH city_bond_spending_cte AS (
    SELECT MONTHNAME(d.PurchaseDate) AS `Month`, SUM(b.Denomination) AS 'city_bond_spending'  
    FROM donordata d
    JOIN bonddata b ON b.unique_key = d.unique_key
    GROUP BY `Month`
)
SELECT *
FROM city_bond_spending_cte
WHERE city_bond_spending = (
    SELECT MAX(city_bond_spending)
    FROM city_bond_spending_cte
);


-- 6. Find out which company bought the highest number of bonds. (k)

 WITH SpendingCounts AS (
    SELECT purchaser, COUNT(d.unique_key) AS company_bondcount
    FROM donordata d 
    JOIN bonddata b ON d.Unique_key = b.Unique_key
    GROUP BY purchaser
)
SELECT purchaser, company_bondcount as 'Max bond bought'
FROM SpendingCounts
WHERE company_bondcount = (
    SELECT MAX(company_bondcount) 
    FROM SpendingCounts
);


-- 7. Find out which company spent the most on electoral bonds. (k)

 WITH SpendingCounts AS (
    SELECT purchaser, SUM(Denomination) as spending_count
    FROM donordata d 
    JOIN bonddata b ON d.Unique_key = b.Unique_key
    GROUP BY purchaser
)
SELECT purchaser, spending_count as 'Company Spending'
FROM SpendingCounts
WHERE spending_count = (
    SELECT MAX(spending_count) 
    FROM SpendingCounts
);

-- 8. List companies which paid the least to political parties. (k)

 WITH SpendingCounts AS (
    SELECT purchaser, SUM(Denomination) as spending_count
    FROM donordata d 
    JOIN bonddata b ON d.Unique_key = b.Unique_key
    GROUP BY purchaser
)
SELECT purchaser, spending_count as 'Company Spending'
FROM SpendingCounts
WHERE spending_count = (
    SELECT MIN(spending_count) 
    FROM SpendingCounts
);

-- 9. Which political party received the highest cash? (k) 

 WITH SpendingCounts AS (
    SELECT partyname, SUM(Denomination) as Encashment
    FROM receiverdata r  
    JOIN bonddata b ON r.Unique_key = b.Unique_key
    GROUP BY partyname
)
SELECT partyname, Encashment as 'Fund Received'
FROM SpendingCounts
WHERE Encashment = (
    SELECT MAX(Encashment) 
    FROM SpendingCounts
);

-- 10. Which political party received the highest number of electoral bonds? (k) 

 WITH SpendingCounts AS (
    SELECT partyname, COUNT(Denomination) as Encashment_count
    FROM receiverdata r  
    JOIN bonddata b ON r.Unique_key = b.Unique_key
    GROUP BY partyname
)
SELECT partyname, Encashment_count as 'Company Spending'
FROM SpendingCounts
WHERE Encashment_count = (
    SELECT MAX(Encashment_count) 
    FROM SpendingCounts
);

-- 11. Which political party received the least cash? (k) 

 WITH SpendingCounts AS (
    SELECT partyname, SUM(Denomination) as Encashment
    FROM receiverdata r  
    JOIN bonddata b ON r.Unique_key = b.Unique_key
    GROUP BY partyname
)
SELECT partyname, Encashment as 'Fund Received'
FROM SpendingCounts
WHERE Encashment = (
    SELECT MIN(Encashment) 
    FROM SpendingCounts
);


-- 12. Which political party received the least number of electoral bonds? (k) 

 WITH SpendingCounts AS (
    SELECT partyname, COUNT(Denomination) as Encashment_count
    FROM receiverdata r  
    JOIN bonddata b ON r.Unique_key = b.Unique_key
    GROUP BY partyname
)
SELECT partyname, Encashment_count as 'Company Spending'
FROM SpendingCounts
WHERE Encashment_count = (
    SELECT MIN(Encashment_count) 
    FROM SpendingCounts
);

-- 13. Find the 2nd higest donor in terms of amount he paid? 

SELECT purchaser, SUM(Denomination) as 'purchaser total donation'
FROM donordata d
JOIN bonddata b ON d.Unique_key = b.Unique_key
GROUP BY purchaser 
HAVING `purchaser total donation` = (
                                        SELECT DISTINCT(SUM(Denomination)) as 'purchaser total donation'
                                        FROM donordata d
                                        JOIN bonddata b ON d.Unique_key = b.Unique_key
                                        GROUP BY purchaser
                                        ORDER BY `purchaser total donation` DESC
                                        LIMIT 1
                                        OFFSET 1) ;

-- 14. Find the party which recived the second highest donations?

SELECT PartyName, SUM(Denomination) as 'party received'
FROM receiverdata r
JOIN bonddata b ON r.Unique_key = b.Unique_key
GROUP BY PartyName 
HAVING `party received` = (
                            SELECT DISTINCT(SUM(Denomination)) as 'party received'
                            FROM receiverdata r
                            JOIN bonddata b ON r.Unique_key = b.Unique_key
                            GROUP BY PartyName
                            ORDER BY `party received` DESC
                            LIMIT 1
                            OFFSET 1) ;

-- 15. Find the party which recived the second highest number of bonds?

SELECT PartyName, COUNT(r.Unique_key) as 'party received'
FROM receiverdata r
JOIN bonddata b ON r.Unique_key = b.Unique_key
GROUP BY PartyName
HAVING `party received` = (
                            SELECT DISTINCT(COUNT(r.Unique_key)) as 'party received'
                            FROM receiverdata r
                            JOIN bonddata b ON r.Unique_key = b.Unique_key
                            GROUP BY PartyName
                            ORDER BY `party received` DESC
                            LIMIT 1
                            OFFSET 1);

-- 16. In which city were the most number of bonds purchased? (k)

WITH city_bond_count as (   SELECT b.city, COUNT(c.Denomination) as 'city bond spending'
                            FROM donordata d
                            JOIN bankdata b ON d.paybranchcode = b.branchcodeNo
                            JOIN bonddata c ON c.unique_key = d.unique_key
                            GROUP BY b.city
                            ORDER BY `city bond spending` DESC)
SELECT * 
FROM city_bond_count 
WHERE `city bond spending` = (  SELECT MAX(`city bond spending`)
                                FROM city_bond_count);

-- 17. In which city was the highest amount spent on electoral bonds? (k)

WITH city_bond_amt as (   SELECT b.city, SUM(c.Denomination) as 'city bond spending'
                            FROM donordata d
                            JOIN bankdata b ON d.paybranchcode = b.branchcodeNo
                            JOIN bonddata c ON c.unique_key = d.unique_key
                            GROUP BY b.city
                            ORDER BY `city bond spending` DESC)
SELECT * 
FROM city_bond_amt
WHERE `city bond spending` = (  SELECT MAX(`city bond spending`)
                                FROM city_bond_amt);

-- 18. In which city were the least number of bonds purchased? (k)

WITH city_bond_count as (   SELECT b.city, COUNT(c.Denomination) as 'city bond spending'
                            FROM donordata d
                            JOIN bankdata b ON d.paybranchcode = b.branchcodeNo
                            JOIN bonddata c ON c.unique_key = d.unique_key
                            GROUP BY b.city
                            ORDER BY `city bond spending` DESC)
SELECT * 
FROM city_bond_count 
WHERE `city bond spending` = (  SELECT MIN(`city bond spending`)
                                FROM city_bond_count);

-- 19. In which city were the most number of bonds encashed? (k)

WITH city_bond_amt as ( SELECT b.city, COUNT(r.unique_key) as 'city bond encashment'
                        FROM receiverdata r
                        JOIN bankdata b ON r.paybranchcode = b.branchcodeNo
                        JOIN bonddata c ON c.unique_key = r.unique_key
                        GROUP BY b.city
                        ORDER BY `city bond encashment` DESC)
SELECT * 
FROM city_bond_amt
WHERE `city bond encashment` = (  SELECT MAX(`city bond encashment`)
                                FROM city_bond_amt);

-- 20. In which city least amount is encashed in bond forms? (k)

WITH city_bond_amt as ( SELECT b.city, SUM(c.Denomination) as 'city bond encashment'
                        FROM receiverdata r
                        JOIN bankdata b ON r.paybranchcode = b.branchcodeNo
                        JOIN bonddata c ON c.unique_key = r.unique_key
                        GROUP BY b.city
                        ORDER BY `city bond encashment` DESC)
SELECT * 
FROM city_bond_amt
WHERE `city bond encashment` = (  SELECT MIN(`city bond encashment`)
                                FROM city_bond_amt); 

-- 21. Break down how much money is spent on electoral bonds for each year. (k)  -- Same question as that of Question 4

SELECT YEAR(d.PurchaseDate) AS `year` ,SUM(c.Denomination) AS 'year wise bond spending'
FROM donordata d
JOIN bankdata b ON d.paybranchcode = b.branchcodeNo
JOIN bonddata c ON c.unique_key = d.unique_key
GROUP BY `year`
ORDER BY `year wise bond spending` DESC;

-- 22. Break down how much money is spent on electoral bonds for each year.
-- 23. Break down how much money is spent on electoral bonds for each year and provide the year and the amount. Provide values for the highest and least year and amount.

-- 24. Find out how many donors bought the bonds but not donated to any political party? (k)

SELECT COUNT(*) 
FROM donordata d
LEFT JOIN receiverdata r ON r.Unique_key = d.Unique_key
WHERE r.partyname is NULL;


-- 25. Find out the money that could have went to PM Office assuming the above question assumption(Domain Knowledge) (k)

SELECT SUM(Denomination)
FROM donordata d
LEFT JOIN receiverdata r ON r.Unique_key = d.Unique_key
JOIN bonddata b ON b.Unique_key = d.Unique_key
WHERE partyname is NULL;


-- 26. Find out how many bonds don't have donars associated with it. (k)

SELECT COUNT(*) 
FROM donordata d
RIGHT JOIN receiverdata r ON r.Unique_key = d.Unique_key
WHERE purchaser is NULL;


-- 27. PayTeller is the employee ID who either created the bond or redeemed it. So find the employee ID who issued the highest number of bonds.
-- 28. Find the employee ID who issued the least number of bonds.
-- 29. Find the employee ID who assisted in redeeming or encashing bonds the most.
-- 30. Find the employee ID who assisted in redeeming or encashing bonds the least


/**********************************************************For the Below Question I have Used Views*********************************************************************

-- 31. Find out how much money is associated with it bonds with out donors. (k)

--  PayTeller is the employee ID who either created the bond or redeemed it. 
    -- 33. Find the employee ID who issued the highest number of bonds    (k)      ---
    -- 34. Find the employee ID who issued the bonds for highest amount   (k)         | --> Issue details are in donordata.
    -- 35. Find the employee ID who issued the least number of bonds      (k)         |
    -- 36. Find the employee ID who issued the bonds for least amount     (k)      ---

    -- 37. Find the employee ID who assisted in redeeming or encashing a bonds in higest number (k)   ---
    -- 38. Find the employee ID who assisted in redeeming or encashing bonds for highest amount (k)      | --> Redeeming or encashing details are in receiverdata table.
    -- 39. Find the employee ID who assisted in redeeming or encashing a bonds in least number  (k)      |
    -- 40. Find the employee ID who assisted in redeeming or encashing bonds for highest amount (k)   ---


***************************************************************************************************************************************************************************/


-- PayTeller is the employee ID who either created the bond or redeemed it. 

    -- 33. Find the employee ID who issued the highest number of bonds          ---
    -- 34. Find the employee ID who issued the bonds for highest amount            | --> Issue details are in donordata.
    -- 35. Find the employee ID who issued the least number of bonds               |
    -- 36. Find the employee ID who issued the bonds for least amount           ---


CREATE VIEW donor_employee_performance AS (
SELECT Payteller, COUNT(b.unique_key) AS 'employee_bond_count', SUM(Denomination) AS 'employee_bond_amount'
FROM donordata d
JOIN bonddata b ON d.unique_key = b.unique_key
GROUP BY Payteller
ORDER BY `employee_bond_count`, `employee_bond_amount`);

SELECT * 
FROM donor_employee_performance;

    -- 33. Find the employee ID who issued the highest number of bonds 
SELECT Payteller
FROM donor_employee_performance
WHERE `employee_bond_count` = (SELECT MAX(`employee_bond_count`)
                                FROM donor_employee_performance);

    -- 34. Find the employee ID who issued the bonds for highest amount  

SELECT Payteller
FROM donor_employee_performance
WHERE `employee_bond_amount` = (SELECT MAX(`employee_bond_amount`)
                                FROM donor_employee_performance);

    -- 35. Find the employee ID who issued the least number of bonds   

SELECT Payteller
FROM donor_employee_performance
WHERE `employee_bond_count` = (SELECT MIN(`employee_bond_count`)    -- important to explain.
                                FROM donor_employee_performance);


    -- 36. Find the employee ID who issued the bonds for least amount           

SELECT Payteller
FROM donor_employee_performance
WHERE `employee_bond_amount` = (SELECT MIN(`employee_bond_amount`)
                                FROM donor_employee_performance);


    -- 37. Find the employee ID who assisted in redeeming or encashing a bonds in higest number    ---
    -- 38. Find the employee ID who assisted in redeeming or encashing bonds for highest amount       | --> Redeeming or encashing details are in receiverdata table.
    -- 39. Find the employee ID who assisted in redeeming or encashing a bonds in least number        |
    -- 40. Find the employee ID who assisted in redeeming or encashing bonds for highest amount    ---

CREATE VIEW receiver_employee_performance AS (
SELECT Payteller, COUNT(r.unique_key) AS 'employee_bond_count', SUM(Denomination) AS 'employee_bond_amount'
FROM receiverdata r
JOIN bonddata b ON r.unique_key = b.unique_key
GROUP BY Payteller);

SELECT * 
FROM receiver_employee_performance;

    -- 37. Find the employee ID who assisted in redeeming or encashing a bonds in higest number
SELECT Payteller
FROM receiver_employee_performance
WHERE `employee_bond_count` = (SELECT MAX(`employee_bond_count`)
                                FROM receiver_employee_performance);
    -- 38. Find the employee ID who assisted in redeeming or encashing bonds for highest amount 
SELECT Payteller
FROM receiver_employee_performance
WHERE `employee_bond_amount` = (SELECT MAX(`employee_bond_amount`)
                                FROM receiver_employee_performance);

    -- 39. Find the employee ID who assisted in redeeming or encashing a bonds in least number 
SELECT Payteller
FROM receiver_employee_performance
WHERE `employee_bond_count` = (SELECT MIN(`employee_bond_count`)    
                                FROM receiver_employee_performance);

    -- 40. Find the employee ID who assisted in redeeming or encashing bonds for highest amount

SELECT Payteller
FROM receiver_employee_performance
WHERE `employee_bond_amount` = (SELECT MIN(`employee_bond_amount`)
                                FROM receiver_employee_performance);

--    

-- Here are some more question which we can answer using sql. 

-- 1. Tell me total how many bonds are created?

 SELECT COUNT(Unique_key) as 'All Bonds Count'
 FROM bonddata;

 -- 2. Find the count of Unique Denominations provided by SBI 

SELECT COUNT(DISTINCT Denomination) AS 'Unique count of amonut denominations'
FROM bonddata;


-- 3. List all the unique denominations that are available?

SELECT DISTINCT Denomination AS 'Unique denominations'
FROM bonddata;


-- 4. Total money recived by the bank for selling bonds 

SELECT SUM(Denomination) AS 'Total Amount Received by Bank'
FROM bonddata;


-- 5. Find the count of bonds for each denominations that are created.

SELECT Denomination, COUNT(Denomination) as 'count of Denominations'
FROM bonddata
GROUP BY Denomination
ORDER BY Denomination;


-- 6. Find the count and Amount or Valution of electoral bonds for each denominations.

SELECT Denomination,
       COUNT(Denomination) as `count of Denominations`,
       Denomination * COUNT(Denomination) as `Total Value`
FROM bonddata
GROUP BY Denomination
ORDER BY Denomination; -- Order by is not needed just for our convinence and understanding


 -- 7. Number of unique bank branches where we can buy electroal bond? 

  SELECT COUNT(branchcodeno)
  FROM bankdata;


 -- 8. How many companies bought electoral bonds

SELECT COUNT(DISTINCT purchaser) AS 'No of Political Donors'
FROM donordata;


-- 9. How many companies made political donations 

SELECT COUNT(DISTINCT purchaser) AS 'No of Political Donors'
FROM donordata d
JOIN receiverdata r on r.Unique_key = d.Unique_key;

-- 10. How many number of parties recived donations

SELECT COUNT(DISTINCT Partyname) AS 'No of Political Parties'
FROM receiverdata;


-- 11. List all the political parties that received donations 

SELECT DISTINCT Partyname AS 'List of political parties'
FROM receiverdata;

-- 12. What is the average amount that each political party recived 

SELECT Partyname, SUM(Denomination)/COUNT(Denomination) AS 'Average Amount Received by political party'
FROM receiverdata r 
JOIN bonddata b on b.Unique_key = r.Unique_key
GROUP BY Partyname;


-- 13. What is the average bond value produced by bank

SELECT  SUM(Denomination)/COUNT(Denomination) as 'Average bond value'
FROM bonddata;

-- or

SELECT  AVG(Denomination) as 'Average bond value'
FROM bonddata; 


-- 14 . List the political parties which have enchased bonds in different cities?

SELECT Partyname
FROM (SELECT Partyname, CITY, COUNT(Unique_key) AS PartyCount
    FROM receiverdata r 
    JOIN bankdata b ON r.PayBranchCode = b.branchcodeno 
    GROUP BY Partyname, CITY) as d
GROUP BY Partyname
HAVING COUNT(CITY) > 1
ORDER BY Partyname;


-- 15 . List the political parties which have enchased bonds in different cities and list the cities in which the bonds have encashed as well?

SELECT Partyname, CITY
FROM (
    SELECT Partyname, CITY, COUNT(Unique_key) AS PartyCount
    FROM receiverdata r 
    JOIN bankdata b ON r.PayBranchCode = b.branchcodeno 
    GROUP BY Partyname, CITY
) AS d
WHERE Partyname IN (
    SELECT Partyname
    FROM (
        SELECT Partyname, COUNT(DISTINCT CITY) AS CityCount
        FROM receiverdata r 
        JOIN bankdata b ON r.PayBranchCode = b.branchcodeno 
        GROUP BY Partyname
    ) AS sub
    WHERE CityCount > 1
)
ORDER BY Partyname;


-- Same above query but in CTE form.

WITH PartyCityCounts AS (
    SELECT Partyname, CITY, COUNT(Unique_key) AS PartyCount
    FROM receiverdata r 
    JOIN bankdata b ON r.PayBranchCode = b.branchcodeno 
    GROUP BY Partyname, CITY
)
SELECT Partyname, CITY
FROM PartyCityCounts
WHERE Partyname IN (
                    SELECT Partyname
                    FROM PartyCityCounts
                    GROUP BY Partyname
                    HAVING COUNT(CITY) > 1
)
ORDER BY Partyname;

---