SELECT 
    m.nombre AS medicamento,
    COUNT(r.id_medicamento) AS total_medic
FROM Recetas r
JOIN Medicamentos m ON r.id_medicamento = m.id_medicamento
GROUP BY m.id_medicamento, m.nombre
ORDER BY total_medic DESC LIMIT 1;