-- The statement CASE lets you evaluate conditions and return a value WHEN the first condition is met (like an IF-THEN-ELSE statement);
-- The statement CASE always go to clause SELECT;
-- The statement CASE should be includ the components WHEN, THEN and END. ELSE is an optional component for cases that do not meet any of the case conditions;
-- In this case I want to bring the name of all the songs that are of the genre rock and jazz. For this I used the table genre, to identify the ID of rock and jazz and I used the table track, to get the name of the songs.
-- with the condition WHEN I have set it when it is 1 then screenshot Rock and when it is 2 then screenshot Jazz otherwise screenshot not found.

SELECT tra.name, CASE tra.genreid 
WHEN 1 THEN 'Rock' 
WHEN 2 THEN 'Jazz'
ELSE 'not found'
END AS Genre
FROM track AS tra 
