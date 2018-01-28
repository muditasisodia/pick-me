create database seproj
use seproj

--stafflogin table that is used to stores usernames and passwords used for validation

create table stafflogin(id int, name varchar(20), pass varchar(20))
insert into stafflogin values(1, 'staff1', 'doggo')
insert into stafflogin values(2, 'staff2', 'doge')
insert into stafflogin values(3, 'staff3', 'pet')
select * from stafflogin

--animalfinal table that stores the details of the animals to be displayed on adopt page

create table animalfinal(aid int, name varchar(20), breed varchar(20), gender varchar(20), age int, info varchar(100), location varchar(20))
insert into animalfinal values(1, 'Scar', 'Golden Retriever', 'M', 1, '*ENTER INFO*', images/1.png)
insert into animalfinal values(2, 'Simba', 'Corgi', 'M', 2, '*ENTER INFO*', images/2.png)
insert into animalfinal values(7, 'Mufasa', 'Labrador', 'M', 1, '*ENTER INFO*', images/7.png)
insert into animalfinal values(3, 'Nala', 'Alaskan Malamute', 'F', 1, '*ENTER INFO*', images/3.png)
insert into animalfinal values(4, 'Solembum', 'Maine Coon', 'M', 10, '*ENTER INFO*', images/4.png)
insert into animalfinal values(5, 'McGonagall', 'Tabby', 'F', 6, '*ENTER INFO*', images/5.png) 
insert into animalfinal values(6, 'Narcissa', 'Persian Cat', 'F', 8, '*ENTER INFO*', images/6.png)

--book table that stores the slots, names and numbers of customers with appointments

create table book(status int, slot varchar(20), name varchar(20), num bigint)
insert into book values (0, '10am-11am', '', null)
insert into book values (0, '11am-12noon', '', null)
insert into book values (0, '6pm-7pm', '', null)

--feedback table stores all the feedbacks given by users on the website

create table feedback(id int, name varchar(20), number bigint, feed varchar(20))

--vol table stores details and dates from volunteers
create table feedback(name varchar(20), number bigint, datee varchar(20))

