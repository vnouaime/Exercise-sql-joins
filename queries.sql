-- write your queries here

-- Query 1 --
SELECT * FROM owners
    FULL JOIN vehicles
    ON owners.id = vehicles.owner_id;

-- Query 2 --
SELECT first_name, last_name, COUNT(*) FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name
    ORDER BY first_name;

-- Query 3 --
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) FROM owners
    JOIN vehicles
    ON owners.id = vehicles.owner_id
    GROUP BY first_name, last_name 
    HAVING ROUND(AVG(price)) > 10000
    ORDER BY first_name DESC;