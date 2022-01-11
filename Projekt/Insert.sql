#COUNTRY
INSERT INTO country (country_name)
VALUES
('Slovakia'),
('United States of America'),
('United Kingdom'),
('Australia'),
('Czech Republic'),
('Russia'),
('Spain'),
('Serbia'),
('Slovenia'),
('Hungary'),
('Germany'),
('France'),
('Norway'),
('Austria'),
('Turkey');

#USERS
INSERT INTO users (username, fullname, email, password, wallet, country_id, address, date_created)
VALUES
('ReAKeR', 'Miroslav Holienčin', 'miro875@azet.sk', 'MiRo15273*', 715.94, 1, '02304 Stará Bystrica 875', '2018-08-20 14:28:53'),
('Krokodyl145','Denis Cyprich', 'kroko145@gmail.com', 'Cgc3Fsr1', 2.31, 1, '83106 Bratislava 35', '2016-05-07 23:43:41'),
('morocoro', 'Ashley Hart', 'ashley512@outlook.com', 'AsHa651*f', 7.12, 2, '60607 Illinois 1200 S Harrison St, Apt.5', '2019-12-20 18:01:31'),
('Along-me', 'Jozef Bugal', 'jozobugal69@gmail.com', 'jozik123456', 246, 1, '04018 Hviezdoslavova 28', '2018-01-13 08:23:59'),
('IceGood', 'Ištvan Procházka', 'istvi123@centrum.cz', 'prochazecka321', 5.26, 5, '69681 Jihomoravská 84','2021-08-27 11:27:03'),
('Mr_Pudgers', 'Mikuláš Petrovický', 'mikulka.@azet.sk', 'hesloheslo123', 0.21, 1, '04013 Madridská 8', '2020-02-02 12:36:54'),
('Dunk_995', 'Nathan MacKinnon', 'machan29@gmail.com', 'hockeyismypassion', 2731.87, 2, '88059 Julia Robert Street 15','2017-04-17 04:26:47'),
('bibabobabi', 'Robert Mikla', 'robcis.miklovic@centrum.sk', 'novasuperstarsomja123', 147.87, 1, '8316 Astrová 13', '2017-06-15 19:42:53 '),
('Tooo', 'Leonard Horváth', 'horvath.leo@gmail.com', 'horvileo128', 5, 1, '94905 Zelená 3', '2019-12-27 01:27:31'),
('RATAN', 'Katarína Šťastná', 'stastnakatka@aol.com', 'katkajeborka492', 25, 1, '92101 Hlavná 43', '2017-07-03 13:04:09'),
('captainhentai', 'Ľubica Podhájová', 'lubkapodhajka@centrum.sk', 'GfRL67-l2P', 6.69, 1, '85212 Kutlíková 14', '2021-09-09 16:04:48'),
('A1bert_Einstein', 'Radovan Chrabrý', 'radko.radko@azet.sk', 'radekchrabro720', 0, 1, '82686 Drieňová 6', '2022-01-03 18:24:46'),
('Mopnex', 'Leon Draisaitl', 'drain.leon@gmail.com', '7Hy+dkfwuj$', 113, 11, '50301 Postfach 540496', '2015-06-28 14:46:26'),
('SilentSpank', 'Mats Zuccarello', 'mats@zuccarello.com', '8kWndpI7_dB', 814.99, 13, '0107 Svingen 18', '2014-12-20 15:28:56'),
('Krotov', 'Jaroslav Török', 'torok.jaroslav@gmail.com', 'jaro**18111979', 14.84, 1, '81002 Palisády 9', '2016-07-12 23:58:12');

#PUBLISHERS
INSERT INTO publishers (username, email)
VALUES
('Sony Interactive Entertainment', 'ProSupport@sony.com'),
('Xbox Game Studios', 'support@xboxgames.com'),
('Activision Blizzard', 'privacy@activision.com'),
('Electronic Arts', 'support@eagames.com'),
('Rockstar Games', 'support@rockstargames.com'),
('SCS Software', 'support@scssoft.com'),
('CD PROJEKT RED', 'support.cdprojektred.com'),
('Warhorse Studios', 'support@kingdomcomerpg.com'),
('CAPCOM Co., Ltd.', 'feedback@capcom.com'),
('VALVE', 'support@steampowered.com'),
('Bethesda Softworks', 'info@bethsoft.com'),
('Ubisoft', 'AccountSupport@ubi.com'),
('Wargaming Group Limited', 'support@wargamingstore.com'),
('Battlestate Games', 'support@bsg.de'),
('Mojang Studios', 'support@mojang.com');

#GENRE
INSERT INTO genre (genre_name)
VALUES
('Shooter'),
('Fighting'),
('Sandbox'),
('Horror'),
('RPG'),
('Adventure'),
('Puzzle'),
('Sport'),
('Strategy'),
('Driving'),
('Survival'),
('Action'),
('Simulator'),
('Indie'),
('Casual');

#GAMES
INSERT INTO games (name, genre_id, publisher_id, release_date)
VALUES
('God of War', 12, 1,'2018-04-20'),
('Forza Horizon 5', 10, 2,'2021-11-04'),
('Call of Duty: Modern Warfare', 1, 3,'2019-10-25'),
('Battlefield 2042', 1, 4,'2021-11-19'),
('Grand Theft Auto V', 6, 5,'2013-9-17'),
('Euro Truck Simulator 2', 10, 6,'2012-10-19'),
('The Witcher 3: Wild Hunt', 12, 7,'2015-05-18'),
('Kingdom Come: Deliverance', 5, 8,'2018-02-13'),
('Resident Evil: Village', 4, 9,'2021-05-01'),
('Counter-Strike: Global Offensive', 1, 10,'2012-08-21'),
('Doom Eternal', 1, 11,'2020-03-20'),
('Tom Clancy''s Rainbow Six Siege', 1, 12,'2015-11-26'),
('World of Tanks', 5, 13,'2010-08-12'),
('Escape from Tarkov', 1, 14,'2016-08-04'),
('Minecraft', 3, 15,'2011-11-18');

#PRICE
INSERT INTO price (game_id, original_price, sale_price)
VALUES
(1, 60, 30),
(2, 60, 54),
(3, 60, 45),
(4, 60, 40),
(5, 30, 15),
(6, 20, 5),
(7, 30, 6),
(8, 30, 8),
(9, 60, 45),
(10, 0, 0),
(11, 60, 30),
(12, 30, 15),
(13, 0, 0),
(14, 120, 100),
(15, 25, 15);

#LIBRARY
INSERT INTO library (user_id, game_id)
VALUES
(1, 3),
(1, 13),
(1, 9),
(1, 6),
(1, 8),
(1, 14),
(2, 2),
(2, 4),
(5, 7),
(6, 1),
(7, 4),
(7, 14),
(12, 10),
(12, 6),
(12, 15),
(14, 3),
(15, 7),
(15, 9),
(15, 11);

#REVIEWS
INSERT INTO reviews (user_id, game_id, positive_review, review)
VALUES
(1, 2, false, 'Neustále výpadky pripojenia úplne kazia zážitok z hry. Hrať v convoyi je v podstate úplne nemožné keďže vám vaši kamaráti neustále miznú alebo sa lagujú. Je to jedna zo základných funkcii hry a ani po mesiaci od vydania to nieje vyriešené. Po oprave s radosťou recenziu zmením.'),
(1, 11, true, 'Jedna z najlepších FPS ktoré kedy vyšli. Vraždenie démonov za zvukov metalu ma oproti 2016 doomovi uspokojuje oveľa viac. Tentokrát armády pekla prenikli na zem a Doomslayer je jediný kto ju dokáže zachrániť. Dozvieme sa aj niečo z minulosti Slayera. Pri hraní sa treba naučiť využívať všetky zbrane a dostupné vylepšenia ktoré dostanete. Tento tanec Vás bude sprevádzať celou hrou. Hru som dohral na obtiažnosť ultra-violence a podľa mňa je to skvelo vyvážená obtiažnosť na začiatok. 10/10 Metal, démoni, násilie.... Výborná hra.'),
(4, 2, true, 'Klasická forzička 10/10 lot of fun'),
(5, 7, true, 'Skvost, dokonalost, majstrštyk. Tuhle hru hraji již po čtvrté. Nazíváte mě lhářem, když se podíváte na nahráné hodiny? Je pravda pravdoucí, že tuhle hru jsem nehrál čtyřikrát čistě koupenou, jestli mi rozumíte. Ale hru jsem si koupil se všemi dlc a nelituji ani trochu. Hra... Omluvte moji přehnanou filosofii, ale možná bych se i neopovážíl tady tuhle věc, kterou bych každému doporučil, nazvat pouhou hrou. Děkuji tvůrcům a prosím za prominutí, že jsem si ji nekoupil hned. Hodně štěstí na stezce vám všem.'),
(5, 9, true, 'Prostě další velmi povedený díl od tvůrců co dodat ♥♥'),
(5, 12, false, 'Když jsem si kupoval tuto hru bylo mi řečeno že je to něco jako lepší cs:go.Popravdě záleží na tom jaký jste hráč pokud vás baví taktizovat a přemýšlet r6 je spíše hra pro vás.Ale pokud raději jen tak chodíte a zabijíte jako já tak hru nemá cenu kupovat.Protožýe jinak se vám bude stávat že týpek vám dá zezadu nečekaně 3 rány a budete mrtví.Zbytečně proto nekupujte tuto hru pokud jste jako já 2 typ jinak se akorát budete zbytečně naštvávat.'),
(5, 10, true, 'Je to jako droga. nenávidíš to, ale potřebuješ to..'),
(9, 10, true, '+ otváranie bední za 2€, + rýchlo kurz polštiny a ruštiny, + nolife, + premrhaný rok života. 9/10'),
(9, 13, true, 'nevím jak vám ale tahle hra mně nikdy nepřestane bavit je to bombastická hra'),
(12, 6, true, 'Najlepší truck simulátor na trhu !!!'),
(12, 10, false, 'depresia'),
(13, 10, false, 'Too many hackers and toxic plebs.'),
(13, 4, false, 'Battlefield 20-42 fps'),
(14, 10, true, 'I don''t always reload, but when I do there''s always an enemy in front of me.'),
(15, 10, true, 'Dobrá hra ale chcelo by ten lepší anti-cheat :D');

#INVOICE
INSERT INTO invoice (user_id, date)
VALUES
(1, '2020-06-07 14:28:53'),
(1, '2022-01-03 18:18:46'),
(1, '2019-04-08 19:53:24'),
(1, '2021-11-13 11:13:52'),
(2, '2022-01-01 05:47:32'),
(5, '2021-08-27 15:17:36'),
(6, '2020-03-16 12:37:42'),
(7, '2021-12-28 17:42:42'),
(12, '2019-06-04 17:43:42'),
(12, '2022-01-04 12:53:52'),
(12, '2022-01;04 13:15:25'),
(14, '2020-05-24 17:08:24'),
(15, '2018-10-03 12:23:13'),
(15, '2021-10-04 13:16:42'),
(15, '2021-05-20 16:53:12');

#CART_ITEMS
INSERT INTO cart_items (game_id, invoice_id)
VALUES
(8, 1),
(9, 2),
(6, 3),
(14, 4),
(2, 5),
(4, 5),
(7, 6),
(1, 7),
(4, 8),
(14,8),
(10, 9),
(6, 10),
(15, 11),
(3, 12),
(7, 13),
(9, 14),
(11, 15);



