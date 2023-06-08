CREATE DATABASE	bdLivraria;

USE bdLivraria;

CREATE TABLE tbAutor(
	codAutor INT PRIMARY KEY IDENTITY(1,1)
	,nomeAutor VARCHAR(155)
);

CREATE TABLE tbEditora (
	codEditora INT PRIMARY KEY IDENTITY(1,1)
	,nomeEditora VARCHAR(155)
);

CREATE TABLE tbGenero (
	codGenero INT PRIMARY KEY IDENTITY(1,1)
	,nomeGenero VARCHAR(60)
);

CREATE TABLE tbLivro (
	codLivro INT PRIMARY KEY IDENTITY(1,1)
	,nomeLivro VARCHAR(255)
	,numPaginas INT 
	,codAutor INT FOREIGN KEY REFERENCES tbAutor(codAutor)
	,codEditora INT FOREIGN KEY REFERENCES tbEditora(codEditora)
	,codGenero INT FOREIGN KEY REFERENCES tbGenero(codGenero)
);

