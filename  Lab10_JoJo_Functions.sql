SELECT * FROM stand_user 

-- Question 1
SELECT stand_name, UPPER(stand_name) AS stand_upper, LOWER(stand_name) AS stand_lower, stand_name AS stand_title
FROM stand_user

-- Question 2
SELECT user_name, catchphrase, LENGTH(catchphrase) AS phrase_length
FROM stand_user
ORDER BY LENGTH(catchphrase)

-- Question 3
SELECT stand_name, SUBSTR(stand_name, 0, 8) AS stand_short
FROM stand_user

-- Question 4
SELECT stand_name, INSTR(UPPER(stand_name), 'WORLD') AS word_position
FROM stand_user

-- Question 5
SELECT user_name, LPAD(power, 8, '*')
FROM stand_user

-- Question 6
SELECT user_name, power, ROUND(power) AS rounded_power, TRUNC(power) AS truncated_power, MOD(power, 100) AS power_MOD_300
FROM stand_user

-- Question 7
SELECT user_name, NVL(precision, UNKNOWN) AS precision_status
FROM stand_user

-- Question 8
SELECT user_name, debut_date, NEXT_DAY(ADD_MONTHS(debut_date, 6), 'MONDAY') AS Training_review
FROM stand_user

-- Qeustion 9
SELECT user_name, ROUND(MONTHS_BETWEEN(SYSDATE, debut_date)) AS months_since_debut
FROM stand_user

-- Question 10
SELECT user_name, user_name || ' wields ' || stand_name || ' with power ' || TO_CHAR(power) || ' but dreams of ' || TO_CHAR(power * 3) || '.' AS dream_statement 
FROM stand_user

-- Question 11
SELECT * FROM stand_user
WHERE UPPER(stand_name) LIKE '%WORLD%'

-- Question 12
SELECT user_name, stand_name, SOUNDEX(stand_name) AS sound_code
FROM stand_user
ORDER BY SOUNDEX(stand_name), stand_name