USE bdLivraria;


---O nome dos livros ao lado do nome das editoras e do nome dos autores 
SELECT nomeLivro AS 'Nomes dos Livros', nomeEditora AS 'Nomes das Editoras', nomeAutor AS 'Nomes dos Autores'  FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora	
		INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor;

---O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for “Companhia das Letras” 
SELECT nomeLivro AS 'Nomes dos Livros', nomeAutor AS 'Nomes dos Autores', nomeEditora AS 'Nomes das Editoras'FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
			WHERE nomeEditora LIKE 'Companhia das Letras';

---O nome dos livros ao lado dos nomes dos autores, somente dos livros que não forem do autor “Érico Veríssimo” 
SELECT nomeLivro AS 'Nomes dos Livros', nomeAutor AS 'Nomes dos Autores' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor <> 'Érico Verissimo';
			

---Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem livros cadastrados 
SELECT	nomeAutor AS 'Nomes dos Autores', nomeLivro AS 'Nomes dos Livros' FROM tbAutor
	LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

---Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem autores cadastrados 
SELECT nomeAutor AS 'Nomes dos Autores', nomeLivro AS 'Nomes dos Livros' FROM tbAutor
	RIGHT JOIN	tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

---O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou não livro publicado, e indiferente do livro pertencer a algum autor.
SELECT nomeAutor AS 'Nomes dos Autores', nomeLivro AS 'Nomes dos Livros' FROM tbAutor
	FULL JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor;

---A editora Ática irá publicar todos os títulos dessa livraria. Criar um select que associe os nomes de todos os livros ao lado do nome da editora Ática. 
SELECT TOP 9 nomeEditora AS 'Editora', nomeLivro AS 'Nomes dos Livros' FROM tbEditora
	CROSS JOIN tbLivro
		WHERE nomeEditora LIKE 'Ática';

---Somente os nomes dos autores que não tem livros cadastrados.
SELECT nomeAutor, nomeLivro FROM tbAutor
LEFT JOIN tbLivro ON tbAutor.codAutor = tbLivro.codAutor
WHERE tbLivro.codLivro IS NULL;

-----Os nomes dos gêneros que não possuem nenhum livro cadastrado.
SELECT tbGenero.nomeGenero
FROM tbGenero
LEFT JOIN tbLivro ON tbGenero.codGenero = tbLivro.codLivro;



	
		

