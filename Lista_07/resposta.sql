-- Active: 1661280747977@@127.0.0.1@3306@controledelivrosfinal
SELECT livro.titulo, editora.nome as editora, estilo.nome as estilo, autor.nome as nome
FROM livro
JOIN editora on livro.id_editora=editora.id_editora
JOIN livro_estilo on livro_estilo.id_livro=livro.id_livro
JOIN estilo on livro_estilo.id_estilo=estilo.id_estilo
JOIN livro_autor on livro_autor.id_livro=livro.id_livro
JOIN autor on livro_autor.id_autor=autor.id_autor;
SELECT livro.titulo, editora.nome as editora
FROM livro
JOIN editora on livro.id_editora=editora.id_editora
WHERE editora.telefone='123345';
SELECT livro.titulo, autor.nome as autor
FROM livro
JOIN livro_autor on livro.id_livro=livro_autor.id_livro
JOIN autor on livro_autor.id_autor=autor.id_autor
WHERE autor.idade='35';
SELECT livro.titulo, autor.nome as autor, editora.nome as editora
FROM livro
JOIN livro_autor on livro.id_livro=livro_autor.id_livro
JOIN autor on livro_autor.id_autor=autor.id_autor
JOIN editora on livro.id_editora=editora.id_editora
WHERE autor.nome='Dan Brown';
SELECT livro.titulo, autor.nome as autor, editora.nome as editora
FROM livro
JOIN livro_autor on livro.id_livro=livro_autor.id_livro
JOIN autor on livro_autor.id_autor=autor.id_autor
JOIN editora on livro.id_editora=editora.id_editora
WHERE autor.nome='Dan Brown' AND autor.idade='35';
SELECT livro.titulo, autor.nome as autor, editora.nome as editora
FROM livro
JOIN livro_autor on livro.id_livro=livro_autor.id_livro
JOIN autor on livro_autor.id_autor=autor.id_autor
JOIN editora on livro.id_editora=editora.id_editora
WHERE autor.nome='Dan Brown' AND editora.telefone='123345';
SELECT livro.titulo, estilo.nome as estilo
FROM livro
JOIN livro_estilo on livro.id_livro=livro_estilo.id_livro
JOIN estilo on livro_estilo.id_estilo=estilo.id_estilo
WHERE estilo.nome='Romance';
SELECT livro.titulo, estilo.nome as estilo
FROM livro
JOIN livro_estilo on livro.id_livro=livro_estilo.id_livro
JOIN estilo on livro_estilo.id_estilo=estilo.id_estilo
JOIN editora on editora.id_editora=livro.id_editora
WHERE editora.nome='Globo';
SELECT livro.valor, MAX(livro.valor)
FROM livro;
SELECT livro.valor, MIN(livro.valor)
FROM livro;
SELECT livro.valor, AVG(livro.valor)
FROM livro;
SELECT autor.valor_hr, AVG(autor.valor_hr)
FROM autor;
SELECT livro.id_livro, COUNT(id_livro)
FROM livro;
SELECT livro.id_livro, COUNT(livro.id_livro)
FROM livro
WHERE id_editora=2;


