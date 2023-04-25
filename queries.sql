SELECT first_name, COUNT(*)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY owners.id
    ORDER BY first_name ASC;

SELECT first_name, ROUND(AVG(price)), COUNT(owner_id)
    FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY owners.id
    HAVING ROUND(AVG(price)) > 10000 AND COUNT(owner_id) > 1
    ORDER BY first_name DESC;


