use Movie_10x;
# Creating actor table 

CREATE TABLE IF NOT EXISTS Actor (
ActorID integer PRIMARY KEY ,
First_name VARCHAR(30),
Last_name VARCHAR(30),
DOB date
);

CREATE TABLE IF NOT EXISTS Director (
DirID integer PRIMARY KEY ,
First_name VARCHAR(30),
Last_name VARCHAR(30),
DOB date
);

CREATE TABLE IF NOT EXISTS Genre (
	GenID integer PRIMARY KEY ,
    Gen_Name VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Ratings (
	RatingID integer PRIMARY KEY,
    Rating decimal(4,2),
    Rating_source VARCHAR(100) NOT NULL -- For links of rating site 
);

CREATE TABLE IF NOT EXISTS Technicians (
TechID integer PRIMARY KEY ,
First_name VARCHAR(30) NOT NULL,
Last_name VARCHAR(30),
DOB date
);


CREATE TABLE IF NOT EXISTS MOVIE(
	MovieID integer PRIMARY KEY,
    RatingID integer,
	Movie_title VARCHAR(20) NOT NULL,
    Release_date date NOT NULL,
    OverView VARCHAR(50) NOT NULL,
    DirID integer NOT NULL,
    FOREIGN KEY (RatingID) REFERENCES Ratings(RatingID) ON UPDATE CASCADE,
    FOREIGN KEY (DirID) REFERENCES Director(DirID) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Movie_Crew(
MovieID integer,
TechID integer ,
Role VARCHAR(20) NOT NULL,
PRIMARY KEY(MovieID,TechID),
FOREIGN KEY (MovieID) REFERENCES Movie(MovieID) ON UPDATE CASCADE,
FOREIGN KEY (TechID) REFERENCES Technicians(TechID) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Movie_Cast(
MovieID integer,
ActorID integer ,
Role VARCHAR(20) NOT NULL,
PRIMARY KEY(MovieID,ActorID),
FOREIGN KEY (MovieID) REFERENCES Movie(MovieID) ON UPDATE CASCADE,
FOREIGN KEY (ActorID) REFERENCES Actor(ActorID) ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Movie_Genre(
MovieID integer,
GenID integer  ,
PRIMARY KEY(MovieID,GenID),
FOREIGN KEY (MovieID) REFERENCES Movie(MovieID) ON UPDATE CASCADE,
FOREIGN KEY (GenID) REFERENCES Genre(GenID) ON UPDATE CASCADE
);
