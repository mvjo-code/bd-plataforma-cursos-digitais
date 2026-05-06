CREATE TABLE Usuario (
    CPF VARCHAR2(11),
    Nome VARCHAR2(100) NOT NULL,
    Email VARCHAR2(120) NOT NULL,
    Data_Nasc DATE NOT NULL,
    Tipo VARCHAR2(20) NOT NULL,
    CPF_Indicador VARCHAR2(11),

    CONSTRAINT PK_USUARIO PRIMARY KEY (CPF),

    CONSTRAINT FK_USUARIO_INDICADOR
        FOREIGN KEY (CPF_Indicador)
        REFERENCES Usuario(CPF),

    CONSTRAINT CK_USUARIO_TIPO
        CHECK (Tipo IN ('ALUNO', 'INSTRUTOR'))
);

--------------------------------------------------

CREATE TABLE Cidade (
    ID_Cidade NUMBER,
    Nome VARCHAR2(100),
    Estado VARCHAR2(50),
    Pais VARCHAR2(50),

    CONSTRAINT PK_CIDADE PRIMARY KEY (ID_Cidade)
);

--------------------------------------------------

CREATE TABLE Telefone (
    ID_Telefone NUMBER,
    CPF_Usuario VARCHAR2(11),
    Numero VARCHAR2(20),

    CONSTRAINT PK_TELEFONE PRIMARY KEY (ID_Telefone),

    CONSTRAINT FK_TELEFONE_USUARIO
        FOREIGN KEY (CPF_Usuario)
        REFERENCES Usuario(CPF)
);

--------------------------------------------------

CREATE TABLE Endereco (
    ID_Endereco NUMBER,
    CPF_Usuario VARCHAR2(11),
    ID_Cidade NUMBER,

    CONSTRAINT PK_ENDERECO PRIMARY KEY (ID_Endereco),

    CONSTRAINT FK_ENDERECO_USUARIO
        FOREIGN KEY (CPF_Usuario)
        REFERENCES Usuario(CPF),

    CONSTRAINT FK_ENDERECO_CIDADE
        FOREIGN KEY (ID_Cidade)
        REFERENCES Cidade(ID_Cidade)
);

--------------------------------------------------

CREATE TABLE Instrutor (
    CPF_Usuario VARCHAR2(11),
    Biografia VARCHAR2(500),
    Especializacao VARCHAR2(100),

    CONSTRAINT PK_INSTRUTOR PRIMARY KEY (CPF_Usuario),

    CONSTRAINT FK_INSTRUTOR_USUARIO
        FOREIGN KEY (CPF_Usuario)
        REFERENCES Usuario(CPF)
);

--------------------------------------------------

CREATE TABLE Aluno (
    CPF_Usuario VARCHAR2(11),

    CONSTRAINT PK_ALUNO PRIMARY KEY (CPF_Usuario),

    CONSTRAINT FK_ALUNO_USUARIO
        FOREIGN KEY (CPF_Usuario)
        REFERENCES Usuario(CPF)
);

--------------------------------------------------

CREATE TABLE Plano (
    ID_Plano NUMBER,
    Tipo VARCHAR2(30),
    Limite_Cursos NUMBER,
    Acesso_Tutor CHAR(1),

    CONSTRAINT PK_PLANO PRIMARY KEY (ID_Plano)
);

--------------------------------------------------

CREATE TABLE Assinatura (
    ID_Assinatura NUMBER,
    CPF_Aluno VARCHAR2(11),
    ID_Plano NUMBER,
    Data_Inicio DATE,
    Data_Fim DATE,
    Status VARCHAR2(20),

    CONSTRAINT PK_ASSINATURA PRIMARY KEY (ID_Assinatura),

    CONSTRAINT FK_ASSINATURA_ALUNO
        FOREIGN KEY (CPF_Aluno)
        REFERENCES Aluno(CPF_Usuario),

    CONSTRAINT FK_ASSINATURA_PLANO
        FOREIGN KEY (ID_Plano)
        REFERENCES Plano(ID_Plano)
);

--------------------------------------------------

CREATE TABLE Curso (
    ID_Curso NUMBER,
    Titulo VARCHAR2(150),
    Descricao VARCHAR2(1000),
    Valor NUMBER(10,2),
    CPF_Instrutor VARCHAR2(11),

    CONSTRAINT PK_CURSO PRIMARY KEY (ID_Curso),

    CONSTRAINT FK_CURSO_INSTRUTOR
        FOREIGN KEY (CPF_Instrutor)
        REFERENCES Instrutor(CPF_Usuario)
);

--------------------------------------------------

CREATE TABLE Modulo (
    ID_Modulo NUMBER,
    ID_Curso NUMBER,
    Numero NUMBER,
    Descricao VARCHAR2(300),

    CONSTRAINT PK_MODULO PRIMARY KEY (ID_Modulo),

    CONSTRAINT FK_MODULO_CURSO
        FOREIGN KEY (ID_Curso)
        REFERENCES Curso(ID_Curso)
);

--------------------------------------------------

CREATE TABLE Aula (
    ID_Aula NUMBER,
    ID_Modulo NUMBER,
    Nome VARCHAR2(150),
    Arquivo VARCHAR2(255),
    Duracao NUMBER,

    CONSTRAINT PK_AULA PRIMARY KEY (ID_Aula),

    CONSTRAINT FK_AULA_MODULO
        FOREIGN KEY (ID_Modulo)
        REFERENCES Modulo(ID_Modulo)
);

--------------------------------------------------

CREATE TABLE Matricula (
    ID_Matricula NUMBER,
    CPF_Aluno VARCHAR2(11),
    ID_Curso NUMBER,
    Data DATE,
    Status VARCHAR2(20),
    Progresso NUMBER(5,2),
    Media NUMBER(4,2),

    CONSTRAINT PK_MATRICULA PRIMARY KEY (ID_Matricula),

    CONSTRAINT FK_MATRICULA_ALUNO
        FOREIGN KEY (CPF_Aluno)
        REFERENCES Aluno(CPF_Usuario),

    CONSTRAINT FK_MATRICULA_CURSO
        FOREIGN KEY (ID_Curso)
        REFERENCES Curso(ID_Curso),

    CONSTRAINT CK_PROGRESSO
        CHECK (Progresso BETWEEN 0 AND 100)
);

--------------------------------------------------

CREATE TABLE Avaliacao (
    ID_Avaliacao NUMBER,
    CPF_Aluno VARCHAR2(11),
    ID_Curso NUMBER,
    Nota NUMBER(4,2),
    Comentario VARCHAR2(500),
    Data DATE,

    CONSTRAINT PK_AVALIACAO PRIMARY KEY (ID_Avaliacao),

    CONSTRAINT FK_AVALIACAO_ALUNO
        FOREIGN KEY (CPF_Aluno)
        REFERENCES Aluno(CPF_Usuario),

    CONSTRAINT FK_AVALIACAO_CURSO
        FOREIGN KEY (ID_Curso)
        REFERENCES Curso(ID_Curso),

    CONSTRAINT CK_AVALIACAO_NOTA
        CHECK (Nota BETWEEN 0 AND 10)
);