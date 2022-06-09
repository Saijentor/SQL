-- 1. Вывести все поля и все строки.
select * from students;
-- 3. Вывести только Id пользователей
select id from students;
-- 4. Вывести только имя пользователей
select name from students;
-- 5. Вывести только email пользователей
select email from students;
-- 6. Вывести имя и email пользователей
select name,email from students;
-- 7. Вывести id, имя, email и дату создания пользователей
select id,name,email,created_on  from students;
-- 8. Вывести пользователей где password 12333
select *  from students
where password = '12333';
-- 9. Вывести пользователей которые были созданы 2021-03-26 00:00:00
select *  from students
where created_on = '2021-03-26 00:00:00';
-- 10. Вывести пользователей где в имени есть слово Анна
select *  from students
where name like '%Anna%';
-- 11. Вывести пользователей где в имени в конце есть 8
select *  from students
where name like '%8';
-- 12. Вывести пользователей где в имени в есть буква а
select *  from students
where name like '%a%';
-- 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
select *  from students
where created_on = '2021-07-12 00:00:00';
--  14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select *  from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';
--  15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select *  from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';
--  16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select *  from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
-- 17. Вывести пользователя у которых id равен 110
select *  from students
order by id;
--  18. Вывести пользователя у которых id равен 153
select *  from students
where id = 153;
--  19. Вывести пользователя у которых id больше 140
select *  from students
where id > 140;
-- 20. Вывести пользователя у которых id меньше 130
select *  from students
where id < 130;




