SELECT * FROM bank_loan_data

--Select count(id) as total_loan_applications from bank_loan_data

--MTD Applications
--select count(id) as mtd_total_loan_applications from bank_loan_data
--where Month(issue_date)=12 and year(issue_date)=2021

--(mtd-pmtd)/pmtd

--PMTD Loan Applications
--select count(id) as pmtd_total_applications from bank_loan_data
--where month(issue_date)=11

--Total Funded Amount --mtd, pmtd
--select sum(loan_amount) as mtd_total_funded_amount from bank_loan_data
--where month(issue_date)=12 and year(issue_date)=2021

--select sum(loan_amount) as pmtd_total_funded_amount from bank_loan_data
--where month(issue_date)=11 and year(issue_date)=2021

--Total Received Amount
--select sum(total_payment) as total_amount_received from bank_loan_data
--MTD
--select sum(total_payment) as mtd_total_amount_received from bank_loan_data
--WHERE MONTH(issue_date)=12 and year(issue_date)=2021
--PMTD
--select sum(total_payment) as mtd_total_amount_received from bank_loan_data
--WHERE MONTH(issue_date)=11 and year(issue_date)=2021

--Avg Interest rate

--Select ROUND(Avg(int_rate)*100,2) as avg_interest_rate from bank_loan_data

--MTD Interest Rate

--Select ROUND(Avg(int_rate)*100,2) as mtd_avg_interest_rate from bank_loan_data
--where month(issue_date)=12 AND YEAR(issue_date)=2021

--Select ROUND(Avg(int_rate)*100,2) as pmtd_avg_interest_rate from bank_loan_data
--where month(issue_date)=11 AND YEAR(issue_date)=2021

--Avg DTI rate

--Select ROUND(Avg(dti)*100,2) as avg_dti from bank_loan_data

--MTD dti Rate

--Select ROUND(Avg(dti)*100,2) as mtd_avg_dti_rate from bank_loan_data
 --where month(issue_date)=12 AND YEAR(issue_date)=2021

--Select ROUND(Avg(dti)*100,2) as pmtd_avg_dti from bank_loan_data
--where month(issue_date)=11 AND YEAR(issue_date)=2021

--select loan_status from bank_loan_data

--select
 --(count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100)
 --/
 --count(id) as good_loan_prcnt

 --from bank_loan_data

 --select count(id) from bank_loan_data
 --where loan_status='Fully Paid' or loan_status='Current'

 --Good Loan Funded Amount

 --Select sum(loan_amount) as good_loan_funded_amount from bank_loan_data
 --where loan_status='Fully Paid' or loan_status='Current'

 --Good Loan Received Amount

 --Select sum(total_payment) as good_loan_received_amount from bank_loan_data
 --where loan_status='Fully Paid' or loan_status='Current'

 --TOTAL PERCENTAGE OF BAD LOAN

 --SELECT
 --(COUNT(CASE WHEN loan_status='Charged Off' then id end)*100.0)/
 --count(id) as bad_loan_prcnt
 --from bank_loan_data

 --select count(id) as bad_loan_applicaitons from bank_loan_data
 --where loan_status='Charged Off'

 --Bad Loan Funded Amount
 --select sum(loan_amount) as bad_loan_funded_amount from bank_loan_data
 --where loan_status='Charged Off'


 --LOAN STATUS GRID VIEW

 --SELECT

 --loan_status,
 --count(id) as total_loan_applications,
 --SUM(total_payment) as total_amount_received,

 --sum(loan_amount) as total_funded_amount,

 --round(avg(int_rate*100),2) as interest_rate,

 --round(avg(dti*100),2) as DTI

 --FROM

 --bank_loan_data

 --group by loan_status



 --SELECT

 --loan_status,
 
 --SUM(total_payment) as mtd_total_amount_received,

 --sum(loan_amount) as mtd_total_funded_amount

 --FROM

 --bank_loan_data

 --where month(issue_date)=12

 --group by loan_status

 select 
 datename(month, issue_date), count(id) as total_loan_applications,
 sum(loan_amount) as total_funded_amount,
 sum(total_payment) as total_received_amount

 from bank_loan_data
 group by datename(month, issue_date)
 order by datename(month, issue_date)