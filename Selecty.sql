#1 Vyberie všetky udaje o uzivatelovi ktoreho prezivka je "Denny"
SELECT *  FROM uzivatele WHERE prezdivka = "Denny";


#2 Vyberie všetky udaje o uzivateloch ktorých ID je medzi 2 a 4
SELECT * FROM uzivatele WHERE uzivatele_id BETWEEN 2 AND 4;


#3 Vyberie všetky udaje o uzivateloch ktorých prezivka konči na "a" alebo má 5 miest a začina na "e"
SELECT * FROM uzivatele WHERE prezdivka LIKE "%a" OR prezdivka LIKE "e__";


#4 Vyberie nazov a štart z turnajoch kde názov začina slovami "Grand Prix"
SELECT nazev, start FROM turnaje WHERE nazev LIKE "Grand Prix %";


#5 Vyberie všetky udaje o vozidlach kde je názov "Sáně","Moped" alebo "Pickup"
SELECT * FROM vozidla WHERE nazev IN ("Sáně","Moped","Pickup");


#6 Vyberie prezivku, uroveň, utratu od uživateľoch ktorých prezívka je "RashFlow5","WifeAndSite","LunchAndBlood","FastGamerAccess" a zároveň uroveň je medzi 15 a 55 a zaroveň utrata je väčšia alebo rovna 0
SELECT prezdivka, uroven, utrata FROM uzivatele WHERE prezdivka IN ("RashFlow5","WifeAndSite","LunchAndBlood","FastGamerAccess") AND uroven BETWEEN 15 AND 55 AND utrata >=0 


#7 Vyberie mno, priezvisko a email z info. o uživateľoch kde meno je 'Emilie' a zaroveň priezvisko je 'Mikešová'
SELECT first_name, last_name, email FROM  person_detail WHERE first_name = 'Emilie' AND last_name ='Mikešová';


#8 Vyberie ID, meno od uživateľoch ktorých meno začína na "k" a zaroveň ID majú medzi 250 a 700
SELECT user_id, name FROM user WHERE NAME LIKE 'k%' AND user_id BETWEEN 250 AND 700;
