USE bdLivraria;


---O nome dos livros ao lado do nome das editoras e do nome dos autores 
SELECT nomeLivro AS 'Nomes dos Livros', nomeEditora AS 'Nomes das Editoras', nomeAutor AS 'Nomes dos Autores'  FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora	
		INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor;

---O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for �Companhia das Letras� 
SELECT nomeLivro AS 'Nomes dos Livros', nomeAutor AS 'Nomes dos Autores', nomeEditora AS 'Nomes das Editoras'FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
			WHERE nomeEditora LIKE 'Companhia das Letras';

---O nome dos livros ao lado dos nomes dos autores, somente dos livros que n�o forem do autor ��rico Ver�ssimo� 
SELECT nomeLivro AS 'Nomes dos Livros', nomeAutor AS 'Nomes dos Autores' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor <> '�rico Verissimo';
			

---Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem livros cadastrados 
SELECT	nomeAutor AS 'Nomes dos Autores', nomeLivro AS 'Nomes dos Livros' FROM tbAutor
	LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

---Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que n�o tem autores cadastrados 
SELECT nomeAutor AS 'Nomes dos Autores', nomeLivro AS 'Nomes dos Livros' FROM tbAutor
	RIGHT JOIN	tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

---O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou n�o livro publicado, e indiferente do livro pertencer a algum autor.
SELECT nomeAutor AS 'Nomes dos Autores', nomeLivro AS 'Nomes dos Livros' FROM tbAutor
	FULL JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

---A editora �tica ir� publicar todos os t�tulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora �tica. 
SELECT TOP 9 nomeEditora AS 'Editora', nomeLivro AS 'Nomes dos Livros' FROM tbEditora
	CROSS JOIN tbLivro
		WHERE nomeEditora LIKE '�tica';

---Somente os nomes dos autores que n�o tem livros cadastrados.
SELECT nomeAutor, nomeLivro FROM tbAutor
LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor
WHERE tbLivro.codLivro IS NULL;

-----Os nomes dos g�neros que n�o possuem nenhum livro cadastrado.
SELECT tbGenero.nomeGenero
FROM tbGenero
LEFT JOIN tbLivro ON tbGenero.codGenero = tbLivro.codLivro;



	
		

