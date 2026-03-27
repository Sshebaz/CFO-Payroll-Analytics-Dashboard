CREATE DATABASE cfo_dashboard;
USE cfo_dashboard;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(12,2)
);

CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY,
    employee_id INT,
    pay_date DATE,
    base_salary DECIMAL(12,2),
    bonus DECIMAL(12,2),
    overtime_pay DECIMAL(12,2),
    total_pay DECIMAL(12,2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    date DATE,
    hours_worked DECIMAL(5,2),
    overtime_hours DECIMAL(5,2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

SHOW TABLES;
