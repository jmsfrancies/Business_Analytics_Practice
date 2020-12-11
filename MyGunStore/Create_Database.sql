CREATE DATABASE 
MyGunstore
GO
USE MyGunStore
GO

CREATE TABLE Discounts (
DiscountID           INT          NOT NULL PRIMARY KEY,
DiscountCode         INT          NOT NULL,
DiscountDescription  VARCHAR(128) NOT NULL
);

CREATE TABLE Firearms(
FirearmID        INT          NOT NULL PRIMARY KEY,
FirearmBrand     varchar(50)  NOT NULL,
FirearmType      varchar(50)  NOT NULL,
ActionType       varchar(50)  NOT NULL,
Caliber          varchar(50)  NOT NULL,
FirearmPrice     money        NOT NULL,
FirearmQuantity  INT          NULL,
ModelName        VARCHAR(50), 
BarrelLength     INT, 
ChokeType        VARCHAR(50)  NULL, 
UsedOrNew        VARCHAR(50),
MagazineCapacity INT,
DiscountID       INT          NULL
CONSTRAINT Firearms_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID)
);

CREATE TABLE Accessories(
AccessoryID      INT        NOT NULL PRIMARY KEY,
TypeOfAccessory VARCHAR(50) NOT NULL,
AccessoryBrand  VARCHAR(50) NOT NULL,
AccessoryPrice  MONEY       NOT NULL,
Quantity        INT         NULL,
DiscountID      INT         NULL
CONSTRAINT Accesories_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID)
);

CREATE TABLE Knives(
KnifeID       INT         NOT NULL PRIMARY KEY,
KnifeBrand    VARCHAR(50) NOT NULL,
KnifeType     VARCHAR(50) NOT NULL,
KnifePrice    MONEY       NOT NULL,
KnifeQuantity INT         NULL,
KnifeModel    VARCHAR(50),
BladeLength   DECIMAL(5,2),
SteelType     VARCHAR(50),
Restrictions  VARCHAR(50),
DiscountID INT NULL
CONSTRAINT Knives_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID)
);

CREATE TABLE Ammo(
CaliberID      INT          NOT NULL PRIMARY KEY,
NameOfCaliber  VARCHAR(50)  NOT NULL,
BrandOfCaliber VARCHAR(50)  NOT NULL,
TypeOfBulllet  VARCHAR(50)  NOT NULL,
BulletWeight   VARCHAR(50)  NOT NULL,
FeetPerSecond  INT          NOT NULL,
FootLbs        INT          NOT NULL,
AmmoPrice      MONEY        NOT NULL,
AmmoQuantity   INT          NULL,
PerBox         INT          NULL,
DiscountID INT NULL
CONSTRAINT Ammo_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID)
);

CREATE TABLE GunCleaning(
CleaningID        INT         NOT NULL PRIMARY KEY,
CleaningBrand     VARCHAR(50) NOT NULL,
TypeOfCleaner     VARCHAR(50) NOT NULL,
PriceOfCleaner    MONEY       NOT NULL,
QuantityOfCleaner INT         NULL
);

CREATE TABLE Reloading(
ReloadingID         INT           NOT NULL PRIMARY KEY,
BrandOfReloader     VARCHAR(50)   NOT NULL,
TypeOfMaterial      VARCHAR(50)   NOT NULL,
PurposeOfMaterial   VARCHAR(50)   NOT NULL,
IntendedFirearm     VARCHAR(50)   NULL,
ToolPrice           MONEY         NOT NULL,
ToolQuantity        INT           NOT NULL,
DiscountID INT NULL
CONSTRAINT Reloading_fk_Discounts
FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID)
);

CREATE TABLE CompatibleAmmo(
CompatibiltyID      INT         NOT NULL PRIMARY KEY,
FirearmCaliber       VARCHAR(50) NOT NULL,
CompatibleCaliber1   VARCHAR(50) NOT NULL,
CompatibleCaliber2   VARCHAR(50) NULL,
ReverseCompatibility VARCHAR(50) NOT NULL
);

