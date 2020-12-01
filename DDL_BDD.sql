
CREATE TABLE oficina (
  codigoOficina VARCHAR(10) NOT NULL,
  ciudad VARCHAR(30) NOT NULL,
  pais VARCHAR(50) NOT NULL,
  region VARCHAR(50) DEFAULT NULL,
  codigoPostal VARCHAR(10) NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  direccionUno VARCHAR(50) NOT NULL,
  direccionDos VARCHAR(50) DEFAULT NULL,
  -- FALTA LA CLAVE PRIMARIA
);

CREATE TABLE empleado (
  codigoEmpleado INTEGER NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido1 VARCHAR(50) NOT NULL,
  apellido2 VARCHAR(50) DEFAULT NULL,
  extension VARCHAR(10) NOT NULL,
  email VARCHAR(100) NOT NULL,
  codigoOficina VARCHAR(10) NOT NULL,
  codigoJefe INTEGER DEFAULT NULL,
  puesto VARCHAR(50) DEFAULT NULL,
  -- FALTA LA CLAVE PRIMARIA, 
  -- FALTAN LAS CLAVES FORANEAS
);

CREATE TABLE gamaProducto (
  gama VARCHAR(50) NOT NULL,
  descripcionTexto TEXT,
  descripcionHTML TEXT,
  imagen VARCHAR(256),
  -- FALTA LA CLAVE PRIMARIA
);

CREATE TABLE cliente (
  codigoCliente INTEGER NOT NULL,
  nombreCliente VARCHAR(50) NOT NULL,
  nombre_contacto VARCHAR(30) DEFAULT NULL,
  apellidoContacto VARCHAR(30) DEFAULT NULL,
  telefono VARCHAR(15) NOT NULL,
  fax VARCHAR(15) NOT NULL,
  direccionUno VARCHAR(50) NOT NULL,
  direccionDos VARCHAR(50) DEFAULT NULL,
  ciudad VARCHAR(50) NOT NULL,
  region VARCHAR(50) DEFAULT NULL,
  pais VARCHAR(50) DEFAULT NULL,
  codigoPostal VARCHAR(10) DEFAULT NULL,
  codigoEmpleado_repVentas INTEGER DEFAULT NULL,
  limiteCredito NUMERIC(15,2) DEFAULT NULL,
  -- FALTA LA CLAVE PRIMARIA, 
  -- FALTAN LAS CLAVES FORANEAS
);

CREATE TABLE pedido (
  codigoPedido INTEGER NOT NULL,
  fechaPedido date NOT NULL,
  fechaEsperada date NOT NULL,
  fechaEntrega date DEFAULT NULL,
  estado VARCHAR(15) NOT NULL,
  comentarios TEXT,
  codigoCliente INTEGER NOT NULL,
  -- FALTA LA CLAVE PRIMARIA, 
  -- FALTAN LAS CLAVES FORANEAS
);

CREATE TABLE producto (
  codigoProducto VARCHAR(15) NOT NULL,
  nombre VARCHAR(70) NOT NULL,
  gama VARCHAR(50) NOT NULL,
  dimensiones VARCHAR(25) NULL,
  proveedor VARCHAR(50) DEFAULT NULL,
  descripcion text NULL,
  cantidadStock SMALLINT NOT NULL,
  precioVenta NUMERIC(15,2) NOT NULL,
  precioProveedor NUMERIC(15,2) DEFAULT NULL,
  -- FALTA LA CLAVE PRIMARIA, 
  -- FALTAN LAS CLAVES FORANEAS
);

CREATE TABLE detallePedido (
  codigoPedido INTEGER NOT NULL,
  codigoProducto VARCHAR(15) NOT NULL,
  cantidad INTEGER NOT NULL,
  precioUnidad NUMERIC(15,2) NOT NULL,
  numeroLinea SMALLINT NOT NULL,
  -- FALTA LA CLAVE PRIMARIA, 
  -- FALTAN LAS CLAVES FORANEAS
);

CREATE TABLE pago (
  codigoCliente INTEGER NOT NULL,
  formaPago VARCHAR(40) NOT NULL,
  codigoTransaccion VARCHAR(50) NOT NULL,
  fechaPago date NOT NULL,
  total NUMERIC(15,2) NOT NULL,
  -- FALTA LA CLAVE PRIMARIA, 
  -- FALTAN LAS CLAVES FORANEAS
);
