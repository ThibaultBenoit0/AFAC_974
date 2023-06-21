-- Active: 1685625000744@@127.0.0.1@3306@afac
CREATE TABLE IF NOT EXISTS `oeuvres` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `ref_archives` VARCHAR(45) NOT NULL,
    `titre` VARCHAR(100) NOT NULL,
    `auteur` VARCHAR(70) NOT NULL,
    `date_creation` VARCHAR(45),
    `format` VARCHAR(45),
    `technique` VARCHAR(45) NOT NULL,
    `lien_page_auteur` VARCHAR(200) NOT NULL,
    `lien_article` VARCHAR(150),
    `categorie` VARCHAR(45),
    `details` TEXT,
    `resume` VARCHAR(200),
    `img` VARCHAR(200)
);

CREATE TABLE IF NOT EXISTS `favoris` (
    `oeuvres_id` INT NOT NULL,
    `utilisateur_id` INT NOT NULL
);

CREATE TABLE IF NOT EXISTS `reaction` (
    `oeuvres_reaction_id` INT NOT NULL,
    `utilisateur_reaction_id` INT NOT NULL,
    `commentaire` VARCHAR(500),
    `etoiles` INT
);

CREATE TABLE IF NOT EXISTS `utilisateurs` (
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(45) NOT NULL,
    `prenom` VARCHAR(45) NOT NULL,
    `mail` VARCHAR(45) NOT NULL,
    `mot_de_passe` VARCHAR(45) NOT NULL,
    `estAdmin` TINYINT NOT NULL,
    `commentaire_bloque` TINYINT
);

INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI79','Effet de nuit sur la Cheminée usine du Tampon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1866','20 X 14','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Usines','Attribuée parfois à l''usine du Grand Tampon, mais c''est peu probable: l''usine du Grand Tampon ayant été une scierie. Or, ici, il s''agit sans doute de l''usine de Bel Air: on reconnaît les deux corps principaux du bâtiment industriel (purgerie et bâtiment abritant la machine à vapeur) en parallèle, comme sur les figures 2 et 3. La cheminée carrée est sur le côté Nord, construite en basalte, avec intercalation de poutres deux côtés par deux côtés. Devant, un gardien, dont l''ombre se projette sur la cheminée. En arrière-plan, une allée de palmiers, qui semble mener vers la maison de maître. La disposition des lieux correspond à celle qui existait à Bel Air. Scène d''apparence paisible ?','Cheminée du Tampon','http://localhost:5001/assets/images/afac-img/1-40FI79-Cheminée_du_Tampon.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI78','Arrivée à l''établissement du Tampon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1866','15 X 13.5','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Usines','Le chemin de l''Etablissement existe toujours aujourd''hui, à 400 mètres d''altitude. Les deux cavaliers sont sans doute Ch. H. N; Mortier de Trévise lui-même, et son beau-frère (Denis-André de K/véguen)? En avant, 3 autres personnages cheminent à pied. La route traverse le lit desseché de la Rivière d''Abord, et remonte légèrement vers l''Etablissement (c''est-à-dire l''ensemble du fonds avec usine, bâtiments annexes, et camp des travailleurs engagés, non représenté ici. L''usine elle-même est composée de deux corps parallèles de bâtiments, flanqués chacun d''une cheminée: l''une pour évacuer les fumées de combustion pour la batterie Gimart, l''autre la fumée de la machine à vapeur. En quinconce, un autre bâtiment à l''avant, abritant les "tables" pour le séchage du sucre?','L''Établissement','http://localhost:5001/assets/images/afac-img/2-40FI78-L''Établissement.jpg');
INSERT INTO oeuvres(ref_archives, titre, auteur, date_creation, format, technique, lien_page_auteur, lien_article, categorie, details, resume, img)
VALUES ('40FI80', 'Tampon- Une usine', 'Hippolyte Charles Napoléon Mortier, Duc de Trévise', '10 février 1866', '11.5 X 20.5', 'Dessin à la mine de plomb', 'https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise', 'https://view.genial.ly/5fb636d03636f40d7f883f24', 'Usines', 'Une autre vue de l''usine de Bel Air, au Tampon: on retrouve le bâtiment en quinconce accolé au corps de l''usine, avec ses deux cheminées. Au premier plan, sur le chemin de l''Etablissement (400 m. d''altitude), on distingue un groupe de travailleurs engagés, près d''un point d''eau: un homme, une femme avec un bébé qui porte une jarre sur la tête, et un autre personnage. L''auteur note le nom des arbres et plantes (aloés divers, vacoas, palmiers)', 'Usine du Tampon', 'http://localhost:5001/assets/images/afac-img/3-40FI80-Tampon_Une_usine.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI106','Quartier St Pierre. Etablissement de la Rivière, montagnes de l''Entre Deux','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861 ou 1866','19.5 X 16.5','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Usines','L''usine (Etablissement) est installée rive gauche de la Rivière Saint-Etienne, au débouché du lieu-dit l''Entre-Deux. Elle semble présenter la même physionomie que les autres établissements achetés ou construits par Gabriel de K/Véguen: 2 corps principaux de bâtiments, ici décalés l''un par rapport à l''autre, avec des ouvertures en arc de cercle pou évacuer la chaleur, la cheminée qui évacue les fumées de la batterie Gimart, et, à l''arrière, un ou deux bâtiments pour le séchage du sucre. Au Premier plan, une escouade (une "bande") de travailleurs engagés effectue la "trouaison", pour la replantation de cannes à sucre, sous la direction d''un Commandeur, vêtu d''un pantalon de toile bleue. Un vacoa est ici le témoin indispensable de l''usage de ses feuilles pour le tressage de sacs, destinés ensuite à transporter le sucre produit.','Établissement de la Rivière','http://localhost:5001/assets/images/afac-img/4-40FI106-Établissement_de_la_Rivière.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI','Boutchiana- Indien','Hippolyte Charles Napoléon Mortier, Duc de Trévise','juillet 1871',NULL,'Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Boutchiana est devenu le domestique personnel de Ch.Mortier de Trévise, et il a vieilli de 6 ans.','Établissement de la Rivière','http://localhost:5001/assets/images/afac-img/5-40FI92-Boutchiana.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI91','Boutchiana- Casernes','Hippolyte Charles Napoléon Mortier, Duc de Trévise','24 août 1865','19.5 X 11','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Travailleur engagé depuis l''Inde à l''Etablissement des Casernes, il tient une lance, peut-être a-t-il une fonction de gardien? Sur sa fiche d''engagement, il était recensé comme tailleur',NULL,'http://localhost:5001/assets/images/afac-img/6-40FI91-Boutchiana_Casernes.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI90','Boutchiana-Casernes, de face','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1865','19.5 X 8.5','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Complète la précédente aquarelle. On devine la jeunesse de Boutchiana, engagé à l''adolescence. Arrivé à bord de Yanaon, en Inde, à bord du navire de la famille Kerveguen, Le Canova, on le dit âgé de 17 ans',NULL,'http://localhost:5001/assets/images/afac-img/7-40FI90-Boutchiana_Casernes_de_face.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI76','Cafrine et son petit au Tampon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861','18 X 13','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','C''est une engagée, ou alors une affranchie. Elle porte la robe de toile bleue, dont la fourniture est obligatoire par l''employeur, selon les termes du contrat d''engagement. La pratique ne change guère de ce qui était déjà prévu avant 1848 pour les esclaves, par le "Code noir" de 1723.',NULL,'http://localhost:5001/assets/images/afac-img/8-40FI76-Cafrine.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI52','La vieille (Victorine) Mme Samsi Casernes','Hippolyte Charles Napoléon Mortier, Duc de Trévise','15 décembre 1865','18 X 12','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise','https://belair.hypotheses.org/389','Travailleurs','La vieille dame est assise sur une natte, vêtue de la traditionnelle robe de toile bleue fournie par l''employeur. Son foulard noué sur la tête est taillé dans la même toile.',NULL,'http://localhost:5001/assets/images/afac-img/9-40FI52-La_vieille_(Victorine)_Mme_Samsi_Casernes.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI66','Elise','Hippolyte Charles Napoléon Mortier, Duc de Trévise','août 1861',NULL,'Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Elise est une petite fille de Victorine, issue de sa fille Coralie',NULL,'http://localhost:5001/assets/images/afac-img/10-40F166-Elise.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi75','Lucie le ventre plein de cari','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1866',NULL,'Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Une autre petite fille de Victorine, sans doute dans la maison des Casernes.',NULL,'http://localhost:5001/assets/images/afac-img/11-40Fi75-Lucie.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi74','La belle Tina','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1866',NULL,'Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Visiblement, Mortier de Trévise a été impressionné par la chevelure de Tina. Encore une petite fille de Victorine, plus jeune. il semble que les fillettes fassent leur apprentissage de domestiques dans la propriété des Kerveguen.',NULL,'http://localhost:5001/assets/images/afac-img/12-40FI74-La_belle_Tina.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi60','Jamali, Cafre, Gardien','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861','26 X 16.5','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise','https://forgetmenot.objettemoin.org/index.php/fr/actus/36-jamali-gardien-de-cannes','Travailleurs','"Cafre" veut dire que Jamali n''est pas né sur l''Habitation, mais qu''il a vraisemblablement été recruté comme engagé. Il est armé d''une lance, et surveille l''orée des champs, ou les abords du camp des travailleurs.',NULL,'http://localhost:5001/assets/images/afac-img/13-40Fi60-Jamali_Cafre_Gardien.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI55','Le parapluie du pauvre Citoyen','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861','19 X 11.5','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','Le titre de citoyen est une fierté pour les affranchis de 1848 qui travaillent sur la propriété ou dans les Etablissements K/Véguen. La pluie est rare à Saint-Pierre, beaucoup plus fréquente au Tampon (pluies orographiques pendant la saison chaude, celle de la coupe des cannes). Ici, le créole engagé dispose d''une maigre rémunération, juste suffisante pour sa nourriture et de menus frais à la "boutique". Depuis 1859, le salaire est en outre versé en kreutzers ( démonétisés, au cours forcé de 1 franc. A l''arrière-plan, sur la droite, la silhouette d''une cheminée d''usine, peut-être celle de Bel-Air, au Tampon.',NULL,'http://localhost:5001/assets/images/afac-img/14-40FI55-Le_parapluie_du_pauvre_Citoyen.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI53.2','La pli y fait pas rien, ça ! Tampon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','''27 janvier 1866','30 X 20','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','La suite du commentaire est: "Ca ne lui fait rien,... tant pis pour lui ! mais aux cannes ça leur fait du bien tant mieux pour elles !...." Le jeune créole porte un chapeau de feutre déformé, pas de chaussures, comme la majorité des travailleurs. Janvier est en pleine période cyclonique: est-ce le cas ici?',NULL,'http://localhost:5001/assets/images/afac-img/15-40FI53.2-La_pli_Tampon.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI59','Monsieur Bourrayne dans le jardin des Casernes','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861','20 X 12.5','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Travailleurs','La suite du commentaire est: "Allons, Virasami, vivement mettre la racine de ce plant (?) comme à Madras!"  ',NULL,'http://localhost:5001/assets/images/afac-img/16-40FI59-Monsieur_Bourrayne.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi72','Chanvert descend le chemin de la Plaine, Golo est à ses côtés','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861','8 X 15.5','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise','https://belair.hypotheses.org/1351','Travailleurs','Chanvert est peut-etre un ami de la famille. Golo est un domestique qui l''accompagne. A l''arrière du tilbury, il semble qu''il y ait une borne kilométrique sur le côté de la route. Le chemin de la Plaine relie Saint-Pierre à la Plaine des Cafres, et, au-delà, à Saint-Benoît. L''Etablissement de Bel-Air est situé au tiers du parcours, entre La Plaine des Cafres et Saint-Pierre.','Golo et Chanvert','http://localhost:5001/assets/images/afac-img/17-40Fi72-Golo_et_Chanvert.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi83','Sortie du Bras de Jean Payet en allant vers le Tampon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','29 janvier 1865','30 X 22.5','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Lieux','Le tilbury à quatre roues est tiré par quatre mules (importées du Poitou). La route, encore reconnaissable aujourd''hui, reliait les chmps de canne situés entre la ravin e Jean Payet (ancienne ravine du Tampon), et la ravine des Cafres. au sommet de ces champs, une scierie fournissait le bois et les planches pour les Etablissements K/Véguen','Sortie du Bras de Jean Payet','http://localhost:5001/assets/images/afac-img/18-40FI83-Sortie_du_Bras_de_Jean_Payet.png');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi77','Le bassin rouge au Tampon, la ravine descend','Hippolyte Charles Napoléon Mortier, Duc de Trévise','10 février 1866','15 X 9,5','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Lieux','La cascade alimente un bassin à proximité d''un affluent de la rivière d''Abord','Bassin rouge','http://localhost:5001/assets/images/afac-img/19-40FI77-Le_bassin_rouge.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi104','Excursion au volcan de Bourbon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','août 1861','24,5 X 32','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise','https://view.genial.ly/6432b64851cad10018f64868/interactive-image-caverne-lataniers','Lieux','Mortier de Trévise et sa belle-famille sont ne excursion au volcan. Il n''y avait pas de route, alors: il faut donc dormir en chemin dans cette caverne autrefois connue des noirs marrons, autrement dit fugitifs -avant  l''abolition de l''escalvage de 1848','Caverne des lataniers','http://localhost:5001/assets/images/afac-img/20-40Fi104-Caverne.png');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi105bis','Le volcan de Bourbon vu du Pas de Bellecombre','Hippolyte Charles Napoléon Mortier, Duc de Trévise','août 1861','18 X 24','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Lieux','Cela ne fait guère longtemps que le passage par le Pas de Bellecombe a été trouvé. Le lieu porte le nom du gouverneur présent au moment de la découverte du passage, mais c''est un esclave, Jacob, qui l''a découvert, en réalité. Bellecombe avait commandité l''expédition.','Pas de Bellecombe','http://localhost:5001/assets/images/afac-img/21-40FI105bis-Le_volcan_de_Bourbon.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40Fi108','Mamzelle','Hippolyte Charles Napoléon Mortier, Duc de Trévise','14 avril 1866','14.5 X 19.5','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Animaux','Les chevaux sont rares sur les établissements: ils font l''objet de soins attentifs, et ne sont montés que par les propriétaires des Etablissements, et les contremaîtres. Selle et cuirs peuvent être fabriqués sur place: il y eut un atelier sur l''Etablissement du Tampon.',NULL,'http://localhost:5001/assets/images/afac-img/22-40FI108-Mamzelle.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI73','Charrette tirée par des mulets','Hippolyte Charles Napoléon Mortier, Duc de Trévise','1861','6.5 X 15.5','Dessin','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise',NULL,'Animaux','4 mulets tirent une charrette apportant des cannes frâichement coupées à l''usine. Les mulets sont nombreux dans l''île à l''époque de l''industrialisation sucrière. Importés du Poitou, ce sont des bêtes robustes, qui coûtent moins chers que des boeufs ou des chevaux, pour lesquelles on construit des écuries. Elles ont des noms: on sait que dans l''Etablissement des Casernes, Tec Tec, Langoutil, et Malheur sont des noms de mules.',NULL,'http://localhost:5001/assets/images/afac-img/23-40FI73-Charrette_tirée_par_des_mulets.jpg');
INSERT INTO oeuvres(ref_archives,titre,auteur,date_creation,format,technique,lien_page_auteur,lien_article,categorie,details,resume,img) VALUES ('40FI53.1','Caille de Bourbon','Hippolyte Charles Napoléon Mortier, Duc de Trévise','21 septembre 1861','19 X 23','Aquarelle','https://forgetmenot.objettemoin.org/index.php/fr/actus/35-hippolyte-charles-napoleon-mortier-duc-de-trevise','https://www.seor.fr/oiseau-25-caille-peinte.html','Animaux','En réalité, la caille fut introduite d''Asie, Inde ou chine, vers 1850. C''est la femelle qui est colorée ainsi de rouge au bas des ailes. A l''époque de Mortier de Trévise, c''est donc une curiosité, un peu en disparition, à cause de l''extension des champs cultivés en cannes à sucre.',NULL,'http://localhost:5001/assets/images/afac-img/24-40FI53.1-CailledeBourbon.jpg');

