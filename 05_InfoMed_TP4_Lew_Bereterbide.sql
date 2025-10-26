UPDATE Pacientes
SET ciudad = 'Buenos Aires'
WHERE ciudad IN ('Bs Aires', 'Buenos Aires ', 'Buenos Aires', 'Bs As', 'buenos aires', 'Buenos aires', 'Buenos Aiers');

UPDATE Pacientes
SET ciudad = 'Córdoba'
WHERE ciudad IN ('Cordoba', 'Córdoba', 'Córodba');

UPDATE Pacientes
SET ciudad = 'Mendoza'
WHERE ciudad IN ('Mendoza', 'Mendzoa');

UPDATE Pacientes
SET ciudad = 'Santa Fe'
WHERE ciudad IN ('Santa Fe', 'Santa fe', 'Santa Fé', 'Santa fé');

SELECT DISTINCT ciudad FROM Pacientes;
