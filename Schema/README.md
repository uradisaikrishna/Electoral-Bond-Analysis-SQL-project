# Schema 

The third normal form (3NF) represents a gold standard in database design, ensuring the elimination of update and delete anomalies, as well as addressing issues related to data redundancy. Our aim is to achieve this standard with our dataset.

To accomplish this, we have removed unnecessary columns and those that can be derived from existing data.

The following data dictionary outlines our efforts with each column, detailing our objectives and strategies. The final section provides an overview of the resulting output, highlighting our achievements in database normalization and data refinement. 

> There is another Excel file with name schema.xlsx in the schema which can help you in understanding the schema building part. 
## Data Dictionary

### Data Tables: Our Data has 3 Table

| NO  | Table Name    | Table Description                                                                         |
| --- | ------------- | ----------------------------------------------------------------------------------------- |
| 1   | Donor Data    | This table has details about Company/Organization/Individuals and bonds they bought.      |
| 2   | Receiver Data | This table has details about Political Parties and the bonds they received.               |
| 3   | Bank Data     | This table has the details about the bank branches where bonds can be issued or enchased. |
 
#### Donor Data :

| No  | Column Name   | Elaborated Column Name               | Description                                                                                                   | Remarks                                                                                          | Removed or Not                                                  |
| --- | ------------- | ------------------------------------ | ------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ | --------------------------------------------------------------- |
| 1   | SNo           | Serial number.                       | A sequential number assigned to each record in the dataset to uniquely identify and order individual entries. | This column is not needed its just for our convinience.                                          | Removed                                                         |
| 2   | Urn           | Unique reference number              |                                                                                                               |                                                                                                  | Not Removed                                                     |
| 3   | JournalDate   | Date of journal entry                | The date when the purchaser has requested for an electoral                                                    |                                                                                                  | Not Removed                                                     |
| 4   | PurchaseDate  | Date of bond purchase                | The date when the purchaser has got for an electoral                                                          |                                                                                                  | Not Removed                                                     |
| 5   | ExpiryDate    | Expiry date of the bond              | The date when the bond gets expired after that data the bond cannot be encashed                               |                                                                                                  | Not Removed                                                     |
| 6   | Purchaser     | Name of the purchaser                | The Name of organization/Company/Individuals who bought the bond.                                             |                                                                                                  | Not Removed                                                     |
| 7   | Prefix        | Prefix code associated with the bond | Each Bond has a Prefix just like a currency                                                                   | We have created the unique_key by combining prefix and BondNumber which acts as primary key.     | Removed as these columns can be derived using substring methods |
| 8   | BondNumber    | A Number Followed By Prefix Code     | Each Bond has a number just like a currency                                                                   | We have created the unique_key by combining prefix and BondNumber which acts as primary key.     | Removed as these columns can be derived using substring methods |
| 9   | Denominations | Value of the bond                    | The value of each Bond and total 5 different values are possible : [1K, 10K, 1lac, 10lac, 1Cr ]               | We have created a new table where denominations and unique keys reside to avoid update anomalies | Moved to a New table bonddata.                                  |
| 10  | PayBranchCode | Payment Branch code                  | It is the branch code (IFSC Code) of the bank branch where  the bond is issued.                               |                                                                                                  | Not Removed                                                     |
| 11  | PayTeller     | Teller ID                            | It is the employee id who issued the bond.                                                                    |                                                                                                  | Not Removed                                                     |

#### Recipient Data :

| No  | Column Name    | Elaborated Column Name                   | Description                                                                                                                                                                       | Remarks                                                                                          | Removed or Not                                                  |
| --- | -------------- | ---------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ | --------------------------------------------------------------- |
| 1   | SNo            | Serial number.                           | A sequential number assigned to each record in the dataset to uniquely identify and order individual entries.                                                                     | This column is not needed its just for our convinience.                                          | Removed                                                         |
| 2   | DateEncashment | Date of bond encashment                  | The date when the bond has been enchased by a political party.                                                                                                                    |                                                                                                  | Not Removed                                                     |
| 3   | PartyName      | Name of the political party (recipient). | The Political Party that enchashed the bond.                                                                                                                                      |                                                                                                  | Not Removed                                                     |
| 4   | AccountNum     | Account number of the party              | The column displays the account number of the encashed party, where the last four digits are visible, and the preceding digits are obscured with asterisks (*) to ensure privacy. |                                                                                                  | Not Removed                                                     |
| 5   | Prefix         | Prefix code associated with the bond.    | Each Bond has a Prefix just like a currency.                                                                                                                                      | We have created the unique_key by combining prefix and BondNumber which acts as primary key.     | Removed as these columns can be derived using substring methods |
| 6   | BondNumber     | A Number Followed By Prefix Code         | Each Bond has a number just like a currency                                                                                                                                       | We have created the unique_key by combining prefix and BondNumber which acts as primary key.     | Removed as these columns can be derived using substring methods |
| 7   | Denominations  | Value of the bond                        | The value of each Bond and total 5 different values are possible : [1K, 10K, 1lac, 10lac, 1Cr ]                                                                                   | We have created a new table where denominations and unique keys reside to avoid update anomalies | Moved to a New table bonddata.                                  |
| 8   | PayBranchCode  | Payment Branch code                      | It is the branch code (IFSC Code) of the bank branch where  the bond is encashed.                                                                                                 |                                                                                                  | Not Removed                                                     |
| 9   | PayTeller      | Teller ID                                | It is the employee id who encashed the bond.                                                                                                                                      |                                                                                                  | Not Removed                                                     |

#### Bank Branch Data:

Only few SBI branches are authorized to issue and enchase  Electoral bond  and this table has the details of those branches.

| No  | Column Name    | Elaborated Column Name       | Description                                                                                                        | Remarks                                                 | Removed or Not |
| --- | -------------- | ---------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------- | -------------- |
| 1   | Sl.No.         | Serial number.               | A sequential number assigned to each record in the dataset to uniquely identify and order individual entries.      | This column is not needed its just for our convinience. | Removed        |
| 2   | State/UT       | State/UT                     | State where the bank is assigned                                                                                   |                                                         | Not Removed    |
| 3   | Address        | Name of the Branch & Address | This is the complete address of the bank                                                                           |                                                         | Not Removed    |
| 4   | City           | City                         | City where the bank brank is located                                                                               |                                                         | Not Removed    |
| 5   | Branch Code No | IFSC Code                    | IFCS Code is the Unique code that is assigned for every branch and based on the ID we can identify any bank branch |                                                         | Not Removed    |

---

# Final Data Base Schema & Tables : 

![](https://github.com/DADSCareerpedia/Electoral-Bond-SQL-/blob/main/Schema/Final%20Schema.png) 


The data base has 4 tables : `SHOW TABLES` 

```SQL
> SHOW TABLES; 
+-------------------------------+
| Tables_in_electoralbonddata   |
+-------------------------------+
| bankdata                      |
| bonddata                      |
| donordata                     |
| receiverdata                  |
+-------------------------------+
```

> I have written few queries to give you an understanding of the Schema.
#### Bonddata

```sql 
mysql> DESCRIBE bonddata;
+--------------+------------+------+-----+---------+-------+
| Field        | Type       | Null | Key | Default | Extra |
+--------------+------------+------+-----+---------+-------+
| Unique_key   | varchar(8) | NO   | PRI | NULL    |       |
| Denomination | int        | YES  |     | NULL    |       |
+--------------+------------+------+-----+---------+-------+
```

```sql
mysql> SELECT * 
	   FROM bonddata 
	   LIMIT 5;
+------------+--------------+
| Unique_key | Denomination |
+------------+--------------+
| OC10000    |     10000000 |
| OC10001    |     10000000 |
| OC10002    |     10000000 |
| OC10003    |     10000000 |
| OC10004    |     10000000 |
+------------+--------------+
```

#### bankdata

```sql
mysql> DESCRIBE bankdata;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| branchCodeNo | int          | NO   | PRI | NULL    |       |
| STATE        | varchar(50)  | YES  |     | NULL    |       |
| Address      | varchar(255) | YES  |     | NULL    |       |
| CITY         | varchar(30)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
```

```SQL
mysql> SELECT * 
	   FROM bankdata 
	   LIMIT 5;
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
| branchCodeNo | STATE                            | Address                                                                                                                     | CITY        |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
|            1 | West Bengal and Andaman& Nicobar | Kolkata Main Branch,Samriddhi Bhawan1, Strand Road, Kolkata, West Bengal,District :Kolkata. State: West Bengal.Pin : 700001 | Kolkata     |
|            2 | Tripura                          | Agartala BranchHari Ganga Basak Road,Agartala, District: Tripura (W), Tripura, Pin: 799001                                  | Agartala    |
|           41 | Odisha                           | Bhubaneswar Main BranchP.B.No.14, BhubaneswarBhubaneswar, Orissa. District : KhurdaState: Odisha, Pin : 751001              | Bhubaneswar |
|           78 | Assam                            | Guwahati Branch,Pan Bazar,MG Road, Kamrup, Guwahati.  Pin: 781001                                                           | Guwahati    |
|           92 | Manipur                          | lmphal BranchM G Avenue, lmphal west, Manipur, Pin: 795001                                                                  | Imphal      |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
```

#### DonorData

```SQL
mysql> DESCRIBE donordata;
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
```

```SQL
mysql> SELECT * 
	   FROM donordata 
	   LIMIT 5;
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| Urn                     | JournalDate | PurchaseDate | ExpiryDate | Purchaser                         | PayBranchCode | PayTeller | Unique_key |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| 00847202204080000002387 | 2022-04-08  | 2022-04-08   | 2022-04-22 | KOYA AND COMPANY CONSTRUCTION LTD |           847 |   3898296 | OC10000    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10001    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10002    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10003    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10004    |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
```

#### Receiverdata

```sql
mysql> DESCRIBE receiverdata;
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
```

```SQL
mysql> SELECT * 
	   FROM receiverdata 
	   LIMIT 5;
+----------------+------------------------+-------------+---------------+-----------+------------+
| DateEncashment | PartyName              | AccountNum  | PayBranchCode | PayTeller | Unique_key |
+----------------+------------------------+-------------+---------------+-----------+------------+
| 2022-04-12     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   3898296 | OC10000    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10001    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10002    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10003    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10004    |
+----------------+------------------------+-------------+---------------+-----------+------------+
```

---

### Cardinality 

- We have One - to - One relation between Donors Table and Receivers Table. 
- We have Many - to- One relation between Donors Table and bankdata Table.
- We have Many - to- One relation between Receivers Table and bankdata Table. 
- We have One - to - One relation between Donors Table and bonddata Table.
- We have One - to - One relation between Receivers Table and bonddata Table.   

---

