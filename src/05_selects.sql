SELECT * FROM Usuario;

SELECT * FROM Curso;

SELECT * FROM Matricula;

SELECT
    U.Nome,
    C.Titulo,
    M.Status,
    M.Progresso,
    M.Media
FROM Matricula M
INNER JOIN Usuario U
    ON M.CPF_Aluno = U.CPF
INNER JOIN Curso C
    ON M.ID_Curso = C.ID_Curso;