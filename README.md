# WSDA-Music-Company

# Introduction:
The WSDA Music company wants to make a sale plan and needs data-driven insights to make informed decisions.
However, the WSDA Music management team noticed a discrepancy in the company’s finances, which had accrued between 2011 and 2012. 

# Addressing the discrepancy in finances
## Considerations
To begin our investigation into the sales discrepancy for WSDA Music, we should first review the situation to pinpoint relevant information. Since money is missing, we need to consider whether this loss could be due to someone's actions or if other factors are involved. It's important to explore what actions might have contributed to this issue and how we can address it. By examining the activities associated with individuals in the organization, we can gather insights that may help us uncover the reasons behind the missing funds.

# Solution

## First Step: Achieving high-level understanding

### How many transactions took place between the years 2011 and 2012?
[167 transactions have taken place during this period.](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/1.%20How%20many%20transactions%20took%20place%20between%20the%20years%202011%20and%202012%20.sql)

### How much money did WSDA Music make during the same period? 
[1947.97](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/2.%20How%20much%20money%20did%20WSDA%20Music%20make%20during%20the%20same%20period%3F)

##
## Second Step: Gathering insight about customers and employees
### Identifying customers who made purchases between the years 2011 and 2012 alongside their sales representatives, and total transaction amounts for each customer.
[By joining tables and applying filters](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/3.%20Identifying%20customers%20who%20made%20purchases%20between%20the%20years%202011%20and%202012%20alongside%20their%20sales%20representatives,%20and%20total%20transaction%20amounts%20for%20each%20customer.)

### Calculating the number of transactions that exceed the average transaction amount during the same time.
[By filtering and using subqueries](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/4.%20Calculating%20the%20number%20of%20transactions%20that%20exceed%20the%20average%20transaction%20amount%20during%20the%20same%20time.sql)

### Determining the average transaction amount for each year that WSDA Music has been in business.
[By using Strftime for creating a new column aliased as Year](https://github.com/Mae-Shahvirdi/WSDA-Music-Company/blob/main/5.%20Determining%20the%20average%20transaction%20amount%20for%20each%20year%20that%20WSDA%20Music%20has%20been%20in%20business.sql)

##
## Third Step: Analyzing to identify employees possibly motivated to commit financial crimes.
### Generating a list of employees whose sales transactions exceeded the average transaction amount during 2011 and 2012.
(Joining tables and filtering based on time and total sale amount)
### Creating a Commission Payout column to reflect each employee’s commission, calculated at 15% of their sales transaction amount.
(Creating a new column as a place to input the calculations for the commission payout)
### Identifying the employee who earned the highest commission.
### Listing the customers associated with the employee identified in the previous step
(Using String Concatenation for a better readability and clearance for the employee and customer name)
### Determining which customer made the highest purchase.
### Reviewing the customer record for any suspicious activity.
### Concluding the primary person of interest based on the findings.

## Recommendation
Based on the analysis the employee “Jane Peacock” is suspect of doing a financial crime.











