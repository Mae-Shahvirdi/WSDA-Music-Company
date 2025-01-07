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
167
(Using counting and filtering the time)
### How much money did WSDA Music make during the same period? 
1947.97
(Using Sum and filtering the time)
## Second Step: Gathering insight about customers and employees
### Identifying customers who made purchases between the years 2011 and 2012.
(Using Join to connect the related tables)
### Compiling a list of customers, sales representatives, and total transaction amounts for each customer from 2011 to 2012.
Using Join to connect the related tables
### Calculating the number of transactions that exceed the average transaction amount during the same time.
26
Filtering with time and transaction amount, by using a subquery
### Determining the average transaction amount for each year that WSDA Music has been in business.
Using Strftime for creating a new column aliased as  Year

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











