-- Find the number of payments made by the customer ELEANOR HUNT in the payment table and rename it to Payments by ELEANOR HUNT.
-- Write Query Here

SELECT 
    COUNT(p.payment_id) AS "Payments by ELEANOR HUNT"
FROM 
    customer c
JOIN 
    payment p ON c.customer_id = p.customer_id
WHERE 
    c.first_name = 'ELEANOR' 
    AND c.last_name = 'HUNT';
