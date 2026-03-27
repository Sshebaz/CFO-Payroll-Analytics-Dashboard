CREATE VIEW vw_cfo_summary AS
SELECT 
    SUM(net_salary) AS total_payroll,
    SUM(gross_salary) AS total_gross_salary,
    SUM(tax_deduction) AS total_tax_deduction,
    SUM(pf_deduction) AS total_pf_deduction,
    COUNT(DISTINCT employee_id) AS total_employees
FROM payroll;

# Department Expense View
CREATE VIEW vw_department_expense AS
SELECT 
    e.department,
    SUM(p.net_salary) AS department_expense
FROM payroll p
JOIN employees e 
ON p.employee_id = e.employee_id
GROUP BY e.department;

# Attendance Summary View
CREATE VIEW vw_attendance_summary AS
SELECT
    SUM(working_days) AS total_working_days,
    SUM(present_days) AS total_present_days,
    SUM(overtime_hours) AS total_overtime_hours
FROM attendance;