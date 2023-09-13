-- Exibir o nome das Playlists que contém exatamente 2 músicas (GROUPBY/HAVING)
SELECT P.NomePlaylist, COUNT(A.ISBN) AS NumeroDeMusicas
FROM Playlist P
INNER JOIN Adiciona A
    ON P.Email = A.Email AND P.NomePlaylist = A.NomePlaylist
GROUP BY P.NomePlaylist
HAVING COUNT(A.ISBN) = 2;

-- Exibe o email de Manuela Borges, e o acesso e a senha de sua conta premium (INNER JOIN)
SELECT U.Email, CP.Acesso, CP.Senha
FROM Usuario U
INNER JOIN ContaPremium CP
    ON U.Email = CP.Email
WHERE U.Nome_Primeiro = 'Manuela' AND U.Nome_Ultimo = 'Borges';

-- Exibir as Musicas e seus Artistas, mas tambem as Musicas sem Artistas (OUTER JOIN)
SELECT M.ISBN, M.Duracao, A.NomeArtista
FROM Musica M
RIGHT JOIN Artista A
    ON M.ISBN = A.ISBN;

-- (SEMI JOIN)

-- (ANTI JOIN)

-- (SUBCONSULTA DO TIPO ESCALAR)

-- (SUBCONSULTA DO TIPO LINHA)

-- (SUBCONSULTA DO TIPO TABELA)

-- (OPERAÇÃO DE CONJUNTO)