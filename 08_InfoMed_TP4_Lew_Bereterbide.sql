SELECT 
    p.ciudad,
    SUM(CASE WHEN s.descripcion = 'Masculino' THEN 1 ELSE 0 END) AS Q_Masculino,
    SUM(CASE WHEN s.descripcion = 'Femenino' THEN 1 ELSE 0 END) AS Q_Femenino

FROM Pacientes p 
JOIN SexoBiologico s 
    ON s.id_sexo = p.id_sexo
GROUP BY p.ciudad
