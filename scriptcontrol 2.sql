use biblioteca
go


select * from livros
select * from aptos
select * from prateleira




select id_apto, count(*) as qtd_livros
from livros
group by id_apto;


SELECT id_prateleira, COUNT(*) AS qtd_livros
FROM livros
GROUP BY id_prateleira;


---Para saber onde os produtos estão no prateleira
SELECT r.id_prateleira, i.nome_livro
FROM prateleira r
JOIN aptos p ON r.id_prateleira = p.id_prateleira
JOIN livros i ON p.id_apto = i.id_apto
ORDER BY r.id_prateleira, p.id_apto, i.id_livro;



-- Inserir livros em diferentes prateleiras e aptos
-- Prateleira 2
INSERT INTO livros (id_livro, id_apto, id_prateleira, id_fileira, nome_livro, qtd_livros, data_cadastro, data_de_alteração, login_cadastro)
VALUES
(21, 3, 2, 1, 'Crime e Castigo', 3, '2024-01-26', '2024-01-26T10:30:00', 'admin'),
(22, 3, 2, 1, 'Cem Anos de Solidão', 4, '2024-01-26', '2024-01-26T11:45:00', 'user1'),
(23, 3, 2, 2, 'O Poderoso Chefão', 2, '2024-01-26', '2024-01-26T13:15:00', 'user2');

-- Prateleira 3
INSERT INTO livros (id_livro, id_apto, id_prateleira, id_fileira, nome_livro, qtd_livros, data_cadastro, data_de_alteração, login_cadastro)
VALUES
(255, 4, 3, 1, 'A Metamorfose', 2, '2024-01-26', '2024-01-26T14:45:00', 'admin'),
(266, 4, 3, 1, 'O Alquimista', 3, '2024-01-26', '2024-01-26T16:00:00', 'user1'),
(277, 4, 3, 2, 'A Revolução dos Bichos', 1, '2024-01-26', '2024-01-26T17:30:00', 'user2');
---aqui de um problmea porque o id estava duplicado(um livro já usava), na ordem para eu usar 27 ao inves de 255


-- Aptos para as prateleiras 4 e 5
INSERT INTO aptos (id_apto, id_prateleira, id_fileira, nome_apto, qtd_livros, capacidade_livros, data_cadastro, data_de_alteração, login_cadastro)
VALUES
(122, 4, 1, 'Agatha Christie', 0, 9, '2024-01-28', '2024-01-28T09:30:00', 'admin'),
(133, 4, 1, 'Stephen King', 0, 7, '2024-01-28', '2024-01-28T11:00:00', 'user1'),
(14, 5, 2, 'George Orwell', 0, 8, '2024-01-28', '2024-01-28T12:30:00', 'user2');
-- Adicione mais aptos conforme necessário


DELETE FROM aptos
WHERE id_apto IN (122, 133, 144);

-- Associação de posições dos aptos aos racks
UPDATE aptos
SET id_prateleira = 4
WHERE id_prateleira IN (1, 2, 3);

UPDATE aptos
SET id_prateleira = 5
WHERE id_apto IN (4, 5, 6);
-- Adicione mais posições conforme necessário



select * from livros
select * from aptos
select * from prateleira