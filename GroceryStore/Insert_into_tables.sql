USE GroceryStore
GO

/*
Requires Aisle id, 
aisle section, 
aisle-section description*/

INSERT INTO Aisles(aisle_section,aisle_description)
VALUES
	('1a','alcohol'),
	('1b','Dried Goods'),
	('2a','Frozen Products'),
	('2b','Meats'),
    ('3a','Fresh Produce'),
	('3b','Deli'),
	('3c','Dairy'),
	('4a','Cleaning Products'),
	('4b','Toiletries'),
	('4c','Cooking_utensils');

/*
alcohol_id,
alcohol_name,
alcohol_brand,
alcohol_weight,
alcohol_brand,
alcohol_quantity,
alcohol_day_of_delivery,
aisle_section 1a
*/

INSERT INTO Alcohol(alcohol_id,alcohol_name,
alcohol_brand,alcohol_weight,alcohol_cost,alcohol_quantity,
alcohol_day_of_delivery,aisle_section)
VALUES
	(1,'Whiskey','Jim Bean',32,64.99,5,12-8-2020,'1a'),
	(2,'Light Beer','Miller',128,24.99,30,15-9-2020,'1a'),
	(3,'Jaegermeister','Busch',20,8.99,18,17-8-2020,'1a'),
	(4,'Rum','Captain Morgan',40,35.99,3,8-8-2020,'1a'),
	(5,'Whiskey','Jack Daniels',32,65.99,12,7-7-2020,'1a');

/*
cleaning products id,
cleaning products title,
cleaning products type,
cleaning products brand,
cleaning products cost,
cleaning products qty,
aisle id 4a
*/

INSERT INTO Cleaning_Products(cleaning_products_id,
cleaning_products_title,cleaning_products_type,
cleaning_products_brand,cleaning_products_cost,
cleaning_products_qty,aisle_section)
VALUES
	(1,'Bleach','Household Cleaner','Clorox',5,4.50,'4a'),
	(2,'Windex','Household Cleaner','Windex',8,4.5,'4a'),
	(3,'Toothbrush','Personal Hygiene','Crest',3,15.99,'4a'),
	(4,'Scope','Personal Hygiene','Scope',10,6.99,'4a'),
	(5,'Tide','Laundry Detergent','Tide',6,19.99,'4a');

/*
cooking utensils id,
cooking utensils title,
cooking utensils type,
cooking utensils cost,
cooking utensils qty,
aisle id 4c
*/

INSERT INTO Cooking_Utensils(cooking_utensil_id,
cooking_utensils_title,cooking_utensils_type,
cooking_utensils_brand,cooking_utensils_cost,
cooking_utensils_qty,aisle_section)
VALUES
	(1,'Butcher Knife','Cutlery','Paula Deen',12.99,6,'4c'),
	(2,'No stick Frying Pan','Coookware','Rachel Ray',16.99,5,'4c'),
	(3,'Metal Spatula','Cookware','Pampered Chef',5.00,12,'4c'),
	(4,'Charcoal Briquettes','BBQ','KingsFord',15.00,8,'4c'),
	(5,'Skewers','BBQ','KingsFord',6.99,12,'4c');

/*
dairy id,
dairy product type,
dairy weight ounces,
dairy cost,
dairy qty,
dairy day of delivery,
dairy sell by date,
aisle id 3c
*/

INSERT INTO Dairy(dairy_id,dairy_product_type,
dairy_weight_oz,dairy_cost,
dairy_qty,dairy_day_of_delivery,
dairy_sell_by_date, aisle_section)
VALUES
	(1,'Milk',128,5.99,12,21-10-2020,30-10-2020,'3c'),
	(2,'Cheddar Cheese',32,9.99,32,21-10-2020,30-5-2021,'3c'),
	(3,'Cottage Cheese',32,5.99,16,21-10-2020,15-1-2021,'3c'),
	(4,'Pepperjack Cheese',32,10.99,32,21-10-2020,30-5-2021,'3c'),
	(5,'Sour Cream',32,4.99,16,21-10-2020,15-1-2021,'3c');

/*
deli id,
deli type,
deli brand,
deli cost per pound,
deli day of delivery,
deli sell by date,
deli qty,
aisle id 3b
*/

INSERT INTO Deli(deli_id,deli_type,
deli_brand,deli_cost_per_lb,
deli_day_of_delivery,deli_sell_by_date,
deli_qty,
aisle_section)
VALUES
	(1,'Salami','Boars Head',9.99,21-10-2020,21-12-2020,20,'3b'),
	(2,'Roast Beef','Boars Head',11.99,21-10-2020,21-12-2020,15,'3b'),
	(3,'Pepperoni','Boars Head',12.99,21-10-2020,21-12-2020,8,'3b'),
	(4,'Ham','Boars Head',13.99,21-10-2020,21-12-2020,21,'3b'),
	(5,'Reuben','Boars Head',12.99,21-10-2020,21-12-2020,24,'3b');

/*
dried goods id,
dried goods title,
dried goods type,
dried goods brand,
dried goods cost,
dried goods qty,
aisle id 1b
*/

INSERT INTO Dried_Goods(dried_goods_id,dried_goods_title,
dried_goods_type,dried_goods_brand,
dried_goods_cost,dried_goods_qty,aisle_section)
VALUES
	(1,'Black Beans','Canned Goods','Goya',1.19,30,'1b'),
	(2,'Spam','Canned Goods','SPAM',5.39,25,'1b'),
	(3,'Vienna Sausages','Canned Goods','Armour',0.59,18,'1b'),
	(4,'Corn','Canned Goods','Del Monte',0.99,27,'1b'),
	(5,'Habanero','Spices','Tabasco',1.69,5,'1b');

/*
fresh produce id,
fresh produce title,
fresh produce type,
fresh produce brand,
fresh produce cost per pound,
fresh produce qty,
aisle id 3a
*/

INSERT INTO Fresh_Produce(fresh_produce_id,fresh_produce_title,
fresh_produce_type,fresh_produce_brand,
fresh_produce_cost_per_pound,fresh_produce_qty,aisle_section)
VALUES
	(1,'Corn','Vegetable','Local',2.00,21,'3a'),
	(2,'Fiji Apples','Fruit','Del Monte',4.00,80,'3a'),
	(3,'Seedless Watermelon','Fruit','Local',0.80,30,'3a'),
	(4,'Pineapple','Fruit','Del Monte',0.80,15,'3a'),
	(5,'Portabello Mushrooms','Fungi','Local',3.00,20,'3a');

/*
frozen food id,
frozen food title,
frozen food type,
frozen food brand,
frozen food cost,
frozen food qty,
aisle id 2a
*/

INSERT INTO Frozen_Food(frozen_food_id,frozen_food_title,
frozen_food_type,frozen_food_brand,
frozen_food_cost,frozen_food_qty,aisle_section)
VALUES
	(1,'Fish Sticks','Finger Foods','Gortons',8.99,25,'2a'),
	(2,'Four Meat Pizza','Pizza','Lucias Pizza',7.99,21,'2a'),
	(3,'Chicken Tenders','Finger Foods','Tyson',10.99,18,'2a'),
	(4,'Sweet Potatoes','Finger Foods','Alexia',7.89,16,'2a'),
	(5,'Pepperoni 120 Count','Finger Foods','Tostinos',9.99,3,'2a');

/*
meats id,
meats title,
meats type,
meat brand,
meat cost per pound,
meat qty,
meat pkgd qty,
aisle id 2b
*/

INSERT INTO Meats (meats_id,meats_title,
meats_type,meat_brand,meat_cost_per_pound,
meat_qty,meat_pkgd_qty,aisle_section)
VALUES
	(1,'Pork Steaks','Pork','Local',9.99,NULL,20,'2b'),
	(2,'Bratwurst','Pork','Johnsonville',7.99,NULL,15,'2b'),
	(3,'Bacon','Pork','Oscar Meyer',9.99,NULL,12,'2b'),
	(4,'Tenderloins','Pork','Local',9.99,13,13,'2b'),
	(5,'Turkey Breast','Turkey','Oscar Meyer',9.99,NULL,20,'2b');

/*
toiletries id,
toiletries title,
toiletries type,
toiletries brand,
toiletries cost,
toiletries qty,
aisle id 4b
*/

INSERT INTO Toiletries(toiletries_id,toiletries_title,
toiletries_type,toiletries_brand,
toiletries_cost,toiletries_qty,aisle_section)
VALUES
	(1,'Toilet Paper 8 pk','Paper Gooods','Charmin',6.99,2,'4b'),
	(2,'Paper Towels 2 pk','Paper Goods','Bounty',3.99,4,'4b'),
	(3,'Toothbrush 2 pk','Dental Hygiene','Crest',4.99,5,'4b'),
	(4,'Scope Mouthwash 32oz','Dental Hygiene','Scope',8.99,8,'4b'),
	(5,'Face Tissues','Paper Goods','Kleenex',5.99,12,'4b');
