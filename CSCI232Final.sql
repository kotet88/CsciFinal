
-- Creates a database with name Hollywood_Movies
-- CREATE DATABASE Hollywood_Movies;

-- Creates a table Movies with given attributes 
CREATE TABLE Movies (Id serial PRIMARY KEY, Title varchar (255), Director_Name varchar (255), Genre varchar (255), Length_In_Minutes real);
-- Insert given values into Movies table
INSERT INTO Movies VALUES (1,'Avatar','Sean Williams','Action',135);
INSERT INTO Movies VALUES (2,'Avengers','Joe Russo','Sci-Fi',205);
INSERT INTO Movies VALUES (3,'Titanic','James Cameron','Romance',185);
INSERT INTO Movies VALUES (4,'Tenet','Christopher Nolan','Mystery',120);
INSERT INTO Movies VALUES (5,'Fast and Furious','Vin Diesel','Action',135);
INSERT INTO Movies VALUES (6,'The Lion King','Jon Favreau','Documentary',110);
INSERT INTO Movies VALUES (7,'Jurassic World','Colin Trevorrow','Sci-Fi',127);
INSERT INTO Movies VALUES (8,'Transformers','Michael Bay','War',155);
INSERT INTO Movies VALUES (9,'Minions','Kyle Balda','Comedy',130);
INSERT INTO Movies VALUES (10,'Aquaman','James Wan','Sci-Fi',110);
INSERT INTO Movies VALUES (11,'Iron Man','Jon Favreau','Sci-Fi',132);
INSERT INTO Movies VALUES (12,'Venom','Ruben Fleischer','Sci-Fi',95);
INSERT INTO Movies VALUES (13,'Joker','Todd Phillips','Drama',155);
INSERT INTO Movies VALUES (14,'Skyfall','Sam Mendes','Adventure',128);
INSERT INTO Movies VALUES (15,'The Lord of the Rings','Peter Jackson','Fantasy',225);
INSERT INTO Movies VALUES (16,'Mission Impossible','Brad Bird','Action',140);
INSERT INTO Movies VALUES (17,'Johnny English','Peter Howitt','Spy',100);
INSERT INTO Movies VALUES (18,'Beauty and the Beast','Bill Condon','Horror',121);
INSERT INTO Movies VALUES (19,'Ice Age','Chris Wedge','Comedy',130);
INSERT INTO Movies VALUES (20,'Star Wars','George Lucas','Sci-Fi',115);




-- Creates a table Cast with given attributes 
CREATE TABLE Movie_Cast (Id int REFERENCES Movies (Id), Actor varchar (255), Actress varchar (255), Villain varchar (255), Total_Crew_Members int);
-- Insert given values into Cast table
INSERT INTO Movie_Cast VALUES (1,'Sam Worthington','Zoe Saldana','Stephen Lang', 25);
INSERT INTO Movie_Cast VALUES (2,'Chris Hemsworth','Scarlett Johansson','Josh Brolin', 50);
INSERT INTO Movie_Cast VALUES (3,'Leonardio DiCaprio','Kate Winslet','Billy Zane', 32);
INSERT INTO Movie_Cast VALUES (4,'John David','Elizabeth Debicki','Robert Pattinson', 28);
INSERT INTO Movie_Cast VALUES (5,'Vin Diesel','Jordana Brewster','Jason Statham', 46);
INSERT INTO Movie_Cast VALUES (6, 'Donald Glover', 'Beyonce Knowles', 'Chiwetel Ejiofor', 20);
INSERT INTO Movie_Cast VALUES (7, 'Chris Pratt', 'Bryce Howard', 'Henry Wu', 41);
INSERT INTO Movie_Cast VALUES (8, 'Shia LaBeouf', 'Megan Fox', 'Dylan Gould', 39);
INSERT INTO Movie_Cast VALUES (9, 'John Hamm', 'Allison Janney', 'Hiroyuki Sanada', 35);
INSERT INTO Movie_Cast VALUES (10, 'Jason Momoa', 'Amber Heard', 'David Hyde', 48); 
INSERT INTO Movie_Cast VALUES (11, 'Robert Downey', 'Gwyneth Paltrow', 'Jeff Bridges', 15);
INSERT INTO Movie_Cast VALUES (12, 'Tom Hardy', 'Anne Weying', 'Carlton Drake', 50);
INSERT INTO Movie_Cast VALUES (13, 'Robert De Niro', 'Zazie Beetz', 'Joaquin Phoenix', 35);
INSERT INTO Movie_Cast VALUES (14, 'Daniel Craig', 'Judi Dench', 'Javier Bardem', 48);
INSERT INTO Movie_Cast VALUES (15, 'Bruce Allpress', 'Cate Blanchett', 'Viggo Mortensen', 24);
INSERT INTO Movie_Cast VALUES (16, 'Tom Cruise', 'Emmanuelle Beart', 'Jean Reno', 46);
INSERT INTO Movie_Cast VALUES (17, 'Rowan Atkinson', 'Tasha Vasconcelos', 'Greg Wise', 44);
INSERT INTO Movie_Cast VALUES (18, 'Dan Stevens', 'Emma Watson', 'Luke Evans', 50);
INSERT INTO Movie_Cast VALUES (19, 'Ray Romano', 'Lorri Bagley', 'Gordon Visnjic', 25);
INSERT INTO Movie_Cast VALUES (20, 'Liam Neeson', 'Natalie Portman', 'Ray Park', 50);






-- Creates a table Earnings with given attributes 
CREATE TABLE Earnings (Id int REFERENCES Movies (Id), Distributor varchar(255), International_Collections real, Domestic_Collections real, Worldwide_Collections real);
-- Insert given values into Earnings table
INSERT INTO Earnings VALUES (1, '20th Century Studios', 2028193712, 760507625,2788701337);
INSERT INTO Earnings VALUES (2, 'Paramount Pictures', 891742301, 623357910, 1515100211);
INSERT INTO Earnings VALUES (3, '20th Century Studios', 1548622601, 659363944, 2207986545);
INSERT INTO Earnings VALUES (4, 'Warner Bros. Pictures', 293394842, 55100000, 348494842);
INSERT INTO Earnings VALUES (5, 'Universal Pictures', 61946062, 144512310, 206458372);
INSERT INTO Earnings VALUES (6, 'Walt Disney Pictures', 1110771380, 543638043, 165440943);
INSERT INTO Earnings VALUES (7, 'Universal Pictures', 1017673342, 652270625, 1669943967);
INSERT INTO Earnings VALUES (8, 'Paramount Pictures',0, 5849647, 5849647);
INSERT INTO Earnings VALUES (9, 'Universal Pictures', 823585370, 336045770, 1159631140);
INSERT INTO Earnings VALUES (10, 'Warner Bros. Pictures', 808904713, 335061807, 1143966520);
INSERT INTO Earnings VALUES (11, 'Paramount Pictures', 266567421, 318604126, 585171547); 
INSERT INTO Earnings VALUES (12, 'Sony Pictures Entertainment Motion Picture Group', 640019491, 213511408, 853530899);
INSERT INTO Earnings VALUES (13, 'Warner Bros. Pictures', 737105360, 335451311, 1072556671); 
INSERT INTO Earnings VALUES (14, 'Sony Pictures Entertainment Motion Picture Group', 806166704, 304360277, 1110526981); 
INSERT INTO Earnings VALUES (15, 'New Line Cinema', 571666235, 315544750, 887210985); 
INSERT INTO Earnings VALUES (16, 'Paramount Pictures', 276716108, 180981886, 457697994); 
INSERT INTO Earnings VALUES (17, 'Universal Pictures', 133722282, 28013509, 161735791); 
INSERT INTO Earnings VALUES (18, 'Walt Disney Pictures', 752128924, 504014165, 1256143089); 
INSERT INTO Earnings VALUES (19, '20th Century Studios', 209728938, 176387405, 386116343); 
INSERT INTO Earnings VALUES (20, '20th Century Studios', 314400000, 460998007, 775398007); 


-- Creates a table Release_info with given attributes
CREATE TABLE Release_info (Id int REFERENCES Movies (Id), Language varchar (255), Country varchar (255), Month_Released int, Year_Released int);
-- Insert given values into Release_info table
INSERT INTO Release_info VALUES (1, 'English', 'USA', 12, 2009);
INSERT INTO Release_info VALUES (2, 'English', 'USA', 05, 2012);
INSERT INTO Release_info VALUES (3, 'English', 'USA', 12, 1997);
INSERT INTO Release_info VALUES (4, 'English', 'USA', 09, 2020);
INSERT INTO Release_info VALUES (5, 'English', 'USA', 06, 2001);
INSERT INTO Release_info VALUES (6, 'English', 'USA', 07, 2019);
INSERT INTO Release_info VALUES (7, 'English', 'USA', 05, 2015);
INSERT INTO Release_info VALUES (8, 'English', 'USA', 07, 2007);
INSERT INTO Release_info VALUES (9, 'English', 'USA', 07, 2015);
INSERT INTO Release_info VALUES (10, 'English', 'USA', 12, 2018);
INSERT INTO Release_info VALUES (11, 'English', 'USA', 05, 2008);
INSERT INTO Release_info VALUES (12, 'English', 'USA', 10, 2018);
INSERT INTO Release_info VALUES (13, 'English', 'USA', 07, 2019);
INSERT INTO Release_info VALUES (14, 'English', 'USA', 11, 2012);
INSERT INTO Release_info VALUES (15, 'English', 'USA', 12, 2001);
INSERT INTO Release_info VALUES (16, 'English', 'USA', 05, 1996);
INSERT INTO Release_info VALUES (17, 'English', 'UK', 07, 2003);
INSERT INTO Release_info VALUES (18, 'English', 'USA', 03, 2017);
INSERT INTO Release_info VALUES (19, 'English', 'USA', 03, 2002);
INSERT INTO Release_info VALUES (20, 'English', 'USA', 05, 1980);





-- Creates a table Ratings with given attributes 
CREATE TABLE Ratings (Id int REFERENCES Movies (Id), IMDB_Rating real, Rotten_Tomatoes real, Awards_Won int, Oscars_Won int);
-- Insert given values into Ratings table
INSERT INTO Ratings VALUES (1, 7.8, 82, 89, 3);
INSERT INTO Ratings VALUES (2, 8.0, 92, 38, 0);
INSERT INTO Ratings VALUES (3, 7.8, 89, 123, 11);
INSERT INTO Ratings VALUES (4, 7.8, 71, 0, 0);
INSERT INTO Ratings VALUES (5, 6.8, 53, 11, 0);
INSERT INTO Ratings VALUES (6, 8.0, 93, 37, 1);
INSERT INTO Ratings VALUES (7, 7.0, 70, 15, 0);
INSERT INTO Ratings VALUES (8, 7.0, 58, 20, 0);
INSERT INTO Ratings VALUES (9, 6.4, 55, 4, 0);
INSERT INTO Ratings VALUES (10, 6.9, 65, 2, 0);
INSERT INTO Ratings VALUES (11, 7.9, 94, 21, 0);
INSERT INTO Ratings VALUES (12, 6.7, 30, 3, 0);
INSERT INTO Ratings VALUES (13, 8.5, 68, 108, 2);
INSERT INTO Ratings VALUES (14, 7.7, 92, 65, 2);
INSERT INTO Ratings VALUES (15, 8.8, 91, 118, 4);
INSERT INTO Ratings VALUES (16, 7.1, 64, 3, 0);
INSERT INTO Ratings VALUES (17, 6.2, 33, 0, 0);
INSERT INTO Ratings VALUES (18, 7.1, 71, 15, 0);
INSERT INTO Ratings VALUES (19, 7.5, 77, 5, 0);
INSERT INTO Ratings VALUES (20, 6.5, 65, 26, 0);



-- Query to print the length of lenghtiest movie in minutes (MAX)
SELECT MAX(Length_In_Minutes) FROM Movies;

-- Query to print the Title of top 10 most lenghty movies (Top/Bottom)
SELECT Title FROM Movies ORDER BY Length_In_Minutes DESC LIMIT 10;

-- Query to print the Title of the movies where 'Liam Neeson' worked (String Match)
SELECT Title FROM Movies Where Id IN (SELECT Id FROM Cast WHERE Actor= 'Liam Neeson');

-- Query to find the name id, language, country, of a movie from the year 2000 and forward (Wild Cards)
SELECT Id, Language, Country FROM Release_Info WHERE Year_Released LIKE '2%';

-- Query to find the id, distributor, and worldwide_collections of movies distributed by Paramount Pictures (Regex)
SELECT Id, Distributor, Worldwide_Collections FROM Earnings WHERE Distributor ~ '^Paramount';

-- Query to display the actor, actress, total number of crews, and the villain of a certain movie (JOINS)
SELECT Title, Actor, Actress, Total_Crew_Members, Villain FROM Cast JOIN Movies using (Id);

-- Query to display the maximum, minimum, average, and total amount of Worldwide_Collections (MAX,MIN,AVG,SUM)
SELECT MAX(Worldwide_Collections), MIN(Worldwide_Collections), AVG(Worldwide_Collections), SUM(Worldwide_Collections) from Earnings;

-- Query to display the number of movies that made over 457,697,994 for Worldwide_Collections (COUNT)
SELECT COUNT(*) FROM Earnings WHERE Worldwide_Collections > 457697994;

-- Query to display the actor's and actresses' name where the number of crews increases in ascending order (GROUP BY)
SELECT Actor, Actress, Total_Crew_Members, COUNT(*) FROM Cast GROUP BY (Total_Crew_Members) ORDER BY ASC;
