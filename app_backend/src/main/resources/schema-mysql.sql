# Wybór bazy danych
use `hackathon_glh`;

# Wstawianie inicjalnych atrybutów krajów
;
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (1, "Tax-Free amount");
INSERT INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(1,"pl","Kwota wolna od podatku", 1);
INSERT INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(2,"ua","Неоподатковувана надбавка", 1);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (2, "Minimum monthly salary");
INSERT INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(3,"pl","Minimalne wynagrodzenie miesięczne", 2);
INSERT INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(4,"ua","Мінімальна місячна заробітна плата", 2);

