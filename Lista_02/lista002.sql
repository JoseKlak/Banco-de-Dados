create database lista002;

use lista002;

create table alunos(
	codigo int primary key,
	nome varchar(50),
    telefone varchar(50), 
    cidade varchar(50)
);

desc alunos;

create table alunos2(
	codigo int primary key,
    nome varchar(200),
    telefone varchar(50),
    idade varchar(100)
);

create table funcionarios(
	nome varchar(50),
    endereco varchar(100),
    telefone varchar(50),
    cidade varchar(50),
    estado varchar(50),
    cep char(8),
    rg varchar(20), 
    cpf char(11),
    salario decimal(10,2)
);

create table fornecedores(
	nome varchar(50),
    endereco varchar(100),
    telefone varchar(50),
    cidade varchar(50),
    estado varchar(50),
    cep char(8),
    cnpj char(14),
    email varchar(50)
);

create table livros(
	codigo int primary key,
    nome varchar(50),
    categoria varchar(50),
    resumo varchar(500),
    preco_custo decimal(10,2),
    preco_venda decimal(10,2)
);

desc alunos2;
desc funcionarios;
desc fornecedores;
desc livros;

create table estoque(
	codigo int primary key,
    nomeDoProduto varchar(50),
    categoria varchar(50),
    quantidade int,
    forncedor varchar(50)
);

create table notas(
	codigo int primary key,
    nomeDoAluno varchar(50),
    bimestre varchar(50)
);

create table caixa(
	codigo int primary key,
    dataW date,
    descricao varchar(50),
    debito decimal(10,2),
    credito decimal(10,2)
);

create table contarAPagar(
	codigo int primary key,
    dataConta date,
    descricao varchar(50),
    valor decimal(10,2),
    dataPagamento date
);

create table contasAReceber(
	codigo int primary key,
    descricao varchar(50),
    valor decimal(10,2),
    dataRecebimento date
);

create table filmes(
	codigo int primary key,
    nome varchar(50),
    sinopse varchar(500),
    categoria varchar(50),
    diretor varchar(50)
);

create table CDs(
	codigo int primary key,
    nome varchar(50),
    cantor varchar(50),
    ano date,
    quantidadeDeMusicas int
);

drop table alunos2;
desc alunos2;
drop table livros;
drop table contarAPagar;
drop table contasAReceber;
drop table filmes;
desc CDs;
desc notas;

alter table alunos rename to superAlunos;
desc superAlunos;
alter table estoque rename to produtos;
alter table notas rename to aprovados;
alter table aprovados rename to notas;
drop table dinheiro;
drop table notas;
alter table superAlunos rename to alunos;
alter table alunos rename to estudantes;
alter table estudantes rename to superEstudantes;
desc superEstudantes;
drop table superEstudantes;
desc superEstudantes;
desc alunos;
alter table alunos add estado varchar(50);

create table caixa2(
	codigo int primary key,
    dataW date,
    descricao varchar(50),
    debito decimal(10,2),
    credito decimal(10,2)
);

alter table caixa add observacao varchar(100);
alter table alunos add cpf char(11);
desc caixa;
alter table caixa add saldo decimal(10,2);
