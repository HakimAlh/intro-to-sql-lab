-- Clue #1: We recently got word that someone fitting Carmen Sandiego's description has been traveling through Southern Europe. 
-- She's most likely traveling someplace where she won't be noticed, so find the least populated country in Southern Europe, 
-- and we'll start looking for her there.

 \c world
select name, code, region from countries where region = 'Southern Europe' order by population ASC  limit 1;
SELECT language FROM countrylanguages WHERE countrycode= 'VAT';
-- ------------ "I'm on it. Looks like we have our destination for tonight." ----------------------------


-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on to a different country, a country where people speak only the language she was learning. Find out which nearby country speaks nothing but that language.

-- Write SQL query here

-- SELECT * FROM countrylanguages INNER JOIN countrycode ON countries.code=countrylanguages.countrycode;
-- SELECT * FROM countries C
-- JOIN countrylanguages L ON C.code = L.countrycode
-- WHERE C.region = 'Southern Europe' AND L.language = 'Italian';

-- Italy 
-- ------------ "Always wanted to go to Italy! Are we going there? Are we??" ----------------------------


-- Clue #4: We're booking the first flight out – maybe we've actually got a chance to catch her this time. There are only two cities she could be flying to in the country. One is named the same as the country – that would be too obvious. We're following our gut on this one; find out what other city in that country she might be flying to.

-- Write SQL query here

-- SELECT * FROM countries WHERE region = 'Southern Europe';
SELECT name FROM countries WHERE name = 'San Marino' ;
-- ------------ "Awesome! I'm packing my bags right now but you're paying or else I won't help you!" ----------------------------


-- Clue #5: Oh no, she pulled a switch – there are two cities with very similar names, but in totally different parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!

-- Write SQL query here
-- select * FROM cities;
-- select * FROM countries
SELECT * FROM cities WHERE name LIKE 'San Mar%';

-- ------------ "Calm down! I'm on it, I'm not a machine you know. 
-- Just give me a minut-- . . . Why did you make me do this. I don't like this part.." ----------------------------


-- Clue #6: We're close! Our South American agent says she just got a taxi at the airport, and is headed towards
-- the capital! Look up the country's capital, and get there pronto! Send us the name of where you're headed and we'll
-- follow right behind you!

-- Write SQL query here

SELECT capital, localname FROM countries 
JOIN cities ON cities.countrycode = countries.code WHERE cities.countrycode = '2515';



-- ------------ "Gotcha! I seriously am concerned how you guys are able to find her so easily.. But maybe I don't wanna know." ----------------------------

-- Clue #7: She knows we're on to her – her taxi dropped her off at the international airport, and she beat us to the boarding gates. We have one chance to catch her, we just have to know where she's heading and beat her to the landing dock. Lucky for us, she's getting cocky. She left us a note (below), and I'm sure she thinks she's very clever, but if we can crack it, we can finally put her where she belongs – behind bars.


--               Our playdate of late has been unusually fun –
--               As an agent, I'll say, you've been a joy to outrun.
--               And while the food here is great, and the people – so nice!
--               I need a little more sunshine with my slice of life.
--               So I'm off to add one to the population I find
--               In a city of ninety-one thousand and now, eighty five.


-- We're counting on you, gumshoe. Find out where she's headed, send us the info, and we'll be sure to meet her at the gates with bells on.

-- ------------ "You have no idea how much I struggled, Carmen. Quit giving me a hard time!" ----------------------------








-- select * from countrylanguages   (language) 
-- select * from countries;
-- SELECT countrylanguages.language, countries.localname
-- FROM countrylanguages
-- INNER JOIN countries ON countrylanguages.language=countries.surfacearea;
-- select name, code, region from countries where region = 'Southern Europe';
-- select * from countryLanguages;
-- INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

-- SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
-- FROM Orders
-- INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
