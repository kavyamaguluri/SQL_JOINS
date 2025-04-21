-- Display all actors who appear in the film "Alone Trip" using subqueries.
-- Write Query Here

SELECT 
    
    a.first_name,
    a.last_name
FROM 
    actor a
WHERE 
    a.actor_id IN (
        SELECT fa.actor_id
        FROM film_actor fa
        WHERE fa.film_id = (
            SELECT f.film_id
            FROM film f
            WHERE f.title = 'Alone Trip'
        )
    );
