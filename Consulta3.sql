SELECT 
cliente_nombres,
cliente_apellidos,
SUM(detalle_alquiler_cantidad) AS CantidadAquilada



FROM Alquiler 
INNER JOIN DetalleAlquiler ON detalle_alquiler_id = alquiler_detalleAlquiler
INNER JOIN Cliente ON alquiler_cliente = cliente_id
INNER JOIN Pelicula ON detalle_alquiler_pelicula = pelicula_id

WHERE cliente_id = 1

GROUP BY 
cliente_nombres,
cliente_apellidos