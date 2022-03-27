# Wybór bazy danych
use `hackathon_glh`;

# Wstawianie inicjalnych atrybutów krajów
;
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (1, "Tax-Free amount");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(1,"pl","Kwota wolna od podatku", 1);
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(2,"ua","Неоподатковувана надбавка", 1);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (2, "Minimum monthly salary");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(3,"pl","Minimalne wynagrodzenie miesięczne", 2);
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(4,"ua","Мінімальна місячна заробітна плата", 2);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (3, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(5,"pl","Link do rządowych informatorów",3);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (4, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(6,"pl","Rządowy kalkulator",4);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (5, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(7,"pl","Przedmiot opodatkowania",5);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (6, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(8,"pl","Podstawa opodatkowania",6);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (7, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(9,"pl","Sposób opodatkowania",7);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (8, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(10,"pl","Rok podatkowy",8);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (9, "");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(11,"pl","Ilość stawek podatkowych na zasadach ogólnych",9);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (10,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(12,"pl","Stawka podatkowa",10);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (11,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(13,"pl","Kwota wolna (rocznie)",11);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (12,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(14,"pl","Wybrane ulgi i zwolnienia",12);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (13,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(15,"pl","Tryb rozliczeń",13);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (14,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(16,"pl","Termin płatności",14);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (15,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(17,"pl","Preferencje dla rodzin z dziećmi",15);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (16,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(18,"pl","Możliwość płacenia podatku w walucie obcej",16);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (17,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(19,"pl","Procent pensji \"na rękę\" - singiel uzyskujacy średnie zarobki",17);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (18,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(20,"pl","Rodzina 2+2 uzyskująca średnie zarobki",18);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (19,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(21,"pl","Singiel uzyskujący wysokie zarobki",19);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (20,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(22,"pl","Rodzina 2+2 uzyskująca wysokie zarobki",20);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (21,"");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(23,"pl","Miejsce w rankingu atrakcyjności podatkowej Tax Foundation 2021",21);
