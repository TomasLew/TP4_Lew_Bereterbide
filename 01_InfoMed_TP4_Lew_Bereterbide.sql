CREATE INDEX idx_ciudad ON Pacientes(ciudad);
SELECT ciudad, COUNT(id_paciente) AS Cantidad_pacientes
FROM Pacientes 
GROUP BY ciudad;
