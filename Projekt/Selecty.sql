#1/1 SELECT vyberie z tabuľky user id a počet recenzi ktoré daný používateľ napísal
SELECT user_id, count(review) AS 'pocet recenzi' FROM reviews WHERE user_id = 1;

#1/2 SELECT vyberie z tabuľky najvyšiu hodnotu penazi ktoru ma niekto na učte
SELECT max(wallet) AS 'Najviac penazi' FROM users;

#1/3 SELECT vyberie meno užívateloch a ich stav učtu, ktory je zoradeny zostupne
SELECT username, wallet FROM users ORDER BY wallet desc;

#1/4 SELECT vyberie z tabulky uzivatelov, ktori si vytvorili ucet v obdobi od 1.1.2017 do 1.1. 2022 a zoradi ich od najnovsieho
SELECT * FROM users WHERE date_created BETWEEN '2017-01-01' AND '2022-01-01' ORDER BY date_created DESC;

#2/1 SELECT vyberie z tabulky všetky údaje o užívateľoch, ktorí majú email končiaci na '@centrum.sk', '@azet.sk alebo gmail a zaroven ich krajina musi byt slovensko (id 1)'
SELECT * FROM users WHERE email LIKE '%@centrum.sk' OR email LIKE'%@azet.sk' OR email LIKE '%@gmail.com' AND country_id LIKE 1;

#2/2 SELECT vyberie z tabulky všetky údaje o užívateľoch okrem tých, ktorích country_id je '1'
SELECT * FROM users WHERE NOT country_id = 1;

#2/3 SELECT vyberie z tabulky prezivku, celé meno, email, adresu užívateľa ktorého prezivka konci 995
SELECT username, email, address FROM users WHERE username LIKE '%995';

#3/1 SELECT vyberie id uzivatela a koľko recenzii daný uživateľ napisal
SELECT user_id, COUNT(review) AS 'Pocet recenzii' FROM reviews GROUP BY user_id;

#3/2 SELECT vyberie ID uzivatela a kolko hier dany uzivatel vlastni
SELECT user_id, COUNT(game_id) AS 'Pocet vlastnenych hier'  FROM library GROUP BY user_id ORDER BY COUNT(game_id) DESC ;

#3/3 SELECT vyberie id statu a kolko uzivatelov pochadza z tohto statu (podmienkou je aby dany stat mal aspon 2 uzovatelov)
SELECT country_id, COUNT(user_id) AS 'pocet uzivatelov' FROM users GROUP BY country_id HAVING COUNT(user_id) >= 2;

#4/1 SELECT vyberie z meno hry a vydavateľa danej hry (podmienkou je id hry menšie ale rovne 12)
SELECT name AS 'Meno hry',username AS 'Vydavateľ' FROM games INNER JOIN publishers ON publishers.publisher_id = games.publisher_id WHERE game_id <= 12 GROUP BY name;

#4/2 SELECT vyberie z tabulky id, prezivku uživatela a koľko recenzii dany uživateľ napisal ak vobec nejake napisal (podmienkou je id menšie alebo rovne 5)
SELECT users.user_id AS 'Id uživatela', username AS 'Meno uživatela', count(review) AS 'Počet recenzii' FROM reviews INNER JOIN users ON users.user_id = reviews.user_id WHERE reviews.user_id <= 5  GROUP BY username;

#5/1 SELECT vyberie vsetky udaje od uzivatelov, ktori niekedy napisali negativnu recenziu
SELECT * FROM users WHERE user_id IN (SELECT user_id FROM reviews WHERE positive_review = false);

#5/2 SELECT vyberie vsetky udaje o hre, ktorej cena je pod 30$
SELECT * FROM games WHERE game_id IN (SELECT game_id FROM price WHERE original_price <= 30);


