-- Povoamento da tabela Usuario
INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
VALUES ('usuario1@example.com', 'Juan', 'Silva');

INSERT INTO Usuario (Email, PrimeiroNome)
VALUES ('usuario2@example.com', 'Manuela');

INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
VALUES ('usuario3@example.com', 'Carlos', 'Ferreira');

INSERT INTO Usuario (Email, PrimeiroNome)
VALUES ('usuario4@example.com', 'Ana');

INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
VALUES ('usuario5@example.com', 'Luiz', 'Santos');

INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
VALUES ('usuario6@example.com', 'Rafael', 'Pereira');

INSERT INTO Usuario (Email, PrimeiroNome)
VALUES ('usuario7@example.com', 'Camila');

INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
VALUES ('usuario8@example.com', 'Pedro', 'Mendes');

INSERT INTO Usuario (Email, PrimeiroNome)
VALUES ('usuario9@example.com', 'Carolina');

INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
VALUES ('usuario10@example.com', 'Bruno', 'Teixeira');

INSERT INTO Usuario (Email, PrimeiroNome, SegundoNome)
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
VALUES ('1111222233334444', '2023-12-31');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('2222333344445555', '2023-11-30');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('3333444455556666', '2024-02-29');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('4444555566667777', '2023-10-31');

INSERT INTO Cartao (Numero, Vencimento)
VALUES ('5555666677778888', '2024-01-31');

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


-- Povoamento da tabela Playlist
