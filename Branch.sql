CREATE table Branch(
  Branch varchar(100) NOT NULL,
  Branch_Addr varchar(100),
  PRIMARY key ( Branch)
);

create table Book (
  Title varchar(100)  Not Null,
  Publisher varchar(100) Not Null,
  ISBN varchar(100) ,
  Branch varchar(100) NOT NULL,
  PRIMARY KEY ( ISBN ),
   FOREIGN KEY (Branch) REFERENCES Branch(Branch)
  )


  CREATE TABLE Author (
    Author VARCHAR(255),
    ISBN VARCHAR(13),
    PRIMARY KEY (Author, ISBN),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);
CREATE TABLE Inventory (
    Branch VARCHAR(255),
    ISBN VARCHAR(13),
    Num_copies INT,
    PRIMARY KEY (Branch, ISBN),
    FOREIGN KEY (Branch) REFERENCES Branch(Branch),
    FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
);
