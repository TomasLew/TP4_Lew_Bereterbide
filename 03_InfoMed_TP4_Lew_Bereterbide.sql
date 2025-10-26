UPDATE Pacientes
SET 
    calle = 'Calle Corrientes',
    numero = '500',
    ciudad = 'Buenos Aires'
WHERE nombre = 'Luciana Gómez';

SELECT nombre, numero, calle, ciudad
FROM Pacientes
WHERE nombre = 'Luciana Gómez';
