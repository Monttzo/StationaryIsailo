--
-- Base de datos: `sena`
--
CREATE DATABASE IF NOT EXISTS sena DEFAULT CHARACTER SET uft8 COLLATE uft8_general_ci;
USE sena;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla categoria
--

CREATE TABLE categoria (
  idCategoria int(11) NOT NULL,
  nomCategoria varchar(30) NOT NULL,
  descripcionCategoria varchar(255) NOT NULL,
  estadoCategoria varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla cliente
--

CREATE TABLE cliente (
  idCliente int(11) NOT NULL,
  noDocumentoCliente varchar(15) NOT NULL,
  tipoDocCliente varchar(20) NOT NULL,
  nombreCliente varchar(40) NOT NULL,
  apellidoCliente varchar(40) NOT NULL,
  direccionCliente varchar(40) NOT NULL,
  telefonoCliente varchar(12) NOT NULL,
  generoCliente varchar(10) NOT NULL,
  emailCliente varchar(50) NOT NULL,
  estadoCliente varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla compra
--

CREATE TABLE compra (
  idCompra int(11) NOT NULL,
  idUsuarioFK int(11) DEFAULT NULL,
  fechaCompra date NOT NULL,
  subtotalCompra double NOT NULL,
  ivaCompra double NOT NULL,
  totalCompra double NOT NULL,
  estadoCompra varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla detallecompra
--

CREATE TABLE detallecompra (
  idCompraFK int(11) DEFAULT NULL,
  idProductoFK int(11) DEFAULT NULL,
  cantidadDetCompra int(11) DEFAULT NULL,
  precioDetCompra double NOT NULL,
  subtotalDetCompra double NOT NULL,
  ivaDetCompra double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla detalleventa
--

CREATE TABLE detalleventa (
  idVentaFK int(11) NOT NULL,
  idProductoFK int(11) NOT NULL,
  cantidadDetVenta int(11) NOT NULL,
  descripcionDetVenta varchar(100) NOT NULL,
  precioDetVenta double NOT NULL,
  descuentoDetVenta double NOT NULL,
  subtotalDetVenta double NOT NULL,
  ivaDetVenta double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla producto
--

CREATE TABLE producto (
  idProducto int(11) NOT NULL,
  idCategoriaFK int(11) DEFAULT NULL,
  descripcionProducto varchar(45) NOT NULL,
  stockProducto int(11) NOT NULL,
  precioProducto double NOT NULL,
  tipoivaFK int(11) DEFAULT NULL,
  estadoProducto varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla tipoiva
--

CREATE TABLE tipoiva (
  idTipoIva int(11) NOT NULL,
  descripcionTipoiva varchar(30) NOT NULL,
  porcentajeIva double NOT NULL,
  estadoTipoIva varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla usuario
--

CREATE TABLE usuario (
  idUsuario int(11) NOT NULL,
  noDocumentoUsuario varchar(15) NOT NULL,
  tipoDocUsuario varchar(20) NOT NULL,
  nombreUsuario varchar(40) NOT NULL,
  apellidoUsuario varchar(40) NOT NULL,
  direccionUsuario varchar(12) NOT NULL,
  telefonoUsuario varchar(12) NOT NULL,
  generoUsuario varchar(10) NOT NULL,
  nickNameUsuario varchar(15) NOT NULL,
  claveUsuario varchar(20) NOT NULL,
  emailUsuario varchar(50) NOT NULL,
  fechaCreaUsuario date NOT NULL,
  fotoUsuario blob NOT NULL,
  tipoUsuario varchar(15)  NOT NULL,
  estadoUsuario varchar(10)   NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla venta
--

CREATE TABLE venta (
  idVenta int(11) NOT NULL,
  idClienteFK int(11) NOT NULL,
  idUsuarioFK int(11) NOT NULL,
  fechaVenta date NOT NULL,
  subtotalVenta double NOT NULL,
  ivaVenta double NOT NULL,
  totalVenta double NOT NULL,
  estadoVenta varchar(10)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla categoria
--
ALTER TABLE categoria
  ADD PRIMARY KEY (idCategoria);

--
-- Indices de la tabla cliente
--
ALTER TABLE cliente
  ADD PRIMARY KEY (idCliente);

--
-- Indices de la tabla compra
--
ALTER TABLE compra
  ADD PRIMARY KEY (idCompra),
  ADD KEY FK_idUsuarioFK_compra_idx (idUsuarioFK);

--
-- Indices de la tabla detallecompra
--
ALTER TABLE detallecompra
  ADD KEY FK_idCompraFK_detallecompra_idx (idCompraFK),
  ADD KEY FK_idProductoFk_detallecompra_idx (idProductoFK);

--
-- Indices de la tabla `detalleventa`
--
ALTER TABLE detalleventa
  ADD KEY FK_idProductoFK_detalleventa_idx (idProductoFK),
  ADD KEY FK_idVentaFK_detalleventa_idx (idVentaFK);

--
-- Indices de la tabla producto
--
ALTER TABLE producto
  ADD PRIMARY KEY (idProducto),
  ADD KEY FK_TipoIva_producto_idx (tipoivaFK),
  ADD KEY FK_idCategoria_producto_idx (idCategoriaFK);

--
-- Indices de la tabla tipoiva
--
ALTER TABLE tipoiva
  ADD PRIMARY KEY (idTipoIva);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE usuario
  ADD PRIMARY KEY (idUsuario),
  ADD UNIQUE KEY nickNameUsuario (nickNameUsuario);

--
-- Indices de la tabla venta
--
ALTER TABLE venta
  ADD PRIMARY KEY (idVenta),
  ADD KEY FK_idClienteFK_venta_idx (idClienteFK),
  ADD KEY FK_idUsuarioFK_venta_idx (idUsuarioFK);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE compra
  MODIFY idCompra int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE venta
  MODIFY idVenta int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE compra
  ADD CONSTRAINT FK_idUsuarioFK_compra FOREIGN KEY (idUsuarioFK) REFERENCES usuario (idUsuario) ON UPDATE CASCADE;

--
-- Filtros para la tabla detallecompra
--
ALTER TABLE detallecompra
  ADD CONSTRAINT FK_idCompraFK_detallecompra FOREIGN KEY (idCompraFK) REFERENCES compra (idCompra) ON UPDATE CASCADE,
  ADD CONSTRAINT FK_idProductoFk_detallecompra FOREIGN KEY (idProductoFK) REFERENCES producto (idProducto) ON UPDATE CASCADE;

--
-- Filtros para la tabla detalleventa
--
ALTER TABLE detalleventa
  ADD CONSTRAINT FK_idProductoFK_detalleventa FOREIGN KEY (idProductoFK) REFERENCES producto (idProducto) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT FK_idVentaFK_detalleventa FOREIGN KEY (idVentaFK) REFERENCES venta (idVenta) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla producto
--
ALTER TABLE producto
  ADD CONSTRAINT FK_idCategoria_producto FOREIGN KEY (idCategoriaFK) REFERENCES categoria (idCategoria) ON UPDATE CASCADE,
  ADD CONSTRAINT FK_TipoIva_producto FOREIGN KEY (tipoivaFK) REFERENCES tipoiva (idTipoIva) ON UPDATE CASCADE;

--
-- Filtros para la tabla venta
--
ALTER TABLE venta
  ADD CONSTRAINT FK_idClienteFK_venta FOREIGN KEY (idClienteFK) REFERENCES cliente (idCliente) ON UPDATE CASCADE,
  ADD CONSTRAINT FK_idUsuarioFK_venta FOREIGN KEY (idUsuarioFK) REFERENCES usuario (idUsuario) ON UPDATE CASCADE;
COMMIT;

