#¿Qué cliente realizó la compra más cara?

prueba=# SELECT cliente.nombre_cliente, factura.subtotal FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente 
where 

ORDER BY factura.subtotal DESC LIMIT 1;
 nombre_cliente | subtotal
----------------+----------
 orlando        |     1300
(1 fila)

#¿Qué cliente pagó sobre 100 de monto?
prueba=# SELECT distinct cliente.nombre_cliente FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente WHERE factura.subtotal > 100;
 nombre_cliente | subtotal
----------------+----------
 gloria         |     1100
 carolina       |     1200
 orlando        |      600
 carolina       |      700
 orlando        |     1300
 paulo          |      900
 gloria         |     1300
 carolina       |     1100
(8 filas)



#¿Cuantos clientes han comprado el producto 6?
prueba=# SELECT COUNT(distinct cliente.nombre_cliente) FROM cliente INNER JOIN factura ON cliente.id_cliente = factura.id_cliente INNER JOIN factura_producto ON factura.numero_factura = factura_producto.numero_factura WHERE factura_producto.id_producto = 6;
 count
-------
     1
(1 fila)
