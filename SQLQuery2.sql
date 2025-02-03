SELECT * FROM bank_loan_data

--select 
 
 --datename(month, issue_date)as month_name, count(id) as total_loan_applications,
 --sum(loan_amount) as total_funded_amount,
 --sum(total_payment) as total_received_amount

 --from bank_loan_data
 --group by datename(month, issue_date), datename(month,issue_date)
 --order by datename(month, issue_date)

--select 
 --month(issue_date) as month_number,
 --datename(month, issue_date)as month_name, count(id) as total_loan_applications,
 --sum(loan_amount) as total_funded_amount,
 --sum(total_payment) as total_received_amount

 --from bank_loan_data

 --group by month(issue_date), datename(month,issue_date)
 --order by month(issue_date)

 --GROUP BY ADDRESS STATE

 Select

 address_state,
 count(id) as total_loan_applications,
 sum(loan_amount) as total_funded_amount,
 sum(total_payment) as total_received_amount

 from bank_loan_data
 group by address_state
 order by address_state
