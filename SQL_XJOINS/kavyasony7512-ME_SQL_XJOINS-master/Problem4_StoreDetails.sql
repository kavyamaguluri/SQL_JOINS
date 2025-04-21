-- Write a query to display for each store its store ID, city, and country.
-- Write Query Here

SELECT 
    s.store_id,
    c.city,
    co.country
FROM 
    store s
JOIN 
    address a ON s.address_id = a.address_id
JOIN 
    city c ON a.city_id = c.city_id
JOIN 
    country co ON c.country_id = co.country_id;
