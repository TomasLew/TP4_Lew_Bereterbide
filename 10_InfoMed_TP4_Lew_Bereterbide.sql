SELECT 
    c.id_consulta,
    c.fecha,
    p.nombre AS paciente,
    c.diagnostico,
    c.tratamiento,
    c.snomed_codigo
FROM Consultas c 
JOIN Pacientes p ON c.id_paciente = p.id_paciente
WHERE 
    c.id_medico = 3
    AND c.fecha BETWEEN '2024-08-01' AND '2024-08-31'
