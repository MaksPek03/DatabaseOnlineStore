select * from Producent;
select * from Delivery;

DELETE FROM Producent WHERE ID_producent = 1234;
UPDATE Producent SET ID_producent = 1111 WHERE ID_producent = 5678;
UPDATE Producent SET ID_producent = 888 WHERE ID_producent = 5678;




select * from Definition_of_product;
select * from Version_product;
DELETE FROM Definition_of_product WHERE ID_product = 423;
UPDATE Definition_of_product SET ID_product = 99999 WHERE ID_product = 424;
UPDATE Definition_of_product SET ID_product = 999 WHERE ID_product = 424;


UPDATE Colour SET Colour_ID = 'silver' WHERE Colour_ID = 'white';
UPDATE Size SET size_name = 'very small' WHERE size_name = 'small';
DELETE FROM Colour WHERE Colour_ID = 'red';
DELETE FROM Size WHERE size_name = 'large';
select * from Version_product;





select * from Product_offer;
select * from Definition_of_product;
UPDATE Definition_of_product SET ID_product = 888 WHERE ID_product = 425;
DELETE FROM Definition_of_product WHERE ID_product = 430;




