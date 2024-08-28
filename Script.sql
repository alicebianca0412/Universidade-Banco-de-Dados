use universidade;

create table Aluno(
 matricula char(10) not null,
 cpf char (11),
 nome varchar (55) not null,
 sexo enum ('feminino', 'masculino', 'prefiro não imformar'),
 telefone char(13) unique,
 endereco varchar(100),
 idCurso int (10),
 TipodeFormacao enum ('graduação', 'mestrado', 'doutorado'),
 foreign key (idCurso) references Curso (id),
 primary key (matricula)
);

create table Turma(
 ano int(4) not null,
 semestre int not null,
 idCurso int (10),
 id int (10) not null,
 foreign key (idCurso) references Curso (id),
 primary key (id)
);

create table Curso(
 nome varchar (55) not null,
 id int (10) not null,
 telefone char(13) unique,
 primary key (id)
);

create table Disciplina(
 nome varchar (55) not null,
 descricao text,
 professor varchar (55) not null,
 id int (10),
 horas time,
 nivel enum ('básico', 'médio', 'avançado'),
 idCurso int (10) not null,
 foreign key (idCurso) references Curso (id),
 primary key (id)
);

create table Professor(
 cpf char (11),
 nome varchar (55) not null,
 sexo enum ('feminino', 'masculino', 'prefiro não imformar'),
 telefone char(13) unique,
 id int (10),
 idCurso int (10) not null,
 foreign key (idCurso) references Curso (id),
 primary key (id)
);