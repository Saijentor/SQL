1)Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd:
SELECT model,speed,hd FROM pc
WHERE price < 500;

2)Найдите производителей принтеров. Вывести: maker
SELECT DISTINCT maker FROM product
WHERE type = 'printer';

3)Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.:
SELECT model,ram,screen FROM laptop
WHERE price > 1000;

4)Найдите все записи таблицы Printer для цветных принтеров.:
SELECT * FROM Printer
WHERE color = 'y';

5)Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.:
SELECT model,speed,hd FROM pc
WHERE (cd = '12x' OR cd ='24x') AND price < 600;
или
SELECT model,speed,hd FROM pc
WHERE cd IN('12x','24x') AND price < 600;

6)Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
SELECT DISTINCT maker,speed FROM product p 
JOIN laptop l ON p.model = l.model
WHERE hd >= 10

7)Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT DISTINCT PC.model, price FROM PC 
JOIN Product p ON PC.model = p.model 
WHERE maker = 'B'
UNION
SELECT DISTINCT l.model, price FROM laptop l
JOIN Product p ON l.model = p.model 
WHERE maker = 'B'
UNION
SELECT DISTINCT pr.model, price FROM printer pr 
JOIN Product p ON pr.model = p.model 
WHERE maker = 'B'

8)Найдите производителя, выпускающего ПК, но не ПК-блокноты.
SELECT maker FROM product
WHERE type = 'pc'
EXCEPT
SELECT maker FROM product
WHERE type = 'laptop'

9)Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
SELECT DISTINCT maker FROM pc
JOIN product p ON p.model = pc.model
WHERE speed >= 450

10)Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
SELECT p.model,price FROM printer p
JOIN product pr ON pr.model = p.model
WHERE price = (SELECT max(price) FROM printer)

11)Найдите среднюю скорость ПК.
SELECT AVG(speed) FROM PC

12)Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
Select avg(speed) FROM laptop 
WHERE price > 1000