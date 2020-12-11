UPDATE
	Alquiler
SET 
	alquiler_EstadoPaga = 'Pagado'
FROM(

SELECT detalle_alquiler_precioTotal FROM DetalleAlquiler

)AS t1 
WHERE (alquiler_pagoAdelantado + alquiler_pagoFinal) = detalle_alquiler_precioTotal;


SELECT

cliente_nombres ||' '|| cliente_apellidos AS NombresApellidos,
pelicula_titulo,
alquiler_fechaAlquiler,
alquiler_fechaDevolucion,
alquiler_pagoAdelantado,
alquiler_pagoFinal,

detalle_alquiler_precioTotal,

alquiler_estado,
alquiler_EstadoPaga


FROM Alquiler 
INNER JOIN DetalleAlquiler 	 ON detalle_alquiler_id = alquiler_detalleAlquiler
INNER JOIN Cliente 		 	 ON alquiler_cliente = cliente_id
INNER JOIN Pelicula 		 ON pelicula_id = DetalleAlquiler.detalle_alquiler_pelicula




	   