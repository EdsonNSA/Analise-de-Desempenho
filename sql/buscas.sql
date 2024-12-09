-- Listar todos os livros com seus autores
SELECT Autor.Nome AS Autor, Livro.Titulo AS Livro
FROM Autor
JOIN Livro ON Autor.ID_Autor = Livro.ID_Autor;

-- Listar todos os livros e suas categorias
SELECT Livro.Titulo AS Livro, GROUP_CONCAT(Categoria.Nome, ', ') AS Categorias
FROM Livro
JOIN Livro_Categoria ON Livro.ID_Livro = Livro_Categoria.ID_Livro
JOIN Categoria ON Livro_Categoria.ID_Categoria = Categoria.ID_Categoria
GROUP BY Livro.ID_Livro;

-- Listar todos os livros emprestados
SELECT Livro.Titulo AS Livro, Usuario.Nome AS Usuario, Emprestimo.Data_Emprestimo, Emprestimo.Data_Devolucao
FROM Livro
JOIN Emprestimo ON Livro.ID_Livro = Emprestimo.ID_Livro
JOIN Usuario ON Emprestimo.ID_Usuario = Usuario.ID_Usuario;

-- Listar os 5 usuários com mais empréstimos
SELECT Usuario.Nome AS Usuario, COUNT(Emprestimo.ID_Emprestimo) AS Total_Emprestimos
FROM Usuario
JOIN Emprestimo ON Usuario.ID_Usuario = Emprestimo.ID_Usuario
GROUP BY Usuario.Nome
ORDER BY Total_Emprestimos DESC
LIMIT 5;

-- Listar os 5 livros mais emprestados
SELECT Livro.Titulo AS Livro, COUNT(Emprestimo.ID_Emprestimo) AS Total_Emprestimos
FROM Livro
JOIN Emprestimo ON Livro.ID_Livro = Emprestimo.ID_Livro
GROUP BY Livro.Titulo
ORDER BY Total_Emprestimos DESC
LIMIT 5;

-- Listar empréstimos pendentes de devolução
SELECT Livro.Titulo AS Livro, Usuario.Nome AS Usuario, Emprestimo.Data_Emprestimo, Usuario.Email AS Email
FROM Emprestimo
JOIN Livro ON Emprestimo.ID_Livro = Livro.ID_Livro
JOIN Usuario ON Emprestimo.ID_Usuario = Usuario.ID_Usuario
WHERE Emprestimo.Data_Devolucao IS 'X';

