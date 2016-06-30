USE [Proyecto_SoftwareII]
GO

/****** Object:  StoredProcedure [dbo].[actualizartransaccacion]    Script Date: 06/30/2016 13:28:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actualizartransaccacion]
(
	@fecha datetime,
	@Fk_vehiculo nvarchar(50),
	@Original_Ntransaccion int,
	@Ntransaccion int
)
AS
	SET NOCOUNT OFF;
UPDATE [Transaccion] SET [fecha] = @fecha, [Fk_vehiculo] = @Fk_vehiculo WHERE (([Ntransaccion] = @Original_Ntransaccion));
	
SELECT Ntransaccion, fecha, Fk_vehiculo FROM Transaccion WHERE (Ntransaccion = @Ntransaccion)

GO

/****** Object:  StoredProcedure [dbo].[actulizadoKardex]    Script Date: 06/30/2016 13:28:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizadoKardex]
(
@invetario int,
	@fk_producto int,
	@cantidad int,
	@precio int,
	@total int,
	@fk_transaccion int
	
)
AS
	SET NOCOUNT OFF;
UPDATE [Kardex] SET [fk_producto] = @fk_producto, [cantidad] = @cantidad, [precio] = @precio, [total] = @total, [fk_transaccion] = @fk_transaccion WHERE (([invetario] = @invetario));
	
SELECT invetario, fk_producto, cantidad, precio, total, fk_transaccion FROM Kardex WHERE (invetario = @invetario)

GO

/****** Object:  StoredProcedure [dbo].[actulizarcliente]    Script Date: 06/30/2016 13:28:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizarcliente]
(
		@cliente_id int,
	@Documentacion nvarchar(100),
	@Nombre nvarchar(70),
	@direccion nvarchar(50),
	@Telefono nvarchar(50)


)
AS
	SET NOCOUNT OFF;
UPDATE [Cliente] SET [Documentacion] = @Documentacion, [Nombre] = @Nombre, [direccion] = @direccion, [Telefono] = @Telefono WHERE (([cliente_id] = @cliente_id ));
	
SELECT cliente_id, Documentacion, Nombre, direccion, Telefono FROM Cliente WHERE (cliente_id = @cliente_id)

GO

/****** Object:  StoredProcedure [dbo].[actulizarmarcar]    Script Date: 06/30/2016 13:28:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizarmarcar]
(
@codigo_id int,
	@nombre nvarchar(100)
	
	
)
AS
	SET NOCOUNT OFF;
UPDATE [marca] SET [nombre] = @nombre WHERE (([codigo_id] = @codigo_id));
	
SELECT codigo_id, nombre FROM marca WHERE (codigo_id = @codigo_id)

GO

/****** Object:  StoredProcedure [dbo].[actulizarproducto]    Script Date: 06/30/2016 13:28:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizarproducto]
(
		@n_producto int,
	@nombre nvarchar(50),
	@precio int,
	@Descripcion nvarchar(50),
	@stock int,
	@estado int,
	@unidad_medida int
	

)
AS
	SET NOCOUNT OFF;
UPDATE [Producto] SET [nombre] = @nombre, [precio] = @precio, [Descripcion] = @Descripcion, [stock] = @stock, [estado] = @estado, [unidad_medida] = @unidad_medida WHERE (([n_producto] = @n_producto));
	
SELECT n_producto, nombre, precio, Descripcion, stock, estado, unidad_medida FROM Producto WHERE (n_producto = @n_producto)

GO

/****** Object:  StoredProcedure [dbo].[actulizarservicio]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizarservicio]
(	@nro_servicio int,
	@nombre nvarchar(50),
	@precio int,
	@observacion nvarchar(50),
	@estado varchar(50),
	@fecha nvarchar(50)

	
)
AS
	SET NOCOUNT OFF;
UPDATE [Servicio] SET [nombre] = @nombre, [precio] = @precio, [observacion] = @observacion, [estado] = @estado, [fecha] = @fecha WHERE (([nro_servicio] = @nro_servicio));
	
SELECT nro_servicio, nombre, precio, observacion, estado, fecha FROM Servicio WHERE (nro_servicio = @nro_servicio)

GO

/****** Object:  StoredProcedure [dbo].[actulizartipovehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizartipovehiculo]
(	@codigo_id int,
	@nombre nvarchar(80)


)
AS
	SET NOCOUNT OFF;
UPDATE [Tipo_vehiculo] SET [nombre] = @nombre WHERE (([codigo_id] = @codigo_id));
	
SELECT codigo_id, nombre FROM Tipo_vehiculo WHERE (codigo_id = @codigo_id)

GO

/****** Object:  StoredProcedure [dbo].[actulizartransacciondetalle]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizartransacciondetalle]
(		
   @transaccion_id int,
	@fk_transaccion int,
	@fk_servicio int,
	@total int

)
AS
	SET NOCOUNT OFF;
UPDATE [TransaccionDetalle] SET [fk_transaccion] = @fk_transaccion, [fk_servicio] = @fk_servicio, [total] = @total WHERE (([transaccion_id] = @transaccion_id));
	
SELECT transaccion_id, fk_transaccion, fk_servicio, total FROM TransaccionDetalle WHERE (transaccion_id = @transaccion_id)

GO

/****** Object:  StoredProcedure [dbo].[actulizarunidad]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizarunidad]
(
		@numero_id int,
	@nombre nvarchar(50),
	@Original_numero_id int

)
AS
	SET NOCOUNT OFF;
UPDATE [unidadmedida] SET [nombre] = @nombre WHERE (([numero_id] = @numero_id));
	
SELECT numero_id, nombre FROM unidadmedida WHERE (numero_id = @numero_id)

GO

/****** Object:  StoredProcedure [dbo].[actulizarvehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[actulizarvehiculo]
(
	@Matricula nvarchar(50),
	@Marca int,
	@Tipo int,
	@Color nvarchar(50),
	@documentacion int
)
AS
	SET NOCOUNT OFF;
UPDATE [Vehiculo] SET [Matricula] = @Matricula, [Marca] = @Marca, [Tipo] = @Tipo, [Color] = @Color, [documentacion] = @documentacion WHERE (([Matricula] = @Matricula));
	
SELECT Matricula, Marca, Tipo, Color, documentacion FROM Vehiculo WHERE (Matricula = @Matricula)

GO

/****** Object:  StoredProcedure [dbo].[eliminarcliente]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminarcliente]
(
	@Original_cliente_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Cliente] WHERE (([cliente_id] = @Original_cliente_id))

GO

/****** Object:  StoredProcedure [dbo].[eliminarKardex]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminarKardex]
(
	@Original_invetario int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Kardex] WHERE (([invetario] = @Original_invetario))

GO

/****** Object:  StoredProcedure [dbo].[eliminarmarcar]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminarmarcar]
(
	@Original_codigo_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [marca] WHERE (([codigo_id] = @Original_codigo_id))

GO

/****** Object:  StoredProcedure [dbo].[eliminarproducto]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminarproducto]
(
	@Original_n_producto int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Producto] WHERE (([n_producto] = @Original_n_producto))

GO

/****** Object:  StoredProcedure [dbo].[eliminarservicio]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[eliminarservicio]
(
	@Original_nro_servicio int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Servicio] WHERE (([nro_servicio] = @Original_nro_servicio))
GO

/****** Object:  StoredProcedure [dbo].[eliminartransaccion]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminartransaccion]
(
	@Original_Ntransaccion int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Transaccion] WHERE (([Ntransaccion] = @Original_Ntransaccion))

GO

/****** Object:  StoredProcedure [dbo].[eliminartransacciondetalle]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminartransacciondetalle]
(
	@Original_transaccion_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [TransaccionDetalle] WHERE (([transaccion_id] = @Original_transaccion_id))

GO

/****** Object:  StoredProcedure [dbo].[eliminarunidad]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminarunidad]
(
	@Original_numero_id int
)
AS
	SET NOCOUNT OFF;
DELETE FROM [unidadmedida] WHERE (([numero_id] = @Original_numero_id))

GO

/****** Object:  StoredProcedure [dbo].[eliminarvehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[eliminarvehiculo]
(
	@Original_Matricula nvarchar(50)
)
AS
	SET NOCOUNT OFF;
DELETE FROM [Vehiculo] WHERE (([Matricula] = @Original_Matricula))

GO

/****** Object:  StoredProcedure [dbo].[insertarclientes]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertarclientes]
(
	@Documentacion nvarchar(100),
	@Nombre nvarchar(70),
	@direccion nvarchar(50),
	@Telefono nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Cliente] ([Documentacion], [Nombre], [direccion], [Telefono]) VALUES (@Documentacion, @Nombre, @direccion, @Telefono);
	
SELECT cliente_id, Documentacion, Nombre, direccion, Telefono FROM Cliente WHERE (cliente_id = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertarjose]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[insertarjose]
(
	@fecha datetime,
	@Matricula nvarchar(50)
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
INSERT INTO [Transaccion] ([fecha], [Matricula]) VALUES (@fecha, @Matricula);
END

GO

/****** Object:  StoredProcedure [dbo].[insertarKardex]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertarKardex]
(
	@fk_producto int,
	@cantidad int,
	@precio int,
	@total int,
	@fk_transaccion int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Kardex] ([fk_producto], [cantidad], [precio], [total], [fk_transaccion]) VALUES (@fk_producto, @cantidad, @precio, @total, @fk_transaccion);
	
SELECT invetario, fk_producto, cantidad, precio, total, fk_transaccion FROM Kardex WHERE (invetario = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertarmarcar]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertarmarcar]
(
	@nombre nvarchar(100)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [marca] ([nombre]) VALUES (@nombre);
	
SELECT codigo_id, nombre FROM marca WHERE (codigo_id = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertarproducto]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertarproducto]
(
	@nombre nvarchar(50),
	@precio int,
	@Descripcion nvarchar(50),
	@stock int,
	@estado int,
	@unidad_medida int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Producto] ([nombre], [precio], [Descripcion], [stock], [estado], [unidad_medida]) VALUES (@nombre, @precio, @Descripcion, @stock, @estado, @unidad_medida);
	
SELECT n_producto, nombre, precio, Descripcion, stock, estado, unidad_medida FROM Producto WHERE (n_producto = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertarservicio]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertarservicio]
(
	@nombre nvarchar(50),
	@precio int,
	@observacion nvarchar(50),
	@estado nvarchar(50),
	@fecha nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Servicio] ([nombre], [precio], [observacion], [estado], [fecha]) VALUES (@nombre, @precio, @observacion, @estado, @fecha);
	
SELECT nro_servicio, nombre, precio, observacion, estado, fecha FROM Servicio WHERE (nro_servicio = SCOPE_IDENTITY())
GO

/****** Object:  StoredProcedure [dbo].[insertartipovehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertartipovehiculo]
(
	@nombre nvarchar(80)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Tipo_vehiculo] ([nombre]) VALUES (@nombre);
	
SELECT codigo_id, nombre FROM Tipo_vehiculo WHERE (codigo_id = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertartransaccacion]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertartransaccacion]
(
	@fecha datetime,
	@Fk_vehiculo nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Transaccion] ([fecha], [Fk_vehiculo]) VALUES (@fecha, @Fk_vehiculo);
	
SELECT Ntransaccion, fecha, Fk_vehiculo FROM Transaccion WHERE (Ntransaccion = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertartransacciondetalle]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertartransacciondetalle]
(
	@fk_transaccion int,
	@fk_servicio int,
	@total int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [TransaccionDetalle] ([fk_transaccion], [fk_servicio], [total]) VALUES (@fk_transaccion, @fk_servicio, @total);
	
SELECT transaccion_id, fk_transaccion, fk_servicio, total FROM TransaccionDetalle WHERE (transaccion_id = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertarunidad]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertarunidad]
(
	@nombre nvarchar(50)
)
AS
	SET NOCOUNT OFF;
INSERT INTO [unidadmedida] ([nombre]) VALUES (@nombre);
	
SELECT numero_id, nombre FROM unidadmedida WHERE (numero_id = SCOPE_IDENTITY())

GO

/****** Object:  StoredProcedure [dbo].[insertarusuariosn]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertarusuariosn]
@usuario nvarchar(50),
	@contrasena nvarchar(50),
	@nombre nvarchar(100)
AS
BEGIN
	
	
	SET NOCOUNT ON;

    insert into [dbo].[usuario]([Usuario],[contrasena],[nombre_completo])
	VALUES(@usuario,@contrasena,@nombre);
END

GO

/****** Object:  StoredProcedure [dbo].[insertvehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insertvehiculo]
(
	@Matricula nvarchar(50),
	@Marca int,
	@Tipo int,
	@Color nvarchar(50),
	@documentacion int
)
AS
	SET NOCOUNT OFF;
INSERT INTO [Vehiculo] ([Matricula], [Marca], [Tipo], [Color], [documentacion]) VALUES (@Matricula, @Marca, @Tipo, @Color, @documentacion);
	
SELECT Matricula, Marca, Tipo, Color, documentacion FROM Vehiculo WHERE (Matricula = @Matricula)

GO

/****** Object:  StoredProcedure [dbo].[seleccionarmarcar]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[seleccionarmarcar]
AS
	SET NOCOUNT ON;
SELECT codigo_id, nombre
FROM     marca

GO

/****** Object:  StoredProcedure [dbo].[seleccionarproducto]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[seleccionarproducto]
AS
	SET NOCOUNT ON;
SELECT n_producto, nombre, precio, Descripcion, stock, estado, unidad_medida
FROM     Producto

GO

/****** Object:  StoredProcedure [dbo].[seleccionartransaccion]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[seleccionartransaccion]
AS
	SET NOCOUNT ON;
SELECT Ntransaccion, fecha, Fk_vehiculo
FROM     Transaccion

GO

/****** Object:  StoredProcedure [dbo].[seleccionartransacciondetalle]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[seleccionartransacciondetalle]
AS
	SET NOCOUNT ON;
SELECT transaccion_id, fk_transaccion, fk_servicio, total
FROM     TransaccionDetalle

GO

/****** Object:  StoredProcedure [dbo].[seleccionarunidad]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[seleccionarunidad]
AS
	SET NOCOUNT ON;
SELECT numero_id, nombre
FROM     unidadmedida

GO

/****** Object:  StoredProcedure [dbo].[selecionarkardex]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[selecionarkardex]
AS
	SET NOCOUNT ON;
SELECT invetario, fk_producto, cantidad, precio, total, fk_transaccion
FROM     Kardex

GO

/****** Object:  StoredProcedure [dbo].[selecionarservicio]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[selecionarservicio]
AS
	SET NOCOUNT ON;
SELECT nro_servicio, nombre, precio, observacion, estado, fecha
FROM     Servicio
GO

/****** Object:  StoredProcedure [dbo].[selecionartipovehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[selecionartipovehiculo]
AS
	SET NOCOUNT ON;
SELECT codigo_id, nombre
FROM     Tipo_vehiculo

GO

/****** Object:  StoredProcedure [dbo].[selectcliente]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[selectcliente]
AS
	SET NOCOUNT ON;
SELECT cliente_id, Documentacion, Nombre, direccion, Telefono
FROM     Cliente

GO

/****** Object:  StoredProcedure [dbo].[selectransaccion]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[selectransaccion]
AS
	SET NOCOUNT ON;
SELECT Ntransaccion, fecha, Fk_vehiculo
FROM     Transaccion

GO

/****** Object:  StoredProcedure [dbo].[selectvehiculo]    Script Date: 06/30/2016 13:28:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[selectvehiculo]
AS
	SET NOCOUNT ON;
SELECT Matricula, Marca, Tipo, Color, documentacion
FROM     Vehiculo

GO


