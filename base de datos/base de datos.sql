USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[cliente_id] [int] IDENTITY(1,1) NOT NULL,
	[Documentacion] [nvarchar](100) NOT NULL,
	[Nombre] [nvarchar](70) NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[estado]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[estado](
	[ncodigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_estado] PRIMARY KEY CLUSTERED 
(
	[ncodigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Kardex]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Kardex](
	[invetario] [int] IDENTITY(1,1) NOT NULL,
	[fk_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [int] NULL,
	[total] [int] NULL,
	[fk_transaccion] [int] NULL,
 CONSTRAINT [PK_Kardex] PRIMARY KEY CLUSTERED 
(
	[invetario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[marca]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[marca](
	[codigo_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_marca] PRIMARY KEY CLUSTERED 
(
	[codigo_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Producto]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Producto](
	[n_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[precio] [int] NULL,
	[Descripcion] [nvarchar](50) NULL,
	[stock] [int] NULL,
	[estado] [int] NULL,
	[unidad_medida] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[n_producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Servicio]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Servicio](
	[nro_servicio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[precio] [int] NULL,
	[observacion] [nvarchar](50) NULL,
	[estado] [nvarchar](50) NULL,
	[fecha] [nvarchar](50) NULL,
 CONSTRAINT [PK_Servicio] PRIMARY KEY CLUSTERED 
(
	[nro_servicio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Tipo_vehiculo]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tipo_vehiculo](
	[codigo_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](80) NULL,
 CONSTRAINT [PK_Tipo_vehiculo] PRIMARY KEY CLUSTERED 
(
	[codigo_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Transaccion]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Transaccion](
	[Ntransaccion] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NULL,
	[Matricula] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Transaccion] PRIMARY KEY CLUSTERED 
(
	[Ntransaccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[TransaccionDetalle]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TransaccionDetalle](
	[transaccion_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_transaccion] [int] NULL,
	[fk_servicio] [int] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_TransaccionDetalle] PRIMARY KEY CLUSTERED 
(
	[transaccion_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[unidadmedida]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[unidadmedida](
	[numero_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_unidadmedida] PRIMARY KEY CLUSTERED 
(
	[numero_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Usuario](
	[Codigo_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](50) NOT NULL,
	[contrasena] [nvarchar](50) NULL,
	[nombre_completo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Codigo_usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

USE [Proyecto_SoftwareII]
GO

/****** Object:  Table [dbo].[Vehiculo]    Script Date: 06/30/2016 13:27:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vehiculo](
	[Matricula] [nvarchar](50) NOT NULL,
	[Marca] [int] NULL,
	[Tipo] [int] NULL,
	[Color] [nvarchar](50) NULL,
	[documentacion] [int] NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[Matricula] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Kardex]  WITH CHECK ADD  CONSTRAINT [FK_Kardex_Producto] FOREIGN KEY([fk_producto])
REFERENCES [dbo].[Producto] ([n_producto])
GO

ALTER TABLE [dbo].[Kardex] CHECK CONSTRAINT [FK_Kardex_Producto]
GO

ALTER TABLE [dbo].[Kardex]  WITH CHECK ADD  CONSTRAINT [FK_Kardex_TransaccionDetalle] FOREIGN KEY([fk_transaccion])
REFERENCES [dbo].[TransaccionDetalle] ([transaccion_id])
GO

ALTER TABLE [dbo].[Kardex] CHECK CONSTRAINT [FK_Kardex_TransaccionDetalle]
GO

ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_unidadmedida] FOREIGN KEY([unidad_medida])
REFERENCES [dbo].[unidadmedida] ([numero_id])
GO

ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_unidadmedida]
GO

ALTER TABLE [dbo].[Transaccion]  WITH CHECK ADD  CONSTRAINT [FK_Transaccion_Vehiculo] FOREIGN KEY([Matricula])
REFERENCES [dbo].[Vehiculo] ([Matricula])
GO

ALTER TABLE [dbo].[Transaccion] CHECK CONSTRAINT [FK_Transaccion_Vehiculo]
GO

ALTER TABLE [dbo].[TransaccionDetalle]  WITH CHECK ADD  CONSTRAINT [FK_TransaccionDetalle_Servicio] FOREIGN KEY([fk_servicio])
REFERENCES [dbo].[Servicio] ([nro_servicio])
GO

ALTER TABLE [dbo].[TransaccionDetalle] CHECK CONSTRAINT [FK_TransaccionDetalle_Servicio]
GO

ALTER TABLE [dbo].[TransaccionDetalle]  WITH CHECK ADD  CONSTRAINT [FK_TransaccionDetalle_Transaccion] FOREIGN KEY([fk_transaccion])
REFERENCES [dbo].[Transaccion] ([Ntransaccion])
GO

ALTER TABLE [dbo].[TransaccionDetalle] CHECK CONSTRAINT [FK_TransaccionDetalle_Transaccion]
GO

ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_Cliente1] FOREIGN KEY([documentacion])
REFERENCES [dbo].[Cliente] ([cliente_id])
GO

ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_Cliente1]
GO

ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_marca] FOREIGN KEY([Tipo])
REFERENCES [dbo].[marca] ([codigo_id])
GO

ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_marca]
GO

ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_Tipo_vehiculo] FOREIGN KEY([Tipo])
REFERENCES [dbo].[Tipo_vehiculo] ([codigo_id])
GO

ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_Tipo_vehiculo]
GO

