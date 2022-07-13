create table TEST(
ID integer,
NAME varchar(30)
);

create table COUNTRY(
ID int,
CCODE char(2),
NAME varchar(60)
);

drop table country;
CREATE TABLE country( ID integer PRIMARY KEY NOT NULL, CCODE char(2), NAME varchar(60) );
