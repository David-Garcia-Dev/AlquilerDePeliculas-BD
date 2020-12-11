UPDATE
	Alquiler
SET 
	alquiler_estado = 'Vencido'
WHERE (current_date - alquiler_fechaAlquiler) >= 30 and Alquiler.alquiler_estado = 'No Devuelta';

SELECT

cliente_nombres ||' '|| cliente_apellidos AS NombresApellidos,
pelicula_titulo,
alquiler_fechaAlquiler,
alquiler_fechaDevolucion,
alquiler_estado,
alquiler_EstadoPaga
FROM Alquiler 
INNER JOIN DetalleAlquiler 	 ON detalle_alquiler_id = alquiler_detalleAlquiler
INNER JOIN Cliente 		 	 ON alquiler_cliente = cliente_id
INNER JOIN Pelicula 		 ON pelicula_id = DetalleAlquiler.detalle_alquiler_pelicula

WHERE alquiler_estado = 'Vencido';

