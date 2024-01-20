--Second table
CREATE TABLE High_speed_trains(
  Train_Name VARCHAR(50), 
  Train_Number int,
  Rail_Service_Provider VARCHAR(10),
  Train_Country VARCHAR(20),
  Origin_city VARCHAR(50),
  Origin_country CHAR(2),
  Destination_city VARCHAR(50),
  Destination_country CHAR(2),
  FOREIGN KEY (Train_Name) REFERENCES high_speed_train_list(Train_Name)
);

;

INSERT INTO High_speed_trains 
VALUES
("ICE", 372, "DB", "Germany", "Basel", "CH", "Hamburg", "DE"),
("TGV Lyria", 9206, "SNCF", "France", "Zurich", "CH", "Paris", "FR"),
("TGV Lyria", 9768, "SNCF", "France", "Geneva", "CH", "Paris", "FR");


--Third table
CREATE TABLE Train_Type(
  Train_Type VARCHAR(100) PRIMARY KEY
);

INSERT INTO Train_Type(Train_Type)
VALUES ("Regional");
--("High-speed"),

--Fourth table
CREATE TABLE German_Trains(
  Train_Name VARCHAR(50),
  Train_Type VARCHAR(100),
  Regional_service_provider VARCHAR(100),
  FOREIGN KEY (Train_Type) REFERENCES Train_Type(Train_Type);
);

ALTER TABLE german_trains
ADD State_Bundesland VARCHAR(100);

INSERT INTO german_trains(State_Bundesland)
VALUES ("All"), ("Bayern");
--VALUES("Baden-Wurttemberg");

--FOREIGN KEY (Train_Name) REFERENCES High_speed_trains(Train_Name)

ALTER TABLE german_trains
DROP FOREIGN KEY german_trains_ibfk_1;

INSERT INTO german_trains 
VALUES
("IRE3", "Regional", "BWEGT"),
("ICE", "High-speed", "DB"),
("RB87", "Regional", "BRB");

--First table
CREATE TABLE High_speed_train_list(
    Train_Name VARCHAR(50) PRIMARY KEY
);


--ALTER TABLE High_speed_train_list
--ADD PRIMARY KEY (Train_Name);

insert into High_speed_train_list (Train_Name)
values ("ICE"), ("TGV Lyria"), ("IC"), ("EC");

