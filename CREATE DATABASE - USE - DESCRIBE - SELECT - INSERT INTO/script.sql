/*BRUNA KAREN  01241193*/

create database sprint1;
use sprint1;

/* Criar a tabela chamada Atleta para conter os dados: idAtleta (int e chave primária da
tabela), nome (varchar, tamanho 40), modalidade (varchar, tamanho 40), qtdMedalha
(int, representando a quantidade de medalhas que o atleta possui)*/
create table Atleta(
	id int primary key auto_increment,
    nome varchar(40),
    modalidade varchar(40),
    qtdMedalha int
);

/*Inserir dados na tabela, procurando colocar mais de um atleta para cada modalidade*/
insert into Atleta(nome, modalidade, qtdMedalha)
values('Roberto', 'Corrida', 4),
	  ('Carla','Nado', 5),
	  ('Patrícia','Ginástica', 3),
	  ('Pedro','Futebol', 8);

/*Exibir todos os dados da tabela.*/
select * from Atleta;

/*Exibir apenas os nomes e quantidade de medalhas dos atletas.*/
select nome, qtdMedalha from Atleta;

/*Exibir apenas os dados dos atletas de uma determinada modalidade.*/
select * from Atleta where modalidade = 'Nado';

/*Exibir os dados da tabela ordenados pela modalidade.*/
select * from Atleta order by modalidade;

/*Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem
decrescente.*/
select * from Atleta order by qtdMedalha desc;

/*Exibir os dados da tabela, dos atletas cujo nome contenha a letra s*/
select * from Atleta where nome like '%S%';

/*Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra.*/
select * from Atleta where nome like 'C%';

/*Exibir os dados da tabela, dos atletas cujo nome termine com a letra o.*/
select * from Atleta where nome like '%O';

/*Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r.*/
select * from Atleta where nome like '%R_';

/*Eliminar a tabela.*/
drop table Atleta;

-------------------------------------------------------------------------------------------
/*Criar a tabela chamada Musica para conter os dados: idMusica, titulo (tamanho 40), artista
(tamanho 40), genero (tamanho 40), sendo que idMusica é a chave primária da tabela.
Inserir dados na tabela, procurando colocar um gênero de música que tenha mais de uma
música, e um artista, que tenha mais de uma música cadastrada. Procure inserir pelo
menos umas 7 músicas.*/

create table Musica(
	idMusica int primary key auto_increment,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

insert into Musica(titulo, artista, genero)
values('Mar', 'Bea Duarte', 'Triste'),
	  ('Single ladies', 'Beyonce', 'Pop'),
	  ('Rap lord', 'Haikass', 'Rap'),
      ('Shamelless', 'Camilla Cabello', 'Pop'),
      ('Pop', 'Nayeon', 'Kpop'),
      ('Yes and?', 'Ariana Grande', 'Pop'),
      ('Neon lights', 'Demi Lovato', 'Pop'),
	  ('Burguesinha', 'Seu Jorge', 'MPB');
      
/*a) Exibir todos os dados da tabela.*/
select * from Musica;

/*b) Exibir apenas os títulos e os artistas das músicas.*/
select titulo, artista from Musica;

/*c) Exibir apenas os dados das músicas de um determinado gênero.*/
select * from Musica where genero = 'pop';

/*) Exibir apenas os dados das músicas de um determinado artista.*/
select * from Musica where artista = 'Demi Lovato';

/*e) Exibir os dados da tabela ordenados pelo título da música.*/
select * from Musica order by titulo;

/*f) Exibir os dados da tabela ordenados pelo artista em ordem decrescente.*/
select * from Musica order by artista desc;

/*g) Exibir os dados da tabela, das músicas cujo título comece com uma determinada letra.*/
select * from Musica where titulo like 'S%';

/*h) Exibir os dados da tabela, das músicas cujo artista termine com uma determinada letra.*/
select * from Musica where artista like '%E';

/*i) Exibir os dados da tabela, das músicas cujo gênero tenha como segunda letra uma
determinada letra.*/
select * from Musica where genero like '_A%';

/*j) Exibir os dados da tabela, das músicas cujo título tenha como penúltima letra uma
determinada letra.*/
select * from Musica where titulo like '%E_';

/*k) Elimine a tabela.*/
drop table Musica;
-------------------------------------------------------------------------------------------------
/*Criar a tabela chamada Filme para conter os dados: idFilme, título (tamanho 50), genero
(tamanho 40), diretor (tamanho 40), sendo que idFilme é a chave primária da tabela.*/

create table Filme(
	idFilme int primary key auto_increment,
    título varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

/*Inserir dados na tabela, procurando colocar um gênero de filme que tenha mais de um
filme, e um diretor, que tenha mais de um filme cadastrado. Procure inserir pelo menos
uns 7 filmes.*/

insert into Filme(título, genero, diretor)
values('A culpa é das estrelas', 'Drama', 'Christian Nolan'),
	  ('Uma comédia nada romântica', 'Comédia', 'Adam Sandler'),
      ('Crepúsculo', 'Suspense', 'Steven Clinton'),
      ('Gente Grande', 'Comédia', 'Adam Sandler'),
      ('Como eu era antes de você', 'Drama', 'Estella Richards'),
      ('Avatar', 'Fantasia', 'Chris Gomes'),
      ('X-men', 'Ação', 'Beatriz Charles'),
	  ('Se beber não case', 'Comédia', 'Max Miller');
      

/*Exibir todos os dados da tabela.*/
select * from Filme;

/*Exibir apenas os títulos e os diretores dos filmes.*/
select título, diretor from Filme;

/*Exibir apenas os dados dos filmes de um determinado gênero.*/
select * from Filme where genero = 'comédia';

/*Exibir apenas os dados dos filmes de um determinado diretor.*/
select * from Filme where diretor = 'Max Miller';

/*Exibir os dados da tabela ordenados pelo título do filme.*/
select * from Filme order by título;

/*Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.*/
select * from Filme order by diretor desc;

/*Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.*/
select * from Filme where título like 'A%';

/*Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.*/
select * from Filme where diretor like '%R';

/*Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma
determinada letra.*/
select * from Filme where genero like '_A%';

/*Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma
determinada letra.*/
select * from Filme where título like '%A_';

/*Elimine a tabela*/
drop table Filme;
-------------------------------------------------------------------------------------------

/*Criar a tabela chamada Professor para conter os dados: idProfessor, nome (tamanho 50),
especialidade (tamanho 40), dtNasc (date), sendo que idProfessor é a chave primária da
tabela.*/

create table Professor(
	idProfessor int primary key auto_increment,
    nome varchar(50),
    especialidade varchar(40),
    dtnasc date
);

/*Inserir dados na tabela, procurando colocar uma especialista para mais de um professor.
Procure inserir pelo menos uns 6 professores.*/
insert into Professor(nome, especialidade, dtnasc)
values ('Roberto', 'Química', '1990-05-23'),
	   ('Roberta', 'Química', '1990-06-20'),
       ('Jéssica', 'Português', '1999-01-23'),
       ('Júlia', 'Matemática', '1992-09-12'),
       ('José', 'Artes', '1997-05-20'),
       ('Letícia', 'História', '1990-09-02'),
       ('Aline', 'Geografia', '1991-03-13');
       

/*a) Exibir todos os dados da tabela.*/
select * from Professor;

/*Exibir apenas as especialidades dos professores.*/
select especialidade from Professor;

/*c) Exibir apenas os dados dos professores de uma determinada especialidade.*/
select * from Professor where especialidade = 'Química';

/*d) Exibir os dados da tabela ordenados pelo nome do professor.*/
select * from Professor order by nome;

/*e) Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem
decrescente*/
select * from Professor order by dtnasc desc;

/*f) Exibir os dados da tabela, dos professores cujo nome comece com uma determinada
letra.*/
select * from Professor where nome like 'R%';

/*g) Exibir os dados da tabela, dos professores cujo nome termine com uma determinada
letra.*/
select * from Professor where nome like '%A';

/*h) Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma
determinada letra.*/
select * from Professor where nome like '_E%';

/*i) Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma
determinada letra.*/
select * from Professor where nome like '%T_';

/*j) Elimine a tabela.*/
drop table Professor;
-----------------------------------------------------------------------------------------------

/*Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla
(tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.*/
create table Curso(
	idCurso int primary key auto_increment,
    nome varchar(50),
    sigla char(3),
    coordenador varchar(50)
);

/*Inserir dados na tabela, procure inserir pelo menos 3 cursos.*/
insert into Curso(nome, sigla, coordenador)
values('Inglês', 'Ig', 'Jéssica'),
	  ('Espanhol', 'Es', 'Carlos'),
      ('Francês', 'Fr', 'Karen'),
      ('Japonês', 'Jp', 'Pedro');
      

/*a) Exibir todos os dados da tabela.*/
select * from Curso;

/*b) Exibir apenas os coordenadores dos cursos.*/
select coordenador from Curso;

/*c) Exibir apenas os dados dos cursos de uma determinada sigla.*/
select * from Curso where sigla = 'jp';

/*d) Exibir os dados da tabela ordenados pelo nome do curso.*/
select * from Curso order by nome;

/*e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem
decrescente.*/
select * from Curso order by coordenador desc;

/*f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.*/
select * from Curso where nome like 'E%';

/*g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.*/
select * from Curso where nome like '%S';

/*h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma
determinada letra.*/
select * from Curso where nome like '_R%';

/*i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma
determinada letra.*/
select * from Curso where nome like '%E_';

drop table Curso;
------------------------------------------------------------------------------------------

/*Criar a tabela chamada Revista para conter os campos: idRevista (int e chave
primária da tabela), nome (varchar, tamanho 40), categoria (varchar, tamanho 30). Os
valores de idRevista devem iniciar com o valor 1 e ser incrementado automaticamente
pelo sistema.*/
create table Revista(
	idRevista int primary key auto_increment,
    nome varchar(40),
    categoria varchar(40)
);      

/*Inserir 4 registros na tabela, mas sem informar a categoria.*/
insert into Revista(nome)
values('Times'),
	  ('Passa tempo'),
      ('Forbes'),
      ('Vogue');

/*Exibir todos os dados da tabela.*/
select * from Revista;

/*Atualize os dados das categorias das 3 revistas inseridas. Exibir os dados da tabela*/
update Revista
set categoria = 'Notícias'
where idRevista = 1;

update Revista
set categoria = 'Lazer'
where idRevista = 2;

update Revista
set categoria = 'Notícias'
where idRevista = 3;

update Revista
set categoria = 'Moda'
where idRevista = 4;

/*novamente para verificar se atualizou corretamente.*/
select * from Revista;

/*Insira mais 3 registros completos.*/
insert into Revista(nome, categoria)
values ('Kids', 'Infantil'),
	   ('Mais Você', 'Receitas'),
       ('+ matemática', 'Estudos');
       
/*Exibir novamente os dados da tabela.*/
select * from Revista;

/*Exibir a descrição da estrutura da tabela.*/
describe Revista;

/*Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.*/
alter table Revista
modify column categoria  varchar(40);

/*Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o
tamanho da coluna categoria*/
describe Revista;

/*Acrescentar a coluna periodicidade à tabela, que é varchar(15).*/
alter table Revista
add column periodicidade varchar(15);

/*Exibir os dados da tabela.*/
select * from Revista;

/*Excluir a coluna periodicidade da tabela.*/
alter table Revista
drop column periodicidade;

describe Revista;

drop table revista;
