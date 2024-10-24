create table library (book_id int, 
title varchar(20),
author varchar(20),
year_published date,
genre varchar(20)
);
 insert into library( book_id,title,author,year_published,genre)
 values(1,"A","AA",'2015-02-13',"2"),(2,"B","BB",'2016-02-13',"2"),(3,"C","CC",'2014-02-13',"5"),
 (4,"D","DD",'2013-03-30',"2"),(5,"E","EE",'2024-02-13',"5");
 select * from library;
  -- Q1 
  select title,author from library
  where year(year_published)>2015;
  -- Q2
  select count(genre) from library;
  
  -- Q3
  alter table library
  add column copies_available int;
  
  alter table library
  modify year_published varchar(10);
  
  select * from library;
  
  
  
  