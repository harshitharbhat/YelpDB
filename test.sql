CREATE TABLE YELP_USER(
                          YELP_ID               VARCHAR(10)                 PRIMARY KEY,
                          Email                 VARCHAR(30)                NOT NULL,
                          First_Name               VARCHAR(30),
                          Last_Name                VARCHAR(30)                NOT NULL,
                          DOB                        DATE,
                          BirthPlace               VARCHAR(50),
                          Gender                CHAR(2)
);
/
