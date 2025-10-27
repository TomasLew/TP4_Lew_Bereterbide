SELECT 
  R.id_medico,
  M.nombre AS nombre_medico,
  R.id_paciente,
  P.nombre AS nombre_paciente,
  R.id_medicamento,
  F.nombre AS nombre_medicamento,
  COUNT(*) AS cantidad_recetas

FROM Recetas R

JOIN Medicos M 
  ON M.id_medico = R.id_medico

JOIN Pacientes P 
  ON P.id_paciente = R.id_paciente

JOIN Medicamentos F 
  ON F.id_medicamento = R.id_medicamento

GROUP BY 1, 2, 3, 4, 5, 6
ORDER BY cantidad_recetas DESC;
