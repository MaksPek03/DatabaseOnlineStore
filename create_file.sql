create table Producent(
	City varchar(20) not null,
	Street varchar(20),
	Phone_nr bigint unique CHECK (Phone_nr >= 100000000 AND Phone_nr <= 999999999),
	ID_producent integer PRIMARY KEY CHECK (ID_producent >= 1000 AND ID_producent <= 9999),
	NIP bigint unique CHECK (NIP >= 1000000000 AND NIP <= 9999999999),
);

create table Supplier(
	City varchar(20) not null,
	Street varchar(20),
	NIP bigint unique CHECK (NIP >= 1000000000 AND NIP <= 9999999999),
	ID_supplier integer PRIMARY KEY CHECK (ID_supplier >= 100000 AND ID_supplier <= 999999),
);

create table Delivery(
	Date_of_coming date,
	Delivery_NR integer PRIMARY KEY CHECK (Delivery_NR >= 1 AND Delivery_NR <= 99999),
	NR_of_positions integer DEFAULT 1,
	ID_producent_REF integer,
    FOREIGN KEY (ID_producent_REF) REFERENCES Producent(ID_producent)
	ON DELETE set null ON UPDATE cascade,
	ID_supplier_REF integer,
    FOREIGN KEY (ID_supplier_REF) REFERENCES Supplier(ID_supplier)
	ON DELETE set null ON UPDATE cascade,
);
CREATE TABLE Definition_of_product (
    name varchar(30) unique,
    brand varchar(30) not null,
	ID_product integer not null PRIMARY KEY CHECK (ID_product >= 1 AND ID_product <= 9999),
	description varchar(1000),
	ID_producent_REF integer,
   	FOREIGN KEY (ID_producent_REF) REFERENCES Producent(ID_producent)
	ON DELETE set null ON UPDATE cascade,
);

Create table Size(
	size_name varchar(15) PRIMARY KEY DEFAULT 'medium',
);
Create table Colour(
	Colour_ID varchar(15) PRIMARY KEY,
);

Create table Version_product(
	product_version_ID integer primary key CHECK (product_version_ID >= 1000 AND product_version_ID <= 9999),
	ID_product_REF integer not null,
    FOREIGN KEY (ID_product_REF) REFERENCES Definition_of_product(ID_product)
	ON DELETE cascade ON UPDATE cascade,
	ID_Size_REF varchar(15),
    FOREIGN KEY (ID_Size_REF) REFERENCES Size(size_name)
	ON DELETE cascade ON UPDATE cascade,
	ID_Colour_REF varchar(15),
    FOREIGN KEY (ID_Colour_REF) REFERENCES Colour(Colour_ID)
	ON DELETE cascade ON UPDATE cascade,
);

CREATE TABLE Delivery_position (
	Quantity INT, 
	Purchase_cost FLOAT, 
	ID_Delivery_NR INT,
    FOREIGN KEY (ID_Delivery_NR) REFERENCES Delivery(Delivery_NR)
    ON DELETE cascade ON UPDATE cascade,
	ID_Version_product INT,
    FOREIGN KEY (ID_Version_product) REFERENCES Version_product(product_version_ID)
	ON DELETE CASCADE ON UPDATE no action,
	PRIMARY KEY (ID_Delivery_NR, ID_Version_product),
);

CREATE TABLE Product_offer (
    Selling_cost float CHECK( Selling_cost >= 0),
    Valid_from date,
    Valid_to date,
    ID_Definition_of_product integer not null unique,
    FOREIGN KEY (ID_Definition_of_product) REFERENCES Definition_of_product(ID_product)
	ON DELETE cascade ON UPDATE cascade,
    ID_price integer not null PRIMARY KEY,
);

Create table Discount(
	Discount_ID integer not null PRIMARY KEY,
	valid_from date, 
	valid_to date,
	Percentage_discount integer DEFAULT 0,
);
CREATE TABLE possession (
    Possession_ID INT PRIMARY KEY,
    Offer INT, 
    Disc INT, 
    FOREIGN KEY (Offer) REFERENCES Product_offer(ID_price)
	ON DELETE cascade ON UPDATE cascade,
    FOREIGN KEY (Disc) REFERENCES Discount(Discount_ID) 
	ON DELETE cascade ON UPDATE cascade,
);
Create table Total_nr_of_product(
	Quantity integer CHECK( Quantity >= 1),
	ID_Version_product integer PRIMARY KEY,
    FOREIGN KEY (ID_Version_product) REFERENCES Version_product(product_version_ID)
	ON DELETE cascade ON UPDATE cascade,
);
Create table Cart(
	ID_cart integer IDENTITY(1,1) not null PRIMARY KEY,
	Number_positions integer not null,
	ID_DISCOUNT integer,
    FOREIGN KEY (ID_DISCOUNT) REFERENCES Discount(Discount_ID)
	ON DELETE cascade ON UPDATE cascade,

);
Create table Cart_position(
	Quantity integer,
	Cart_pos integer CHECK ( Cart_pos >= 1),
	ID_Version_product integer unique,
    FOREIGN KEY (ID_Version_product) REFERENCES Total_nr_of_product(ID_Version_product)
	ON DELETE no action ON UPDATE no action,
	ID_Definition_of_product integer,
    FOREIGN KEY (ID_Definition_of_product) REFERENCES Product_offer(ID_Definition_of_product)
	ON DELETE cascade ON UPDATE cascade,
	Cart_position_ID integer  IDENTITY(1,1) not null ,
	ID_Cart_REF integer,
    FOREIGN KEY (ID_Cart_REF) REFERENCES Cart(ID_cart)
	ON DELETE cascade ON UPDATE cascade,
	PRIMARY KEY(Cart_position_ID, ID_Cart_REF),
);

