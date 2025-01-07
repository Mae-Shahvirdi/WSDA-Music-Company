# WSDA-Music-Company

# Introduction:
The WSDA Music company wants to make a sale plan and needs data-driven insights to make informed decisions.
However, the WSDA Music management team noticed a discrepancy in the company’s finances, which had accrued between 2011 and 2012. 

##
# Addressing the discrepancy in finances
To begin our investigation into the sales discrepancy for WSDA Music, we should first review the situation to pinpoint relevant information. Since money is missing, we need to consider whether this loss could be due to someone's actions or if other factors are involved. It's important to explore what actions might have contributed to this issue and how we can address it. By examining the activities associated with individuals in the organization, we can gather insights that may help us uncover the reasons behind the missing funds.

##
# Solution

# First Step: Achieving high-level understanding
To understand WSDA Music's financial performance in 2011 and 2012, we will evaluate key metrics related to transaction activity and revenue generation, providing insight into the company's operations during this period.
- **How many transactions took place between the years 2011 and 2012?**  
[167 transactions have taken place during this period.](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/1.%20How%20many%20transactions%20took%20place%20between%20the%20years%202011%20and%202012%20.sql)

- **How much money did WSDA Music make during the same period?**

[1947.97](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/2.%20How%20much%20money%20did%20WSDA%20Music%20make%20during%20the%20same%20period%3F)

##
# Second Step: Gathering insight about customers and employees
This step aims to address discrepancies in WSDA Music's finances. By analyzing customer purchases from 2011 and 2012 along with their sales representatives, we can identify any anomalies. 
#### Identifying customers who made purchases between the years 2011 and 2012 alongside their sales representatives, and total transaction amounts for each customer.
[By joining tables and applying filters](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/3.%20Identifying%20customers%20who%20made%20purchases%20between%20the%20years%202011%20and%202012%20alongside%20their%20sales%20representatives,%20and%20total%20transaction%20amounts%20for%20each%20customer.)

#### Calculating the number of transactions that exceed the average transaction amount during the same time.
[By filtering and using subqueries](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/4.%20Calculating%20the%20number%20of%20transactions%20that%20exceed%20the%20average%20transaction%20amount%20during%20the%20same%20time.sql)

#### Determining the average transaction amount for each year that WSDA Music has been in business.
[By using Strftime for creating a new column aliased as Year](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/5.%20Determining%20the%20average%20transaction%20amount%20for%20each%20year%20that%20WSDA%20Music%20has%20been%20in%20business.sql)

##
# Third Step: Analyzing to identify employees possibly motivated to commit financial crimes.
By identifying employees with above-average sales and analyzing their commission incentives, we aim to detect any suspicious behavior.
#### Generating a list of employees whose sales transactions exceeded the average transaction amount during 2011 and 2012.
[By joining tables and filtering based on time and total sale amount](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/6.%20Generating%20a%20list%20of%20employees%20whose%20sales%20transactions%20exceeded%20the%20average%20transaction%20amount%20during%202011%20and%202012.sql)

#### Creating a Commission Payout column to reflect each employee’s commission, calculated at 15% of their sales transaction amount.
[By creating a new column as a place to input the calculations for the commission payout](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/7.%20Creating%20a%20Commission%20Payout%20column%20to%20reflect%20each%20employee%E2%80%99s%20commission,%20calculated%20at%2015%25%20of%20their%20sales%20transaction%20amount.sql)

#### Identifying the employee who earned the highest commission.
[Answer is in the previous Query](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/7.%20Creating%20a%20Commission%20Payout%20column%20to%20reflect%20each%20employee%E2%80%99s%20commission,%20calculated%20at%2015%25%20of%20their%20sales%20transaction%20amount.sql)

#### Listing the customers associated with the employee identified in the previous step
[By using String Concatenation for better readability and clearance for the employee and customer name](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/8.%20Listing%20the%20customers%20associated%20with%20the%20employee%20identified%20in%20the%20previous%20step.sql)

#### Determining which customer made the highest purchase.
[By Changin the order](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/9.%20Determining%20which%20customer%20made%20the%20highest%20purchase..SQL)

#### Reviewing the customer record for any suspicious activity.
[Checking the records for the customer named Doeein](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/10.%20Reviewing%20the%20customer%20record%20for%20any%20suspicious%20activity.sql)

#### Concluding the primary person of interest based on the findings.
[The employee named](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/11.%20Concluding%20the%20primary%20person%20of%20interest%20based%20on%20the%20findings.sql)

##
## Recommendation
Based on the analysis the employee “Jane Peacock” is suspected of doing a financial crime.











