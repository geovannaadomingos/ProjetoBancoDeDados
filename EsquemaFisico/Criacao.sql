-- Criação das tabelas comuns
CREATE TABLE Usuario(
    Email VARCHAR(100) NOT NULL,
    Nome_Primeiro VARCHAR(100) NOT NULL,
    Nome_Ultimo VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Usuario PRIMARY KEY (Email)
);

CREATE TABLE Musica(
    ISBN VARCHAR(100) NOT NULL,
    Duracao NUMERIC(3, 0), -- representar duração de até 999 segundos, suficiente para músicas de até 516,65 minutos
    CONSTRAINT PK_ISBN PRIMARY KEY (ISBN)
);

CREATE TABLE Artista(
    ISBN VARCHAR(100) NOT NULL,
    NomeArtista VARCHAR(100),
    CONSTRAINT PK_Artista PRIMARY KEY (ISBN),
    CONSTRAINT FK_ISBN_Musica FOREIGN KEY (ISBN) REFERENCES Musica (ISBN)
);

CREATE TABLE Cartao(
    Numero VARCHAR(16), -- É geralmente melhor salvar o número do cartão de crédito como uma string (VARCHAR) em vez de um número (NUMBER) por várias razões: 1) números de cartão de crédito podem começar com 0, 2) números de cartão de crédito não são usados para cálculos matemáticos, 4) números de cartão de crédito não são números, eles são apenas uma sequência de dígitos.
    Vencimento DATE,
    CONSTRAINT PK_Numero_Cartao PRIMARY KEY (numero)
);

CREATE TABLE ContaPremium(
    Acesso VARCHAR(100),
    Senha VARCHAR(10),
    Preco DECIMAL(10, 2),
    Numero VARCHAR(16) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT PK_ContaPremium PRIMARY KEY(Acesso),
    CONSTRAINT FK_ContaPremium_Usuario_Email FOREIGN KEY (Email) REFERENCES Usuario (Email) ON DELETE CASCADE,
    CONSTRAINT FK_ContaPremium_Numero FOREIGN KEY (Numero) REFERENCES Cartao (Numero)
);

CREATE TABLE ContaComum(
    Acesso VARCHAR(100),
    Senha VARCHAR(10),
    Email VARCHAR(100) NOT NULL UNIQUE,
    CONSTRAINT PK_ContaComum PRIMARY KEY (Acesso),
    CONSTRAINT FK_ContaComum_Email_Usuario FOREIGN KEY (Email) REFERENCES Usuario (Email) ON DELETE CASCADE
);

CREATE TABLE Anuncio(
    adID VARCHAR(5),
    CONSTRAINT PK_Anuncio PRIMARY KEY (adID)
);

-- Criação das tabelas fracas 
CREATE TABLE Playlist(
    NomePlaylist VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    CONSTRAINT PK_Playlist PRIMARY KEY (NomePlaylist, Email),
    CONSTRAINT FK_Usuario_Email FOREIGN KEY (Email) REFERENCES Usuario (Email) ON DELETE CASCADE -- garante a integridade referencial e impede que uma playlist seja associada a um usuário que não existe, assim, todas as playlists associadas a esse usuário são automaticamente excluídas
);


-- Criação das tabelas associativas 
CREATE TABLE Escuta(
    Email VARCHAR(100) NOT NULL,
    ISBN VARCHAR(100) NOT NULL,
    DataEscutou VARCHAR(100), -- Trocar para date
    CONSTRAINT PK_Escuta PRIMARY KEY (Email, ISBN, DataEscutou),
    CONSTRAINT FK_Escuta_Usuario_Email FOREIGN KEY (Email) REFERENCES Usuario(Email),
    CONSTRAINT FK_Escuta_Musica_ISBN FOREIGN KEY (ISBN) REFERENCES Musica(ISBN)
);

-- Criação das tabelas de relacionamentos
    
CREATE TABLE Possui(
    Acesso VARCHAR (100),
    adID VARCHAR (5),
    CONSTRAINT PK_Possui PRIMARY KEY (Acesso, adID),
    CONSTRAINT FK_ContaComun_Acesso FOREIGN KEY (Acesso) REFERENCES ContaComum ON DELETE CASCADE,
    CONSTRAINT FK_Anuncio_AdID FOREIGN KEY (adID) REFERENCES Anuncio(adID) ON DELETE CASCADE
);

CREATE TABLE PodeSerEm(
    Email VARCHAR(100),
    NomePlaylist VARCHAR(100),
    ISBN VARCHAR(100),
    DataEscutou VARCHAR(100),
    CONSTRAINT Pk_PodeSerEm PRIMARY KEY (Email, NomePlaylist, ISBN, DataEscutou),
    CONSTRAINT FK_Usuario_EmailNomePlaylist FOREIGN KEY (Email, NomePlaylist) REFERENCES Playlist(Email, NomePlaylist) ON DELETE CASCADE,
    CONSTRAINT FK_Playlist_ISBN_DataEscutou FOREIGN KEY (Email, ISBN, DataEscutou) REFERENCES Escuta(Email, ISBN, DataEscutou) ON DELETE CASCADE
);

CREATE TABLE Segue(
    Seguindo_Email VARCHAR(100) NOT NULL,
    Seguidor_Email VARCHAR(100) NOT NULL,
    CONSTRAINT PK_segue PRIMARY KEY(Seguindo_Email, Seguidor_Email),
    CONSTRAINT FK_Seguidor_Email FOREIGN KEY (Seguidor_Email) REFERENCES usuario (Email),
    CONSTRAINT FK_seguindo_Email FOREIGN KEY (Seguindo_Email) REFERENCES usuario (Seguindo_Email)   
);

CREATE TABLE Adiciona(
    Email VARCHAR(100) NOT NULL,
    ISBN VARCHAR(100) NOT NULL,
    NomePlaylist VARCHAR(100) NOT NULL, 
    CONSTRAINT PK_adiciona PRIMARY KEY (Email, ISBN, NomePlaylist),
    CONSTRAINT FK_Adiciona_Usuario_Email FOREIGN KEY (Email) REFERENCES Usuario(Email),
    CONSTRAINT FK_Adiciona_Musica_ISBN FOREIGN KEY (ISBN) REFERENCES Musica(ISBN),
    CONSTRAINT FK_Adiciona_Playlist_Email_Nome FOREIGN KEY (Email, NomePlaylist) REFERENCES Playlist(Email, NomePlaylist)
);
    