CREATE TABLE Edades_Pacientes AS
SELECT 
    id_paciente,
    nombre,
    fecha_nacimiento,
    CAST((CURRENT_DATE::date - fecha_nacimiento::date) / 365.25 AS INT) AS edad
FROM
    Pacientes;

SELECT * FROM Edades_Pacientes