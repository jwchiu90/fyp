CREATE TABLE Users(
	id INT NOT NULL PRIMARY KEY,
	Name VARCHAR(45) NOT NULL,
  Email VARCHAR(45) NULL,
  IC_num VARCHAR(45) NULL,
  Password VARCHAR(45) NOT NULL,
  Role VARCHAR(45) NOT NULL,
);

CREATE TABLE Groups (
  Group_id INT NOT NULL PRIMARY KEY,
  Group_member VARCHAR(45) NOT NULL,
);

CREATE TABLE Message(
  Message_id INT NOT NULL PRIMARY KEY,
  Date DATETIME NULL,
  Content VARCHAR(45) NULL,
  Template VARCHAR(45) NULL,
  Language VARCHAR(45) NULL,
  Subject VARCHAR(45) NULL,
  Status VARCHAR(45) NULL,
 
   User_id INT FOREIGN KEY
    REFERENCES Users (id),

    Group_id INT FOREIGN KEY 
    REFERENCES Groups (Group_id)
);

CREATE TABLE Contact(
  Contact_id INT NOT NULL PRIMARY KEY,
  Group_id VARCHAR(45) NOT NULL,
  Name VARCHAR(45) NULL,
  Email VARCHAR(45) NULL,
 );

 CREATE TABLE Template (
  Template_id INT NOT NULL PRIMARY KEY,
  Name VARCHAR(45) NULL,
  Content VARCHAR(45) NULL,
  Message_id VARCHAR(45) NOT NULL,
  );

CREATE TABLE C_Message (
  C_Message_id INT NOT NULL PRIMARY KEY,
 
 Contact_id INT FOREIGN KEY
    REFERENCES Contact (Contact_id),

  Message_id INT FOREIGN KEY 
    REFERENCES Message (Message_id)
);



