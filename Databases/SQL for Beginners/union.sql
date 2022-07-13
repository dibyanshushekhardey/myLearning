SELECT first_name AS Company_Names FROM employee
UNION
SELECT branch_name FROM branch
UNION
SELECT client_name FROM client;


SELECT client_name FROM client 
UNION 
SELECT supplier_name FROM branch_supplier

SELECT client_name, branch_id FROM client UNION SELECT supplier_name, branch_id FROM branch_supplier

SELECT client_name, client.branch_id FROM client UNION SELECT supplier_name, branch_supplier.branch_id FROM branch_supplier

SELECT salary FROM employee UNION SELECT total_sales FROM works_with

