-- Exibir quais músicas e quantas vezes o usuario1@example.com ouviu (GROUPBY/HAVING)
SELECT Email, ISBN, COUNT(*) AS quantas_vezes_ouviu
FROM Escuta E
GROUP BY Email, ISBN
HAVING Email = 'usuario1@example.com';

-- Exibe o email de Manuela Borges, e o acesso e a senha de sua conta premium (INNER JOIN)
SELECT U.Email, CP.Acesso, CP.Senha
FROM Usuario U
INNER JOIN ContaPremium CP
    ON U.Email = CP.Email
WHERE U.Nome_Primeiro = 'Manuela' AND U.Nome_Ultimo = 'Borges';

-- Exibir as Musicas e seus Artistas, mas tambem as Musicas sem Artistas cadastrados (OUTER JOIN)
SELECT M.ISBN, M.Duracao, A.NomeArtista
FROM Musica M
LEFT JOIN Artista A
    ON M.ISBN = A.ISBN;

-- (SEMI JOIN)

-- (ANTI JOIN)

-- (SUBCONSULTA DO TIPO ESCALAR)

-- (SUBCONSULTA DO TIPO LINHA)

-- (SUBCONSULTA DO TIPO TABELA)

-- (OPERAÇÃO DE CONJUNTO)