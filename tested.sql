use TestProject
go

create table category(
category_id int primary key,
c_name nvarchar(50),
)

create table sub_category(
subCategory_id int primary key,
subC_name nvarchar(50),
category_id int foreign key references category,
)
create table Products(
product_id int primary key,
p_name nvarchar(50),
cost int ,
subCategory_id int foreign key references sub_category
)
create table collections(
collection_id int primary key,
cost int, 
product_id int foreign key references Products
)

create table offer(
offer_id int primary key,
offer_time time ,
new_cost int,
prev_cost int,
product_id int foreign key references Products
)

create table payment(
payment_id int primary key,
pay_name nvarchar (50)
)

create table users(
users_id int primary key,
full_Name nvarchar(50),
email nvarchar(50),
phone nvarchar (10),
country nvarchar(50),
payment_id int foreign key references payment
) 

create table favorite(
favorite_id int primary key,
users_id int foreign key references users,
product_id int foreign key references Products
)

create table orders(
orders_id int primary key,
total_cost int ,
order_date date ,
users_id int foreign key references users,
product_id int foreign key references Products
)


/* delete column order_date from Table orders */
alter table orders  drop column order_date
/* add new column 'image' on users Table */
alter table users add images nvarchar(50)
/* change number of char */
alter table category alter column c_name nvarchar(40)
/* change data type */
alter table offer alter column offer_time nvarchar(10)

/* This is category data */;
insert into category Values(1,'womans fashion')
insert into category Values(2,'mens fashion')
insert into category Values(3,'phones & telecommunications')
insert into category Values(4,'computer,office & security')
insert into category Values(5,'consumer electonics')
insert into category Values(6,'jewelry & watches')
insert into category Values(7,'home , pet & appliances')
insert into category Values(8,'bags & babies')
insert into category Values(9,'toys , kids & babies')
insert into category Values(10,'outdoor fun & sports')
insert into category Values(11,'beauty , health & hair')
insert into category Values(12,'automobiles & motorcycle')
insert into category Values(13,'home improvement & tools')


insert into sub_category Values (1,'swimwear',1)
insert into sub_category Values (2,'muslim Fashion',1)
insert into sub_category Values (3,'Bottoms',1)
insert into sub_category Values (4,'Plus Size Clothes',1)
insert into sub_category Values (5,'Wedding & Events',1)
insert into sub_category Values (6,'Womens Underwear',1)
insert into sub_category Values (7,'Accessories',1)

insert into sub_category Values (8,'Hot Sale',2)
insert into sub_category Values (9,'Outerwear & Jackets',2)
insert into sub_category Values (10,'Underwear & loungewear',2)
insert into sub_category Values (11,'Novelty & Special Use',2)

insert into sub_category Values (12,'mobile phones',3)
insert into sub_category Values (13,'hot brands',3)
insert into sub_category Values (14,'mobile phone accessories',3)
insert into sub_category Values (15,'hot cases & covers',3)
insert into sub_category Values (16,'featured accessories',3)
insert into sub_category Values (17,'mobile phone parts',3)
insert into sub_category Values (18,'communication equipment',3)

insert into sub_category Values (19,'components & peripherals',4)
insert into sub_category Values (20,'laptops',4)
insert into sub_category Values (21,'security & protection ',4)
insert into sub_category Values (22,'storage devices',4)
insert into sub_category Values (23,'office electronics',4)
insert into sub_category Values (24,'comuter networking',4)

insert into sub_category Values (25,'Accessories & Parts',5)
insert into sub_category Values (26,'Home Audio & Video',5)
insert into sub_category Values (27,'Camera & Photo',5)
insert into sub_category Values (28,'Portable Audio &Video',5)
insert into sub_category Values (29,'Smart Electronics',5)
insert into sub_category Values (30,'Video Games',5)

insert into sub_category Values (31,'Fine Jewelry',6)
insert into sub_category Values (32,'Wedding & Engagement',6)
insert into sub_category Values (33,'Men Watches',6)
insert into sub_category Values (34,'Womens Watches',6)
insert into sub_category Values (35,'Fashion Jewelry',6)
insert into sub_category Values (36,'Beads & DIY Jewelry',6)

insert into sub_category Values (37,'arts',7)
insert into sub_category Values (38,'home decor',7)
insert into sub_category Values (39,'home textiles',7)
insert into sub_category Values (40,'celebrations',7)
insert into sub_category Values (41,'home storage',7)
insert into sub_category Values (42,'household items',7)
insert into sub_category Values (43,'kitchen',7)
insert into sub_category Values (44,'garden & pets',7)

insert into sub_category Values (45,'womans luggage & bags',8)
insert into sub_category Values (46,'womens shoes',8)
insert into sub_category Values (47,'mens luggage & bags',8)
insert into sub_category Values (48,'mens shoes',8)
insert into sub_category Values (49,'other bags & accessories',8)
insert into sub_category Values (50,'bestselling shoes',8)

insert into sub_category Values (51,'Baby(0-3years old)',9)
insert into sub_category Values (52,'For Girls',9)
insert into sub_category Values (53,'For Boys',9)
insert into sub_category Values (54,'Mother & Baby items',9)
insert into sub_category Values (55,'Remote Control',9)
insert into sub_category Values (56,'Building',9)
insert into sub_category Values (57,'Toys & Hobbies',9)

insert into sub_category Values (58,'Swimming',10)
insert into sub_category Values (59,'Cycling',10)
insert into sub_category Values (60,'Sneakers',10)
insert into sub_category Values (61,'Fishing',10)
insert into sub_category Values (62,'Sportswear',10)
insert into sub_category Values (63,'Other Sports Equipment',10)

insert into sub_category Values (64,'Hair Weaves',11)
insert into sub_category Values (65,'Lace Wigs',11)
insert into sub_category Values (66,'Synthetic Hair',11)
insert into sub_category Values (67,'Makeup',11)
insert into sub_category Values (68,'Health Care',11)
insert into sub_category Values (69,'Skin Care',11)
insert into sub_category Values (70,'Nail Art & Tools',11)
insert into sub_category Values (71,'Personal Care',11)
insert into sub_category Values (72,'Tattoos & Body Art',11)
insert into sub_category Values (73,'Adult items',11)

insert into sub_category Values (74,'tools , maintenance & care',12)
insert into sub_category Values (75,'exterior accessories',12)
insert into sub_category Values (76,'interior accessories',12)

insert into sub_category Values (77,'indoor lighting',13)
insert into sub_category Values (78,'LED lighting',13)
insert into sub_category Values (79,'outdoor lighting',13)

insert into Products Values(1,'Bikini Sets',50,1)
insert into Products Values(2,'Cover-Ups',10,1)
insert into Products Values(3,'Abaya',30,2)
insert into Products Values(4,'Women Hijabs',150,2)
insert into Products Values(5,'Muslim Sets',200,2)
insert into Products Values(6,'Prayer Hats',80,2)
insert into Products Values(7,'Dresses',100,2)

insert into Products Values(8,'Leggings',200,3)
insert into Products Values(9,'Skirts',50,3)
insert into Products Values(10,'Shorts',20,3)
insert into Products Values(11,'Jeans',30,3)
insert into Products Values(12,'Plants & Capris',350,3)

insert into Products Values(13,'Plus Size Dresses',120,4)
insert into Products Values(14,'Plus Size T_shirt',300,4)
insert into Products Values(15,'Plus Size Sets',400,4)
insert into Products Values(16,'Plus Size Plants & Capris',400,4)
insert into Products Values(17,'Plus Size Outerwear',400,4)

insert into Products Values(18,'Wedding Dresses',400,5)
insert into Products Values(19,'Prom Dresses',400,5)
insert into Products Values(20,'Evening Dresses',400,5)
insert into Products Values(21,'Africa Clothing',400,5)
insert into Products Values(22,'Cosplay Costumers',400,5)

insert into Products Values(23,'Pajama sets',400,6)
insert into Products Values(24,'Bras',400,6)
insert into Products Values(25,'Panties',400,6)
insert into Products Values(26,'Women Socks',400,6)
insert into Products Values(27,'Shpewear',400,6)

insert into Products Values(28,'Sunglasses',400,7)
insert into Products Values(29,'BaseBall Caps',250,7)
insert into Products Values(30,'Bucket Hats',400,7)
insert into Products Values(31,'Belts',420,7)
insert into Products Values(32,'Hair Accessories',300,7)

insert into Products Values(33,'T_shirts',400,8)
insert into Products Values(34,'Shirts',400,8)
insert into Products Values(35,'Casual Shorts',400,8)
insert into Products Values(36,'Mens Sets',400,8)
insert into Products Values(37,'Jackets',400,8)

insert into Products Values(38,'Jackets',400,9)
insert into Products Values(39,'Sweaters',400,9)
insert into Products Values(40,'Parkas',400,9)
insert into Products Values(41,'Suits',400,9)
insert into Products Values(42,'Down Jackets',400,9)

insert into Products Values(43,'Boxers',400,10)
insert into Products Values(44,'Briefs',400,10)
insert into Products Values(45,'Long Johns',400,10)
insert into Products Values(46,'Men Sleep & Lounge ',400,10)
insert into Products Values(47,'Pajama sets',400,10)

insert into Products Values(48,'Cosplay Costumes',400,11)
insert into Products Values(49,'Stage & Dance Wear',400,11)
insert into Products Values(50,'Exotic Apparel',400,11)

insert into Products Values (51,'android phones',1000,12)
insert into Products Values (52,'iphones',5000,12)
insert into Products Values (53,'feature phones',1500,12)
insert into Products Values (54,'refurbished',1150,12)
insert into Products Values (55,'8GB RAM',1350,12)

insert into Products Values (56,'realme',1650,13)
insert into Products Values (57,'oneplus',1550,13)
insert into Products Values (58,'HUAWI',1650,13)
insert into Products Values (59,'inifix',1650,13)
insert into Products Values (60,'POCO',1050,13)

insert into Products Values (61,'cases & covers',1450,14)
insert into Products Values (62,'Cables',1650,14)
insert into Products Values (63,'Chargers',1750,14)
insert into Products Values (64,'Power Bank',1850,14)
insert into Products Values (65,'Holders & Stands',1850,14)

insert into Products Values (66,'Cases For iPhone',1950,15)
insert into Products Values (67,'Cases For Samsung',1450,15)
insert into Products Values (68,'Cases For Huawei',1350,15)
insert into Products Values (69,'Cases For Xiaomi',1250,15)
insert into Products Values (70,'Cases For Meizu',1250,15)

insert into Products Values (71,'Wireless',1150,16)
insert into Products Values (72,'car chargers',1150,16)
insert into Products Values (73,'lenses',1050,16)
insert into Products Values (74,'adapters & converters',1050,16)

insert into Products Values (75,'phone LCDs',1650,17)
insert into Products Values (76,'phone batteries',1550,17)
insert into Products Values (77,'housings & frames',1750,17)

insert into Products Values (78,'walkie talkie',1850,18)
insert into Products Values (79,'fiber optic equipment',1050,18)
insert into Products Values (80,'communications antennas',1050,18)

insert into Products Values (81,'CPUs',1550,19)
insert into Products Values (82,'Motherboads',1650,19)
insert into Products Values (83,'Graphics Cards',1650,19)
insert into Products Values (84,'Mice,50',17,19)
insert into Products Values (85,'Keyboards',1950,19)

insert into Products Values (86,'Gaming laptops',1050,20)
insert into Products Values (87,'ultraslim laptops',1150,20)
insert into Products Values (88,'tablets',1250,20)
insert into Products Values (89,'laptop accessories',250,20)
insert into Products Values (90,'tablet accessories',250,20)
insert into Products Values (91,'laptop bags & cases',1250,20)

insert into Products Values (92,'surveillance items',1250,21)
insert into Products Values (93,'access control systems',1250,21)
insert into Products Values (94,'smoke detectors',1250,21)
insert into Products Values (95,'safety equipment',1150,21)
insert into Products Values (96,'alarms & sensors',1950,21)
insert into Products Values (97,'door intercom systems',1750,21)

insert into Products Values (98,'USB flash drives',1350,22)
insert into Products Values (99,'memory cards',1650,22)
insert into Products Values (100,'external hard drives',1650,22)
insert into Products Values (101,'HDD box enclosures',1750,22)
insert into Products Values (102,'SSDs',1050,22)

insert into Products Values (103,'3D printers',1850,23)
insert into Products Values (104,'3D printers parts & accessories',1150,23)
insert into Products Values (105,'printers',1250,23)
insert into Products Values (106,'printers parts',50,23)
insert into Products Values (107,'scanners',1150,23)
insert into Products Values (108,'Ink Cartridges',1750,23)

insert into Products Values (109,'wireless routers',1030,24)
insert into Products Values (110,'network cards',1050,24)
insert into Products Values (111,'3G modems',1250,24)
insert into Products Values (112,'networking tools',1550,24)


insert into Products Values(113,'Cables & Adapters',25,25)
insert into Products Values(114,'Electronic Cigarettes',41,25)
insert into Products Values(115,'Batteries',65,25)
insert into Products Values(116,'Chargers',80,25)
insert into Products Values(117,'Home Electronic Accessories',30,25)
insert into Products Values(118,'Bags & Cases',71,25)

insert into Products Values(119,'Televisions',52,26)
insert into Products Values(120,'TV Receivers',60,26)
insert into Products Values(121,'Projector',85,26)
insert into Products Values(122,'Audio Arnplifier Boards',25,26)
insert into Products Values(123,'TV Sticks',84,26)

insert into Products Values(124,'Digital Cameras',62,27)
insert into Products Values(125,'Camcorders',50,27)
insert into Products Values(126,'Camera dorns',80,27)
insert into Products Values(127,'Action Carneras',95,27)
insert into Products Values(128,'Photo Studio Supplies',60,27)
insert into Products Values(129,'Camera & Photo Accrssories',30,27)

insert into Products Values(130,'Earphones & Headphones',34,28)
insert into Products Values(131,'Speakers',74,28)
insert into Products Values(132,'MP3 players',55,28)
insert into Products Values(133,'Microphones',61,28)
insert into Products Values(134,'VR/Ar Devices',47,28)

insert into Products Values(135,'Wearable Devices',50,29)
insert into Products Values(136,'Smart Home Appliances',35,29)
insert into Products Values(137,'Smart Wearable Accessories',40,29)
insert into Products Values(138,'Smart Remote Controls',60,29)
insert into Products Values(139,'Smart Watches',80,29)
insert into Products Values(140,'Smart Wristbands',70,29)

insert into Products Values(141,'Game Consoles',90,30)
insert into Products Values(142,'Hanheld Game Players',90,30)
insert into Products Values(143,'Game Controllers',121,30)
insert into Products Values(144,'Chargers',41,30)
insert into Products Values(145,'Steering Wheel',140,30)


insert into Products Values(146,'925 Silver Jewelry',140,31)
insert into Products Values(147,'Diamond Jewelry',180,31)
insert into Products Values(148,'Pearl Jewelry',150,31)
insert into Products Values(149,'Gemstones',100,31)
insert into Products Values(150,'K-Gold Jewelry',340,31)
insert into Products Values(151,'Fine Earrings',200,31)
insert into Products Values(152,'Fine Jewelry Sets',400,31)
insert into Products Values(153,'Mens Fine Jewelry',150,31)

insert into Products Values(154,'Bridal Jewery Sets',340,32)
insert into Products Values(155,'Engagernent rings',600,32)
insert into Products Values(156,'Wedding Hair Jewelry',120,32)

insert into Products Values(157,'Mechnical Watches',90,33)
insert into Products Values(158,'Quartz Watches',70,33)
insert into Products Values(159,'Digital Watches',30,33)
insert into Products Values(160,'Dual Display Watches',30,33)
insert into Products Values(161,'Sports Watches',50,33)

insert into Products Values(162,'Womens Bracelet Watches',70,34)
insert into Products Values(163,'Romantic Watches',90,34)
insert into Products Values(164,'Sports Watches',30,34)
insert into Products Values(165,'Innovative Watches',50,34)

insert into Products Values(166,'NecKlasces & Peendants',65,35)
insert into Products Values(167,'Trendy Earrings',35,35)
insert into Products Values(168,'Bracelets & Bangles',57,35)
insert into Products Values(169,'Mens Cuff Links',87,35)
insert into Products Values(170,'Fashion Jewelry Sets',60,35)
insert into Products Values(171,'Charms',70,35)
insert into Products Values(172,'Body Jewelry',64,35)

insert into Products Values(173,'Beads',60,36)
insert into Products Values(174,'Jewelry finding & Comonents',87,36)
insert into Products Values(175,'Jewelry Packaging & Displays',70,36)

insert into Products Values(176,'Fabric & Sewing',400,37)
insert into Products Values(177,'Needle arts & craft',400,37)
insert into Products Values(178,'Scrapbooking & Stamps',400,37)
insert into Products Values(179,'5D DIY diamond Painting',400,37)

insert into Products Values(180,'Painting & calligraphy',400,38)
insert into Products Values(181,'Wall Stickers',400,38)
insert into Products Values(182,'Figurines & Miniatures',400,38)
insert into Products Values(183,'Wall Clocks',400,38)

insert into Products Values(184,'Cushions',400,39)
insert into Products Values(185,'Curtains',400,39)
insert into Products Values(186,'Bedding sets',400,39)
insert into Products Values(187,'Beach Towels',400,39)

insert into Products Values(188,'Events',400,40)
insert into Products Values(189,'Baloons',400,40)
insert into Products Values(190,'Artifical',400,40)
insert into Products Values(191,'Gift Bags',400,40)

insert into Products Values(192,'Storge Boxes',400,41)
insert into Products Values(193,'Laundary Basket',400,41)
insert into Products Values(194,'Makeup Organizers',400,41)

insert into Products Values(195,'Umbrellas',400,42)
insert into Products Values(196,'Bathrooms Scales',400,42)
insert into Products Values(197,'Sweepers & Mops',400,42)
insert into Products Values(198,'Dust Covers',400,42)

insert into Products Values(199,'Bakeware',400,43)
insert into Products Values(200,'Drinkware',400,43)
insert into Products Values(201,'Kitchen Tools',400,43)
insert into Products Values(202,'kitchen Knives',400,43)

insert into Products Values(203,'Cat Supplies',400,44)
insert into Products Values(204,'Fish & Aquatic',400,44)
insert into Products Values(205,'Farm Animal Supplies',400,44)
insert into Products Values(206,'Dog toy',400,44)

insert into Products Values(207,'Stylish Backpacks',400,45)
insert into Products Values(208,'Totes',400,45)
insert into Products Values(209,'Shoulder Bags',400,45)
insert into Products Values(210,'Wallets',400,45)
insert into Products Values(211,'Clutches',400,45)

insert into Products Values(212,'Womens Sandals',400,46)
insert into Products Values(213,'Flats',400,46)
insert into Products Values(214,'High heels',400,46)
insert into Products Values(215,'Vulcanized Sneakers',400,46)
insert into Products Values(216,'Boots',400,46)

insert into Products Values(217,'Men Bachpacks',400,47)
insert into Products Values(218,'Crossbody Bags',400,47)
insert into Products Values(219,'Briefcses',400,47)
insert into Products Values(220,'Luggage & Travel Bags',400,47)
insert into Products Values(221,'Wallets',400,47)

insert into Products Values(222,'Casual Shoes',400,48)
insert into Products Values(223,'Vulcanized Sneakers',400,48)
insert into Products Values(224,'Men Sandals',400,48)
insert into Products Values(225,'Loafers',400,48)
insert into Products Values(226,'Boots',400,48)

insert into Products Values(227,'Kids & baby bags',400,49)
insert into Products Values(228,'luggage covers',400,49)
insert into Products Values(229,'passport Covers',400,49)
insert into Products Values(230,'Bags Part',400,49)
insert into Products Values(231,'Wallets',400,49)

insert into Products Values(232,'Wedge Sandals',400,50)
insert into Products Values(233,'Classic Heels',400,50)
insert into Products Values(234,'Large-sized Flats',400,50)
insert into Products Values(235,'Indoor Slippers',400,50)
insert into Products Values(236,'Trendy Sneakers',400,50)

insert into Products Values (237,'baby rompers',1750,51)
insert into Products Values (238,'baby clothing set',1030,51)
insert into Products Values (239,'babys first walkers',1050,51)
insert into Products Values (240,'baby accessories',1250,51)
insert into Products Values (241,'feeding',1550,51)

insert into Products Values (242,'dresses',1750,52)
insert into Products Values (243,'tops & tees',1030,52)
insert into Products Values (244,'outerwear & coats',1050,52)
insert into Products Values (245,'sleepwear & robes',1250,52)

insert into Products Values (246,'T-shirts',1750,53)
insert into Products Values (247,'Outerwera & coats',1030,53)
insert into Products Values (248,'jeans',1050,53)
insert into Products Values (249,'Hoodies & sweatshirts',1250,53)

insert into Products Values (250,'maternity clothing',1750,54)
insert into Products Values (251,'electric breast pumps',1030,54)
insert into Products Values (252,'baby souvenirs',1050,54)


insert into Products Values (253,'RC helicopters',1750,55)
insert into Products Values (254,'RC cars',1030,55)
insert into Products Values (255,'RC quadcopter',1050,55)


insert into Products Values (256,'Blocks',1750,56)
insert into Products Values (257,'model building toys',1030,56)

insert into Products Values (258,'squeeze toys',1750,57)
insert into Products Values (259,'action & toy figures',1030,57)
insert into Products Values (260,'Dolls',1050,57)
insert into Products Values (261,'stickers',1250,57)
insert into Products Values (262,'game collection cards',1550,57)

insert into Products Values (263,'swimming',1750,58)
insert into Products Values (264,'one-piece suits',1030,58)
insert into Products Values (265,'tow-piece suits',1050,58)
insert into Products Values (266,'cover-Ups',1250,58)
insert into Products Values (267,'childrens swimwear',1550,58)

insert into Products Values (268,'bicycles',1750,59)
insert into Products Values (269,'bicycles frames',1030,59)
insert into Products Values (270,'bicycles lights',1050,59)
insert into Products Values (271,'bicycles helmets',1250,59)
insert into Products Values (272,'bicycles eyewear',1550,59)

insert into Products Values (273,'running shoes',1750,60)
insert into Products Values (274,'hiking shoes',1030,60)
insert into Products Values (275,'soccer shoes',1050,60)
insert into Products Values (276,'dance shoes',1250,60)
insert into Products Values (277,'basketball shoes',1550,60)

insert into Products Values (278,'fishing reels',1750,61)
insert into Products Values (279,'fishing kures',1030,61)
insert into Products Values (280,'fishing lines',1050,61)
insert into Products Values (281,'fishing roads',1250,61)
insert into Products Values (282,'rod combos',1550,61)

insert into Products Values (283,'jerseys',1750,62)
insert into Products Values (284,'hiking jackets',1030,62)
insert into Products Values (285,'pants',1050,62)
insert into Products Values (286,'shorts',1250,62)
insert into Products Values (287,'shorts bags',1550,62)

insert into Products Values (288,'camping & hiking',1750,63)
insert into Products Values (289,'hunting',1030,63)
insert into Products Values (290,'golf',1050,63)
insert into Products Values (291,'fitness & bodybuilding',1250,63)
insert into Products Values (292,'skilling & snowboarding',1550,63)

insert into Products Values (293,'Bundles With Closure',130,64)
insert into Products Values (294,'3/4 Bundles',174,64)
insert into Products Values (295,'Pre-Colored Weaves',130,64)
insert into Products Values (296,'Closure',98,64)

insert into Products Values (297,'Lace Front Wigs',67,65)
insert into Products Values (298,'Full Lace Wigs',130,65)
insert into Products Values (299,'360 Lace Wigs',150,65)
insert into Products Values (300,'250% Density Wigs',100,65)

insert into Products Values (301,'Synthetic Lace Wigs',130,66)
insert into Products Values (302,'Synthetic Weaves',90,66)
insert into Products Values (303,'Hair Braids',70,66)
insert into Products Values (304,'Synthetic Extensions',50,66)

insert into Products Values (305,'Eyes',35,67)
insert into Products Values (306,'Lips',40,67)
insert into Products Values (307,'Face',60,67)
insert into Products Values (308,'Makeup Tools',130,67)

insert into Products Values (309,'Massage & Relaxation',80,68)
insert into Products Values (310,'Household Health Monitors',70,68)
insert into Products Values (311,'Chinese Medicine',75,68)
insert into Products Values (312,'Pesonal Health Care Items',80,68)

insert into Products Values (313,'Face',80,69)
insert into Products Values (314,'Eyes',30,69)
insert into Products Values (315,'Body',90,69)
insert into Products Values (316,'Skin Care Tools',120,69)

insert into Products Values (317,'Gel Nail Polish',80,70)
insert into Products Values (318,'Nail Drills',40,70)
insert into Products Values (319,'Nail Dryers',70,70)
insert into Products Values (320,'Nail Glitter',87,70)

insert into Products Values (321,'Hair Care & Styling',80,71)
insert into Products Values (322,'Shving & Hair Rmoval',40,71)
insert into Products Values (323,'Oral Hygiene',60,71)

insert into Products Values (324,'Tattoo Kits',20,72)

insert into Products Values (325,'Condoms',70,73)
insert into Products Values (326,'Lubricants',55,73)
insert into Products Values (327,'Vibrators',56,73)

insert into Products Values (328,'Code Readers & Scanning Tools',80,74)
insert into Products Values (329,'Diagnostic Tools',56,74)
insert into Products Values (330,'Car Washing Tools',34,74)
insert into Products Values (331,'Patient Care & Polishes',150,74)
insert into Products Values (332,'Other Maintenance Products',120,74)

insert into Products Values (333,'Car Stickers',35,75)
insert into Products Values (334,'Car Covers',40,75)
insert into Products Values (335,'Other ExteriorAccessories',15,75)

insert into Products Values (336,'Seat Covers',35,76)
insert into Products Values (337,'Storage Solutions',110,76)
insert into Products Values (338,'Car key Cases',60,76)
insert into Products Values (339,'Steering Wheel Covers',40,76)
insert into Products Values (340,'Flooe Mats',15,76)

insert into Products Values (341,'Criling Lihts',30,77)
insert into Products Values (342,'Pendant Lights',10,77)
insert into Products Values (343,'Downlights',20,77)
insert into Products Values (344,'Chandeliers',25,77)
insert into Products Values (345,'Wall Lamps',35,77)
insert into Products Values (346,'NightLights',15,77)

insert into Products Values (347,'LED Strips',30,78)
insert into Products Values (348,'LED Downlights',70,78)
insert into Products Values (349,'LED Panel Lights',90,78)
insert into Products Values (350,'LED Spotlights',25,78)
insert into Products Values (351,'LED Bar Lights',10,78)

insert into Products Values (352,'Flashlights',25,79)
insert into Products Values (353,'Solar Lamps',30,79)
insert into Products Values (354,'Flodlights',70,79)
insert into Products Values (356,'String Lights',50,79)
insert into Products Values (357,'Underwater Lights',100,79)

/* This is collections data */;
insert into collections Values (1,10,351)
insert into collections Values (2,70,354)
insert into collections Values (3,297,67)
insert into collections Values (4,340,154)
insert into collections Values (5,70,158)
insert into collections Values (6,50,161)
insert into collections Values (7,65,166)
insert into collections Values (8,87,174)
insert into collections Values (9,400,176)
insert into collections Values (10,400,179)

/* This is offer data */;
insert into offer Values (1,'7 day',300,400,179)
insert into offer Values (2,'41 day',8,10,351)
insert into offer Values (3,'10 day',200,400,176)
insert into offer Values (4,'15 day',300,340,154)
insert into offer Values (5,'11 day',50,70,354)
insert into offer Values (6,'6 day',40,50,161)
insert into offer Values (7,'17 day',70,87,174)
insert into offer Values (8,'3 day',50,70,158)
insert into offer Values (9,'30 day',50,65,166)
insert into offer Values (10,'19 day',200,297,67)


/* This is payment data */;
insert into payment Values(1,'Visa Card')
insert into payment Values(2,'cach')


/* This is users data */;
insert into users Values(1,'Ahmed Ali','ahmedali@gmail.com','215689458','Jordan',1,'photo.png')
insert into users Values(2,'Osama Mohammed','osamamohammed@gmail.com','215665389','Turkey',1,'photo2.png')
insert into users Values(3,'Mostafa bader','mostafabader@gmail.com','215665336','Palestine',1,'photo3.png')
insert into users Values(4,'Mohammed wael','mohmmedwael@gmail.com','215665369','lebanon',2,'photo4.png')
insert into users Values(5,'Yosef Ali','yosefali@gmail.com','215665123','syria',2,'photo5.png')
insert into users Values(6,'Sara Mohammed','saramohammed@gmail.com','215665741','Jordan',1,'photo6.png')
insert into users Values(7,'Baraa Omar','baraaomar@gmail.com','215665555','Palestine',1,'photo7.png')
insert into users Values(8,'Aya Hasan','ayahasan@gmail.com','215665286','Turkey',2,'photo8.png')
insert into users Values(9,'Aseel Ahmed','aseelahmed@gmail.com','215665349','Turkey',1,'photo9.png')
insert into users Values(10,'Tala Mohammed','talamohammed@gmail.com','215665058','Palestine',1,'photo10.png')
insert into users Values(11,'Jamil nassar','jamilnassar@gmail.com','215665384','Jordan',2,'photo11.png')
insert into users Values(12,'Essa Hassan','essahassan@gmail.com','215665333','Jordan',2,'photo12.png')
insert into users Values(13,'Fawzeya Mamdouh','fawzeyamamdouh@gmail.com','215665462','Palestine',1,'photo13.png')
insert into users Values(14,'Osama Mohammed','osamamohammed@gmail.com','215665389','Egypt',2,'photo14.png')
insert into users Values(15,'Saleh Mohammed','salehmohammed@gmail.com','215665389','Egypt',1,'photo15.png')

/* This is favorite data */;
insert into favorite Values (1,1,166)
insert into favorite Values (2,15,66)
insert into favorite Values (3,13,300)
insert into favorite Values (4,10,200)
insert into favorite Values (5,2,140)
insert into favorite Values (6,6,200)
insert into favorite Values (7,14,140)
insert into favorite Values (8,3,4)
insert into favorite Values (9,12,1)
insert into favorite Values (10,11,99)
insert into favorite Values (11,4,102)
insert into favorite Values (12,15,304)
insert into favorite Values (13,11,105)
insert into favorite Values (14,4,77)
insert into favorite Values (15,5,40)
insert into favorite Values (16,11,55)
insert into favorite Values (17,14,299)
insert into favorite Values (18,5,210)

/* This is orders data */;
insert into orders Values (1,400,15,210)
insert into orders Values (2,200,10,210)
insert into orders Values (3,100,10,300)
insert into orders Values (4,350,1,230)
insert into orders Values (5,205,9,102)
insert into orders Values (6,120,1,99)
insert into orders Values (7,90,14,1)
insert into orders Values (8,100,13,20)
insert into orders Values (9,340,12,50)
insert into orders Values (10,190,3,350)


/* Show All Information About Some Tables */
SELECT * FROM category
SELECT * FROM users
SELECT * FROM favorite
SELECT * FROM payment
SELECT * FROM sub_category

/* Retrieve All Columns From A Table Oreders By The Total Cost Ascendingly */
Select * From orders
Order By total_cost ASC


/* Retrieve All Columns From A Table Offer By The New Cost Descendingly */
Select * From  offer 
Order By new_cost DESC

/* Show Name Sub_Category For All Category */
Select subC_name
From category C , sub_category SC
Where  C.category_id = SC.category_id

/* Retrive Name To User  Paying Visa Card */
Select full_Name
From users 
Where payment_id= 1

/* Retrieve Product Name That Has ID 7 & It's Cost = 400 */
Select p_name , cost
From Products P , sub_category SC
Where P.cost = 400 AND SC.subCategory_id= 7

/* Retrieve Product Name It's Cost between 1000 & 1200 */
Select p_name , cost 
From Products 
Where cost between 1000 AND 1200

/* Retrive The Product That Has Offers & The New Cost */ 
Select p_name , offer_time , new_cost 
From Products P , offer O
Where  P.product_id = O.product_id

/* Updates Of Data */
Update users
Set full_Name = 'Salma Ali'
Where full_Name = 'Osama Mohammed'  

Update Products 
Set cost = 100 
Where product_id = 156;

Update users 
Set payment_id = 1
Where phone = '215665123';

Update users
Set country= 'Palestine', email = 'oooMohamed@gmail.com'
Where full_Name = 'Osama Mohammed'

/* Aregate Functions*/

Select MIN (cost)
From Products
Where subCategory_id=15

Select Max (cost) As 'Max Cost Prodct'
From Products

select Avg(cost) As 'Average'
from Products
where subCategory_id = 55

Select count(users_id) As 'Totle Turkey User' 
From users 
Where country = 'Turkey'

select orders_id ,SUM(total_cost)
from orders
Group By orders_id

Select count(*), country  
From users 
Group By country

/* Join SQL Server */
Select P.p_name , P.cost , O.new_cost
From Products P Join offer O                                     
On P.product_id = O.product_id 

Select C.c_name , SC.subC_name
From category C Left Outer Join sub_category SC                                     
On C.category_id= SC.category_id


Select P.p_name, P.cost , SC.subC_name
From Products P Right Outer Join sub_category SC                                     
On p.subCategory_id= SC.subCategory_id

/* Create Views and update it & delete some of them */

-- For Product Table (create & delete)
go
Create View view_product AS
Select p_name, cost
From Products 
Where cost > 1000;

go
Alter View view_product AS
Select p_name, cost
From Products
Where cost <= 1000;

-- For Users Table (create & delete)
go
Create View view_user AS
Select full_Name, country
From users 
Where payment_id = 1

go
Alter View view_user AS
Select email, phone
From users 
Where payment_id = 1

-- For Payment Table (create & delete)
go
Create View ViewPayment AS
Select payment_id, pay_name
From payment 

go
Alter View ViewPayment AS
Select  pay_name
From payment
where payment_id = 2

-- For Favorite Table (create & delete)
go
Create View ViewFavorite AS
Select product_id
From favorite 
Where users_id = 12

go
Alter View ViewFavorite AS
Select users_id
From favorite 
Where product_id = 105 

-- For Order Table (create & update)
go
Create View ViewOrders AS
Select total_cost, product_id
From orders 
Where users_id = 9

go
Alter View ViewOrders AS
Select total_cost
From orders 
Where users_id = 14

-- For Offer Table (create & delete)
go
Create View Viewoffer AS
Select offer_time, new_cost , prev_cost
From offer 
Where product_id = 179

go
Drop view Viewoffer

-- For Category Table (create & delete)
go
Create View ViewCategory AS
Select c_name
From category 

go
Drop view ViewCategory

-- For Sub Category Table (create & update)
go
Create View ViewSubCatrgory AS
Select subC_name
From sub_category 
Where category_id = 11

go
Alter View ViewSubCatrgory AS
Select *
From sub_category 
Where category_id = 7

-- For Collection Table (create & delete)
go
Create View ViewCollections AS
Select collection_id , cost
From collections 
Where product_id = 161

Go
Drop View ViewCollections

/* Stored procedure SQL Server */
-- Procedure Number 1
GO
CREATE PROCEDURE AllUsersAS
SELECT * FROM users
GO;
EXEC  AllUsers;

-- Procedure Number 2
GO
CREATE PROCEDURE AllProductsAS
SELECT * FROM Products
GO;
EXEC  AllProducts;

-- Procedure Number 3
GO
CREATE PROCEDURE AllOrdersAS
SELECT * FROM orders
GO;
EXEC  AllOrders;

-- Procedure Number 4
GO
CREATE PROCEDURE AllCollectionsAS
SELECT * FROM collections
GO;
EXEC  AllCollections;

-- Procedure Number 5
GO
CREATE PROCEDURE AllCategoryAS
SELECT * FROM category
GO;
EXEC  AllCategory;

-- Procedure Number 6
GO
CREATE PROCEDURE AllSubCategoryAS
SELECT * FROM sub_category
GO;
EXEC  AllSubCategory;

-- Procedure Number 7
GO
CREATE PROCEDURE AllPaymentAS
SELECT * FROM payment
GO;
EXEC  AllPayment;

-- Procedure Number 8
GO
CREATE PROCEDURE AllOfferAS
SELECT * FROM offer
GO;
EXEC  AllOffer;
 
-- Procedure Number 9
GO
CREATE PROCEDURE AllFavoriteAS
SELECT * FROM favorite
GO;
EXEC  AllFavorite;

-- Procedure Number 10
GO
CREATE PROCEDURE UserName @Full_Name nvarchar(50)
AS
SELECT * FROM users WHERE full_Name = @Full_Name
GO
EXEC UserName @Full_Name = 'Yosef Ali';

-- Procedure Number 11
GO
CREATE PROCEDURE Product_IDs @product_id intAS
SELECT * FROM Products 
WHERE product_id = @product_id
GO
EXEC Product_IDs @product_id = 5;

-- Procedure Number 12
GO
CREATE PROCEDURE OfferCost @new_cost int ,@prev_cost int,@offer_id int AS
SELECT * FROM offer 
WHERE offer_id = @offer_id And
new_cost = @new_cost
And prev_cost = @prev_cost
GO
EXEC OfferCost @offer_id = 5, @new_cost = 50 ,@prev_cost = 70;

-- Procedure Number 13
GO
CREATE PROCEDURE OrderCost @orders_id int ,@total_cost int AS
SELECT * FROM orders 
WHERE orders_id = @orders_id OR
total_cost = @total_cost
GO

EXEC OrderCost @orders_id = 8 , @total_cost = 205 ;


-- Trigger procedure
go
CREATE TRIGGER  users_Forinsert ON  users
AFTER INSERT
AS
BEGIN
 insert into users Values(16,'Dima Ali','dimaali@gmail.com','215689222','Jordan',2,'photo33.png')
 insert into users Values(17,'Wesam Mohmmed','wesammohammed@gmail.com','215689233','Palestine',2,'photo18.png')
 insert into users Values(16,'Safa Nabil','safanabil@gmail.com','215689266','Jordan',2,'photo19.png')
END
Go 

CREATE TRIGGER  Products_Instead_Insert
ON Products
Instead of Insert
AS
BEGIN
 Update Products 
Set cost = 200 
Where product_id = 155;
END

Go

CREATE TRIGGER  users_Instead_Insert
ON users
Instead of Insert
AS
BEGIN
Update users 
Set payment_id = 1
Where phone = '215665233';
END

Go

BACKUP  DATABASE  TestProject
FROM DISK ='C:\backUps\Project.back'

drop database TestProject

RESTORE  DATABASE  TestProject
FROM DISK ='C:\backUps\Project.back'


