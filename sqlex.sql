/*1)Find the model number, speed and hard drive capacity for all the PCs with prices below $500. Result set: model, speed, hd.
Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd*/
SELECT model,speed,hd FROM pc
WHERE price < 500;

/*2)List all printer makers. Result set: maker.
Найдите производителей принтеров. Вывести: maker*/
SELECT DISTINCT maker FROM product
WHERE type = 'printer';

/*3)Find the model number, RAM and screen size of the laptops with prices over $1000.
Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.*/
SELECT model,ram,screen FROM laptop
WHERE price > 1000;

/*4)Find all records from the Printer table containing data about color printers.
Найдите все записи таблицы Printer для цветных принтеров.*/
SELECT * FROM Printer
WHERE color = 'y';

/*5)Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.
Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.*/
SELECT model,speed,hd FROM pc
WHERE (cd = '12x' OR cd ='24x') AND price < 600;
--или
SELECT model,speed,hd FROM pc
WHERE cd IN('12x','24x') AND price < 600;

/*6)For each maker producing laptops with a hard drive capacity of 10 Gb or higher, find the speed of such laptops. Result set: maker, speed.
Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.*/
SELECT DISTINCT maker,speed FROM product p 
JOIN laptop l ON p.model = l.model
WHERE hd >= 10;

/*7)Get the models and prices for all commercially available products (of any type) produced by maker B.
Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).*/
SELECT DISTINCT PC.model, price FROM PC JOIN Product p ON PC.model = p.model 
WHERE maker = 'B'
UNION
SELECT DISTINCT l.model, price FROM laptop l JOIN Product p ON l.model = p.model 
WHERE maker = 'B'
UNION
SELECT DISTINCT pr.model, price FROM printer pr JOIN Product p ON pr.model = p.model 
WHERE maker = 'B';

/*8)Find the makers producing PCs but not laptops.
Найдите производителя, выпускающего ПК, но не ПК-блокноты.*/
SELECT maker FROM product
WHERE type = 'pc'
EXCEPT
SELECT maker FROM product
WHERE type = 'laptop';

/*9)Find the makers of PCs with a processor speed of 450 MHz or more. Result set: maker.
Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker*/
SELECT DISTINCT maker FROM pc JOIN product p ON p.model = pc.model
WHERE speed >= 450;

/*10)Find the printer models having the highest price. Result set: model, price.
Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price*/
SELECT p.model,price FROM printer p JOIN product pr ON pr.model = p.model
WHERE price = (SELECT max(price) FROM printer);

/*11)Find out the average speed of PCs.
Найдите среднюю скорость ПК.*/
SELECT AVG(speed) FROM PC;

/*12)Find out the average speed of the laptops priced over $1000.
Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.*/
SELECT AVG(speed) FROM laptop 
WHERE price > 1000;

/*13)Find out the average speed of the PCs produced by maker A.
Найдите среднюю скорость ПК, выпущенных производителем A.*/
SELECT AVG(speed) FROM pc JOIN product p ON pc.model = p.model
WHERE p.maker = 'A';

/*14)For the ships in the Ships table that have at least 10 guns, get the class, name, and country.
Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.*/
SELECT s.class,name,c.country FROM ships s JOIN classes c ON s.class = c.class
WHERE numGuns >= 10;

/*15)Get hard drive capacities that are identical for two or more PCs.Result set: hd.
Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD*/
SELECT hd FROM pc
GROUP BY (hd)
HAVING COUNT(hd) >= 2;

/*16)Get pairs of PC models with identical speeds and the same RAM capacity. Each resulting pair should be displayed only once, i.e. (i, j) but not (j, i).
Result set: model with the bigger number, model with the smaller number, speed, and RAM.
Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.*/
SELECT DISTINCT p1.model, p2.model, p1.speed, p1.ram FROM pc p1, pc p2
WHERE p1.speed = p2.speed AND p1.ram = p2.ram AND p1.model > p2.model;

/*17)Get the laptop models that have a speed smaller than the speed of any PC.Result set: type, model, speed.
Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.Вывести: type, model, speed*/
SELECT DISTINCT type, l.model, l.speed FROM laptop l
JOIN product p ON l.model=p.model 
WHERE speed < ALL (SELECT speed FROM PC);

/*18)Find the makers of the cheapest color printers.Result set: maker, price.
Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price*/
SELECT maker, price FROM printer pr JOIN product p ON p.model = pr.model
WHERE price IN (SELECT min(price) FROM printer WHERE color = 'y') AND color = 'y'
GROUP BY maker,price;

/*19)For each maker having models in the Laptop table, find out the average screen size of the laptops he produces.
Result set: maker, average screen size.
Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов.
Вывести: maker, средний размер экрана.*/
SELECT maker, AVG(screen) avg_screen FROM laptop l
JOIN product p ON p.model = l.model
GROUP BY maker;

/*Find the makers producing at least three distinct models of PCs.
Result set: maker, number of PC models.
20)Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.*/
SELECT maker, COUNT(model) count_pc FROM product
WHERE type = 'pc'
GROUP BY maker
HAVING COUNT(model) >= 3;

/*Find out the maximum PC price for each maker having models in the PC table. Result set: maker, maximum price.
21)Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
Вывести: maker, максимальная цена.*/
SELECT maker, MAX(price) max_price FROM product p
JOIN pc ON p.model = pc.model
GROUP BY maker;

/*For each value of PC speed that exceeds 600 MHz, find out the average price of PCs with identical speeds.
Result set: speed, average price.
22)Для каждого значения скорости ПК, превышающего 600 МГц, определите среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена*/
SELECT speed, AVG(price) avg_price FROM pc
WHERE speed > 600
GROUP BY speed;

/*Get the makers producing both PCs having a speed of 750 MHz or higher and laptops with a speed of 750 MHz or higher.
Result set: maker
23)Найдите производителей, которые производили бы как ПК
со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
Вывести: Maker*/
SELECT maker FROM pc JOIN product p ON p.model = pc.model
WHERE speed >= 750
INTERSECT
SELECT maker FROM laptop l JOIN product p ON p.model = l.model
WHERE speed >= 750;

/*List the models of any type having the highest price of all products present in the database.
24)Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.*/
WITH a_model AS (  
SELECT model,price FROM laptop 
UNION ALL 
SELECT model,price FROM pc 
UNION ALL 
SELECT model,price FROM printer) 
SELECT distinct model FROM a_model 
WHERE price in ( SELECT max(price) FROM a_model);

/*Find the printer makers also producing PCs with the lowest RAM capacity and the highest processor speed of all PCs having the lowest RAM capacity.
Result set: maker.
25)Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker*/
SELECT DISTINCT maker FROM Product 
WHERE type = 'printer' 
AND maker IN (SELECT maker FROM Product JOIN Pc ON Product.model = Pc.model WHERE ram = (SELECT MIN(ram) FROM Pc) 
AND speed = (SELECT MAX(speed) FROM Pc WHERE ram = (SELECT MIN(ram) FROM Pc)));

/*Find out the average price of PCs and laptops produced by maker A.
Result set: one overall average price for all items.
26)Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.*/
WITH a_price AS (
SELECT price FROM pc JOIN product p ON pc.model = p.model
WHERE maker = 'a'
UNION ALL
SELECT price FROM laptop l JOIN product p ON l.model = p.model
WHERE maker = 'a')
SELECT avg(price) AVG_Price FROM a_price;

/*Find out the average hard disk drive capacity of PCs produced by makers who also manufacture printers.
Result set: maker, average HDD capacity.
27)Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.*/
SELECT maker,AVG(hd) AVG_HD FROM pc JOIN product p ON pc.model = p.model
WHERE maker IN (SELECT maker FROM product WHERE type = 'printer')
GROUP BY maker;

/*Using Product table, find out the number of makers who produce only one model.
28)Используя таблицу Product, определить количество производителей, выпускающих по одной модели.*/
SELECT COUNT(maker) cnt_mkr FROM (SELECT maker FROM product
GROUP BY maker
HAVING COUNT(*) = 1) T;
