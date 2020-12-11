USE MyGunStore
GO

INSERT /*ADD Model Name, Barrel Length, Choke Type, Used or New, and Magazine Capacity*/
INTO Firearms(
FirearmID, FirearmType, 
FirearmBrand, ActionType, 
Caliber, FirearmPrice, 
FirearmQuantity,ModelName,
BarrelLength,ChokeType,
UsedOrNew,MagazineCapacity)
VALUES
('1','Rifle','Marlin','Lever Action','.30-30 win','429.99','3','Model 336','18',NULL,'New','6'),
('2','Rifle','Remington','Bolt Action','.30-06','319.00','2','Model 700','22',NULL,'New','5'),
('3','Revolver','Uberti','Single Action','.44 Special','700.00','2','Cattleman','7',NULL,'New','6'),
('4','Revolver','S&W','Double  Action','.44 Magnum','1200.00','2','M29','6',NULL,'New','6'),
('5','Handgun','S&W','Semi Automatic','9mm','435.00','4','M&P 9mm','4',NULL,'New','17'),
('6','Handgun','Glock','Semi Automatic','10mm','700.00','4','G40','4',NULL,'New','6'),
('7','Revolver','Ruger','Double Action','.357 Magnum','815.00','3','GP100','6',NULL,'New','6'),
('8','Revolver','S&W','Double Action','.38 Special','225.00','9','Model 10','4',NULL,'Used','6'),
('9','Hangdun','S&W','Semi Automatic','.380  ACP','425.19','2','M&P EZ','3',NULL,'New','8'),
('10','Handgun','Kimber','Semi Automatic','.45 ACP','837.00','4','1911','4',NULL,'New','7'),
('11','Handgun','Glock','Semi Automatic','.40 S&W','475.00','6','G23','4',NULL,'New','15'),
('12','Handgun','Ruger','Semi Automatic','.22 lr','327.99','12','SR22','4',NULL,'New','12'),
('13','Revolver','Heritage Arms','Single Action','.22 Magnum','239.99','5','Peace Maker','6',NULL,'Used','6'),
('14','Rifle','Ruger','Semi Automatic','5.56x45mm','600.00','8','AR556','16',NULL,'Used','30'),
('15','Shotgun','Remington','Pump Action','12 gauge','320.00','15','870','28','Modified Choke','New','4'),
('16','Shotgun','Savage Arms','Pump Action','20 gauge','239.00','2','Stevens','20','Cylinder Choke','Used','5'),
('17','Shotgun','Chiappa','Lever Action','12 gauge','1100.00','1','1895','18','Cylinder Choke','Used','4'),
('18','Handgun','Glock','Semi Automatic','.357 SIG','500.00','4','G33','4',NULL,'New','15'),
('19','Revolver','S&W','Double Action','.500 S&W Magnum','1200.00','1','S&W 500','8',NULL,'Used','5'),
('20','Handgun','Magnum Research','Semi Automatic','.50 AE','1500.00','1','Desert Eagle','7',NULL,'Used','8'),
('21','Revolver','Taurus','Double Action','.454 Casull','949.99','1','Raging Bull 454','7',NULL,'Used','5'),
('22','Revolver','S&W','Double Action','.460 S&W','1349.00','1','460 XVR','8',NULL,'Used','5'),
('23','Revolver','Ruger','Double Action','.480 Ruger','900.00','1','Ruger Super Redhawk','8',NULL,'Used','6'),
('24','Handgun','FN Herstal','Semi Automatic','5.7x28mm','1200.00','2','Five Seven','5',NULL,'New','20'),
('25','Rifle','Arsenal','Semi Automatic','7.62x39mm','1000.99','3','AK47','16',NULL,'New','30'),
('26','Rifle','Surplus','Semi Automatic','7.62x51mm','789.00','3','Dragunov','30',NULL,'Used','10'),
('27','Rifle','Savage Arms','Bolt Action','7mm Remington Mag','407.00','3','AXIS XP','22',NULL,'Used','5'),
('28','Rifle','Savage Arms','Bolt Action','.300 WSM','900.00','2','Model 110','23',NULL,'Used','4'),
('29','Revolver','S&W','Double Action','.38 Special+P','429.99','1','Model 642','2',NULL,'New','5'),
('30','Handgun','Colt','Semmi Automatic','.38 Super','1100.00','2','1911','5',NULL,'New','7'),
('31','Rifle','Savage Arms','Bolt Action','.338 Federal','900.00','2','Model 110','23',NULL,'Used','3'),
('32','Rifle','Barret','Semi Automatic','50  BMG','9000.00','1','M82A1','29',NULL,'New','10'),
('33','Rifle','Henry Repeating Arms','Lever Action','.22 lr','319.00','2','Classic','18',NULL,'New','15'),
('34','Rifle','Henry Repeating Arms','Lever Action','.22 Magnum','379.00','2','.22  Magnum','19',NULL,'Used','11'),
('35','Rifle','Ruger','Semi Automatic','9mm','600.00','2','PC Carbine','16',NULL,'New','17'),
('36','Revolver','Ruger','Double Action','.44 Magnum','890.00','2','Redhawk','8',NULL,'New','6'),
('37','Shotgun','Mossberg','Pump Action','12 gauge','600.00','3','590','24','Cylinder Choke','Used','8'),
('38','Shotgun','Winchester','Semi Automatic','12 gauge','900.00','2','SX3','28','Full Choke','New','10'),
('39','Shotgun','CZ USA','Side By Side','16 gauge','1000.00','1','Sharp-Tail','28','Modified Choke','New','2'),
('40','Shotgun','CZ USA','Side By Side','28 gauge','1200.00','1','Sharp-Tail','28','Full Choke','New','2'),
('41','Rifle','Savage Arms','Bolt Action','.308 Winchester','629.99','3','Model 110','22',NULL,'New','4'),
('42','Shotgun','Browning','Over/Under','12 gauge','2139.00','1','Citori','30','Full Choke','New','2'),
('43','Black Powder','Pietta','Single Action','.36 Caliber', '200.00','1','1851 Confederate Navy','7',NULL,'New','5'),
('44','Black Powder','Pedersoli','Percussion Cap','.58 Calliber','900.00','1','Springfield 1861','40',NULL,'New','1'),
('45','Black Powder','Unknown','Flintllock','.54 Caliber','1900.00','1','Kentucky Long Rifle','42',NULL,'Used','1');


INSERT 
INTO Accessories(AccessoryID, TypeOfAccessory, AccessoryBrand, AccessoryPrice, Quantity)
VALUES
('1','1911 Leather Holster','Savoy','99.99','2'),
('2','AR15 Green Laser','Ozark Armament','49.99','3'),
('3','2 Handgun Carrying Case','Glock','29.99','3'),
('4','30 Cal Ammo Can','Military Surplus','8.00','15'),
('5','XL Lock Box','SnapSafe','$25.00','10'),
('6','Trunk Safe','SnapSafe','$350.00','2'),
('7','Super Titan 24+ Gun Safe','SnapSafe','1648.00','1'),
('8','Trigger Lock','Master Lock','9.00','30'),
('9','870 Rifled Slug Barrel','Remington Arms','220.00','2'),
('10','3x9x40 Scope','Nikon','120.00','3'),
('11','Leather Shoulder Holster','Galco','190.00','1'),
('12','Belt Holster','Tac Slide','$49.00','8'),
('13','Appendix Holster','Galco','62.00','10'),
('14','9mm Suppressor','SilencerCo','800.00','1'),
('15','H&K 9mm Threaded Barrel','Heckler&Koch','250.00','1'),
('16','LED Flashlight','Maglite','39.99','8'),
('17','LED Flashlight','Klarus','100.00','6'),
('18','1911 Novak Adjustable Sights','Novak','119.95','5'),
('19','Shotgun Sling','Butler Creek','25.00','5'),
('20','Large Frame Revolver Holster','Crossfire','50.00','6'),
('21','Rifle Sling','Butler Creek','25.00','3'),
('22','2 Long Gun Carrying Case','Drago','100.00','5'),
('23','Medium Frame Revolver Holster','Crossfire','40.00','3'),
('24','Full size Pistol Holster','We The People Holsters','50.00','3'),
('25','Small Frame Revolver Holster','GunMate','16.99','2'),
('26','AR15 40 Round Magazine','Magpul','20.00','15'),
('27','AK47 75 Round Magazine','KCI','59.99','3'),
('28','AR15 Red Laser','Streamlight','266.00','1'),
('29','.44 Speedloader','Maxfire','16.00','5'),
('30','870 2 shell tube magazine extender','Adaptive Tactical','65.00','8'),
('31','12 gauge 56 Shell Bandolier','AIM Sports','25.00','5'),
('32','.30-30 win 65 round Bandolier','WM','20.00','3'),
('33','1911 .45 ACP 8 Round Magazine','Kimber','26.00','15'),
('34','870 12 gauge Choke Tube Package','Remington','45.00','5'),
('36','870 20 gauge Modified Choke','Remington','48.00','2'),
('37','The Trickster Pocket Holster','DeSantis Holster','30.00','4'),
('38','.357/.38 Special Speedloader','Speed Beez','40.00','3'),
('39','Leather Ankle Holster','DeSantis Holster','90.00','6');


INSERT 
INTO Knives(KnifeID, KnifeBrand, KnifeType, KnifePrice, KnifeQuantity,KnifeModel,BladeLength,SteelType,Restrictions)
VALUES
('1','Case Cutlery','Folder','45.00','8','Trapper','3.25','154 CM','N/A'),
('2','Cold Steel','Folder','100.00','1','Voyager XL','5.50','AUS 8A','N/A'),
('3','Cold Steel','Fixed Blade','300.00','2','Natchez Bowie','12.25','O1 Tool Steel','N/A'),
('4','Spyderco','Folder','334.95','3','Karahawk','2.36','VG-10','N/A'),
('5','Benchmade','OTF','480.00','1','Infidel','3.91','D2','LEO Only'),
('6','Spyderco','Folder','176.95','1','Endura 4','3.75','VG-10','N/A'),
('7','Randall Knives','Fixed Blade','500.00','1','Model 16 Diver Knife','8.00','Stainless Steel','N/A'),
('8','Ontario Knife Company','Fixed Blade','90.00','2','Marine Raider','9.75','1095','N/A');


INSERT 
INTO Ammo(CaliberID,NameOfCaliber,BrandOfCaliber,TypeOfBulllet,BulletWeight,FeetPerSecond,FootLbs,AmmoPrice,AmmoQuantity,PerBox)
VALUES
('1','.30-30 win','Remington','Core-Lokt Soft Point','150','2390','1902','18.00','20','20'),
('2','.44 Magnum','Federal Ammunition','JHP','240','1300','881','42.90','5','50'),
('3','.44 Special','Remington','Wad Cutter','210','1200','615','35.95','8','50'),
('4','.454 Casull','Federal Ammunition','Barn-Exp','250','1530','1299','41.99','5','20'),
('5','.460 S&W','Winchester','JHP','250','2250','2249','50.00','2','20'),
('6','.45 Long Colt','Blazer','JHP','200','1000','444','30.00','8','50'),
('7','.357 Magnum','Hornady','JHP','140','1350','566','29.30','9','20'),
('8','.38 Special','Winchester','JSP','125','775','167','23.00','15','50'),
('9','10 mm','Sig Sauer','JHP','180','1250','624','21.00','8','20'),
('10','40 S&W','Sig Sauer','JHP','165','1090','435','18.00','5','20'),
('11','.308 Win','Winchester','Power Core','150','2820','2648','31.00','4','20'),
('12','7.62x51','Military Surplus','FMJ','150','2631','2400','379.99','2','1000');

INSERT 
INTO GunCleaning(CleaningID,CleaningBrand,TypeOfCleaner,PriceOfCleaner,QuantityOfCleaner)
VALUES
('1','Remington Oil 1oz','Gun Lubricant','5.00','50'),
('2','Bore Snake 12 Gauge','Barrel Brush','15.00','12'),
('3','Gun Cleaning Patch 500pk','Cleaning Patch','12.00','15'),
('4','Bore Snake .44 Caliber','Barrel Brush','12.00','4'),
('7','Bore Snake .22 Caliber','Barrel Brush','12.00','7'),
('9','Bore Snake .357 Caliber','Barrel Brush','12.00','8');


INSERT 
INTO Reloading(ReloadingID,BrandOfReloader,TypeOfMaterial,PurposeOfMaterial,IntendedFirearm,ToolPrice,ToolQuantity)
VALUES
('1','Hornady','Loader','Metal Press','Cartridge Firearms','$300.00','1'),
('2','Hornady','Powder Measure','Measurer','Cartridge Firearms','$200.00','1'),
('3','Traditions','Powder Horn','Measurer','Black Powder','$30.00','3'),
('4','Traditions','Bullet Starter','Ramrod','Black Powder','$15.00','2'),
('5','Hodgdon','Gun Powder','FFG','Black Powder','$35.00','3'),
('6','Hodgdon','Gun Powder','FFFG','Black Powder','$28.00','5');

INSERT 
INTO CompatibleAmmo(CompatibiltyID,FirearmCaliber,CompatibleCaliber1,CompatibleCaliber2,ReverseCompatibility)
VALUES
('1','.44 Magnum','.44 Special',NULL,'NO'),
('2','.454 Casull','.45 Long Colt',NULL,'NO'),
('3','.460 S&W','.454 Casull','.45 Long Colt','NO'),
('4','.357 Magnum','.38 Special',NULL,'NO'),
('5','10 mm','.40 S&W',NULL,'NO'),
('6','.308 Win','7.62x51mm',NULL,'YES');

INSERT 
INTO Discounts(DiscountID,DiscountCode,DiscountDescription)
VALUES
('1','0070','10% Discount On All Rifles'),
('2','0072','5% Discount On All Handguns'),
('3','0192','8% Discount On All BlackPowder Firearms and BlackPowder Firearm Accessories'),
('4','0583','11% Discount On All Shotguns and Chokes'),
('5','0442','15% Discount On All Knives'),
('6','0461','Buy 3 Boxes Get 1 Box 50% off on Ammo'),
('7','1111','Buy Bulk of 500 or 1000 rounds'),
('8','0921','20% Discount on All Holsters and Gun Carrying Bag'),
('9','1234','%25 Discount For LEO Restricted items'); 
