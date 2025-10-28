SELECT * FROM stand_user

-- Question 1
SELECT AVG(POWER), MAX(POWER), MIN(POWER)
FROM stand_user

--Question 2
SELECT count(precision) AS known_precision, count(user_name) AS total_users
FROM stand_user

-- Question 3
SELECT ROUND(STDDEV(power), 3) AS stddev_power, ROUND(VARIANCE(power), 3) AS variance_power
FROM stand_user

-- Question 4
SELECT precision, avg(power) AS avg_power
FROM stand_user
WHERE precision IS NOT NULL
group by precision
order by precision

-- Question 5
SELECT precision, avg(power) AS avg_power 
FROM stand_user 
WHERE precision IS NOT NULL
GROUP BY precision 
having avg(power) > 80

-- Question 6
SELECT user_name, stand_name, (power - (SELECT AVG(power) FROM stand_user)) AS diff_from_avg
FROM stand_user;

-- Question 7
SELECT ROUND(AVG(POWER), 2) AS ROUNDED_AVG_POWER
FROM stand_user

-- Question 8
SELECT precision, SUM(power) AS total_power
FROM stand_user
GROUP BY ROLLUP(precision)
ORDER BY precision

-- Question 9 
SELECT EXTRACT(YEAR FROM debut_date) AS debut_year,
       precision,
       SUM(power) AS total_power
FROM stand_user
GROUP BY CUBE(EXTRACT(YEAR FROM debut_date), precision)
ORDER BY debut_year, precision;