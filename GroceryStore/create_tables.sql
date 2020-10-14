USE GroceryStore
GO

/* Create Table Aisles */
CREATE TABLE Aisles(
	aisle_section varchar(3) NOT NULL PRIMARY KEY,
	aisle_description varchar(128) NOT NULL,
);

/*Create The Alcohol Table*/

CREATE TABLE Alcohol(
	alcohol_id INT NOT NULL PRIMARY KEY,
	alcohol_name VARCHAR(40) NOT NULL,
	alcohol_brand VARCHAR(40) NOT NULL,
	alcohol_weight DECIMAL(5,2) NOT NULL,
	alcohol_cost MONEY NOT NULL,
	alcohol_quantity INT NOT NULL,
	alcohol_day_of_delivery DATETIME NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),

);

/*Create The Deli Table*/

CREATE TABLE Deli (
	deli_id INT NOT NULL PRIMARY KEY,
	deli_type varchar(50) NOT NULL,
	deli_brand varchar(50) NOT NULL,
	deli_cost_per_lb MONEY NULL,
	deli_day_of_delivery DATETIME NOT NULL,
	deli_sell_by_date DATETIME NOT NULL,
	deli_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

/*Create The Dairy Table*/

CREATE TABLE Dairy (
	dairy_id INT NOT NULL PRIMARY KEY,
	dairy_product_type VARCHAR(50) NOT NULL,
	dairy_weight_oz DECIMAL(5,2) NOT NULL,
	dairy_cost MONEY NOT NULL,
	dairy_qty INT NOT NULL,
	dairy_day_of_delivery DATETIME NOT NULL,
	dairy_sell_by_date DATETIME NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);


/* Frozen Food Table */
CREATE TABLE Frozen_Food (
	frozen_food_id INT NOT NULL PRIMARY KEY,
	frozen_food_title varchar(35) NOT NULL,
	frozen_food_type varchar(35) NOT NULL,
	frozen_food_brand varchar(35) NOT NULL,
	frozen_food_cost money NOT NULL,
	frozen_food_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

/* Tolietries Table */
CREATE TABLE Toiletries(
	toiletries_id INT NOT NULL PRIMARY KEY,
	toiletries_title varchar(35)NOT NULL,
	toiletries_type varchar(35) NOT NULL,
	toiletries_brand varchar(35) NOT NULL,
	toiletries_cost money NOT NULL,
	toiletries_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

/* Canned and Dried Goods Table */
CREATE TABLE Dried_Goods (
	dried_goods_id INT NOT NULL PRIMARY KEY,
	dried_goods_title varchar(35) NOT NULL,
	dried_goods_type varchar(35) NOT NULL,
	dried_goods_brand varchar(35) NOT NULL,
	dried_goods_cost money NOT NULL,
	dried_goods_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

/* Cleaning Products Table */
CREATE TABLE Cleaning_Products(
	cleaning_products_id INT NOT NULL PRIMARY KEY,
	cleaning_products_title varchar(35) NOT NULL,
	cleaning_products_type varchar(35) NOT NULL,
	cleaning_products_brand varchar(35) NOT NULL,
	cleaning_products_cost money NOT NULL,
	cleaning_products_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

/* Cooking Utensil Table */
CREATE TABLE Cooking_Utensils(
	cooking_utensil_id INT NOT NULL PRIMARY KEY,
	cooking_utensils_title varchar(35) NOT NULL,
	cooking_utensils_type varchar(35) NOT NULL,
	cooking_utensils_brand varchar(35) NOT NULL,
	cooking_utensils_cost money NOT NULL,
	cooking_utensils_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

/* Meats Table */
CREATE TABLE Meats(
	meats_id INT NOT NULL PRIMARY KEY,
	meats_title varchar(35) NOT NULL,
	meats_type varchar(35) NOT NULL,
	meat_brand varchar(35) NOT NULL,
	meat_cost_per_pound money NOT NULL,
	meat_qty DECIMAL(6,2) NULL,
	meat_pkgd_qty INT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);

CREATE TABLE Fresh_Produce(
	fresh_produce_id INT NOT NULL PRIMARY KEY,
	fresh_produce_title varchar(35) NOT NULL,
	fresh_produce_type varchar(35) NOT NULL,
	fresh_produce_brand varchar(35) NOT NULL,
	fresh_produce_cost_per_pound money NOT NULL,
	fresh_produce_qty INT NOT NULL,
	aisle_section VARCHAR(3) FOREIGN KEY REFERENCES Aisles(aisle_section),
);