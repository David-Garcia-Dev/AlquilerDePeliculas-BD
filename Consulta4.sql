SELECT 
cliente_nombres,
cliente_apellidos,
detalle_alquiler_cantidad,
alquiler_fechaAlquiler



FROM Alquiler 
INNER JOIN DetalleAlquiler ON detalle_alquiler_id = alquiler_detalleAlquiler
INNER JOIN Cliente ON alquiler_cliente = cliente_id
INNER JOIN Pelicula ON detalle_alquiler_pelicula = pelicula_id


WHERE detalle_alquiler_cantidad = (select max(detalle_alquiler_cantidad) FROM DetalleAlquiler )
and alquiler_fechaAlquiler > '2020-09-30'