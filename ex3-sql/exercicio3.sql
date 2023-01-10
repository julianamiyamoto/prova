--b)	Criar 2 tabelas no banco de dados: pessoa e endereco

CREATE TABLE Pessoa (
	id_Pessoa int NOT NULL,
	Nome varchar(200) NOT NULL,
	CPF varchar(25) NOT NULL,
	Idade date NULL,
	Sexo char(1) NOT NULL,
	CONSTRAINT Pessoa_pk PRIMARY KEY (id_Pessoa)
)
CREATE TABLE Endereco (
	id_Endereco int NOT NULL,
	Tipo varchar(10) NOT NULL,
	Logradouro varchar(250) NOT NULL,
	Numero varchar(10) NOT NULL,
	Complemento varchar(100) NULL,
	CEP numeric NOT NULL,
	Cidade varchar(250) NOT NULL,
	Estado Char(2) NOT NULL,
	id_Pessoa int NOT NULL,
	CONSTRAINT Endereco_pk PRIMARY KEY (id_Endereco),
	CONSTRAINT Endereco_FK FOREIGN KEY (id_Pessoa) REFERENCES Pessoa(id_Pessoa)
)

insert into pessoa (id_Pessoa,Nome,CPF,Idade,Sexo)
    values ('1', 'Andre','302.234.345-65',TO_DATE('12/01/1980', 'DD/MM/YYYY'),'M');

insert into pessoa (id_Pessoa,Nome,CPF,Idade,Sexo)
    values ('2', 'Paulo','302.234.345-65',TO_DATE('10/01/1983', 'DD/MM/YYYY'),'M');

insert into endereco
    values (1,'RUA', 'Paulo Soares', '662', 'APTO 02', 08647909, 'Sao Paulo', 'SP', 1);
    
insert into endereco
    values (2,'RUA', 'Carlos Soares', '555', 'APTO 02', 08965353, 'Sao Paulo', 'SP', 2);


--c)	 Criar consulta para trazer as informações abaixo
select p.id_pessoa, p.nome, p.cpf, p.idade, p.sexo, e.tipo, e.logradouro , e.numero, e.complemento, e.cep, e.cidade, e.estado
    from pessoa p, endereco e
    where p.id_pessoa = e.id_pessoa;

