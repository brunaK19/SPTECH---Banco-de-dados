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
	  ('Carla','Corrido', 5),
	  ('Patrícia','Ginástica', 3),
	  ('Pedro','Ginástica', 8),
      ('Carla','Ginástica', 9);
      
/*Exibir todos os dados da tabela.*/
select * from Atleta;

/*Atualizar a quantidade de medalhas do atleta com id=1;*/

update Atleta
set qtdMedalha = '12'
where id = 1;

/*Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;*/
update Atleta
set qtdMedalha = '12'
where id in (2, 3);

/*Atualizar o nome do atleta com o id=4;*/
update Atleta
set nome = 'jose'
where id = 4;

/*Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;*/
alter table Atleta
add column dtnasc date;

/*Atualizar a data de nascimento de todos os atletas;*/
update Atleta
set dtnasc = '2005-12-05'
where id = 1;

update Atleta
set dtnasc = '2005-10-05'
where id = 2;

update Atleta
set dtnasc = '1995-12-05'
where id = 3;

update Atleta
set dtnasc = '2005-12-05'
where id = 4;

update Atleta
set dtnasc = '2015-12-05'
where id = 5;

select*from Atleta;

/*Excluir o atleta com o id=5;*/
delete from Atleta
where id= 5;

/*Exibir os atletas onde a modalidade é diferente de natação;*/
select * from Atleta
where modalidade != 'natação';

/*Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;*/
select * from Atleta
where qtdMedalha >= 3;

/*Modificar o campo modalidade do tamanho 40 para o tamanho 60;*/
alter table Atleta modify column modalidade varchar(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
desc Atleta; 

-- Limpar os dados da tabela; 
truncate Atleta;
-----------------------------------------------------------------------------------------

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
      
-- Exibir todos os dados da tabela.
select * from Musica;

-- Adicionar o campo curtidas do tipo int na tabela;
alter table Musica add column curtidas int;

-- Atualizar o campo curtidas de todas as músicas inseridas;
update Musica
set curtidas = 2534;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
alter table Musica modify column artista varchar(80);

-- Atualizar a quantidade de curtidas da música com id=1;
update Musica
set curtidas = 55555
where idMusica = 5;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
update Musica
set curtidas = 55555
where idMusica in (2, 3);

-- Atualizar o nome da música com o id=5;
update Musica
set titulo = 'i dont know'
where idMusica = 5;

-- Excluir a música com o id=4;
delete from Musica where idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk;
select * from Musica where genero != 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
select * from Musica where curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;
desc Musica;
-- Limpar os dados da tabela; 
truncate Musica;
-----------------------------------------------------------------------------------

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
      
-- Exibir todos os dados da tabela.
select * from Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
alter table Filme add column protagonista varchar(50);

-- Atualizar o campo protagonista de todas os filmes inseridos;
update Filme
set protagonista = 'Larissa'
where idFilme = 1;

update Filme
set protagonista = 'joão'
where idFilme = 2;

update Filme
set protagonista = 'Larissa'
where idFilme = 3;

update Filme
set protagonista = 'Lucas'
where idFilme = 4;

update Filme
set protagonista = 'Larissa'
where idFilme = 5;

update Filme
set protagonista = 'Beatriz'
where idFilme = 6;

update Filme
set protagonista = 'joão'
where idFilme = 7;

update Filme
set protagonista = 'lisa'
where idFilme = 8;

-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
alter table Filme modify column diretor varchar(150);

-- Atualizar o diretor do filme com id=5;
update Filme
set diretor = 'lisa'
where idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7;
update Filme
set diretor = 'leonardo'
where idFilme in (2,8);

-- Atualizar o título do filme com o id=6;
update Filme
set título = 'dont know'
where idFilme = 6;

-- Excluir o filme com o id=3;
delete from Filme where idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama;
select * from Filme where genero != 'drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
select * from Filme where genero = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
desc Filme;

-- Limpar os dados da tabela; 
truncate Filme;
---------------------------------------------------------------------------------------------

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

-- Exibir todos os dados da tabela.
select * from Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’;
alter table Professor add column funcao varchar(50),
add constraint check (funcao in ('monitor', 'assistente',  'titular'));

-- Atualizar os professores inseridos e suas respectivas funções;
update Professor
set funcao = 'monitor'
where idProfessor in (1,2);

update Professor
set funcao = 'assistente'
where idProfessor in (3,4);

update Professor
set funcao = 'titular'
where idProfessor between 5 and 7;

-- Inserir um novo professor;
insert into Professor(nome, especialidade, dtnasc, funcao)
values('bruna', 'cências', '2000-05-18', 'monitor');

-- Excluir o professor onde o idProfessor é igual a 5;
delete from Professor where idprofessor = 5;
 
-- Exibir apenas os nomes dos professores titulares;
select nome from professor where funcao = 'titular';
 
-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
select especialidade, dtnasc from professor where funcao = 'monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3;
update Professor
set dtnasc = '2003-08-12'
where idProfessor = 3;

-- Limpar a tabela Professor;
truncate Professor;
-----------------------------------------------------------------------------------------


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
---------------------------------------------------------------------------------------------

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
---------------------------------------------------------------------------------------

/* Criar a tabela chamada Serie para conter os campos: idSerie (int e chave primária da
tabela), nome (varchar, tamanho 40), qtdTemporadas (int), status (varchar, tamanho
40). Onde o status só pode ser em andamento, finalizada ou não assistida. Os valores
de idSerie devem iniciar com o valor 100 e ser incrementado automaticamente pelo
sistema.*/
create table Serie(
	idSerie int primary key auto_increment,
    nome varchar(40),
    qtdTemporada int,
    status varchar(40)
)auto_increment = 100;

alter table Serie add constraint check(status in ('em andamento', 'finalizada', 'não assistida'));

-- Inserir 4 registros na tabela.
insert into Serie(nome, qtdTemporada, status)
values('eu a patroa e as crianças', 5, 'finalizada'),
	  ('Todo mundo odeia o chris', 6, 'em andamento'),
      ('O maluca no pedaço', 8,'finalizada'),
      ('The umbrella academy', 4,'não assistida');
      
-- Exibir todos os dados da tabela.
select * from Serie;
-------------------------------------------------------------------------------------------------------

/*Criar a tabela chamada Carro para conter os dados: idCarro int, nome (tamanho 70), placa
(tamanho 7), marca (tamanho 20), sendo que idCarro é a chave primária da tabela.*/
create table Carro(
	idCarro int primary key auto_increment,
    nome varchar(70),
    placa varchar(7),
    marca varchar(20)
);

/*Inserir dados na tabela, procurando colocar uma marca de carro que tenha mais de um
carro. Procure inserir pelo menor 5 carros.*/
insert into Carro(nome, placa, marca)
values('Cronos', 'cgs2654', 'fiat'),
	  ('Toro', 'ai36568', 'fiat'),
      ('Strada', 'vsu623', 'fiat'),
      ('HB20', 'bh64l74', 'hyundai');
      
/*O campo marca (tamanho 20) está muito pequeno. É necessário aumentar o número de
caracteres para 40.*/
alter table Carro modify column marcar varchar(40);

-- Exibir todos os campos da tabela.
select * from Carro;

-- Exibir apenas os nomes e as placas dos carros.
select nome, placa from Carro;

-- Exibir apenas os dados dos carros de uma determinada marca.
select * from Carro where marca = 'hyundai';

-- Exibir apenas os dados dos carros de uma determinada placa.
select * from Carro where placa = 'vsu623';

-- Exibir os dados da tabela ordenados pela marca do carro.
select * from Carro order by marca;

-- Exibir os dados da tabela ordenados pelo nome em ordem decrescente.
select * from Carro order by nome desc;

-- Exibir os dados da tabela, dos carros cujo nome termine com uma determinada letra.
select * from Carro where nome like '%a';

-- Exibir os dados da tabela, dos carros cujo marca comece com uma determinada letra.
select * from Carro where nome like 't%';

-- Exibir os dados da tabela, dos carros cuja placa tenha como segunda letra uma determinada letra.
select * from Carro where placa like '_g%';

-- Exibir os dados da tabela, dos carros cujo nome tenha como penúltima letra uma determinada letra.
select * from Carro where nome like '%d_';

-- Atualize uma placa de algum carro. Exiba novamente os dados da tabela após a atualização.
update Carro
set placa = 'hay2645'
where idCarro = 2;

select * from Carro;

-- Exclua algum carro da tabela. Exiba novamente os dados da tabela após a exclusão.
delete from Carro where idCarro = 2;
select * from Carro;

-- Elimine a tabela.
drop table Carro;
-------------------------------------------------------------------------------------------------

/*Criar a tabela chamada Restaurante para conter os dados: idRest, nome (tamanho 40), CEP
(tamanho 9), exemplo: '01515-999', tipo (tamanho 30), sendo que idRest tem um valor
numérico inteiro e é a chave primária da tabela. O tipo do restaurante é o tipo da comida que é
servida (churrascaria, italiana, japonesa, fast-food, etc)*/
create table Restaurante(
	idRest int primary key auto_increment,
    nome varchar(40),
    cep char(9),
    tipo varchar(30)
);

/*Inserir dados na tabela, procurando colocar um tipo de restaurante que tenha mais de um
restaurante. Procure inserir pelo menos 5 restaurantes.*/
insert into Restaurante(nome, cep, tipo)
values('japa', '12365-444', 'japonesa'),
	  ('boi do povo', '42598-999', 'churrascaria'),
      ('bon jiorno', '52479-555', 'italiana'),
      ('chicken kitchen', '45986-656', 'fast-food');
      
/*O campo tipo (tamanho 30) está muito pequeno. É necessário aumentar os caracteres para o
tamanho 50.*/
alter table Restaurante modify column tipo varchar(50);

-- Exibir todos os dados da tabela.
select * from Restaurante;

-- Exibir apenas os nomes e os tipos dos restaurantes.
select nome, tipo from Restaurante;

-- Exibir apenas os dados dos restaurantes de um determinado tipo.
select * from Restaurante where tipo = 'japonesa';

-- Exibir os dados da tabela ordenados pelo nome do restaurante.
select * from Restaurante order by nome;

-- Exibir os dados da tabela ordenados pelo tipo em ordem decrescente.
select * from Restaurante order by tipo desc;

-- Exibir os dados da tabela, dos restaurantes cujo nome comece com uma determinada letra.
select* from Restaurante where nome like 'b%';

-- Exibir os dados da tabela, dos restaurantes cujo CEP termine com um determinado número.
select * from Restaurante where cep like '%9';

-- Exibir os dados da tabela, dos restaurantes cujo tipo tenha como segunda letra uma determinada letra.
select * from Restaurante where tipo like '_h%';

-- Exibir os dados da tabela, dos restaurantes cujo nome tenha como penúltima letra uma determinada letra.
select* from Restaurante where nome like '%n_';

-- Atualize o CEP de algum restaurante. Exiba novamente os dados da tabela após a atualização.
update Restaurante
set cep = '54789-111'
where idRest = 3;

select * from Restaurante;
-- Exclua algum restaurante da tabela. Exiba novamente os dados da tabela após a exclusão.
delete from Restaurante where idRest = 3;

-- Elimine a tabela.
drop table Restaurante;
