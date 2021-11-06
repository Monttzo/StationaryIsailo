CREATE VIEW idetalleCompra_idCompra AS  
SELECT 
    detallecompra.idCompraFK AS detcompra,
    compra.idCompra AS compra
FROM
    compra
        INNER JOIN
    detallecompra ON compra.idCompra = detallecompra.idCompraFK;
