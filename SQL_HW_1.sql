--1. Display all fields and all lines. || 2. Display all students in the table:
select * from students;
-- 3. Display only user IDs:
select id from students;
-- 4. Display only the username:
select name from students;
-- 5. Display only user emails:
select email from students;
-- 6. Display username and email:
select name,email from students;
-- 7. Display id, name, email and creation date of users:
select id,name,email,created_on from students;
-- 8. Display users where password is 12333:
select * from students
where password = '12333';
-- 9. Display users who were created 2021-03-26 00:00:00:
select * from students
where created_on = '2021-03-26 00:00:00';
-- 10. Display users where the name contains the word Anna:
select * from students
where name like '%Anna%';
-- 11. Display users where the name ends with 8:
select * from students
where name like '%8';
-- 12. Display users where there is a letter a in their name:
select * from students
where name like '%a%';
-- 13. Display users who were created 2021-07-12 00:00:00:
select * from students
where created_on = '2021-07-12 00:00:00';
-- 14. Display users who were created on 2021-07-12 00:00:00 and have a password of 1m313:
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';
-- 15. Display users who were created on 2021-07-12 00:00:00 and have the word Andrey in their name:
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
-- 16. Display users who were created on 2021-07-12 00:00:00 and have the number 8 in their name:
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
-- 17. Display user whose id is 110:
select * from students
where id = 110
order by id;
-- 18. Display user whose id is equal to 153:
select * from students
where id = 153;
-- 19. Display user whose id is greater than 140:
select * from students
where id > 140;
-- 20. Display user whose id is less than 130:
select * from students
where id < 130;
-- 21. Display user whose id is less than 127 or greater than 188:
select * from students
where id < 127 or id > 188;
-- 22. Display user whose id is less than or equal to 137:
select * from students
where id <= 137;
-- 23. Display user whose id is greater than or equal to 137:
select * from students
where id >= 137;
-- 24. Display user whose id is greater than 180 but less than 190:
select * from students
where id > 180 and id < 190;
-- 25. Display user whose id is between 180 and 190:
select * from students
where id between 180 and 190;
-- 26. Display users where password is 12333, 1m313, 123313:
select * from students
where password in('12333','1m313','123313');
-- 27. Display users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00:
select * from students
where created_on in('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
-- 28. Display the minimum id:
select min(id) from students;
-- 29. Display the maximum:
select max(id) from students;
-- 30. Display number of users:
select count(id) from students;
-- 31. Display user id, name, user creation date. Sort in ascending order by the date the user was added:
select id,name,created_on from students
order by created_on ASC;
-- 32. Display user id, name, user creation date. Sort in descending order by the date the user was added:
select id,name,created_on from students
order by created_on DESC;
