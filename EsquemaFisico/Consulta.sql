/**/

/* Encontrar o nome do usuario e a duracao de todas as playlists */
SELECT U.Nome_Primeiro || ' ' || U.Nome_Ultimo AS nome_completo, P.nome, P.duracao
FROM Playlist P
INNER JOIN Usuario U ON P.email = U.email;

/* Listar todos os emails dos usuarios que possuem uma conta premium e o valor que pagam */
SELECT CP.login AS email, CP.preco AS valor_pago
FROM ContaPremium CP;

/* Qual o acesso e a senha da conta do usuario de email 'meom@cin.ufpe.br' cadastrou */
SELECT login, senha
FROM ContaComum
WHERE email = 'meom@cin.ufpe.br';

/* Quais musicas cada usuario adicionou na playlist 'email_nome' */
SELECT A.email, A.FK_Adiciona_Playlist_Email_Nome, A.ISBN
FROM Adiciona A
WHERE A.FK_Adiciona_Playlist_Email_Nome = 'email_nome';

/* Quais artistas participaram da musica 'ISBN' */
SELECT artista
FROM Artistas
WHERE ISBN = 'ISBN';

/* Quais os codigos dos anuncios a conta 'acesso' possui */
SELECT P.adID
FROM Possui P
INNER JOIN ContaComum CC ON P.login = CC.login
WHERE CC.login = 'acesso';

/* Selecionar todas as musicas que estao em playlists com uma duracao superior a 30 minutos*/
SELECT P.nome, P.duracao
FROM Playlist P
WHERE P.duracao > 30;

/*Listar todas as musicas que um usuario escutou, ordenadas por data*/
SELECT E.ISBN, E.data
FROM Escuta E
WHERE E.email = 'email_do_Usuario'
ORDER BY E.data;

/* Exibir o primeiro nome e a quantidade de seguidores o usuario com email 'meom@cin.ufpe.br' */
SELECT U.nome_primeiro, COUNT(S.seguidor) AS quantidade_de_seguidores
FROM Usuario U
LEFT JOIN Segue S ON U.email = S.seguindo
WHERE U.email = 'meom@cin.ufpe.br';

/* Quantas vezes o usuario de email 'meom@cin.ufpe.br' ouviu a musica com codigo 'isbn' */
SELECT COUNT(*) AS vezes_que_ouviu
FROM Escuta E
WHERE E.email = 'meom@cin.ufpe.br' AND E.ISBN = 'isbn';

/* Exibir o nome dos criadores de cada playlist */
SELECT Usuario.nome_primeiro, Playlist.nome
FROM Playlist
INNER JOIN Usuario ON Playlist.email = Usuario.email;

/* Qual o vencimento do cartao do usuario de email 'meom@cin.ufpe.br'? */
SELECT C.vencimento
FROM Cartao C
INNER JOIN Usuario U ON C.email = U.email
WHERE U.email = 'meom@cin.ufpe.br';

/* Qual o login dos usuarios que ouviram a musica 'isbn' na data 'xx/xx/xx' */
SELECT DISTINCT U.login
FROM Usuario U
INNER JOIN Escuta E ON U.email = E.email
WHERE E.ISBN = 'isbn' AND E.data = 'xx/xx/xx';

/* Em quais playlists a musica 'isbn' foi ouvida ? */
SELECT P.nome AS nome_da_playlist
FROM Playlist P
INNER JOIN email_nome-Playlist EP ON P.email_nome = EP.email_nome
INNER JOIN Escuta E ON P.ISBN = E.ISBN
WHERE E.ISBN = 'isbn';

/* Exibir quais usuarios ja criaram playlists */
SELECT DISTINCT U.nome_primeiro, U.nome_ultimo
FROM Usuario U
INNER JOIN email_nome-Playlist EP ON U.email = EP.email;
