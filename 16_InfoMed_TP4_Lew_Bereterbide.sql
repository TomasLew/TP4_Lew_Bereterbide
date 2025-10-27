SELECT 
  C.id_paciente,
  P.nombre AS nombre_paciente,
  C.id_medico,
  M.nombre AS nombre_medico,
  --C.fecha,
  --C.diagnostico
  COUNT(*) AS cantidad_consultas

FROM Consultas C

JOIN Medicos M
  ON M.id_medico = C.id_medico

JOIN Pacientes P
  ON P.id_paciente = C.id_paciente

GROUP BY 1, 2, 3, 4

ORDER BY C.id_medico ASC, C.id_paciente ASC;
