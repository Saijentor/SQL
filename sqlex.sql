1)������� ����� ������, �������� � ������ �������� ����� ��� ���� �� ���������� ����� 500 ���. �������: model, speed � hd:
SELECT model,speed,hd 
FROM pc
WHERE price < 500;

2)������� �������������� ���������. �������: maker
SELECT DISTINCT maker FROM product
WHERE type = 'printer';

3)������� ����� ������, ����� ������ � ������� ������� ��-���������, ���� ������� ��������� 1000 ���.:
SELECT model,ram,screen FROM laptop
WHERE price > 1000;

4)������� ��� ������ ������� Printer ��� ������� ���������.:
SELECT * FROM Printer
WHERE color = 'y';

5)������� ����� ������, �������� � ������ �������� ����� ��, ������� 12x ��� 24x CD � ���� ����� 600 ���.:
SELECT model,speed,hd FROM pc
WHERE (cd = '12x' OR cd ='24x') AND price < 600;
���
SELECT model,speed,hd FROM pc
WHERE cd IN('12x','24x') AND price < 600;

6)��� ������� �������������, ������������ ��-�������� c ������� �������� ����� �� ����� 10 �����, ����� �������� ����� ��-���������. �����: �������������, ��������.
SELECT DISTINCT maker,speed 
FROM product p JOIN laptop l
ON p.model = l.model
WHERE hd >= 10

7)������� ������ ������� � ���� ���� ��������� � ������� ��������� (������ ����) ������������� B (��������� �����).
������� 7
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