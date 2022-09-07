-- write your queries here

SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(vehicles) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id ORDER BY COUNT(vehicles);

SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(vehicles) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.id HAVING COUNT(vehicles) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC;