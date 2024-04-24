
# Project Description: 

> In this repository we are trying to create a database on electoral bond data and trying to write some queries to answer some question (EDA using SQL) 

#### What are we accomplishing : 

We are creating a database from rawdata and exploring how to write sql queries. 

# Electoral Bond Data :

**Description:**  

In a significant development affecting political transparency in India, the Supreme Court delivered a landmark judgment striking down the Electoral Bond scheme. This ruling, grounded in the principle that anonymity in political funding undermines voters' right to information, mandates transparency in political party funding sources. The decision represents a crucial step in India's ongoing efforts to enhance transparency and accountability in political financing, aligning with democratic values and public demands for openness.

In response to this judgment, the Election Commission of India (ECI), under the Supreme Court's directive, released comprehensive data on March 21, 2024, through the State Bank of India (SBI). This dataset, available on the ECI's official website, encompasses information on donors and recipients from April 12, 2019, to January 11, 2024, including bond numbers for matching purchasers and recipients of the bonds. To further enrich the analysis of political funding in India, this dataset is being supplemented with additional data from the Enforcement Directorate.

The Election Commission published two separate lists of donors and recipients on its website after receiving details from the State Bank of India in accordance with a Supreme Court order.

On March 21, the Election Commission made public a new dataset of electoral bonds, including their alphanumeric numbers that can facilitate matching purchasers with the political parties that received the funds.

---

## Data Sources

These are the official Sites where the data is released by the government.

https://www.eci.gov.in/disclosure-of-electoral-bonds

https://enforcementdirectorate.gov.in/press-release ( Data available only since 2021 )

https://cag.gov.in/en/audit-report ( Data extracted from 2018 )

https://incometaxindia.gov.in/Pages/press-releases.aspx ( Data extracted from 2010 )

https://cbi.gov.in/press-releases ( Data extracted from 2018 )

https://www.mca.gov.in/content/mca/global/en/mca/master-data/MDS.html  

The Bank codes details have been extracted from this website:

> All the bank banches don't have the authority to issue electoral bonds only few branches of SBI bank can issue them and this table contains the details of that banks and based on the branch code we can connect to the receiver and donor data.

- [pib.gov](https://pib.gov.in/Pressreleaseshare.aspx?PRID=1566604)

> Note: We obtained the dataset from Kaggle, which is available in comma-separated format (CSV). Unlike the sources above mentioned that provide data in PDF format but they are the official sites and even the data from Kaggle is just format converted, CSV is more accessible for analysis and processing. 

**Kaggle Sources** : 

https://www.kaggle.com/datasets/uplytics/electoral-bonds-india-complete-2024-dataset/data 


---
## Data Dictionary

### Data Tables: Our Data has 3 Table

| NO  | Table Name    | Table Description                                                                         |
| --- | ------------- | ----------------------------------------------------------------------------------------- |
| 1   | Donor Data    | This table has details about Company/Organization/Individuals and bonds they bought.      |
| 2   | Receiver Data | This table has details about Political Parties and the bonds they received.               |
| 3   | Bank Data     | This table has the details about the bank branches where bonds can be issued or enchased. |
 
#### Donor Data :

| No  | Column Name   | Elaborated Column Name               | Description                                                                                                   |     |
| --- | ------------- | ------------------------------------ | ------------------------------------------------------------------------------------------------------------- | --- |
| 1   | SNo           | Serial number.                       | A sequential number assigned to each record in the dataset to uniquely identify and order individual entries. |     |
| 2   | Urn           | Unique reference number              |                                                                                                               |     |
| 3   | JournalDate   | Date of journal entry                | The date when the purchaser has requested for an electoral                                                    |     |
| 4   | PurchaseDate  | Date of bond purchase                | The date when the purchaser has got for an electoral                                                          |     |
| 5   | ExpiryDate    | Expiry date of the bond              | The date when the bond gets expired after that data the bond cannot be encashed                               |     |
| 6   | Purchaser     | Name of the purchaser                | The Name of organization/Company/Individuals who bought the bond.                                             |     |
| 7   | Prefix        | Prefix code associated with the bond | Each Bond has a Prefix just like a currency                                                                   |     |
| 8   | BondNumber    | A Number Followed By Prefix Code     | Each Bond has a number just like a currency                                                                   |     |
| 9   | Denominations | Value of the bond                    | The value of each Bond and total 5 different values are possible : [1K, 10K, 1lac, 10lac, 1Cr ]               |     |
| 10  | PayBranchCode | Payment Branch code                  | It is the branch code (IFSC Code) of the bank branch where  the bond is issued.                               |     |
| 11  | PayTeller     | Teller ID                            | It is the employee id who issued the bond.                                                                    |     |

#### Recipient Data :

| No  | Column Name    | Elaborated Column Name                   | Description                                                                                                                                                                       |     |
| --- | -------------- | ---------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --- |
| 1   | SNo            | Serial number.                           | A sequential number assigned to each record in the dataset to uniquely identify and order individual entries.                                                                     |     |
| 2   | DateEncashment | Date of bond encashment                  | The date when the bond has been enchased by a political party.                                                                                                                    |     |
| 3   | PartyName      | Name of the political party (recipient). | The Political Party that enchashed the bond.                                                                                                                                      |     |
| 4   | AccountNum     | Account number of the party              | The column displays the account number of the encashed party, where the last four digits are visible, and the preceding digits are obscured with asterisks (*) to ensure privacy. |     |
| 5   | Prefix         | Prefix code associated with the bond.    | Each Bond has a Prefix just like a currency.                                                                                                                                      |     |
| 6   | BondNumber     | A Number Followed By Prefix Code         | Each Bond has a number just like a currency                                                                                                                                       |     |
| 7   | Denominations  | Value of the bond                        | The value of each Bond and total 5 different values are possible : [1K, 10K, 1lac, 10lac, 1Cr ]                                                                                   |     |
| 8   | PayBranchCode  | Payment Branch code                      | It is the branch code (IFSC Code) of the bank branch where  the bond is encashed.                                                                                                 |     |
| 9   | PayTeller      | Teller ID                                | It is the employee id who encashed the bond.                                                                                                                                      |     |

#### Bank Branch Data:

Only few SBI branches are authorized to issue and enchase  Electoral bond  and this table has the details of those branches.

| No  | Column Name                  | Elaborated Column Name       | Description                                                                                                        |     |
| --- | ---------------------------- | ---------------------------- | ------------------------------------------------------------------------------------------------------------------ | --- |
| 1   | Sl.No.                       | Serial number.               | A sequential number assigned to each record in the dataset to uniquely identify and order individual entries.      |     |
| 2   | State/UT                     | State/UT                     | State where the bank is assigned                                                                                   |     |
| 3   | Name of the Branch & Address | Name of the Branch & Address | This is the complete address of the bank                                                                           |     |
| 4   | City                         | City                         | City where the bank brank is located                                                                               |     |
| 5   | Branch Code No               | IFSC Code                    | IFCS Code is the Unique code that is assigned for every branch and based on the ID we can identify any bank branch |     |

---

###   Domain Knowledge 

Before we start Analyzing the data we need to have an understanding of our problem statement which is referred as domain knowledge and below section is a little effort to impart that knowledge. 

Each bond is characterized by a prefix and a bond number. While these components individually lack uniqueness, together they form a distinct identification ID. By comparing and matching these unique codes across tables, we can discern the relationship between donors and receivers, thereby identifying the source of monetary donations to specific political parties. 

In donor table and receivers table we have a branch code where one is the bond issuing branch code and the other is  the branch where the bond is enchased respectively by joining that table with bank branch data we can understand how money is flowing from city to city. 

Every bond has 14 days of validation before it gets expired so if the bond is not enchased by any political party them the amount will be transferred to prime minister fund. 

The data released by the government is not complete as the records count in receivers table and that of the donors table is not same and those consideration are taken into our analysis work. 

Certain companies have acquired bonds under slightly varied names, prompting us to analyze and correct these discrepancies with a degree of due diligence. These adjustments can be referenced in the data cleaning section of the code.

---

File Structure 

```bash
EDA SQL electoral bonddata
│
├───Data Cleaning
│       Data Cleaning.xlsx
│       README.md
│
├───FinalData
│       bankdata.tsv
│       bonddata.csv
│       total_allDonorData.csv
│       total_allReciverData.csv
│
├───RawData
│       Bankcodes.tsv
│       bank_data.xlsx
│       donor_data.csv
│       reciver_data.csv
│
└───Schema
        Final Schema.png
        Final Schema.svg
        README.md
        Schema.xlsx
electoralbonddata_database.sql 
Final_database_data.ipynb
Queries.pdf
queries.sql
README.md

```
The above shows the folder structure of the project 

- Data Cleaning Folder has the files related to data cleaning. 
- RawData Folder has the data files
- Final data Folder has the final files which we are using to create the database which is the output files we got from Final_database_data.ipynb
- Schema folder has the files trying to explain the schema we designed. 
- queries.sql is the sql file where some queries are written on the database. 
- Queries.pdf is the same queries.sql file but in pdf format for easy reference. 
- electoralbonddata_database.sql is the self contained database file.  

---
