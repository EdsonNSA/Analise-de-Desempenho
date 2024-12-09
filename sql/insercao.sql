-- Inserção dos autores
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (1, 'J.K. Rowling', '31-07-1965');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (2, 'George R.R. Martin', '20-09-1948');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (3, 'J.R.R. Tolkien', '03-01-1892');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (4, 'Arthur C. Clarke', '16-12-1917');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (5, 'Stephen King', '21-09-1947');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (6, 'Neil Gaiman', '10-11-1960');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (7, 'Mary Shelley', '30-08-1797');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (8, 'Bram Stoker', '08-11-1847');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (9, 'H.P. Lovecraft', '20-08-1890');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (10, 'Edgar Allan Poe', '19-01-1809');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (11, 'Junji Ito', '31-07-1963');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (12, 'Shintaro Kago', '03-09-1978');
INSERT INTO Autor (ID_Autor, Nome, Data_Nascimento) VALUES (13, 'Alexandre Callari', '15-08-1993');

-- Inserção de categorias
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (1, 'Fantasia');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (2, 'Ficção Científica');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (3, 'Aventura');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (4, 'Mistério');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (5, 'Terror');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (6, 'Romance');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (7, 'Ficção Histórica');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (8, 'Ação');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (9, 'Drama');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (10, 'Suspense');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (11, 'Horror');
INSERT INTO Categoria (ID_Categoria, Nome) VALUES (12, 'Ficção Policial');

-- Inserção dos livros
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (1, 'Harry Potter e a Pedra Filosofal', 1, 1997);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (2, 'A Guerra dos Tronos', 2, 1996);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (3, 'O Senhor dos Anéis', 3, 1954);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (4, 'Assassinato no Expresso Oriente', 4, 1934);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (5, 'It - A Coisa', 5, 1986);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (6, 'Coraline', 6, 2002);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (7, 'Frankenstein', 7, 1818);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (8, 'Drácula', 8, 1897);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (9, 'O Chamado de Cthulhu', 9, 1928);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (10, 'O Corvo', 10, 1845);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (11, 'Tomie', 11, 1987);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (12, 'Uzumaki', 11, 1998);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (13, 'Gyo', 11, 2001);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (14, 'Black Paradox', 11, 2009);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (15, 'The Enigma of Amigara Fault', 11, 2002);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (16, 'Dementia', 12, 2006);
INSERT INTO Livro (ID_Livro, Titulo, ID_Autor, Ano_Publicacao) VALUES (17, 'A Floresta das Árvores Retorcidas', 13, 2017);

-- Inserção dos livros com as categorias
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (1, 1);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (1, 3);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (2, 1);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (2, 2);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (3, 1);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (3, 3);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (4, 2);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (5, 2);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (6, 4);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (7, 5);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (8, 1);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (9, 2);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (10, 6);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (11, 4);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (12, 4);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (13, 5);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (14, 5);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (15, 5);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (16, 5);
INSERT INTO Livro_Categoria (ID_Livro, ID_Categoria) VALUES (17, 5);

-- Inserção dos usuários
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (1, 'Alice', 'alice@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (2, 'Bob', 'bob@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (3, 'Charlie', 'charlie@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (4, 'Amanda', 'amanda@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (5, 'Edinalda', 'edinalda@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (6, 'Edson', 'edson@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (7, 'Helson', 'helson@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (8, 'Felipe', 'felipe@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (9, 'Anthonny', 'anthonny@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (10, 'Gabriel', 'gabriel@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (11, 'Renan', 'renan@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (12, 'Lucas', 'lucas@example.com');
INSERT INTO Usuario (ID_Usuario, Nome, Email) VALUES (13, 'Mateus', 'mateus@example.com');

-- Inserção dos empréstimos
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (1, 1, 1, '01-07-2024', '10-07-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (2, 2, 2, '05-07-2024', '15-07-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (3, 3, 3, '10-07-2024', 'X'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (4, 4, 4, '20-07-2024', '30-07-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (5, 5, 5, '22-07-2024', '25-07-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (6, 6, 6, '25-07-2024', '05-08-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (7, 1, 1, '15-08-2024', '25-08-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (15, 1, 13, '15-08-2024', '25-08-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (13, 7, 6, '05-09-2024', '15-09-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (11, 5, 5, '05-09-2024', '10-09-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (8, 3, 1, '10-09-2024', 'X'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (9, 2, 2, '10-09-2024', '20-09-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (16, 3, 12, '10-09-2024', 'X'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (19, 5, 5, '10-09-2024', '20-09-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (14, 8, 6, '15-09-2024', '20-09-2024'); 
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (12, 6, 5, '20-09-2024', 'X');   
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (17, 2, 2, '20-09-2024', '30-09-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (20, 11, 6, '20-09-2024', '26-09-2024');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (10, 4, 2, '25-09-2024', '30-09-2024');   
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (21, 7, 6, '29-09-2024', 'X');
INSERT INTO Emprestimo (ID_Emprestimo, ID_Livro, ID_Usuario, Data_Emprestimo, Data_Devolucao) VALUES (18, 4, 2, '30-09-2024', 'X'); 
