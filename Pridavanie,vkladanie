//odstrani uzivatela ktoreho email je "ema@centrum.cz"
DELETE FROM uzivatele WHERE email = 'ema@centrum.cz';


//prida noveho uzivatela
INSERT INTO uzivatele(prezdivka,email,heslo) VALUES("Marek Horák","iloveanime@gmail.com","6SA4Ap_s32$f");
INSERT INTO uzivatele(prezdivka,email,heslo) VALUES("Antonín Nevrlý","antonevrly@email.cz","5ly_poas7#gf")


//prida novu menu
INSERT INTO meny(nazev, zkratka, kurz_vuci_USD) VALUES("Bitcoin","BTC","0.00008")


//zmeni maximalnu rychlosť vozidlam ktore maju max. rychlosť viac alebo rovne 350
UPDATE vozidla SET max_rychlost = 320 WHERE  max_rychlost >= 350;


//odstrani vozidlo ktoré má hodnotenie menej alebo rovne 30 a zaroveň jeho nazov je moped
DELETE FROM vozidla WHERE(hodnoceni <= '30') AND (nazev = 'Moped')
