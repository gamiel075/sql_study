select * from Itens
select * from position
select * from rak

---produtos em cada posição
SELECT ID_position, COUNT(*) AS quantidade_de_produtos
FROM Itens
GROUP BY ID_position;
---llll

---Para saber quais produtos estão em cada posção
SELECT ID_position, name_product
FROM Itens
ORDER BY ID_position, ID_itens;


----produtod por rak
SELECT ID_rak, COUNT(*) AS quantidade_de_produtos
FROM Itens
GROUP BY ID_rak;

---Para saber onde os produtos estão no rak
SELECT r.ID_rak, i.name_product
FROM rak r
JOIN position p ON r.ID_rak = p.ID_rak
JOIN Itens i ON p.ID_position = i.ID_position
ORDER BY r.ID_rak, p.ID_position, i.ID_itens;


