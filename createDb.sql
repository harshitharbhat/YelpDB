CREATE TABLE YELP_USER(
YELP_ID               VARCHAR(10)                 PRIMARY KEY,
Email                            VARCHAR(30)                NOT NULL,
First_Name               VARCHAR(30),
Last_Name                VARCHAR(30)                NOT NULL,
DOB                        DATE,
BirthPlace               VARCHAR(50),
Gender                CHAR(2)
);
/

CREATE TABLE FRIEND_LIST(
 Friend_ID                VARCHAR(10),
Yelp_ID                VARCHAR(10),
Complimented_ID         VARCHAR(10),
FOREIGN KEY(Friend_ID)  REFERENCES YELP_USER (YELP_ID),
FOREIGN KEY(Complimented_ID)  REFERENCES YELP_USER (YELP_ID)
);
/

CREATE TABLE BUSINESS(
Business_ID        VARCHAR(10)        PRIMARY KEY,
B_name        VARCHAR(30),
City                CHAR(30),
State                CHAR(30),
Phone_No        VARCHAR(20),
Category        VARCHAR(30),
Open                CHAR(1)
);
/

CREATE TABLE REVIEWS(
Review_ID         VARCHAR(10)        PRIMARY KEY,
Rating        INT                        CHECK (Rating > 0 AND Rating <= 5),
Author        VARCHAR(10),
Publish_date        DATE,
Rec                CHAR(1),
Friend_cool   VARCHAR(10),
Business_ID         VARCHAR(10)        NOT NULL,        
Votes_funny        INT,
Votes_cool        INT,
Votes_useful        INT,
FOREIGN KEY(Author)  REFERENCES YELP_USER (YELP_ID)
);
/
CREATE TABLE CATEGORY(
Category_ID                 VARCHAR(10)        PRIMARY KEY,
Category_name        CHAR(30)                NOT NULL
);
/

INSERT ALL
 INTO YELP_USER(YELP_ID ,Email, First_Name, Last_Name, DOB, BirthPlace, Gender)
  VALUES('Y1','john@yahoo.com','John','Smith',TO_DATE('1992-12-12','yyyy-mm-dd'),'LAKE CITY,FL 32056','M')
INTO YELP_USER(YELP_ID ,Email, First_Name, Last_Name, DOB, BirthPlace, Gender)
   VALUES('Y2','juan@gmail.com','Juan','Carlos',TO_DATE('1988-2-7','yyyy-mm-dd'),'LAKE CITY,FL 32056','M')
INTO YELP_USER(YELP_ID ,Email, First_Name, Last_Name, DOB, BirthPlace, Gender)
   VALUES('Y3','Jane@gmail.com','Jane','Chapel',TO_DATE('1992-6-1','yyyy-mm-dd'),'VERNON HILLS,IL 60061','F')
INTO YELP_USER(YELP_ID ,Email, First_Name, Last_Name, DOB, BirthPlace, Gender)
VALUES('Y4','adi@yahoo.com','Aditya','Awasthi',TO_DATE('1964-4-12','yyyy-mm-dd'),'SAN FRANCISCO, CA 94102','M')
SELECT 1 FROM dual;
INTO YELP_USER(YELP_ID ,Email, First_Name, Last_Name, DOB, BirthPlace, Gender)
VALUES('Y8','wei@gmail.com','Wei','Zhangi',TO_DATE('2004-4-12','yyyy-mm-dd'),'LAS VEGAS,NV 89030
','F')
INTO YELP_USER(YELP_ID ,Email, First_Name, Last_Name, DOB, BirthPlace, Gender)
VALUES('Y13','kell@gmail.com','Kelly','Abraham',TO_DATE('2005-9-12','yyyy-mm-dd'),'REDONDO BEACH,CA 90278
','F')
SELECT 1 FROM dual;
/

INSERT ALL
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B1','Big Surf','San Jose','CA','(520) 622-6400','BCT1','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B2','AirBorne COFFEE','San Jose','CA','(408) 524-3580','BCT2','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B3','Pedley Richard Architect','San Jose','CA','(419)-244-5200','BCT3','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B4','Safelite AutoGlass','San Jose','CA','(520)-465-5225 ','BCT4','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B5','SMITH THOMSON ','San Jose','CA','(855)-808-1480','BCT5','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B6','Catch Your Big Break','San Jose','CA',' (408)-827-8383','BCT6','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B7','Bay Area Coffee Shop','Santa Clara ','CA','(408)-876 7785','BCT7','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B8','China  Coffee Toffee ','Santa Clara ','CA','(408)-261-9000','BCT8','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B9','Hastings Water Works',' Brecksville','OH','(440)-832-7700','BCT9','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B10','The Cinebar','Torrance','CA','(408)-465-8308','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B11','In-N-Out Burger','San Jose','CA','(408)-804-8782','BCT11','F')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B12','Coffee Bar & Bistro','Santa Clara','CA','(408)-465-8208','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B13','Renegades',' Santa Clara','CA','(408)-465-8108','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B14','Alex''s 49er Inn','Columbus','OH','(419)-465-8018','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B15','Red Stag Lounge','Brecksville','OH','(419)-465-8028','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B16','JJ''s Blues','Brecksville','OH','(419)-465-8108','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B17','The Bears Cocktails','Vienna','VA','(844)-465-8028','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B18','Trials Pub','Vienna','VA','(844)-465-8038','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B19','Santa Cruz Wine Bar','Vienna','VA','(844)-465-8048','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B20','Firehouse No 1 Gastropub','Tempe','AZ','(520)-465-8058','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B21','Original Gravity Public House','Tempe','AZ','(520)-465-8068','BCT10','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B22','Hobee''s','San Jose','CA','(408)-465-8078','BCT5','F')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B23','The Table','San Jose','CA','(408)-465-8908','BCT5','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B24','Top Nosh Café','San Jose','CA','(408)-465-8098','BCT5','T')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B25','Breakfast Place','San Jose','CA','(408)-465-8808','BCT5','F')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B26','Cafe Rosalena','San Jose','CA','(408)-465-8708','BCT5','F')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B27','Southern Kitchen','San Jose','CA','(408)-465-8608','BCT5','F')
INTO Business (Business_ID,B_name,City,State,Phone_No,Category,Open)VALUES
    ('B28','Holder''s Country Inn','San Jose','CA','(408)-465-8508','BCT5','F')
SELECT 1 FROM dual;
/

INSERT  ALL
INTO Reviews (Review_ID, Rating, Author,Publish_date,Friend_cool,Rec,Business_ID,Votes_funny,Votes_cool,Votes_useful ) VALUES   ('R1',2,'Y1',TO_DATE('1992-12-12','yyyy-mm-dd'),'Y2','R','B1',1,0,0)
INTO Reviews (Review_ID, Rating, Author,Publish_date,Friend_cool,Rec,Business_ID,Votes_funny,Votes_cool,Votes_useful ) VALUES 
    ('R3',2,'Y3',TO_DATE('2016-12-12','yyyy-mm-dd'),'Y6','R','B3',0,0,1)
INTO Reviews (Review_ID, Rating, Author,Publish_date,Friend_cool,Rec,Business_ID,Votes_funny,Votes_cool,Votes_useful ) VALUES 
    ('R4',2,'Y4',TO_DATE('2018-01-12','yyyy-mm-dd'),'Y7','R','B4',1,0,0)
INTO Reviews (Review_ID, Rating, Author,Publish_date,Friend_cool,Rec,Business_ID,Votes_funny,Votes_cool,Votes_useful ) VALUES 
('R22',5,'Y13',TO_DATE('2018-01-12','yyyy-mm-dd'),'Y8','R','B12',0,1,0)
SELECT 1 FROM dual;
/

INSERT ALL
INTO Category (Category_ID, Category_name) VALUES
    ('BCT1','Amusement Parks')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT2','Gymnastics')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT3','Architects')
INTO Category (Category_ID, Category_name) VALUES
    ('BCT4','Windshield ')
INTO Category (Category_ID, Category_name) VALUES
    ('BCT5','Breakfast & Brunch')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT6','Career Counseling')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT7','Coffee Shops')
INTO Category (Category_ID, Category_name) VALUES
    ('BCT8','Food and More')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT9','Pool Cleaners')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT10','Bars')
INTO Category (Category_ID ,Category_name) VALUES
    ('BCT11','Burgers')
SELECT 1 FROM dual;
/