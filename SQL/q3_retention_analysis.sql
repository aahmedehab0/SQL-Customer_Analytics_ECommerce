SELECT 
	row_number()OVER (PARTITION BY customerkey ORDER BY orderdate DESC) AS customer_operation_index,
	customerkey,
	orderdate,
	full_name,
	first_purchase_date
FROM 
	cohort_analysis