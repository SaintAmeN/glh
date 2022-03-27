# Wybór bazy danych
use `hackathon_glh`;

# Wstawianie inicjalnych atrybutów krajów
;
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (1, "Tax-Free amount");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(1,"pl","Kwota wolna od podatku", 1);
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(2,"ua","Неоподатковувана надбавка", 1);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (2, "Minimum monthly salary");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(3,"pl","Minimalne wynagrodzenie miesięczne", 2);
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(4,"ua","Мінімальна місячна заробітна плата", 2);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (3, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(5,"pl","Link do rządowych informatorów",3);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (4, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(6,"pl","Rządowy kalkulator",4);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (5, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(7,"pl","Przedmiot opodatkowania",5);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (6, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(8,"pl","Podstawa opodatkowania",6);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (7, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(9,"pl","Sposób opodatkowania",7);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (8, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(10,"pl","Rok podatkowy",8);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (9, "");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(11,"pl","Ilość stawek podatkowych na zasadach ogólnych",9);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (10,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(12,"pl","Stawka podatkowa",10);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (11,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(13,"pl","Kwota wolna (rocznie)",11);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (12,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(14,"pl","Wybrane ulgi i zwolnienia",12);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (13,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(15,"pl","Tryb rozliczeń",13);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (14,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(16,"pl","Termin płatności",14);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (15,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(17,"pl","Preferencje dla rodzin z dziećmi",15);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (16,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(18,"pl","Możliwość płacenia podatku w walucie obcej",16);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (17,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(19,"pl","Procent pensji \"na rękę\" - singiel uzyskujacy średnie zarobki",17);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (18,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(20,"pl","Rodzina 2+2 uzyskująca średnie zarobki",18);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (19,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(21,"pl","Singiel uzyskujący wysokie zarobki",19);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (20,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(22,"pl","Rodzina 2+2 uzyskująca wysokie zarobki",20);
#
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES (21,"");
# INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`, `attribute_id`)VALUES(23,"pl","Miejsce w rankingu atrakcyjności podatkowej Tax Foundation 2021",21);
INSERT IGNORE INTO `hackathon_glh`.`taxation_country`(`id`,`code`,`name`)VALUES(1,'gb','Great Britain');
INSERT IGNORE INTO `hackathon_glh`.`taxation_country`(`id`,`code`,`name`)VALUES(2,'pl','Poland');
INSERT IGNORE INTO `hackathon_glh`.`taxation_country`(`id`,`code`,`name`)VALUES(3,'de','Germany');
INSERT IGNORE INTO `hackathon_glh`.`taxation_country`(`id`,`code`,`name`)VALUES(4,'cz','Czech Republic');

INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(1,"How many days did you spent in UK during given tax year?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(2,"Did you have a home in the UK during the whole or part of the tax year?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(3,"Did you work full-time in the UK for any period of 365 days with no significant break in the UK work?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(4,"Where you UK tax resident in any of the previous 3 years before given tax year?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(5,"Did you have a UK tax resident family member (spouse, civil partner, cohabitee or children below 18 years of age)?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(6,"Did you have any accommodation available in the UK for 91 or more consecutive days in the tax year with minimum of one night spent there?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(7,"Did you work 40 days of the tax year in the UK with a minimum of 3 hours per day?", 1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question`(`id`,`question`,`country_id`)VALUES(8,"Have you spent in the UK more than 90 days in any of the previous two tax years before given tax year?", 1);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(1,'pl',"Ile dni spędziłeś na terytorium Wielkiej Brytanii w ciągu roku, który ma być zweryfikowany?",1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(2,'pl',"Czy byłeś właścicielem nieruchomości w Wielkiej Brytanii przez cały bądź przynajmniej część badanego roku?",2);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(3,'pl',"Czy świadczyłeś pracę w pełnym wymiarze godzin w Wielkiej Brytanii w jakimkolwiek okresie spośród 365 dni nie uwzględniając istotnych przerw?",3);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(4,'pl',"Czy byłeś rezydentem podatkowym Wielkiej Brytanii w ciągu ostatnich 3 lat?",4);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(5,'pl',"Czy miałeś bliską osobę (małżonka, partnera życiowego, konkubenta bądź dziecko poniżej 18 roku życia) będącą rezydentem podatkowym Wielkiej Brytanii?",5);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(6,'pl',"Czy posiadałeś zakwaterowanie w Wielkiej Brytanii przez 91 lub więcej kolejno po sobie następujących dni w roku podatkowym z minimum jedną nocą spędzoną w tym miejscu?",6);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(7,'pl',"Czy pracowałeś 40 dni w ciągu roku podatkowego w Wielkiej Brytanii przez minimum 3 godziny dziennie?",7);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(8,'pl',"Czy przebywałeś w Wielkiej Brytanii dłużej niż 90 dni w którymkolwiek z dwóch lat poprzedzających badany rok podatkowy?",8);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(21,'ua',"Скільки днів ви провели у Великобританії протягом даного податкового року?",1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(22,'ua',"Чи був у вас будинок у Великобританії протягом усього податкового року чи частини?",2);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(23,'ua',"Чи працювали ви повний робочий день у Великобританії протягом будь-якого періоду в 365 днів без значної перерви у роботі у Великобританії?",3);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(24,'ua',"Де ви були податковим резидентом Великобританії протягом будь-якого з попередніх 3 років до даного податкового року?",4);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(25,'ua',"Чи був у вас член сім’ї податкового резидента Великобританії (дружина, партнер, співмешканець або діти віком до 18 років)?",5);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(26,'ua',"Чи було у вас будь-яке житло у Великій Британії протягом 91 або більше послідовних днів у податковому році з мінімумом однієї ночі",6);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(27,'ua',"Ви працювали 40 днів податкового року у Великобританії з мінімум 3 годинами на день?",7);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_translation`(`id`,`country_code`,`translation`,`question_id`)VALUES(28,'ua',"Чи провели ви у Великобританії більше 90 днів у будь-якому з попередніх двох податкових років до даного податкового року?",8);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(8,'0-15 days',0,1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(18,'15-183 days',null,1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(28,'183+ days',1,1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(21,'No',null,2);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(22,'No',null,3);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(23,'No',null,4);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(24,'No',null,5);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(25,'No',null,6);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(26,'No',null,7);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(27,'No',0,8);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(1,'Yes',1,2);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(2,'Yes',1,3);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(3,'Yes',1,4);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(4,'Yes',1,5);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(5,'Yes',1,6);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(6,'Yes',1,7);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer`(`id`,`answer`,`residency_result`,`question_id`)VALUES(7,'Yes',1,8);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(21,'pl',"Nie",21);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(22,'pl',"Nie",22);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(23,'pl',"Nie",23);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(24,'pl',"Nie",24);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(25,'pl',"Nie",25);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(26,'pl',"Nie",26);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(27,'pl',"Nie",27);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(1,'pl',"Tak",1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(2,'pl',"Tak",2);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(3,'pl',"Tak",3);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(4,'pl',"Tak",4);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(5,'pl',"Tak",5);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(6,'pl',"Tak",6);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(7,'pl',"Tak",7);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(121,'ua',"ні",21);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(122,'ua',"ні",22);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(123,'ua',"ні",23);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(124,'ua',"ні",24);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(125,'ua',"ні",25);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(126,'ua',"ні",26);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(127,'ua',"ні",27);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(11,'ua',"Так",1);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(12,'ua',"Так",2);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(13,'ua',"Так",3);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(14,'ua',"Так",4);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(15,'ua',"Так",5);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(16,'ua',"Так",6);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(17,'ua',"Так",7);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(18,'ua',"0-15 днів",8);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(118,'ua',"15-183 днів",18);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(128,'ua',"183+ днів",28);

INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(8,'pl',"0-15 dni",8);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(918,'pl',"15-183 dni",18);
INSERT IGNORE INTO `hackathon_glh`.`residency_question_answer_translation`(`id`,`country_code`,`translation`,`answer_id`)VALUES(28,'pl',"183+ dni",28);

INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(1,"official tax authorities information of tax burden");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(2,"official tax authorities tax calculator");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(3,"taxable subject matter");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(4,"tax base");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(5,"method of taxation");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(6,"tax year");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(7,"number of tax thresholds");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(8,"tax rate");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(9,"tax-free allowance");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(10,"example of tax exemptions");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(11,"method of tax settlement");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(12,"due date for tax settlement");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(13,"exemptions for famillies");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(14,"percentage of net sallary after taxation - sole person average salary");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(15,"percentage of net sallary after taxation - familly 2+2 average salary");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(16,"percentage of net sallary after taxation - sole person high salary");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(17,"percentage of net sallary after taxation - familly 2+2 high salary");
INSERT IGNORE INTO `hackathon_glh`.`benchmark_attribute`(`id`,`name`)VALUES(18,"Tax Competetive Index 2021");



INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1,"pl","link do rządowych informatorów",1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(2,"pl","rządowy kalkulator",2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(3,"pl","przedmiot opodatkowania",3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(4,"pl","podstawa opodatkowania",4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(5,"pl","sposób opodatkowania",5);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(6,"pl","rok podatkowy",6);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(7,"pl","ilość stawek podatkowych na zasadach ogólnych",7);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(8,"pl","stawka podatkowa",8);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(9,"pl","kwota wolna (rocznie)",9);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(10,"pl","wybrane ulgi i zwolnienia",10);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(11,"pl","tryb rozliczeń",11);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(12,"pl","termin płatności",12);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(13,"pl","preferencje dla rodzin z dziećmi",13);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(14,"pl","procent pensji \"na rękę\" - singiel uzyskujacy średnie zarobki",14);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(15,"pl","procent pensji \"na rękę\" - rodzina 2+2 uzyskująca średnie zarobki",15);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(16,"pl","procent pensji \"na rękę\" - singiel uzyskujący wysokie zarobki",16);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(17,"pl","procent pensji \"na rękę\"- rodzina 2+2 uzyskująca wysokie zarobki",17);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(18,"pl","miejsce w rankingu atrakcyjności podatkowej Tax Foundation 2021",18);

INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(111, 'ua',"офіційна інформація податкових органів про податковий тягар",1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(112, 'ua',"офіційний податковий калькулятор податків",2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(113, 'ua',"об'єкт оподаткування",3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(114, 'ua',"база оподаткування",4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(115, 'ua',"метод оподаткування",5);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(116, 'ua',"податковий рік",6);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(117, 'ua',"кількість порогів оподаткування",7);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(118, 'ua',"ставка податку",8);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(119, 'ua',"неоподатковувана допомога",9);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1110,'ua',"приклад звільнення від податків",10);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1111,'ua',"спосіб розрахунку податків",11);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1112,'ua',"строк сплати податку",12);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1113,'ua',"пільги для сімей",13);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1114,'ua',"відсоток чистої заробітної плати після оподаткування - середня заробітна плата одноосібної особи",14);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1115,'ua',"відсоток від заробітної плати нетто після оподаткування - сім'я 2+2 середня зарплата",15);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1116,'ua',"відсоток чистої заробітної плати після оподаткування - одноосібна висока заробітна плата",16);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1117,'ua',"відсоток чистої зарплати після оподаткування - сім'я 2+-2 висока зарплата",17);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_translation`(`id`,`country_code`,`translation`,`attribute_id`)VALUES(1118,'ua',"Податковий конкурентний індекс 2021",18);


INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1,0,0, "https://www.podatki.gov.pl/en/",2022,1,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2,0,0, "https://www.podatki.gov.pl/polski-lad/kwota-wolna-polski-lad/kalkulator-wynagrodzen-polski-lad/",2022,2,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3,0,0, "wynagrodzenie, bonusy, premie",2022,3,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(4,0,0, "kwoty postawione do dyspozycji podatnikowi",2022,4,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(5,0,0, "progresywny",2022,5,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(6,0,0, "rok kalendarzowy",2022,6,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(7,0,0, "3",2022,7,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(8,0,0, "-podstawa do 120 tys zł - 17% - 5100 zł \n-podstawa powyżej 120 tys zł - 15 300 zł + 32% nadwyżki ponad 120 tys zł<br\\>-powyżej 1 mln zł - podatek solidarnościowy 4%",2022,8,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(9,0,0, "30000 PLN",2022,9,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(10,0,0,"ubezpieczenie społeczne, składki na prywatne ubezpieczenie emerytalne, darowizny",2022,10,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(11,0,0,"zaliczki pobierane przez pracodawcę w terminach płatności pensji zeznanie roczne składane samodzielnie przez podatnika",2022,11,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(12,0,0,"30 kwietnia każdego roku za poprzedni rok podatkowy",2022,12,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(13,0,0,"odliczenie od podatku miesięcznie:\n -92,67 zł - pierwsze i drugie dziecko\n -166,67 zł - trzecie dziecko\n -225,00 zł - czwarte i każde kolejne dziecko\n -zwolnienie z podatku dla rodziców wychowujących co najmniej 4 dzieci dla dochodów do 85 528 zł rocznie\n -odliczenie od podatku kwoty 1500 zł rocznie\n -zwolnienie podatkowe dla młodych dla dochodów do 85 528 zł rocznie\n -zwolnienie podatkowe dla seniowów dochodów do 85 528 zł rocznie\n",2022,13,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(14,0,0,"72%",2022,14,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(15,0,0,"73%",2022,15,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(16,0,0,"66%",2022,16,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(17,0,0,"71%",2022,17,2);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(18,0,0,"36",2022,18,2);

INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(111,0,0, "https://www.bzst.de/DE/Service/SteuerlichesInfocenter/steuerlichesinfocenter_node.html",2022,1,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(112,0,0, "https://www.bmf-steuerrechner.de/",2022,2,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(113,0,0, "wage, bonuses",2022,3,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(114,0,0, "amount due",2022,4,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(115,0,0, "progresive",2022,5,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(116,0,0, "calendar year",2022,6,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(117,0,0, "3",2022,7,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(118,0,0, "-a base of up to EUR 57 918 - 14%\n- basis up to EUR 274 612 - 42%\n- above - 45%",2022,8,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(119,0,0, "9744 EUR",2022,9,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1110,0,0,"donations, child expenses, education expenses",2022,10,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1111,0,0,"advance payments collected by the employer on salary payment dates annual tax return submitted by the taxpayer himself",2022,11,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1112,0,0,"31 July of the following year",2022,12,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1113,0,0,"cost of living for low-income parents and children:<br\\>- Deduction for children in education<br\\>- Deduction for disabled persons",2022,13,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1114,0,0,"62%",2022,14,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1115,0,0,"71%",2022,15,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1116,0,0,"56%",2022,16,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1117,0,0,"60%",2022,17,3);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(1118,0,0,"16",2022,18,3);

INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2111,0,0, "https://www.gov.uk/income-tax",2022,1,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2112,0,0, "https://www.tax.service.gov.uk/estimate-paye-take-home-pay/your-pay",2022,2,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2113,0,0, "заробітна плата, премії",2022,3,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2114,0,0, "сума боргу",2022,4,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2115,0,0, "прогресивний",2022,5,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2116,0,0, "6 квітня - 5 квітня",2022,6,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2117,0,0, "4",2022,7,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2118,0,0, "-база до 12 570 - 0% \n-база до 50 270 - 20% \n-база до 150 000 - 40%",2022,8,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(2119,0,0, "12570 GBP",2022,9,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21110,0,0,"податковий кредит для працівників, податковий кредит на дитину, пільги на житло, допомогу по інвалідності, пожертвування",2022,10,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21111,0,0,"авансових платежів, які збирає роботодавець у дати виплати заробітної плати. річна податкова декларація, що подається платником податків самостійно",2022,11,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21112,0,0,"2 внески: до 31 січня та до 31 червня",2022,12,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21113,0,0,"Фізична особа, яка не підлягає сплаті податку на прибуток або не підлягає сплаті за базову ставку за податковий рік, має право перерахувати 1260 фунтів стерлінгів у 2021/22 р. (тобто 10%) своєї особистої допомоги своєму подружжю або цивільному партнеру, за умови, що одержувач передачі також не є платником податку на прибуток з вищою ставкою. Подружні пари та ті, хто перебуває у цивільному партнерстві, мають право на допомогу подружжю, якщо будь-який із членів пари народився до 6 квітня 1935 року. Максимальний розмір допомоги становить 9 125 фунтів стерлінгів, а мінімальний — 3 530 фунтів стерлінгів у 2021/22 році залежно від рівня доходу. Допомога обмежена 10% від надбавки, тому вона має обмежену користь. Пара може вирішити розділити надбавку подружньої пари між ними порівну або повністю розподілити її на когось із них",2022,13,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21114,0,0,"80%",2022,14,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21115,0,0,"80%",2022,15,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21116,0,0,"60%",2022,16,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21117,0,0,"60%",2022,17,1);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(21118,0,0,"22",2022,18,1);

INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3111,0,0, "https://adisspr.mfcr.cz/pmd/home",2022,1,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3112,0,0, "n/a",2022,2,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3113,0,0, "заробітна плата, премії",2022,3,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3114,0,0, "сума боргу",2022,4,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3115,0,0, "прогресивний",2022,5,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3116,0,0, "календарний рік",2022,6,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3117,0,0, "2",2022,7,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3118,0,0, "база до 1,7 млн. K - 15%, вище - 22%",2022,8,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(3119,0,0, "3000 CZK",2022,9,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31110,0,0,"пожертвування, іпотека, приватне страхування",2022,10,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31111,0,0,"авансових платежів, які збирає роботодавець у дати виплати заробітної плати. річна податкова декларація, що подається платником податків самостійно",2022,11,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31112,0,0,"1 April",2022,12,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31113,0,0,"спільне поселення з дитиною, спільне поселення з подружжям",2022,13,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31114,0,0,"75%",2022,14,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31115,0,0,"89%",2022,15,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31116,0,0,"71%",2022,16,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31117,0,0,"74%",2022,17,4);
INSERT IGNORE  INTO `hackathon_glh`.`benchmark_attribute_value`(`id`,`period`,`period_number`,`value`,`year`,`attribute_id`,`country_id`)VALUES(31118,0,0,"7",2022,18,4);