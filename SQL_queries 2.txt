--Task 1 
SELECT department_name, location_id,
CASE
    WHEN location_id = 1700 THEN 'Washington'
    WHEN location_id = 1400 THEN 'Texas'
    WHEN location_id = 1500 THEN 'California'
    WHEN location_id = 2500 THEN 'California'
    WHEN location_id = 1800 THEN 'Ontario'
    WHEN location_id = 2400 THEN 'Other'
    WHEN location_id = 2700 THEN 'Bavaria'
    END AS STATE
FROM departments;   


--Task 2 
SELECT COUNT (location_id), country_id
FROM locations
GROUP BY country_id
ORDER BY COUNT (location_id) DESC;


--Task 3 
SELECT COUNT (location_id), country_id
FROM locations
GROUP BY country_id
HAVING COUNT (location_id)>2;


--Task 4 
SELECT locations.street_address, locations.state_province,
countries.country_name
FROM locations
FULL JOIN countries
ON locations.country_id = countries.country_id
ORDER BY country_name ASC;



--Task 5
SELECT countries.country_name,locations.state_province,
regions.region_name
FROM countries
INNER JOIN locations
ON countries.country_id = locations.country_id
INNER JOIN regions
ON countries.region_id = regions.region_id;


--Task 6
SELECT COUNT (countries.country_name),COUNT(locations.street_address),
regions.region_name
FROM countries
INNER JOIN locations
ON countries.country_id = locations.country_id
INNER JOIN regions
ON countries.region_id = regions.region_id
GROUP BY regions.region_name;


--Task 7 
SELECT COUNT (countries.country_name)AS COUNTRIES,
       COUNT(locations.street_address)AS ADDRESSES,
       regions.region_name AS REGIONS
FROM countries
INNER JOIN locations
ON countries.country_id = locations.country_id
INNER JOIN regions
ON countries.region_id = regions.region_id
GROUP BY regions.region_name;


--Task 8 
SELECT COUNT (countries.country_name),COUNT(locations.street_address),
regions.region_name
FROM countries
INNER JOIN locations
ON countries.country_id = locations.country_id
INNER JOIN regions
ON countries.region_id = regions.region_id
GROUP BY regions.region_name
HAVING COUNT (countries.country_name)>6;


--Task 9 
SELECT COUNT (countries.country_name)AS COUNTRIES,
       COUNT(locations.street_address)AS ADDRESSES,
       regions.region_name AS REGIONS
FROM countries
INNER JOIN locations
ON countries.country_id = locations.country_id
INNER JOIN regions
ON countries.region_id = regions.region_id
GROUP BY regions.region_name
HAVING COUNT (countries.country_name)>6;


