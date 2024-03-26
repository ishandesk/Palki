-- Create the 'palika_bazar' database


-- Switch to the 'palika_bazar' database
USE palki2;

-- Create the 'visitor' table
CREATE TABLE  visitor (
    visitor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    gender VARCHAR(10),
    mobile_number VARCHAR(15),
    field_of_interest VARCHAR(255)
);

-- Create the 'shops' table
CREATE TABLE  shops (
    shop_number int(10) PRIMARY KEY,
    shop_name VARCHAR(255) ,
    shop_type VARCHAR(255),
    shop_address VARCHAR(255),
    shop_contact_number int(20)
);
ALTER TABLE shops MODIFY COLUMN shop_contact_number BIGINT;

-- Create the 'accessibility' table with a foreign key to 'shops'
CREATE TABLE accessibility (
    
    shop_number INT,
    near_entry_gate VARCHAR(255),
    near_metro_gate VARCHAR(255)

);

-- Create the 'variety_clothes' table with a foreign key to 'shops'
CREATE TABLE  variety (
  
    shop_number INT,
    style VARCHAR(255),
    target_gender VARCHAR(10),
    availability VARCHAR(255)
   
);

CREATE TABLE staff (
    EmployeeID VARCHAR(3) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    ShopNumber INT,
    AadharNumber VARCHAR(15),
    Age INT,
    BaseSalary DECIMAL(10, 2)
);
-- Insert data into the 'visitor' table
INSERT INTO visitor (name, gender, mobile_number, field_of_interest) VALUES
    ('himanshu joshi ', 'Male', '1234567890', 'Electronics'),
    ('ishita', 'Female', '9876543210', 'Fashion and cloths'),
    ('dhruv ', 'Male', '5551237777', 'Books'),
    ('girika ', 'Female', '1112223333', 'Fashion and cloths'),
    ('bhuvi', 'Female', '4445556666', 'Electronics'),
    ('bhumika', 'Female', '7778889999', 'art and decoration'),
    ('krish ', 'Male', '1239876543', 'Electronics'),
    ('ria', 'Female', '5554443333', 'Fashion and cloths'),
    ('ayush arya', 'Male', '9876543210', 'art and decoration'),
    ('gracy', 'Female', '1112223333', 'Fashion'),
    ('dhruv khasa', 'Male', '4445556666', 'Electronics'),
    ('iima ', 'Female', '7778889999', 'Books'),
    ('kunal', 'Male', '1239876543', 'Electronics '),
    ('Ella Davis', 'Female', '5554443333', 'Fashion and cloths'),
    ('James Brown', 'Male', '9876543210', 'Books'),
    ('Emma Harris', 'Female', '1112223333', 'Fashion and cloths '),
    ('Logan Miller', 'Male', '4445556666', 'art and decoration'),
    ('Aria White', 'Female', '7778889999', 'Books and study material'),
    ('Ethan Lee', 'Male', '1239876543', 'Electronics');

-- Insert data into the 'shops' table
INSERT INTO shops (shop_number, shop_name, shop_type, shop_address, shop_contact_number) VALUES
    (1, 'ULTRA TATTOOs ', 'tattoos and designing', 'shop no.1 palika bazar cp delhi', 9558889996),
    (2, 'electronic palace ', 'electronic','shop no.2 palika bazar cp delhi', 9772221111),
    (3, 'mahalaxami botique ', 'Clothing and fashion ', 'shop no.3 palika bazar cp delhi', 9449996666),
    (4, 'fantasy store ', 'Clothing and fashion ', 'shop no.4 palika bazar cp delhi', 9223334444),
    (5, 'rhythmis', 'Clothing and fashion', 'shop no.5 palika bazar cp delhi', 9998887777),
    (6, 'new music balance', 'electronics','shop no.6 palika bazar cp delhi', 9334445555),
    (7, 'alpha ', 'tattoos and desinging ', 'shop no.7 palika bazar cp delhi', 9776665555),
    (8, 'shaw brother ', 'Clothing and fashion', 'shop no.8 palika bazar cp delhi', 9889990000),
    (9, 'POINEER ', 'tattoos and designing', 'shop no.9 palika bazar cp delhi', 9112223333),
    (10, 'shielma', 'Art and Decoration', 'shop no.10 palika bazar cp delhi', 9445556666),
    (11, 'Gaming Galaxy', 'sports', 'shop no.11 palika bazar cp delhi', 9778889999),
   (12, 'ISHAAN Paradise', 'Clothing and fashion', 'shop no.12 palika bazar cp delhi', 9887776666),
(13, 'JEWEL STORE', 'Jewellery', 'shop no.13 palika bazar cp delhi', 9556667777),
(14, 'STAR ELECTRONICS', 'Electronic', 'shop no.14 palika bazar cp delhi', 9998887777),
(15, 'Home Garden', 'Art and Decoration', 'shop no.15 palika bazar cp delhi', 9887776666),
(16, 'ZAMIN SHOOT STORE', 'Electronic', 'shop no.16 palika bazar cp delhi', 9332221111),
(17, 'ALBELA ART', 'tattoos and designing', 'shop no.17 palika bazar cp delhi', 9776665555),
(18, 'SHINE STAR', 'Electronics', 'shop no.18 palika bazar cp delhi', 9223334444),
(19, 'KAP', 'Books', 'shop no.19 palika bazar cp delhi', 9334445555),
(20, 'LAL BHARI TONDON', 'Clothing and fashion', 'shop no.20 palika bazar cp delhi', 9445556666),
(21, 'NAVNOOR CORNER', 'Clothing and fashion', 'shop no.21 palika bazar cp delhi', 9112223333),
(22, 'ROYAL PALCE', 'Electronics', 'shop no.22 palika bazar cp delhi', 9445556666),
(23, 'KHANNA department store', 'Clothing and fashion', 'shop no23. palika bazar cp delhi', 9778889999),
(24, 'KHALSA BUTT STORE', 'Art and  Decoration', 'shop no.24 palika bazar cp delhi', 9887776666),
(25, 'AUDIO VIDEO CENTRE', 'Electronic', 'Shop no.25 palika bazar cp delhi', 9556667777),
(26, 'KING LAMP SHADE', 'Art and Decoration', 'Shop no.26 palika bazar cp delhi', 9998887777),
(27, 'SANCHITA', 'Clothing and fashion', 'Shop no.27 palika bazar cp delhi', 9332221111),
(28, 'ELCTRONIC AVENUE', 'Accessories and Perfums', 'Shop no.28 palika bazar cp delhi', 9776665555),
(29, 'LAXUMI GARMENTS', 'Clothing and fashion', 'Shop no.29 palika bazar cp delhi', 9223334444),
(30, 'RAJIV BOOK HOUSE', 'Clothing and fashion', 'Shop no.30 palika bazar cp delhi', 9334445555),
(31, 'ART PALACE', 'Art and Decoration', 'Shop no.31 palika bazar cp delhi', 9445556666),
(32, 'KING', 'Accessories and Perfums', 'Shop no.32 palika bazar cp delhi', 9887776666),
(33, 'GEM PALACE', 'Fashion', 'Shop no.33 palika bazar cp delhi', 9332221111),
(34, 'Elegant Ensemble', 'Fashion', 'Shop no.34 palika bazar cp delhi', 9776665555),
(35, 'THE PYRAMIDS', 'Clothing and fashion', 'Shop no.35 palika bazar cp delhi', 9223334444),
(36, 'RHYTHMS', 'Clothing and fashion', 'Shop no.36 palika bazar cp delhi', 9556667777),
(37, 'THE EXOTIC APPAREL', 'Electronics', 'Shop no.37 palika bazar cp delhi', 9998887777),
(38, 'NOT AVAILABLE', NULL, 'Shop no.38 palika bazar cp delhi', 3332221111),
(39, 'GOD BLESSING', 'Clothing and fashion', 'Shop no.39 palika bazar cp delhi', 7776665555),
(40, 'GENASH MINIMUM', 'Clothing and fashion', 'Shop no.40 palika bazar cp delhi', 8887776666),
(41, 'A ONE CREATIONS', 'Clothing and fashion', 'palika bazar cp delhi', 3332221111),
(42, 'MOHIT INTERVISON', 'Clothing and fashion', 'palika bazar cp delhi', 7776665555),
(43, 'FIX PRICE STORE', 'Clothing and fashion', 'palika bazar cp delhi', 2223334444),
(44, 'D. K. FASHION', 'Clothing and fashion', 'palika bazar cp delhi', 7778889999),
(45, 'SARGAM FASHION', 'Clothing and fashion', 'palika bazar cp delhi', 8887776666),
(46, 'TRUE COLOURS', 'Electronics', 'palika bazar cp delhi', 5556667777),
(47, 'SARGUM FASHIONS', 'Clothing and fashion', 'palika bazar cp delhi', 9998887777),
(48, 'MUSKESH FASHION', 'Clothing and fashion', 'palika bazar cp delhi', 3332221111),
(49, 'SMT PRIYA CHAUDHARY', 'Clothing and fashion', 'palika bazar cp delhi', 7776665555),
(50, 'S. K. ENTERPRISE', 'Clothing and fashion', 'palika bazar cp delhi', 8887776666),
(51, 'RAICHALA COLLECTION', 'Clothing and fashion', 'palika bazar cp delhi', 3332221111),
(52, 'AANCHAL FASHION', 'Clothing and fashion', 'palika bazar cp delhi', 7776665555),
(53, NULL, NULL, 'palika bazar cp delhi', 2223334444),
(54, 'FIFTY FOUR', 'Clothing and fashion', '7palika bazar cp delhi', 7778889999),
(55, 'GULATI STORE', 'Clothing and fashion', 'palika bazar cp delhi', 8887776666),
(56, 'TREHAN STORE', 'Clothing and fashion', 'palika bazar cp delhi', 5556667777),
(57, 'IDEAL SALE', 'Clothing and fashion', 'palika bazar cp delhi', 3332221111),
(58, NULL, NULL, 'palika bazar cp delhi', 7776665555),
(59, 'M S FOOTWEAR', 'Footwears', 'palika bazar cp delhi', 2223334444),
(60, 'SILVER MOON', 'Jewelry', 'palika bazar cp delhi', 7778889999),
(61, 'MAHARAJSON SAREEE STORE', 'Clothing and fashion', 'palika bazar cp delhi', 8887776666),
(62, 'JEANS STORE', 'Clothing and fashion', 'palika bazar cp delhi', 5556667777),
(63, 'KAMAL SAREES', 'Footwears', 'palika bazar cp delhi', 3332221111),
(64, NULL, NULL, 'palika bazar cp delhi', 7776665555),
(65, 'M.A.AZIZ', 'Clothing and fashion', 'palika bazar cp delhi', 8887776666),
(66, 'KARDIRSONS', 'Electronics', 'shop no.66 palika bazar cp delhi', 9334445555),
(67, 'YOGGEETA GARMENTS', 'Tattoos and Designing', 'shop no.67 palika bazar cp delhi', 9776665555),
(68, NULL, NULL, 'shop no.68 palika bazar cp delhi', 9889990000),
(69, 'STUFF', 'tattoos and designing', 'shop no.69 palika bazar cp delhi', 9112223333),
(70, 'GARDEN SHOP', 'Footwears', 'shop no.60 palika bazar cp delhi', 9445556666),
(71, 'DINESH MILLS RETAILS STORE', 'Sports', 'shop no.71 palika bazar cp delhi', 9778889999),
(72, 'WOMENS ERA', 'Clothing and fashion', 'shop no.72 palika bazar cp delhi', 9887776666),
(73, 'MS BHAGAT', 'Clothing and fashion', 'shop no.73 palika bazar cp delhi', 9556667777),
(74, NULL, NULL, 'shop no.74 palika bazar cp delhi', 9998887777),
(75, 'BHARAT TEXTILE', 'Clothing and fashion', 'shop no.75 palika bazar cp delhi', 9887776666),
(76, 'JOGINDER LAL KHANNA & CO.', 'Clothing and fashion', 'shop no.76 palika bazar cp delhi', 9332221111),
(77, 'SEVENTY SEVEN', 'Clothing and fashion', 'shop no.77 palika bazar cp delhi', 9776665555),
(78, 'CURES', 'Electronics', 'shop no.78 palika bazar cp delhi', 9223334444),
(79, NULL, NULL, 'shop no.79 palika bazar cp delhi', 9334445555),
(80, 'RAZ SONS', 'Clothing and fashion', 'shop no.80 palika bazar cp delhi', 9445556666),
(81, 'NOOR CORNER', 'Clothing and fashion', 'palika bazar cp delhi', 9112223333),
(82, 'RAHUL ENTERPRISES', 'Electronics', 'palika bazar cp delhi', 9445556666),
(83, 'VINOD GARMENTS', 'Clothing and fashion', 'palika bazar cp delhi', 9778889999),
(84, NULL, NULL, 'palika bazar cp delhi', 9887776666),
(85, 'ESSENTIAL GARMENTS', 'Electronic', 'palika bazar cp delhi', 9556667777),
(86, 'LADY CORNER', 'Clothing and fashion', 'palika bazar cp delhi', 9998887777),
(87, 'TOP SHOP', 'Clothing and fashion', 'palika bazar cp delhi', 9332221111),
(88, 'THE ADAM N EVE', 'Accessories and Perfums', 'palika bazar cp delhi', 9776665555),
(89, 'TANU EMPORIUM', 'Clothing and fashion', 'palika bazar cp delhi', 9223334444),
(90, 'RAZ SELECTION', 'Clothing and fashion', 'palika bazar cp delhi', 9334445555);
-- Insert data into the 'accessibility' table
INSERT INTO accessibility (shop_number, near_entry_gate, near_metro_gate) VALUES
    (1, 'Gate 1 ', ' gate 5 Rajiv Chowk metro station '),
    (2, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (3, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (4, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (5, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (6, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (7, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (8, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (9, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (10, 'Gate 5', 'gate 5  Rajiv Chowk'),
    (11, 'Gate 5', 'gate 5  Rajiv Chowk'),
    (12, 'Gate 5', 'gate 5 Rajiv Chowk'),
    (13, 'Gate 5', 'gate 6 Rajiv Chowk'),
    (14, 'Gate 5', 'gate 6 Rajiv Chowk'),
    (15, 'Gate 5', 'gate 6 Rajiv Chowk '),
    (16, 'Gate 5', 'gate 6 Rajiv Chowk'),
    (17, 'Gate 5', 'gate 6 Rajiv Chowk'),
    (18, 'Gate 5', 'gate 6  Rajiv Chowk'),
    (19, 'Gate 4', 'gate 2 Rajiv Chowk'),
    (20, 'Gate 4', 'gate 2 Rajiv Chowk'),
	(21, 'Gate 4 ', 'gate 2  gate 6Rajiv Chowk metro station '),
    (22, 'Gate 4', 'gate 2 Rajiv Chowk'),
    (23, 'Gate 4', 'gate 2  Rajiv Chowk'),
    (24, 'Gate 4', 'gate 2  Rajiv Chowk'),
    (25, 'Gate 4', 'gate 2  Rajiv Chowk'),
    (26, 'Gate 4', ' gate 2 Rajiv Chowk'),
    (27, 'Gate 1', ' gate 5 Rajiv Chowk'),
    (28, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (29, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (30, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (31, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (32, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (33, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (34, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (35, 'Gate 1', 'gate 5 Rajiv Chowk '),
    (36, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (37, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (38, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (39, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (40, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (41, 'Gate 1', 'gate 5 Rajiv Chowk'),
    (42, 'Gate 3', 'Rajiv Chowk'),
    (43, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (44, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (45, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (46, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (47, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (48, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (49, 'Gate 3', 'gate 2 Rajiv Chowk'),
    (50, 'Gate 3', 'gate 2 Rajiv Chowk'),
	(51, 'Gate 3 ', ' gate 6 Rajiv Chowk metro station '),
    (52, 'Gate 1', 'gate 6 Rajiv Chowk'),
    (53, 'Gate 3', 'gate 6 Rajiv Chowk'),
    (54, 'Gate 4', 'gate 6 Rajiv Chowk'),
    (55, 'Gate 4', 'gate 6 Rajiv Chowk'),
    (56, 'Gate 4', 'gate 6 Rajiv Chowk'),
    (57, 'Gate 4', 'gate 6 Rajiv Chowk'),
    (58, 'Gate 4', 'gate 6 Rajiv Chowk'),
    (59, 'Gate 4', 'gate 6 Rajiv Chowk'),
    (60, 'Gate 4', 'Rajiv Chowk'),
    (61, 'Gate 5', 'Rajiv Chowk'),
    (62, 'Gate 5', 'Rajiv Chowk'),
    (63, 'Gate 5', 'Rajiv Chowk'),
    (64, 'Gate 5', 'Rajiv Chowk'),
    (65, 'Gate 5', 'Rajiv Chowk '),
    (66, 'Gate 5', 'Rajiv Chowk'),
    (67, 'Gate 5', 'Rajiv Chowk'),
    (68, 'Gate 5', 'Rajiv Chowk'),
    (69, 'Gate 6', 'Rajiv Chowk'),
    (70, 'Gate 6', 'Rajiv Chowk'),
	(71, 'Gate 6 ', ' gate 1 Rajiv Chowk metro station '),
    (72, 'Gate 6', ' gate 1 Rajiv Chowk'),
    (73, 'Gate 6', ' gate 1 Rajiv Chowk'),
    (74, 'Gate 6', ' gate 1 Rajiv Chowk'),
    (75, 'Gate 6', ' gate 1 Rajiv Chowk'),
    (76, 'Gate 6', ' gate 1 Rajiv Chowk'),
    (77, 'Gate 1', 'Rajiv Chowk'),
    (78, 'Gate 1', 'Rajiv Chowk'),
    (79, 'Gate 1', 'Rajiv Chowk'),
    (80, 'Gate 1', 'Rajiv Chowk'),
    (81, 'Gate 1', 'Rajiv Chowk'),
    (82, 'Gate 1', 'Rajiv Chowk'),
    (83, 'Gate 1', 'Rajiv Chowk'),
    (84, 'Gate 1', 'Rajiv Chowk'),
    (85, 'Gate 1', 'Rajiv Chowk '),
    (86, 'Gate 1', 'Rajiv Chowk'),
    (87, 'Gate 1', 'Rajiv Chowk'),
    (88, 'Gate 1', 'Rajiv Chowk'),
    (89, 'Gate 1', 'Rajiv Chowk'),
    (90, 'Gate 1', 'Rajiv Chowk'),
	(91, 'Gate 1 ', 'gate 6 Rajiv Chowk metro station '),
    (92, 'Gate 6', 'Rajiv Chowk'),
    (93, 'Gate 6', 'Rajiv Chowk'),
    (94, 'Gate 6', 'Rajiv Chowk'),
    (95, 'Gate 6', 'Rajiv Chowk'),
    (96, 'Gate 6', 'Rajiv Chowk'),
    (97, 'Gate 6', 'Rajiv Chowk'),
    (98, 'Gate 6', 'Rajiv Chowk'),
    (99, 'Gate 6', 'Rajiv Chowk'),
    (100, 'Gate 6', 'Rajiv Chowk');
    
-- Insert data into the 'variety_clothes' table
INSERT INTO variety (shop_number, style, target_gender, availability) VALUES
    (1, 'tattoos  ', 'unisex', 'available'),
    (2, 'mobiles and tech ', 'male', 'In Stock'),
    (3, 'western style  ', 'male', 'Limited Stock'),
    (4, 'Tech Gadgets', 'me', 'In Stock'),
    (5, 'Athletic Wear', 'Unisex', 'Limited Stock'),
    (6, 'camera and gargets', 'Unisex', 'In Stock'),
    (7, 'tattoos', 'Unisex', 'In Stock'),
    (8, 'traditional clothing', 'female', 'In Stock'),
    (9, 'tattoos', 'Unisex', 'available'),
    (10, 'western style', 'male', 'In Stock'),
    (11, 'Gaming Merchandise', 'Unisex', 'In Stock'),
    (12, 'western style', 'male', 'In Stock'),
    (13, 'jewellery', 'female', 'Limited Stock'),
    (14, 'tech gadgets ', 'Unisex', 'In Stock'),
    (15, 'mobiles and tech ', 'Unisex', 'In Stock'),
    (16, '', 'Unisex', 'Limited Stock'),
    (17, 'Tech Accessories', 'Unisex', 'In Stock'),
    (18, 'Literary Attire', 'Unisex', 'In Stock'),
    (19, 'Fashion Accessories', 'Unisex', 'Limited Stock'),
    (20, 'Garden Fashion', 'Unisex', 'In Stock'),
    (21, 'western style ', 'male', 'Limited Stock'),
    (22, 'electronics', 'Unisex', 'In Stock'),
    (23, 'formals ', 'male', 'In Stock'),
    (24, 'lights ', 'Unisex', 'Limited Stock'),
    (25, 'mobiles and tech', 'Unisex', 'In Stock'),
    (26, ' lighting decoration  ', 'Unisex', 'In Stock'),
    (27, 'western style ', 'mele', 'Limited Stock'),
    (28, 'fashion accessories ', 'female', 'In Stock'),
    (29, 'western casual style ', 'male', 'In Stock'),
    (30, 'western casual style ', 'male', 'Limited Stock'),
    (31, 'artistic decoration ', 'Unisex', 'In Stock'),
    (32, 'watch and tech ', 'Unisex', 'In Stock'),
    (33, 'watch and tech', 'Unisex', 'Limited Stock'),
    (34, 'null', 'Unisex', 'In Stock'),
    (35, 'western casual style', 'Unisex', 'In Stock'),
    (36, 'western casual style   ', 'male ', 'In Stock'),
    (37, 'western casual style ', 'Unisex', 'Limited Stock'),
    (38, 'null ', 'Unisex', 'In Stock'),
    (39, 'western casual style', 'male ', 'In Stock'),
    (40, 'western casual style', 'male', 'Limited Stock'),
    (41, 'western casual style', 'Unisex', 'In Stock'),
    (42, 'winter fits ', 'Unisex', 'In Stock'),
    (43, 'western casual style', 'male ', 'Limited Stock'),
    (44, 'western casual style', 'male', 'In Stock'),
    (45, 'western casual style', 'male', 'In Stock'),
	(46, 'western casual style', 'male', 'In Stock'),
    (47, 'western casual style', 'male ', 'Limited Stock'),
    (48, 'western casual style', 'male', 'In Stock'),
    (49, 'western casual style', 'male', 'In Stock'),
    (50, 'western casual style', 'male', 'Limited Stock'),
    (51, 'western casual style', 'male', 'In Stock'),
    (52, 'kids clothing', 'Unisex', 'In Stock'),
    (53, 'null', 'Unisex', 'Limited Stock'),
    (54, 'western casual style', 'male', 'In Stock'),
    (55, 'western casual style', 'male', 'In Stock'),
    (56, 'western casual style', 'Unisex', 'Limited Stock'),
    (57, 'western casual style', 'male', 'In Stock'),
    (58, 'null', 'Unisex', 'In Stock'),
    (59, 'footwears', 'Unisex', 'Limited Stock'),
    (60, 'jewellery ', 'fashion ', 'In Stock'),
    (61, 'traditional clothings ', 'female', 'Limited Stock'),
    (62, 'western casual style', 'Unisex', 'In Stock'),
    (63, 'foootwears ', 'Unisex', 'In Stock'),
    (64, 'null ', 'Unisex', 'Limited Stock'),
    (65, 'traditional clothing ', 'female', 'In Stock'),
    (67, 'traditional clothing ', 'female', 'In Stock'),
    (67, 'western casual style ', 'female', 'In Stock'),
        (68, 'null ', 'unisex', 'In Stock'),
       (69, ' western casual style ', 'unisex', 'In Stock'),
        (70, 'footwears', 'unisex', 'In Stock'),
         (71, 'western casual style', 'female', 'In Stock'),
(72, 'bra and undergarments', 'female', 'In Stock'),
(73, 'western casual style', 'female', 'In Stock'),
(74, 'null', 'male', 'In Stock'),
(75, 'western casual style', 'female', 'In Stock'),
(76, 'western casual style', 'female', 'In Stock'),
(77, 'kids clothing ', 'unisex', 'In Stock'),
(78, 'western casual style', 'female', 'In Stock'),
(79, 'null', 'female', 'In Stock'),
(80, 'western casual style', 'female', 'In Stock'),
(81, 'western casual style', 'male', 'In Stock'),
(82, 'mobiles and tech', 'unisex', 'In Stock'),
(83, 'western casual style', 'male', 'In Stock'),
(84, 'null', 'male', 'In Stock'),
(85, 'kids clothing ', 'unisex ', 'In Stock'),
(86, 'western casual style', 'female', 'In Stock'),
(87, 'western casual style', 'female', 'In Stock'),
(88, 'western casual style', 'male', 'In Stock'),
(89, 'winter fits ', 'male', 'In Stock'),
(90, 'western casual style', 'male', 'In Stock');

INSERT INTO staff (EmployeeID, FirstName, LastName, Position, ShopNumber, AadharNumber, Age, BaseSalary)
VALUES
    ('001', 'Aarav', 'Sharma', 'Sales Associate', 1, '1234-5678-9012', 25, 23000.00),
    ('002', 'Aditi', 'Patel', 'Cashier', 2, '2345-6789-0123', 28, 13000.00),
    ('003', 'Akash', 'Singh', 'Store Manager', 1, '3456-7890-1234', 32, 15000.00),
    ('004', 'Anaya', 'Kapoor', 'Sales Associate', 3, '4567-8901-2345', 26, 23000.00),
    ('005', 'Arjun', 'Verma', 'Stock Clerk', 2, '5678-9012-3456', 30, 22000.00),
    ('006', 'Aryan', 'Shah', 'Store Manager', 3, '6789-0123-4567', 35, 20000.00),
    ('007', 'Chhaya', 'Bansal', 'Cashier', 4, '7890-1234-5678', 22, 15000.00),
    ('008', 'Darsh', 'Rao', 'Sales Associate', 5, '8901-2345-6789', 29, 25000.00),
    ('009', 'Dia', 'Gupta', 'Stock Clerk', 6, '9012-3456-7890', 27, 23000.00),
    ('010', 'Divya', 'Yadav', 'Cashier', 4, '0123-4567-8901', 31, 35000.00),
    ('011', 'Esha', 'Shukla', 'Store Manager', 5, '9876-5432-1098', 34, 19000.00),
    ('012', 'Harsh', 'Malhotra', 'Stock Clerk', 5, '8765-4321-0987', 25, 16000.00),
    ('013', 'Ishaan', 'Agrawal', 'Sales Associate', 6, '7654-3210-9876', 28, 30000.00),
    ('014', 'Jai', 'Deshmukh', 'Store Manager', 7, '6543-2109-8765', 33, 5000.00),
    ('015', 'Kabir', 'Nair', 'Cashier', 7, '5432-1098-7654', 29, 35000.00),
    ('016', 'Kavya', 'Reddy', 'Stock Clerk', 8, '4321-0987-6543', 26, 32000.00),
    ('017', 'Laksh', 'Gandhi', 'Sales Associate', 9, '3210-9876-5432', 31, 7000.00),
    ('018', 'Mahi', 'Kulkarni', 'Store Manager', 10, '2109-8765-4321', 27, 14000.00),
    ('019', 'Manya', 'Nanda', 'Cashier', 11, '1098-7654-3210', 32, 35000.00),
    ('020', 'Maya', 'Joshi', 'Stock Clerk', 12, '0987-6543-2109', 24, 32000.00),
    ('021', 'Nakul', 'Saxena', 'Sales Associate', 13, '9876-5432-1098', 30, 30000.00),
    ('022', 'Nia', 'Chopra', 'Store Manager', 14, '8765-4321-0987', 35, 50000.00),
    ('023', 'Om', 'Khanna', 'Cashier', 15, '7654-3210-9876', 28, 35000.00),
    ('024', 'Prisha', 'Rajput', 'Stock Clerk', 16, '6543-2109-8765', 26, 32000.00),
    ('025', 'Rahul', 'Bhat', 'Sales Associate', 16, '5432-1098-7654', 29, 30000.00),
    ('026', 'Rhea', 'Choudhary', 'Store Manager', 21, '4321-0987-6543', 33, 50000.00),
    ('027', 'Rudra', 'Shukla', 'Cashier', 17, '3210-9876-5432', 31, 35000.00),
    ('028', 'Saumya', 'Pandey', 'Stock Clerk', 18, '2109-8765-4321', 28, 32000.00),
    ('029', 'Shanaya', 'Rawat', 'Sales Associate', 19, '1098-7654-3210', 30, 30000.00),
    ('030', 'Shaurya', 'Goswami', 'Store Manager', 20, '0987-6543-2109', 34, 50000.00),
    ('031', 'Siya', 'Dixit', 'Cashier', 21, '9876-5432-1098', 26, 35000.00),
    ('032', 'Tanish', 'Gupta', 'Stock Clerk', 22, '8765-4321-0987', 29, 12000.00),
    ('033', 'Tara', 'Sharma', 'Sales Associate', 23, '7654-3210-9876', 31, 30000.00),
    ('034', 'Uday', 'Patil', 'Store Manager', 24, '6543-2109-8765', 33, 50000.00),
    ('035', 'Vanya', 'Sinha', 'Cashier', 25, '5432-1098-7654', 27, 35000.00),
    ('036', 'Vihaan', 'Chauhan', 'Stock Clerk', 26, '4321-0987-6543', 32, 32000.00),
    ('037', 'Yash', 'Kumar', 'Sales Associate', 27, '3210-9876-5432', 25, 20000.00),
    ('038', 'Zara', 'Gandhi', 'Store Manager', 28, '2109-8765-4321', 28, 50000.00),
    ('039', 'Zayn', 'Yadav', 'Cashier', 29, '1098-7654-3210', 30, 35000.00),
    ('040', 'Aanya', 'Sharma', 'Stock Clerk', 30, '0987-6543-2109', 34, 32000.00),
    ('041', 'Aarush', 'Shah', 'Sales Associate', 31, '9876-5432-1098', 31, 30000.00),
    ('042', 'Aisha', 'Rao', 'Store Manager', 32, '8765-4321-0987', 29, 5000.00),
    ('043', 'Arnav', 'Verma', 'Cashier', 33, '7654-3210-9876', 26, 35000.00),
    ('044', 'Avni', 'Chopra', 'Stock Clerk', 34, '6543-2109-8765', 28, 32000.00),
    ('045', 'Dev', 'Saxena', 'Sales Associate', 35, '5432-1098-7654', 33, 30000.00),
    ('046', 'Ishita', 'Nair', 'Store Manager', 35, '4321-0987-6543', 32, 50000.00),
    ('047', 'Karan', 'Gupta', 'Cashier', 36, '3210-9876-5432', 27, 9000.00),
    ('048', 'Kiara', 'Malhotra', 'Stock Clerk', 37, '2109-8765-4321', 29, 32000.00),
    ('049', 'Manav', 'Bhat', 'Sales Associate', 38, '1098-7654-3210', 28, 30000.00),
    ('050', 'Myra', 'Choudhary', 'Store Manager', 39, '0987-6543-2109', 30, 50000.00),
    ('051', 'Aanya', 'Rai', 'Cashier', 40, '9876-5432-1098', 26, 35000.00),
    ('052', 'Aarush', 'Sharma', 'Stock Clerk', 41, '8765-4321-0987', 29, 32000.00),
    ('053', 'Aisha', 'Dixit', 'Sales Associate', 43, '7654-3210-9876', 31, 30000.00),
    ('054', 'Arnav', 'Patil', 'Store Manager', 42, '6543-2109-8765', 33, 50000.00),
    ('055', 'Avni', 'Rawat', 'Cashier', 43, '5432-1098-7654', 27, 15000.00),
    ('056', 'Dev', 'Nanda', 'Stock Clerk', 44, '4321-0987-6543', 32, 32000.00),
    ('057', 'Ishita', 'Sinha', 'Sales Associate', 45, '3210-9876-5432', 25, 30000.00),
    ('058', 'Karan', 'Kulkarni', 'Store Manager', 46, '2109-8765-4321', 28, 50000.00),
    ('059', 'Kiara', 'Goswami', 'Cashier', 47, '1098-7654-3210', 30, 35000.00),
    ('060', 'Manav', 'Shah', 'Stock Clerk', 48, '0987-6543-2109', 34, 32000.00),
    ('061', 'Myra', 'Malhotra', 'Sales Associate', 49, '9876-5432-1098', 31, 30000.00),
    ('062', 'Nakul', 'Rao', 'Store Manager', 50, '8765-4321-0987', 29, 6000.00),
    ('063', 'Nia', 'Sharma', 'Cashier', 51, '7654-3210-9876', 26, 8000.00),
    ('064', 'Om', 'Verma', 'Stock Clerk', 52, '6543-2109-8765', 28, 32000.00),
    ('065', 'Prisha', 'Chopra', 'Sales Associate', 53, '5432-1098-7654', 33, 13000.00),
    ('066', 'Rahul', 'Khanna', 'Store Manager', 54, '4321-0987-6543', 32, 50000.00),
    ('067', 'Rhea', 'Rajput', 'Cashier', 55, '3210-9876-5432', 27, 35000.00),
    ('068', 'Rudra', 'Bhat', 'Stock Clerk', 54, '2109-8765-4321', 29, 32000.00),
    ('069', 'Saumya', 'Choudhary', 'Sales Associate', 56, '1098-7654-3210', 28, 30000.00),
    ('070', 'Shanaya', 'Saxena', 'Store Manager', 57, '0987-6543-2109', 30, 50000.00);

ALTER TABLE variety
ADD FOREIGN KEY (shop_number) REFERENCES shops(shop_number);

ALTER TABLE target_audience
ADD FOREIGN KEY (shop_number) REFERENCES shops(shop_number);

SELECT s.*, v.target_gender
FROM shops s
JOIN variety v ON s.shop_number = v.shop_number WHERE v.target_gender='female'; 

SELECT s.*, v.style, v.target_gender, v.availability
FROM shops s
JOIN variety v ON s.shop_number = v.shop_number
WHERE v.style = 'traditional clothing';

SELECT s.*, v.style, v.target_gender, v.availability
FROM shops s
JOIN variety v ON s.shop_number = v.shop_number
WHERE v.style = 'bra and undergarments';

SELECT *
FROM shops
WHERE shop_type = 'footwear';

SELECT s.*, v.style, v.target_gender, v.availability
FROM shops s
JOIN variety v ON s.shop_number = v.shop_number
WHERE v.style = 'kids clothing';

SELECT *
FROM shops
WHERE shop_type = 'art and decoration';

-- required details of the shops which are near by gate 1
SELECT shop_number , shop_name , shop_type
FROM shops
WHERE shop_number in (SELECT shop_number FROM accessibility WHERE near_entry_gate = 'Gate 1');


SELECT *
FROM shops
WHERE shop_type = 'tattoos and designing';

SELECT shop_number ,near_entry_gate , near_metro_gate 
FROM accessibility
WHERE shop_number = 77;

SELECT COUNT(*) AS footwear_shop_count
FROM shops
WHERE shop_type = 'footwears';

select * 
from staff
where ShopNumber = 4 ; 

select * 
from staff 
where position = 'cashier' and age >30 ;

select *
from staff 
where BaseSalary < 10000;
