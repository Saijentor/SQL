1)������� ����� ������, �������� � ������ �������� ����� ��� ���� �� ���������� ����� 500 ���. �������: model, speed � hd:
SELECT model,speed,hd 
FROM pc
WHERE price < 500

2)������� �������������� ���������. �������: maker
SELECT DISTINCT maker FROM product
WHERE type = 'printer'

3)������� ����� ������, ����� ������ � ������� ������� ��-���������, ���� ������� ��������� 1000 ���.:
SELECT model,ram,screen FROM laptop
WHERE price > 1000

4)������� ��� ������ ������� Printer ��� ������� ���������.:
SELECT * FROM Printer
WHERE color = 'y'

5)������� ����� ������, �������� � ������ �������� ����� ��, ������� 12x ��� 24x CD � ���� ����� 600 ���.:
SELECT model,speed,hd FROM pc
WHERE (cd = '12x' OR cd ='24x') AND price < 600