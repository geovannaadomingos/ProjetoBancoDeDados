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

-- Exibir todos os usuários que possuem contas premium (SEMI JOIN)
SELECT u.Email, u.Nome_Primeiro, u.Nome_Ultimo
FROM Usuario u
WHERE EXISTS (
    SELECT *
    FROM ContaPremium cp
    WHERE cp.Email = u.Email);

-- Exibir todos os usuários que não possuem contas premium (ANTI JOIN)
SELECT u.Email, u.Nome_Primeiro, u.Nome_Ultimo
FROM Usuario u
WHERE NOT EXISTS (
    SELECT *
    FROM ContaPremium cp
    WHERE cp.Email = u.Email);

-- Exibir a música com a maior duração (SUBCONSULTA DO TIPO ESCALAR)
SELECT ISBN, Duracao
FROM Musica
WHERE Duracao = (SELECT MAX(Duracao) FROM Musica);

-- Exibir todos os usuários cujo primeiro e último nome sejam iguais ao do usuário com email usuario1@example.com (SUBCONSULTA DO TIPO LINHA)
SELECT email
FROM Usuario
WHERE (nome_primeiro, nome_ultimo) =
	(SELECT nome_primeiro, nome_ultimo
     FROM Usuario
     WHERE email = 'usuario1@example.com');

-- Exibir o email de todos os usuários que tem playlists com ao menos uma música (SUBCONSULTA DO TIPO TABELA)
SELECT u.Email, u.Nome_Primeiro, u.Nome_Ultimo
FROM Usuario u
WHERE EXISTS (
    SELECT *
    FROM Playlist p
    WHERE p.Email = u.Email
    GROUP BY p.Email
    HAVING COUNT(*) >= 1);

-- Exibir todos os acessos e senhas de todas as contas cadastradas na base de dados (OPERAÇÃO DE CONJUNTO)
    SELECT acesso, senha
    FROM ContaComum
UNION
    SELECT acesso , senha
    FROM ContaPremium;
