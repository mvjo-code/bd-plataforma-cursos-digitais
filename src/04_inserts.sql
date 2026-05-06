--------------------------------------------------
-- CIDADES
--------------------------------------------------

INSERT INTO Cidade VALUES (
SEQ_CIDADE.NEXTVAL,
'Recife',
'Pernambuco',
'Brasil'
);

INSERT INTO Cidade VALUES (
SEQ_CIDADE.NEXTVAL,
'São Paulo',
'São Paulo',
'Brasil'
);

INSERT INTO Cidade VALUES (
SEQ_CIDADE.NEXTVAL,
'Rio de Janeiro',
'Rio de Janeiro',
'Brasil'
);

--------------------------------------------------
-- USUARIOS
--------------------------------------------------

INSERT INTO Usuario VALUES (
'11111111111',
'Carlos Henrique',
'carlos@email.com',
TO_DATE('1990-03-15', 'YYYY-MM-DD'),
'INSTRUTOR',
NULL
);

INSERT INTO Usuario VALUES (
'22222222222',
'Ana Beatriz',
'ana@email.com',
TO_DATE('1998-07-20', 'YYYY-MM-DD'),
'ALUNO',
'11111111111'
);

INSERT INTO Usuario VALUES (
'33333333333',
'Lucas Almeida',
'lucas@email.com',
TO_DATE('2001-05-10', 'YYYY-MM-DD'),
'ALUNO',
'11111111111'
);

INSERT INTO Usuario VALUES (
'44444444444',
'Fernanda Lima',
'fernanda@email.com',
TO_DATE('1995-11-02', 'YYYY-MM-DD'),
'INSTRUTOR',
NULL
);

--------------------------------------------------
-- TELEFONES
--------------------------------------------------

INSERT INTO Telefone VALUES (
SEQ_TELEFONE.NEXTVAL,
'11111111111',
'81999998888'
);

INSERT INTO Telefone VALUES (
SEQ_TELEFONE.NEXTVAL,
'22222222222',
'81988887777'
);

INSERT INTO Telefone VALUES (
SEQ_TELEFONE.NEXTVAL,
'33333333333',
'21977776666'
);

INSERT INTO Telefone VALUES (
SEQ_TELEFONE.NEXTVAL,
'44444444444',
'11966665555'
);

--------------------------------------------------
-- ENDERECOS
--------------------------------------------------

INSERT INTO Endereco VALUES (
SEQ_ENDERECO.NEXTVAL,
'11111111111',
1
);

INSERT INTO Endereco VALUES (
SEQ_ENDERECO.NEXTVAL,
'22222222222',
1
);

INSERT INTO Endereco VALUES (
SEQ_ENDERECO.NEXTVAL,
'33333333333',
3
);

INSERT INTO Endereco VALUES (
SEQ_ENDERECO.NEXTVAL,
'44444444444',
2
);

--------------------------------------------------
-- INSTRUTORES
--------------------------------------------------

INSERT INTO Instrutor VALUES (
'11111111111',
'Especialista em Banco de Dados',
'Banco de Dados'
);

INSERT INTO Instrutor VALUES (
'44444444444',
'Especialista em Desenvolvimento Web',
'Desenvolvimento Web'
);

--------------------------------------------------
-- ALUNOS
--------------------------------------------------

INSERT INTO Aluno VALUES ('22222222222');

INSERT INTO Aluno VALUES ('33333333333');

--------------------------------------------------
-- PLANOS
--------------------------------------------------

INSERT INTO Plano VALUES (
SEQ_PLANO.NEXTVAL,
'BASICO',
3,
'N'
);

INSERT INTO Plano VALUES (
SEQ_PLANO.NEXTVAL,
'PREMIUM',
999,
'S'
);

--------------------------------------------------
-- ASSINATURAS
--------------------------------------------------

INSERT INTO Assinatura VALUES (
SEQ_ASSINATURA.NEXTVAL,
'22222222222',
1,
SYSDATE,
ADD_MONTHS(SYSDATE, 6),
'ATIVA'
);

INSERT INTO Assinatura VALUES (
SEQ_ASSINATURA.NEXTVAL,
'33333333333',
2,
SYSDATE,
ADD_MONTHS(SYSDATE, 12),
'ATIVA'
);

--------------------------------------------------
-- CURSOS
--------------------------------------------------

INSERT INTO Curso VALUES (
SEQ_CURSO.NEXTVAL,
'Oracle SQL Completo',
'Curso de Oracle SQL',
299.90,
'11111111111'
);

INSERT INTO Curso VALUES (
SEQ_CURSO.NEXTVAL,
'React Moderno',
'Curso de React',
249.90,
'44444444444'
);

INSERT INTO Curso VALUES (
SEQ_CURSO.NEXTVAL,
'Python para Dados',
'Curso de Python aplicado a dados',
349.90,
'11111111111'
);

--------------------------------------------------
-- MODULOS
--------------------------------------------------

INSERT INTO Modulo VALUES (
SEQ_MODULO.NEXTVAL,
1,
1,
'Fundamentos SQL'
);

INSERT INTO Modulo VALUES (
SEQ_MODULO.NEXTVAL,
1,
2,
'JOINs e Consultas'
);

INSERT INTO Modulo VALUES (
SEQ_MODULO.NEXTVAL,
2,
1,
'Introducao ao React'
);

--------------------------------------------------
-- AULAS
--------------------------------------------------

INSERT INTO Aula VALUES (
SEQ_AULA.NEXTVAL,
1,
'Introducao',
'introducao.mp4',
45
);

INSERT INTO Aula VALUES (
SEQ_AULA.NEXTVAL,
1,
'Normalizacao',
'normalizacao.mp4',
50
);

INSERT INTO Aula VALUES (
SEQ_AULA.NEXTVAL,
3,
'Componentes React',
'componentes.mp4',
55
);

--------------------------------------------------
-- MATRICULAS
--------------------------------------------------

INSERT INTO Matricula VALUES (
SEQ_MATRICULA.NEXTVAL,
'22222222222',
1,
SYSDATE,
'ATIVA',
60,
8.5
);

INSERT INTO Matricula VALUES (
SEQ_MATRICULA.NEXTVAL,
'22222222222',
2,
SYSDATE,
'ATIVA',
35,
7.8
);

INSERT INTO Matricula VALUES (
SEQ_MATRICULA.NEXTVAL,
'33333333333',
3,
SYSDATE,
'ATIVA',
80,
9.2
);

--------------------------------------------------
-- AVALIACOES
--------------------------------------------------

INSERT INTO Avaliacao VALUES (
SEQ_AVALIACAO.NEXTVAL,
'22222222222',
1,
9.5,
'Excelente curso',
SYSDATE
);

INSERT INTO Avaliacao VALUES (
SEQ_AVALIACAO.NEXTVAL,
'22222222222',
2,
8.7,
'Curso muito bom',
SYSDATE
);

INSERT INTO Avaliacao VALUES (
SEQ_AVALIACAO.NEXTVAL,
'33333333333',
3,
9.8,
'Conteudo excelente',
SYSDATE
);

COMMIT;