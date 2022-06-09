-- 1. ¬ывести все пол€ и все строки.
select * from students;
-- 3. ¬ывести только Id пользователей
select id from students;
-- 4. ¬ывести только им€ пользователей
select name from students;
-- 5. ¬ывести только email пользователей
select email from students;
-- 6. ¬ывести им€ и email пользователей
select name,email from students;
-- 7. ¬ывести id, им€, email и дату создани€ пользователей
select id,name,email,created_on  from students;
-- 8. ¬ывести пользователей где password 12333
select *  from students
where password = '12333';
-- 9. ¬ывести пользователей которые были созданы 2021-03-26 00:00:00
select *  from students
where created_on = '2021-03-26 00:00:00';
-- 10. ¬ывести пользователей где в имени есть слово јнна
select *  from students
where name like '%Anna%';
-- 11. ¬ывести пользователей где в имени в конце есть 8
select *  from students
where name like '%8';
-- 12. ¬ывести пользователей где в имени в есть буква а
select *  from students
where name like '%a%';
-- 13. ¬ывести пользователей которые были созданы 2021-07-12 00:00:00
select *  from students
where created_on = '2021-07-12 00:00:00';
--  14. ¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select *  from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';
--  15. ¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select *  from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
--  16. ¬ывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select *  from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
-- 17. ¬ывести пользовател€ у которых id равен 110
select *  from students
order by id;
--  18. ¬ывести пользовател€ у которых id равен 153
select *  from students
where id = 153;
--  19. ¬ывести пользовател€ у которых id больше 140
select *  from students
where id > 140;
-- 20. ¬ывести пользовател€ у которых id меньше 130
select *  from students
where id < 130;
--  21. ¬ывести пользовател€ у которых id меньше 127 или больше 188
select *  from students
where id < 127 or id > 188;
--  22. ¬ывести пользовател€ у которых id меньше либо равно 137
select *  from students
where id <= 137;
--  23. ¬ывести пользовател€ у которых id больше либо равно 137
select *  from students
where id >= 137;
--  24. ¬ывести пользовател€ у которых id больше 180 но меньше 190
select *  from students
where id > 180 and id < 190;
--  25. ¬ывести пользовател€ у которых id между 180 и 190
select *  from students
where id between 180 and 190;




