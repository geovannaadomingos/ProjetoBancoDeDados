-- Povoamento da tabela Usuario
INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario1@example.com', 'Juan', 'Silva');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario2@example.com', 'Manuela', 'Borges');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario3@example.com', 'Carlos', 'Ferreira');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario4@example.com', 'Ana', 'Santos');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario5@example.com', 'Luiz', 'Santos');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario6@example.com', 'Rafael', 'Pereira');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario7@example.com', 'Camila', 'Rodrigues');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario8@example.com', 'Pedro', 'Mendes');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario9@example.com', 'Carolina', 'Menezes');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario10@example.com', 'Bruno', 'Teixeira');

INSERT INTO Usuario (Email, Nome_Primeiro, Nome_Ultimo)
VALUES ('usuario11@example.com', 'Mariana', 'Silva');

-- Povoamento da tabela Musica
INSERT INTO Musica (ISBN, Duracao)
VALUES ('1234567890', 240);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('2345678901', 180);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('3456789012', 300);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('4567890123', 210);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('5678901234', 270);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('6789012345', 220);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('7890123456', 190);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('8901234567', 250);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('9012345678', 280);

INSERT INTO Musica (ISBN, Duracao)
VALUES ('0123456789', 200);


-- Povoamento da tabela Artista
INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('1234567890', 'Adele');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('2345678901', 'Ed Sheeran');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('3456789012', 'Fifth Harmony');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('4567890123', 'Taylor Swift');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('5678901234', 'Bruno Mars');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('6789012345', 'Rihanna');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('7890123456', 'Justin Bieber');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('8901234567', 'Ariana Grande');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('9012345678', 'Harry Styles');

INSERT INTO Artista (ISBN, NomeArtista)
VALUES ('0123456789', 'Katy Perry');


-- Povoamento da tabela Cartao
INSERT INTO Cartao (Numero, Vencimento)
VALUES ('1111222233334444', DATE '2023-12-31');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('2222333344445555', DATE '2023-11-30');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('3333444455556666', DATE '2024-02-29');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('4444555566667777', DATE '2023-10-31');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('5555666677778888', DATE '2024-01-31');

-- Povoamento da tabela ContaPremium
INSERT INTO ContaPremium (Acesso, Senha, Preco, Numero, Email)
VALUES ('acesso1', 'senha123', 9.99, '1111222233334444', 'usuario1@example.com');

INSERT INTO ContaPremium (Acesso, Senha, Preco, Numero, Email)
VALUES ('acesso2', 'senha456', 12.99, '2222333344445555', 'usuario2@example.com');

INSERT INTO ContaPremium (Acesso, Senha, Preco, Numero, Email)
VALUES ('acesso3', 'senha789', 7.99, '3333444455556666', 'usuario3@example.com');

INSERT INTO ContaPremium (Acesso, Senha, Preco, Numero, Email)
VALUES ('acesso4', 'senhaabc', 14.99, '4444555566667777', 'usuario4@example.com');

INSERT INTO ContaPremium (Acesso, Senha, Preco, Numero, Email)
VALUES ('acesso5', 'senhaxyz', 11.99, '5555666677778888', 'usuario5@example.com');

INSERT INTO ContaPremium (Acesso, Senha, Preco, Numero, Email)
VALUES ('acesso6', 'senha123', 9.99, '5555666677778888', 'usuario6@example.com');


-- Povoamento da tabela ContaComum
INSERT INTO ContaComum (Acesso, Senha, Email)
VALUES ('acesso7', 'senha123', 'usuario7@example.com');

INSERT INTO ContaComum (Acesso, Senha, Email)
VALUES ('acesso8', 'senha456', 'usuario8@example.com');

INSERT INTO ContaComum (Acesso, Senha, Email)
VALUES ('acesso9', 'senha789', 'usuario9@example.com');

INSERT INTO ContaComum (Acesso, Senha, Email)
VALUES ('acesso10', 'senhaabc', 'usuario10@example.com');

INSERT INTO ContaComum (Acesso, Senha, Email)
VALUES ('acesso11', 'senhaxyz', 'usuario11@example.com');


-- Povoamento da tabela Anuncio
INSERT INTO Anuncio (adID)
VALUES ('AD001');

INSERT INTO Anuncio (adID)
VALUES ('AD002');

INSERT INTO Anuncio (adID)
VALUES ('AD003');

INSERT INTO Anuncio (adID)
VALUES ('AD004');

INSERT INTO Anuncio (adID)
VALUES ('AD005');

INSERT INTO Anuncio (adID)
VALUES ('AD006');

INSERT INTO Anuncio (adID)
VALUES ('AD007');

INSERT INTO Anuncio (adID)
VALUES ('AD008');

INSERT INTO Anuncio (adID)
VALUES ('AD009');

INSERT INTO Anuncio (adID)
VALUES ('AD0010');


-- Povoamento da tabela Playlist
INSERT INTO Playlist (NomePlaylist, Email)
VALUES ('Minhas Músicas Favoritas', 'usuario1@example.com');

INSERT INTO Playlist (NomePlaylist, Email)
VALUES ('Músicas para Malhar', 'usuario2@example.com');

INSERT INTO Playlist (NomePlaylist, Email)
VALUES ('Músicas Relaxantes', 'usuario3@example.com');

INSERT INTO Playlist (NomePlaylist, Email)
VALUES ('Playlist de Verão', 'usuario4@example.com');

INSERT INTO Playlist (NomePlaylist, Email)
VALUES ('Músicas dos Anos 80', 'usuario5@example.com');


-- Povoamento da tabela Escuta
INSERT INTO Escuta (Email, ISBN, DataEscutou)
VALUES ('usuario1@example.com', '1234567890', '2023-09-10');

INSERT INTO Escuta (Email, ISBN, DataEscutou)
VALUES ('usuario2@example.com', '2345678901', '2023-09-11');

INSERT INTO Escuta (Email, ISBN, DataEscutou)
VALUES ('usuario3@example.com', '3456789012', '2023-09-12');

INSERT INTO Escuta (Email, ISBN, DataEscutou)
VALUES ('usuario4@example.com', '4567890123', '2023-09-13');

INSERT INTO Escuta (Email, ISBN, DataEscutou)
VALUES ('usuario5@example.com', '5678901234', '2023-09-14');


-- Povoamento da tabela Possui
INSERT INTO Possui (Acesso, adID)
VALUES ('acesso7', 'AD001');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso7', 'AD006');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso8', 'AD002');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso8', 'AD007');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso9', 'AD003');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso9', 'AD008');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso9', 'AD009');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso10', 'AD004');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso10', 'AD0010');

INSERT INTO Possui (Acesso, adID)
VALUES ('acesso11', 'AD005');


-- Povoamento da tabela PodeSerEm


-- Povoamento da tabela Segue
INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario1@example.com', 'usuario2@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario1@example.com', 'usuario3@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario1@example.com', 'usuario4@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario2@example.com', 'usuario5@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario3@example.com', 'usuario1@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario4@example.com', 'usuario2@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario5@example.com', 'usuario4@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario5@example.com', 'usuario6@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario6@example.com', 'usuario1@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario6@example.com', 'usuario2@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario6@example.com', 'usuario3@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario7@example.com', 'usuario1@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario8@example.com', 'usuario3@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario9@example.com', 'usuario1@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario9@example.com', 'usuario4@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario10@example.com', 'usuario1@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario11@example.com', 'usuario2@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario11@example.com', 'usuario3@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario3@example.com', 'usuario11@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario4@example.com', 'usuario5@example.com');

INSERT INTO Segue (Seguindo_Email, Seguidor_Email)
VALUES ('usuario5@example.com', 'usuario10@example.com');
