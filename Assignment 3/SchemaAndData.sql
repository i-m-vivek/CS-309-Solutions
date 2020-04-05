CREATE DATABASE `BookReviewDb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `BookReviewDb`;

/* Delete the tables if they already exist */
drop table if exists Book;
drop table if exists Reviewer;
drop table if exists Scoring;

/* Create the schema for our tables */
create table Book(bID int, title text, year int, author text);
create table Reviewer(rID int, name text);
create table Scoring(rID int, bID int, score int, sDate date);

/* Populate the tables with our data */
insert into Book values(101, 'X1', 1959, 'A1');
insert into Book values(102, 'X2', 1997, 'A2');
insert into Book values(103, 'X3', 1965, 'A3');
insert into Book values(104, 'X4', 2002, 'A4');
insert into Book values(105, 'X5', 1997, 'A5');
insert into Book values(106, 'X6', 1957, null);
insert into Book values(107, 'X7', 2009, 'A5');
insert into Book values(108, 'X8', 2001, 'A4');

insert into Reviewer values(201, 'R1');
insert into Reviewer values(202, 'R2');
insert into Reviewer values(203, 'R3');
insert into Reviewer values(204, 'R4');
insert into Reviewer values(205, 'R5');
insert into Reviewer values(206, 'R6');
insert into Reviewer values(207, 'A5');
insert into Reviewer values(208, 'R7');

insert into Scoring values(201, 101, 2, '2015-01-22');
insert into Scoring values(201, 101, 4, '2015-01-27');
insert into Scoring values(202, 106, 4, null);
insert into Scoring values(203, 103, 2, '2015-01-20');
insert into Scoring values(203, 108, 4, '2015-01-12');
insert into Scoring values(203, 108, 2, '2015-01-30');
insert into Scoring values(204, 101, 3, '2015-01-09');
insert into Scoring values(205, 103, 3, '2015-01-27');
insert into Scoring values(205, 104, 2, '2015-01-22');
insert into Scoring values(205, 108, 4, null);
insert into Scoring values(206, 107, 3, '2015-01-15');
insert into Scoring values(206, 106, 5, '2015-01-19');
insert into Scoring values(207, 107, 5, '2015-01-20');
insert into Scoring values(208, 104, 3, '2015-01-02');

