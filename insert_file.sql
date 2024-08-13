INSERT INTO Producent (City, Street, Phone_nr, ID_producent, NIP)
VALUES 
    ('Zabrze', 'Dluga', 234567891, 1121, 4567890123),
    ('Szczecin', 'Wielka', 123456789, 3141, 5678901234),
    ('Lodz', 'Piotrkowska', 876543210, 5161, 6789012345),
    ('Wadowice', 'Monte Cassino', 765432109, 7181, 7890123456),
    ('Bydgoszcz', 'Gdanska', 654321098, 9191, 8901234567),
    ('Torun', 'Mariacka', 543210987, 1202, 9012345678),
    ('Bialystok', 'Lipowa', 432109876, 2212, 1123456789),
	('Warszawa', 'Nowy Œwiat', 654987321, 3322, 9876543210),
    ('Krakow', 'Krakowska', 789012345, 4433, 8765432109),
    ('Poznan', 'Wroniecka', 890123456, 5544, 7654321098),
    ('Katowice', 'Chorzowska', 901234567, 6655, 6543210987),
    ('Wroclaw', 'Sienkiewicza', 123890765, 7766, 5432109876),
    ('Gdansk', 'D³ugie Pobrze¿e', 234567890, 8877, 4321098765),
    ('Olsztyn', 'Pocztowa', 445678901, 9988, 3210987654),
    ('Czestochowa', 'Jasnogórska', 556789012, 1099, 2109876543),
    ('Rzeszow', 'S³owackiego', 567890123, 2110, 1098765432),
    ('Opole', 'Piastowska', 678901234, 3221, 2987654321),
	('Tczew', 'Marsza³kowska', 987654321, 1234, 1234567890),
    ('Gdynia', 'Florianska', 456789012, 5678, 2345678901),
    ('Gliwice', 'Swidnicka', 345678901, 9101, 3456789012);


INSERT INTO Definition_of_product(name, brand, ID_product, description, ID_producent_REF)
VALUES
    ('comb', 'Schwarzkopf', 422 , 'A comb is a grooming tool with teeth for detangling and styling hair.', 1234),
    ('hairbrush', 'Revlon', 423, 'A hairbrush with bristles for smoothing and styling hair.', 5678),
    ('hairdryer', 'Dyson', 424, 'A hairdryer for drying and styling hair.', 9101),
    ('hair gel', 'Loreal', 425, 'A styling gel for shaping and holding hair.', 1121),
    ('hair spray', 'Tresemmé', 426, 'A spray for setting and securing hairstyles.', 3141),
    ('curling iron', 'Conair', 427, 'A device for creating curls and waves in hair.',5161 ),
    ('hair serum', 'Pantene', 428, 'A serum for nourishing and smoothing hair.',7181 ),
    ('barber scissors', 'Wahl', 429, 'Professional scissors for cutting and styling hair.', 9191),
    ('hair color', 'Clairol', 430, 'Hair color product for dyeing hair.',1202 ),
    ('hair trimmer', 'Andis', 431, 'A trimmer for cutting and shaping hair.',2212 ),
    ('hair rollers', 'Remington', 432, 'Rollers for setting hair in curls.', 3322),
    ('hair mask', 'Garnier', 433, 'A deep-conditioning mask for hair treatment.', 4433),
    ('flat iron', 'CHI', 434, 'A flat iron for straightening hair.', 5544),
    ('hair clips', 'Scünci', 435, 'Clips for securing hair in place during styling.',6655 ),
    ('texturizing spray', 'Oribe', 436, 'Spray for adding texture and volume to hair.',7766 ),
    ('hair volumizer', 'Big Sexy Hair', 437, 'A product for adding volume to hair.', 8877),
    ('hair mousse', 'Paul Mitchell', 438, 'A styling foam for shaping and defining hair.', 9988),
    ('hair detangler', 'Johnson & Johnson', 439, 'A product for easing the detangling of hair.', 1099),
    ('hair conditioner', 'Herbal Essences', 440, 'Conditioner for softening and moisturizing hair.', 2110),
    ('hair styling wax', 'Bed Head', 441, 'Wax for sculpting and molding hair.', 3221),
    ('hair straightening brush', 'Revlon', 442, 'A brush for straightening and smoothing hair.', 3221);

INSERT INTO Size(size_name)
VALUES
	('extra small'),
	('small'),
	('medium'),
	('large'),
	('extra large');

INSERT INTO Colour(Colour_ID)
VALUES
	('red'),
	('orange'),
	('yellow'),
	('blue'),
	('green'),
	('black'),
	('white'),
	('violet'),
	('gray'),
	('pink'),
	('brown');

INSERT INTO Supplier (City, Street, NIP, ID_supplier)
VALUES
    ('Krakow', 'S³oneczna', 8765432109, 562890),
    ('Gdansk', 'Baltycka', 5678901234, 678301),
    ('Wroclaw', 'Kwiatowa', 6789012345, 785012),
    ('Lodz', 'Kopernika', 7890123456, 890183),
    ('Szczecin', 'Portowa', 8901234567, 900234),
    ('Gdynia', 'Polna', 9012345678, 123458),
    ('Katowice', 'Wolnoœci', 1234567890, 734567),
    ('Bydgoszcz', 'Gdanska', 2345678001, 645678),
    ('Torun', 'Koœciuszki', 3456789072, 426789),
    ('Bialystok', 'Piekna', 4567890173, 527890),
	('Olsztyn', 'Królewska', 5678901834, 978902),
    ('Czestochowa', 'Sienkiewicza', 9789012345, 189032),
    ('Rzeszow', 'Hetmanska', 7890923456, 890893),
    ('Opole', 'Piastowska', 8901294567, 901291),
    ('Gliwice', 'Jana Paw³a II', 1012345678, 953456),
    ('Radom', 'D³uga', 1234567893, 234538),
    ('Kielce', 'Mickiewicza', 2341678901, 325678),
    ('Rybnik', 'Ksi¹¿êca', 3456780012, 456189),
    ('Tychy', 'Stawowa', 4567890183, 567890),
    ('Elblag', 'Pogodna', 5678901204, 678921);


INSERT INTO Delivery (Date_of_coming, Delivery_NR, NR_of_positions, ID_producent_REF, ID_supplier_REF)
VALUES
	('2023-05-05', 1, 1, 1234, 562890),
	('2023-05-08', 2, 2, 5678, 678301),
	('2023-06-08', 3, 2, 9101, 785012),
	('2023-06-09', 4, 2, 9101, 890183),
	('2023-07-10', 5, 2, 1121, 900234),
    ('2023-08-12', 6, 3, 3141, 123458),
    ('2023-09-15', 7, 2, 5161, 123458),
	('2023-10-25', 8, 2, 7181, 734567),
	('2023-10-29', 9, 1, 9191, 645678),
    ('2023-11-18', 10, 1, 1202, 426789),
    ('2023-11-20', 11, 2, 2212, 527890),
	('2023-04-20', 12, 2, 5678, 567890),
	('2023-01-22', 13, 1, 1234, 978902),
	('2023-02-25', 14, 2, 5678, 953456),
	('2023-08-10', 15, 1, 1121, 734567);


INSERT INTO Version_product(product_version_ID, ID_product_REF, ID_Size_REF, ID_Colour_REF)
VALUES
    (1234, 423, 'extra small', 'brown'),
    (1235, 424, 'large', 'white'),
    (1236, 425, 'small', 'orange'),
    (1237, 426, 'medium', 'red'),
    (1238, 427, 'extra large', 'blue'),
    (1239, 428, 'small', 'green'),
    (1240, 429, 'large', 'yellow'),
    (1241, 430, 'extra small', 'black'),
    (1242, 431, 'medium', 'pink'),
    (1243, 432, 'large', 'brown'),
    (1244, 433, 'small', 'white'),
    (1245, 434, 'medium', 'orange'),
    (1246, 435, 'extra large', 'red'),
    (1247, 436, 'large', 'yellow'),
    (1248, 437, 'small', 'green'),
    (1249, 438, 'medium', 'black'),
    (1250, 439, 'extra small', 'blue'),
    (1251, 440, 'large', 'pink'),
    (1252, 441, 'small', 'white'),
    (1253, 442, 'medium', 'orange');



INSERT INTO Delivery_position(Quantity, Purchase_cost, ID_Delivery_NR, ID_Version_product)
VALUES
	(4, 5.03, 1, 1240),
	(3, 30.00, 2, 1234),
	(3, 19.3, 2, 1236),
	(2, 36.02, 3, 1243),
	(5, 17.03, 3, 1234),
    (1, 37.04, 4, 1235),
    (3, 25.50, 4, 1236),
    (4, 13.50, 5, 1237),
    (4, 18.90, 5, 1238),
    (6, 10.60, 6, 1239),
	(3, 5.99, 6, 1240),
	(11, 9.99, 6, 1241),
	(2, 8.32, 7, 1242),
	(3, 9.32, 7, 1240),
	(4,8.22, 8, 1234),
	(3, 11.21, 8, 1243),
	(9, 4.02, 9, 1244),
	(13, 9.02, 10, 1245),
	(12, 9.21, 11, 1246),
	(1, 4.31, 11, 1247),
	(4, 9.32, 12, 1248),
	(2, 9.12, 12, 1249),
	(10, 6.71, 13, 1250),
	(8, 11.01, 14, 1251),
	(2, 8.21, 14, 1246),
	(1, 10.10, 15, 1240);

	
	
	
INSERT INTO Product_offer(Selling_cost, Valid_from, Valid_to, ID_Definition_of_product, ID_price)
VALUES
    (32.50, '2023-11-01', '2024-03-01', 422, 214),
    (19.95, '2023-01-10', '2024-05-10', 423, 216),
    (24.75, '2023-02-15', '2024-06-15', 424, 217),
    (19.99, '2023-03-20', '2024-07-20', 425, 218),
    (24.49, '2023-04-25', '2024-08-25', 426, 219),
    (28.75, '2023-05-30', '2024-09-30', 427, 220),
    (32.99, '2023-07-05', '2024-11-05', 428, 221),
    (27.50, '2023-08-10', '2024-12-10', 430, 222),
    (31.25, '2023-09-15', '2025-01-15', 431, 223),
    (26.99, '2023-10-20', '2025-02-20', 432, 224),
    (30.50, '2023-11-25', '2025-03-25', 433, 225),
    (35.99, '2023-01-01', '2025-05-01', 434, 226),
    (29.75, '2023-02-05', '2025-06-05', 435, 227),
    (30.49, '2023-03-10', '2025-07-10', 436, 228),
    (23.75, '2023-04-15', '2025-08-15', 437, 229),
    (27.99, '2023-05-20', '2025-09-20', 438, 230),
    (31.50, '2023-06-25', '2025-10-25', 439, 231),
	(22.95, '2023-08-01', '2024-01-01', 440, 232),
    (18.50, '2023-09-05', '2024-02-05', 441, 233),
    (26.25, '2023-10-10', '2024-03-10', 442, 234);


INSERT INTO Discount (Discount_ID, valid_from, valid_to, Percentage_discount)
VALUES
    (321, '2023-03-03', '2023-05-06', 15),
    (322, '2023-05-07', '2023-07-10', 20),
    (323, '2023-07-11', '2023-09-14', 10),
    (324, '2023-09-15', '2023-11-18', 25),
    (325, '2023-11-19', '2024-01-22', 12),
    (326, '2023-01-23', '2023-03-27', 18),
    (327, '2023-03-28', '2023-05-31', 30),
    (328, '2023-06-01', '2023-08-04', 22),
    (329, '2023-08-05', '2023-10-08', 17),
    (330, '2023-10-09', '2023-12-12', 8),
    (331, '2023-01-01', '2023-03-05', 14),
    (332, '2023-03-06', '2023-05-09', 28),
    (333, '2023-05-10', '2023-07-13', 19),
    (334, '2023-07-14', '2023-09-17', 13),
    (335, '2023-09-18', '2023-11-21', 24),
    (336, '2023-11-22', '2024-01-25', 16),
    (337, '2024-01-26', '2024-03-31', 21),
    (338, '2024-04-01', '2024-06-04', 27),
    (339, '2024-06-05', '2024-08-08', 10),
    (340, '2024-08-09', '2024-10-12', 23);


	
INSERT INTO possession(Possession_ID, Offer, Disc)
VALUES
	(9442, 214, 321),
    (9443, 216, 322),
    (9444, 217, 323),
	(9445, 218, 324),
    (9446, 219, 325),
    (9447, 220, 326),
    (9448, 221, 327),
    (9449, 222, 328),
    (9450, 223, 329),
    (9451, 224, 330),
    (9452, 225, 331),
    (9453, 226, 332),
    (9454, 227, 333),
    (9455, 228, 334),
    (9456, 229, 335),
    (9457, 230, 336),
    (9458, 231, 337),
    (9459, 232, 338),
    (9460, 233, 339),
    (9461, 234, 340);


INSERT INTO Cart(Number_positions,ID_DISCOUNT)
VALUES
	( 1, 321),
	( 2, null),
    ( 3, null),
    ( 1, 322),
    (2, 323),
    ( 2, null),
    ( 2, null),
    ( 1, 324),
    (  2, null),
    (  1, null),
    ( 2, null),
	( 1, 325),
    ( 1, 326),
    ( 2, null),
    ( 1, null),
    ( 2, null),
    ( 2, null),
    ( 2, 327),
    ( 1, 328),
    ( 1, null),
    ( 2, null);

INSERT INTO Total_nr_of_product(Quantity, ID_Version_product)
VALUES
	(10, 1234),
    (7, 1235),
    (15, 1236),
    (20, 1237),
    (5, 1238),
    (12, 1239),
    (8, 1240),
    (18, 1241),
    (25, 1242),
    (3, 1243),
    (14, 1244),
    (9, 1245),
    (22, 1246),
    (11, 1247),
    (6, 1248),
    (16, 1249),
    (13, 1250),
    (19, 1251),
    (4, 1252),
    (17, 1253);
	
INSERT INTO Cart_position(Quantity, ID_Definition_of_product, ID_Version_product,  ID_Cart_REF)
VALUES
    (1, 422, 1235, 1),
    (2, 423, 1236, 2),
    (1, 424, 1237, 3),
    (1, 425, 1239, 4),
    (1, 426, 1240, 5),
    (1, 427, 1241, 6),
    (2, 428, 1242, 6),
    (1, 434, 1243, 7),
    (1, 430, 1244, 8),
    (1, 431, 1245, 9),
    (2, 432, 1246, 10),
    (1, 433, 1247, 11),
    (2, 434, 1248, 12),
    (1, 435, 1249, 13),
    (1, 436, 1250, 14),
    (1, 437, 1251, 15),
    (2, 438, 1252, 16),
    (1, 439, 1253, 17);



