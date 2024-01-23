Create table Client(
    Client_id int  PRIMARY Key  ,
    Name varchar(255) Not  null,
    Location varchar(255) Not null
);

Create Table Manager(
    Manager_Id int PRIMARY key,
    Manager_name varchar(255),
    Manager_location VARCHAR(255) NOT NULL
);

create table Contract(
    Contract_Id int PRIMARY key ,
    Estimated_Cost Decimal(10 , 2),
     Client_ID INT,
     Completion_date DATE,
 FOREIGN KEY (Client_ID) REFERENCES Client(Client_ID),
    FOREIGN KEY (Manager_ID) REFERENCES Manager(Manager_ID)

) 
create table Staff(
     
    Staff_ID INT PRIMARY KEY,
    Contract_ID INT,
    Manager_Id Int,
    Staff_name VARCHAR(255) NOT NULL,
    Staff_location VARCHAR(255) NOT NULL,
    FOREIGN key (Contract_ID) REFERENCES Contract(Contract_ID),
    FOREIGN key (Manager_ID) REFERENCES Manager(Manager_ID) 
);