UPDATE Pedido
SET valorPedido = (
  SELECT SUM(ip.precoUnitario * ip.quantidadeSol)
  FROM itensPedido ip
  WHERE ip.idPedido = Pedido.id
)
WHERE Pedido.id IN (
  SELECT id
  FROM Pedido
  LIMIT 10
);