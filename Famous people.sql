drop database if exists Famous_peole;
Create database Famous_peole;
Use Famous_peole;

Create table industry(
industry_id int primary key,
industry_name varchar(50),
country varchar(50)
);

Insert into industry(industry_id,industry_name,country) values
(1,"Ghallywood","Ghana"),
(2,"Bollywood","India"),
(3,"Nollywood","Nigeria"),
(4,"Hollywood","USA"),
(5,"Hallyuwood","South Korea"),
(6,"BFI","Britain");

CREATE TABLE  celebrities(
celebrity_id int primary key, 
first_name varchar(25), 
last_name varchar(50), 
birth_date date,
gender enum("Male","Female"),
country varchar(30), 
profession ENUM ("Actor", "Singer", "Both"));


 
 
 
 CREATE TABLE  movies( 
 movie_id int primary Key, 
title VARCHAR (30), 
release_year YEAR, 
genre VARCHAR (30)
);




CREATE TABLE music(
music_id int Primary Key, 
title VARCHAR(25), 
release_year YEAR, 
genre VARCHAR (25),
album_OR_single ENUM ('Album', 'Single')
 );


CREATE TABLE celebrity_movie(
celebrity_id int,
movie_id int,
foreign key (celebrity_id) references celebrities(celebrity_id),
foreign key (movie_id) references movies(movie_id)
);

CREATE TABLE celebrity_music (
celebrity_id int,
music_id int ,
foreign key (celebrity_id) references celebrities(celebrity_id),
foreign key (music_id) references music(music_id)
);

CREATE TABLE awards(
award_id int Primary Key AUTO_INCREMENT,
celebrity_id int,
number_of_awards int,
networth decimal(20,2),
rating int,
industry_id int,
foreign key(industry_id) references industry(industry_id),
foreign key (celebrity_id) references celebrities(celebrity_id)
);


/*
Celebrity Data
*/
INSERT  INTO celebrities(celebrity_id,first_name,last_name,birth_date,gender,country, profession) VALUES
-- Hallywood
(1,"Ji-eun","Lee",'1993-05-16',"Female","South Korea","Both"),
(2,"Cha","Eu-woo",'1997-03-30',"Male","South Korea","Both"),
(3,"Jun-ho","Lee",'1990-01-25',"Male","South Korea","Both"),
(4,"Son","Eon-jin",'1982-01-11',"Female","South Korea","Actor"),
(5,"Jenni","Kim",'1996-01-16',"Female","South Korea","Singer"),

-- Hollywood
(6,"Ariana"," Grande ",'1993-06-26',"Female","USA","Both"),
(7,"Demetria","Lovato",'1992-08-20',"Female","USA","Both"),
(8,"Selena","Gomez",'1992-07-22',"Female","USA","Both"),
(9,"Morgan","Freeman",'1937-06-01',"Male","USA","Actor"),
(10,"Curtis","Jackson",'1975-07-06',"Male","USA","Singer"),

-- Ghallywood
(11,"Kwadwo", "Nkansah",'1987-04-15',"Male","Ghana","Both"),
(12,"Rebecca","Acheampong_Acheampong",'1984-08-15',"Female","Ghana","Both"),
(13,"Belinda" ,"Amoah", '1979-12-26', "Female", "Ghana", "Both"),
(14,"Nana_Ama","McBrown","1977-08-15","Female","Ghana","Actor"),
(15,"Micheal", "Owusu_Addo",'1985-06-10',"Male","Ghana","Singer"),

-- Nollywood
( 16,"Nkem", "Owoh","1958-02-7", "Male" , "Nigeria","Actor"),
( 17, "Omotola", "Jalade",'1978-02-07', "Female", "Nigeria","Both"),
(18, "Davido", "Adeleke","1992-11-21", "Male", "Nigeria","Both"),
 (19, "Jim", "Iyke","1976-09-25", "Male", "Nigeria", "Actor"),
 (20, "Mercy", "Chinwo","1990-09-5", "Female", "Nigeria","Singer"),

-- Bollywood
(21,"Alia","Bhatt",'1993-03-15',"Female","Indian","Both"),
(22,"Amitabh","Bachan",'1956-10-11',"Male","Indian","Both"),
(23,"Aamir","Khan",'1965-03-14',"Male","Indian","Both"),
(24,"Nana","Patekar",'1951-01-01',"Male","Indian","Actor"),
(25,"Arijit","Singh",'1987-04-25',"Male","Indian","Singer"),

-- BFI
(26, "Idrissa", "Akuna_Elba", '1972-09-06', "Male", "Britain", "Both"),
(27, "Harry", "Styles", '1994-02-01', "Male", "Britain", "Both"),
(28, "Rita", "Ora", '1990-11-26', "Female", "Britain", "Both"),
(29, "Jason", "Statham", '1967-06-26', "Male", "Britain", "Actor"),
(30, "Adele", "Laurie_Blue_Adkins", '1988-05-05', "Female", "Britain", "Singer");

/*
Movies Data
*/
INSERT INTO movies(movie_id,title,release_year,genre)  Values
-- Hallywood
(1,'Broker', 2022, 'Drama'),
(2,'My ID is Gangnam Beauty', 2018, 'Romantic Comedy'),
(3,'Twenty', 2015, 'Comedy'),
(4,'Crash Landing on You', 2019, 'Romantic Drama'),

-- Hollywood
(5,'iCarly', 2007, 'Teen Sitcom'),
(6,'Camp Rock', 2008, 'Musical Comedy'),
(7,'Wizards of Waverly Place', 2007, 'Teen Sitcom'),
(8,'Driving Miss Daisy', 1989, 'Comedy Drama'),

-- Ghallywood
(9, "Azonto Ghost", 2012, "Comedy horror"),
(10, "If Tomorrow never comes", 2016, "Romantic Drama"),
(11, "Ghana Police", 2015, "Comedy Drama"),
(12, "Hearts of Men", 2009, "Romantic Drama"),

-- Nollywood
(13, "Osuofia in London",2003, "Comedy"),
(14, "Blood sisters",2022, "Crime Triller"),
(15, "Last flight to Abuja", 2012, "Disaster Triller"),
(16, "Fate of Adalanka",2020, "Comedy"),


-- Bollywood
(17,'Highway', 2014, 'Melodrama'),
(18,'Kabhi Khushi Kabhie Ghan', 2001, 'Family drama'),
(19,'Dangal', 2016, 'Action'),
(20,'Ab Tak Chhappan', 2004, 'Thriller'),

-- BFI
(21, "Thor", 2011, "Sci-Fiction"),
(22, "Dunkirk", 2017, "War Drama"),
(23, "Detective Pikachu", 2019, "Mystery Adventure"),
(24, "The Transporter", 2002, "Action Thriller");

/*
Music Data
*/
INSERT INTO music(music_id, title, release_year,genre,album_OR_single) VALUES
(1,'Good Day', 2010, 'K-Pop', 'Single'),
(2,'Love So Fine', 2021, 'K-Pop', 'Single'),
(3,'Can I', 2015, 'K-Pop', 'Album'),
(4,'SOLO', 2018, 'K-Pop', 'Single'),
 
-- Hollywood
(5,'Dangerous Woman', 2016, 'Hip-Pop', 'Album'),
(6,'Confident', 2015, 'Pop', 'Album'),
(7,'Lose You to Love Me', 2019, 'Pop', 'Single'),
(8,'Curtis', 2007, 'Hip-Pop', 'Album'),

-- Ghallywood
(9, "Mama Boss Papa", '2015', "Hiplife", "Single"),
(10, "You Lied to me", '2007', "Highlife", "Single"),
(11, "Awoso me", '2004', "Hiplife", "Single"),
(12, "Hand to mouth", '2016', "Hiplife Rap","Single"),

-- Nollywood
(13, "I go chop your dollar", '2020',"Novelty", "Single"),
(14," Barren Land", '2015'," Alte", "Single"),
 (15, "Assurance", '2018', "Pop ", "Album"),
( 16, "Too many reasons",'2024', "Gospel", "Album"),

-- Bollywood
(17,'Sooha Saala ', 2014, 'Film Pop', 'Single'),
(18,'Shava Shava', 2001, 'Indian film Pop', 'Single'),
(19,'Dhaakad', 2016, 'Film Pop', 'Single'),
(20,'Tum Hi Ho', 2013, 'Romance', 'Album'),
-- BFI
(21,'Mi Mandela', 2014, 'Country', 'Album'),
(22,'As It Was', 2022, 'Pop', 'Single'),
(23,'Your Song', 2017, 'Pop', 'Single'),
(24,'Hello', 2015, 'Pop', 'Single');

/*
Award Data
*/
Insert into awards(celebrity_id,number_of_awards,networth,rating,industry_id) Values
-- Hallywood
(1, 30, 45000000, 8,5),
(2, 24, 50000000, 7,5),
(3, 24, 1500000000, 9,5),
(4, 30, 35000000, 7,5),
(5, 29, 39000000, 8,5),

-- Hollywood
(6, 113, 230000000, 9,4),
(7, 62, 40000000, 7,4),
(8, 150, 1300000000, 9,4),
(9, 29, 250000000, 8,4),
(10, 86, 40000000, 7,4),

-- Ghallywood
(11, 4, 3000000, 6,1),
(12, 9, 82000000, 7,1),
(13, 16, 500000, 6,1),
(14, 20, 900000, 6,1),
(15, 108, 17000000, 8,1),

-- Nollywood
(16, 3, 4000000, 6,3),
(17, 40, 7200000, 7,3),
(18, 20, 30000000, 8,3),
(19, 69, 40000000, 8,3),
(20, 3, 1500000, 6,3),

-- Bollywood
(21, 40, 25000000, 8,2),
(22, 19, 400000000, 9,2),
(23, 13, 235000000, 8,2),
(24, 16, 7000000, 7,2),
(25, 27, 420000000, 9,2),

-- BFI
(26, 15, 40000000, 8,6),
(27, 50, 120000000, 8,6),
(28, 18, 30000000, 7,6),
(29, 15, 90000000, 8,6),
(30, 16, 220000000, 9,6);


/*
Celebrity Music Data
*/
Insert into celebrity_music(celebrity_id,music_id)  values
(1,1),(2,2),(3,3),(5,4),

-- Hollywood
(6,5),(7,6),(8,7),(10,8),

-- Ghallywood
(11,9),(12,10),(13,11),( 15 ,12),

-- Nollywood
(16,13), (17,14),(19,15),(20,16),

-- Bollywood
(21,17),(22,18),(23,19),(25,20),

-- BFI
(26,21),(27,22),(28,23),(30,24);

/*
Celebrity Movies Data
*/
Insert into celebrity_movie(celebrity_id,movie_id)  values
(1,1),(2,2),(3,3),(4,4),

-- Hollywood
(6,5),(7,6),(8,7),(9,8),

-- Ghallywood
(11,9),(12,10),(13,11),(14,12),

-- Nollywood
(16,13), (17,14),(18,15), (19,16),

-- Bollywood
(21,17),(22,18),(23,19),(24,20),

-- BFI
(26,21),(27,22),(28,23),(29,24);


-- movies
SELECT 
    c.celebrity_id,
    CONCAT(c.first_name, " ", c.last_name) AS full_name,
    c.birth_date,
    c.gender,
    c.country,
    c.profession,
    m.title,
    m.release_year,
    m.genre,
    i.industry_name,
    a.number_of_awards,
    a.networth
FROM 
    celebrities AS c
INNER JOIN 
    celebrity_movie AS cmo ON c.celebrity_id = cmo.celebrity_id
INNER JOIN 
    movies AS m ON cmo.movie_id = m.movie_id
INNER JOIN 
    awards AS a ON c.celebrity_id = a.celebrity_id
INNER JOIN 
     industry AS i ON i.industry_id=a.industry_id
     
    order by c.celebrity_id 
;


-- Music
SELECT 
    c.celebrity_id,
    CONCAT(c.first_name, " ", c.last_name) AS full_name,
    c.birth_date,
    c.gender,
    c.country,
    c.profession,
    m.title,
    m.release_year,
    m.genre,
    m.album_OR_single,
    a.number_of_awards,
    a.networth
FROM 
    celebrities AS c
INNER JOIN 
    celebrity_music AS cmo ON c.celebrity_id = cmo.celebrity_id
INNER JOIN 
    music AS m ON cmo.music_id = m.music_id
INNER JOIN 
    awards AS a ON c.celebrity_id = a.celebrity_id
    order by c.celebrity_id 
;

/*
Top 5 most connected famous people
b. What are the 5 least successful people in the field
c. Where do these famous people from, and in which region are their works most
successful
d. Award distribution across different categories
e. Trend of revenue for movies and songs by year
f. Which categories of awards are the most commonly won by people
*/

-- Top 5 most connected famous people(People with highest rating)
SELECT 
    CONCAT(c.first_name, " ", c.last_name) AS full_name,
    c.profession,
    a.rating,
	i.industry_name
FROM 
    celebrities AS c
INNER JOIN 
    celebrity_music AS cmo ON c.celebrity_id = cmo.celebrity_id
INNER JOIN 
    awards AS a ON c.celebrity_id = a.celebrity_id
INNER JOIN 
     industry AS i ON i.industry_id=a.industry_id
 order by a.rating DESC
 Limit 5
;

-- What are the 5 least successful people in the field(networth)
SELECT 
    CONCAT(c.first_name, " ", c.last_name) AS full_name,
    c.profession,
    a.networth,
	i.industry_name
FROM 
    celebrities AS c
INNER JOIN 
    celebrity_music AS cmo ON c.celebrity_id = cmo.celebrity_id
INNER JOIN 
    awards AS a ON c.celebrity_id = a.celebrity_id
INNER JOIN 
     industry AS i ON i.industry_id=a.industry_id
 order by a.rating 
 Limit 5
;


--  Where do these famous people from, and in which region are their works most successful
SELECT 
    CONCAT(c.first_name, " ", c.last_name) AS full_name,
    c.profession,
    c.country
FROM 
    celebrities AS c
INNER JOIN 
    celebrity_music AS cmo ON c.celebrity_id = cmo.celebrity_id
INNER JOIN 
    awards AS a ON c.celebrity_id = a.celebrity_id
INNER JOIN 
     industry AS i ON i.industry_id=a.industry_id
 order by a.rating DESC
 Limit 5
;

-- Award distribution across different categories(Industry with highest award)
SELECT 
  i.industry_name,
  SUM(a.number_of_awards) As Total_Industry_Awards,
  SUM(a.networth) As Total_Industry_Networth
FROM awards AS a, industry as i
WHERE a.industry_id=i.industry_id
 group by i.industry_name
;

-- Celebrity and their networth
SELECT 
	c.celebrity_id,
    CONCAT(c.first_name, " ", c.last_name) AS full_name,
    a.networth
FROM 
    celebrities AS c
INNER JOIN 
    awards AS a ON c.celebrity_id = a.celebrity_id
;

-- industry slicer
Select industry_id,industry_name from industry;

Select * from industry;
Select * from celebrities; 
Select * from movies;
Select * from  music;
Select * from celebrity_movie;
Select * from  celebrity_music;
Select * from awards;


