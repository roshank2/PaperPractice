CREATE DATABASE paperpractice;

USE paperpractice;

DROP TABLE IF EXISTS User_Registration;

CREATE TABLE User_Registration (
 		User_Name varchar(50) NOT NULL,
   		Email_ID varchar(50) NOT NULL,
   		Password varchar(50) NOT NULL,
   		PRIMARY KEY (Email_ID)
)DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS Admin_Login;

CREATE TABLE Admin_Login (
 		Admin_ID varchar(50) NOT NULL,
   		Password varchar(50) NOT NULL,
   		PRIMARY KEY (Admin_ID)
)DEFAULT CHARSET=utf8;

insert into admin_login(admin_id,password) values('roshan','12345678');


DROP TABLE IF EXISTS Section;

CREATE TABLE Section (
 		Section_ID integer NOT NULL,
   		Section_Name varchar(50) NOT NULL UNIQUE,
   		PRIMARY KEY (Section_ID)
)DEFAULT CHARSET=utf8;

insert into section
	(Section_ID,Section_Name) 
values
	('01','General Intelligence'),
	('02','English Language'), 
	('03','General Awareness'),
	('04','Quantitative Aptitue');
	
use paperpractice;	
	
DROP TABLE IF EXISTS Topic;

CREATE TABLE Topic(
		Topic_ID integer NOT NULL AUTO_INCREMENT,
		Topic_Name varchar(50) NOT NULL UNIQUE,
		Section_ID integer NOT NULL,
		PRIMARY KEY (Topic_ID),
		FOREIGN KEY (Section_ID) REFERENCES Section(Section_ID)
)DEFAULT CHARSET = utf8;

use paperpractice;

DROP TABLE IF EXISTS Question;

CREATE TABLE Question(
		Ques_ID integer NOT NULL AUTO_INCREMENT,
		Question varchar(420) NOT NULL,
		Option1 varchar(50) NOT NULL,
		Option2 varchar(50) NOT NULL,
		Option3 varchar(50) NOT NULL,
		Option4 varchar(50) NOT NULL,
		correct_ans integer NOT NULL,
		user_choice integer,
		Solution varchar(540),
		Topic_ID integer NOT NULL,
		
		PRIMARY KEY (Ques_ID),
		FOREIGN KEY (Topic_ID) REFERENCES Topic(Topic_ID)
)DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS Feedback;

CREATE TABLE Feedback(
		Feedback_ID integer NOT NULL,
		Email_ID varchar(50) NOT NULL,
		Fb_Description varchar(200) NOT NULL,
		Date_added timestamp DEFAULT CURRENT_TIMESTAMP,
		
		PRIMARY KEY (Feedback_ID),
		FOREIGN KEY (Email_ID) REFERENCES User_Registration(Email_ID)
)DEFAULT CHARSET = utf8;