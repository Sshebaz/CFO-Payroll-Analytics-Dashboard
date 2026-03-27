# Total Payroll Cost
SELECT SUM(net_salary) AS total_payroll_cost
FROM payroll;

# Total Gross Payroll 
SELECT SUM(gross_salary) AS total_gross_salary
FROM payroll;

# Total Tax Deduction 
SELECT SUM(tax_deduction) AS total_tax
FROM payroll;

# Total PF Deduction 
SELECT SUM(pf_deduction) AS total_pf
FROM payroll;

# Cost Per Employee 
SELECT 
SUM(net_salary) / COUNT(DISTINCT employee_id) 
AS cost_per_employee
FROM payroll;

# Department Expense 
SELECT 
e.department,
SUM(p.net_salary) AS department_expense
FROM payroll p
JOIN employees e 
ON p.employee_id = e.employee_id
GROUP BY e.department;

# Department Cost Per Employee 
SELECT 
e.department,
SUM(p.net_salary) / COUNT(DISTINCT p.employee_id) 
AS dept_cost_per_employee
FROM payroll p
JOIN employees e 
ON p.employee_id = e.employee_id
GROUP BY e.department;

# Overtime Percentage 
SELECT 
(SUM(overtime_hours) / SUM(working_days)) * 100 
AS overtime_percentage
FROM attendance;

# Absenteeism Rate
SELECT 
((SUM(working_days) - SUM(present_days)) / SUM(working_days)) * 100 
AS absenteeism_rate
FROM attendance;

# Headcount by Department 
SELECT 
department,
COUNT(employee_id) AS total_employees
FROM employees
GROUP BY department;