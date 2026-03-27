CREATE INDEX idx_payroll_employee 
ON payroll(employee_id);

CREATE INDEX idx_attendance_employee 
ON attendance(employee_id);

CREATE INDEX idx_employees_department 
ON employees(department(50));