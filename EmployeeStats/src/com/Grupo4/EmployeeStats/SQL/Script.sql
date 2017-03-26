USE [EmpStats]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[Codigo area] [numeric](18, 0) NOT NULL,
	[Nombre area] [varchar](50) NULL,
	[Jefe inmediato] [varchar](50) NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[Codigo area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudad](
	[Codigo postal] [numeric](18, 0) NOT NULL,
	[Nombre ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[Codigo postal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Especialización]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Especialización](
	[No. Especialización] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre especialización] [varchar](50) NULL,
 CONSTRAINT [PK_Especialización] PRIMARY KEY CLUSTERED 
(
	[No. Especialización] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado Civil]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estado Civil](
	[Codigo EC] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre EC] [varchar](50) NULL,
 CONSTRAINT [PK_Estado Civil] PRIMARY KEY CLUSTERED 
(
	[Codigo EC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Identificador]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Identificador](
	[Id trabajador] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[DPI] [numeric](18, 0) NULL,
	[Pasaporte] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Identificador] PRIMARY KEY CLUSTERED 
(
	[Id trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[Codigo nacionalidad] [numeric](18, 0) NOT NULL,
	[Nombre nacionalidad] [varchar](50) NULL,
 CONSTRAINT [PK_Nacionalidad] PRIMARY KEY CLUSTERED 
(
	[Codigo nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profesión u Oficio]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profesión u Oficio](
	[Codigo profesión] [numeric](18, 0) NOT NULL,
	[Nombre profesión] [varchar](50) NULL,
 CONSTRAINT [PK_Profesión u Oficio] PRIMARY KEY CLUSTERED 
(
	[Codigo profesión] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proyecto]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proyecto](
	[Codigo proyecto] [numeric](18, 0) NOT NULL,
	[Nombre proyecto] [varchar](50) NULL,
	[Porcentaje proyecto] [numeric](2, 2) NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED 
(
	[Codigo proyecto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto Funcional]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto Funcional](
	[Codigo PF] [numeric](18, 0) NOT NULL,
	[Nombre puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto Funcional] PRIMARY KEY CLUSTERED 
(
	[Codigo PF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Puesto Nominal]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Puesto Nominal](
	[Codigo PN] [numeric](18, 0) NOT NULL,
	[Nombre puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto Nominal] PRIMARY KEY CLUSTERED 
(
	[Codigo PN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sexo]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexo](
	[Codigo sexo] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Nombre sexo] [varchar](50) NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY CLUSTERED 
(
	[Codigo sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajador](
	[Id trabajador] [numeric](18, 0) NOT NULL,
	[Primer apellido] [varchar](50) NULL,
	[Segundo apellido] [varchar](50) NULL,
	[Nombres] [varchar](50) NULL,
	[Codigo sexo] [numeric](18, 0) NULL,
	[Lugar de nacimiento] [varchar](50) NULL,
	[Fecha de nacimiento] [date] NULL,
	[Codigo EC] [numeric](18, 0) NULL,
	[Codigo postal] [numeric](18, 0) NULL,
	[No. Colegiado] [numeric](18, 0) NULL,
	[Dirección] [varchar](50) NULL,
	[Tel. Residencia] [numeric](18, 0) NULL,
	[Tel. Celular] [numeric](18, 0) NULL,
	[Tel. Emergencia] [numeric](18, 0) NULL,
	[Foto] [varchar](50) NULL,
	[Funciones] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Codigo PF] [numeric](18, 0) NULL,
	[Codigo PN] [numeric](18, 0) NULL,
	[Codigo area] [numeric](18, 0) NULL,
	[Fecha de ingreso] [date] NULL,
	[Tel. Oficina y ext] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY CLUSTERED 
(
	[Id trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrabajadorEspecialización]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajadorEspecialización](
	[Id trabajador] [numeric](18, 0) NULL,
	[No. Especialización] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrabajadorNacionalidad]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajadorNacionalidad](
	[Id trabajador] [numeric](18, 0) NULL,
	[Codigo nacionalidad] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrabajadorProfesiónO]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajadorProfesiónO](
	[Id trabajador] [numeric](18, 0) NULL,
	[Codigo profesión] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TrabajadorProyecto]    Script Date: 25/03/2017 9:13:48 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrabajadorProyecto](
	[Id trabajador] [numeric](18, 0) NOT NULL,
	[Codigo proyecto] [numeric](18, 0) NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Area] FOREIGN KEY([Codigo area])
REFERENCES [dbo].[Area] ([Codigo area])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Area]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Ciudad] FOREIGN KEY([Codigo postal])
REFERENCES [dbo].[Ciudad] ([Codigo postal])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Ciudad]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Estado Civil] FOREIGN KEY([Codigo EC])
REFERENCES [dbo].[Estado Civil] ([Codigo EC])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Estado Civil]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Identificador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Identificador] ([Id trabajador])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Identificador]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Puesto Funcional] FOREIGN KEY([Codigo PF])
REFERENCES [dbo].[Puesto Funcional] ([Codigo PF])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Puesto Funcional]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Puesto Nominal] FOREIGN KEY([Codigo PN])
REFERENCES [dbo].[Puesto Nominal] ([Codigo PN])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Puesto Nominal]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Sexo] FOREIGN KEY([Codigo sexo])
REFERENCES [dbo].[Sexo] ([Codigo sexo])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Sexo]
GO
ALTER TABLE [dbo].[TrabajadorEspecialización]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorEspecialización_Especialización] FOREIGN KEY([No. Especialización])
REFERENCES [dbo].[Especialización] ([No. Especialización])
GO
ALTER TABLE [dbo].[TrabajadorEspecialización] CHECK CONSTRAINT [FK_TrabajadorEspecialización_Especialización]
GO
ALTER TABLE [dbo].[TrabajadorEspecialización]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorEspecialización_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[TrabajadorEspecialización] CHECK CONSTRAINT [FK_TrabajadorEspecialización_Trabajador]
GO
ALTER TABLE [dbo].[TrabajadorNacionalidad]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorNacionalidad_Nacionalidad] FOREIGN KEY([Codigo nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([Codigo nacionalidad])
GO
ALTER TABLE [dbo].[TrabajadorNacionalidad] CHECK CONSTRAINT [FK_TrabajadorNacionalidad_Nacionalidad]
GO
ALTER TABLE [dbo].[TrabajadorNacionalidad]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorNacionalidad_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[TrabajadorNacionalidad] CHECK CONSTRAINT [FK_TrabajadorNacionalidad_Trabajador]
GO
ALTER TABLE [dbo].[TrabajadorProfesiónO]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorProfesiónO_Profesión u Oficio] FOREIGN KEY([Codigo profesión])
REFERENCES [dbo].[Profesión u Oficio] ([Codigo profesión])
GO
ALTER TABLE [dbo].[TrabajadorProfesiónO] CHECK CONSTRAINT [FK_TrabajadorProfesiónO_Profesión u Oficio]
GO
ALTER TABLE [dbo].[TrabajadorProfesiónO]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorProfesiónO_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[TrabajadorProfesiónO] CHECK CONSTRAINT [FK_TrabajadorProfesiónO_Trabajador]
GO
ALTER TABLE [dbo].[TrabajadorProyecto]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorProyecto_Proyecto] FOREIGN KEY([Codigo proyecto])
REFERENCES [dbo].[Proyecto] ([Codigo proyecto])
GO
ALTER TABLE [dbo].[TrabajadorProyecto] CHECK CONSTRAINT [FK_TrabajadorProyecto_Proyecto]
GO
ALTER TABLE [dbo].[TrabajadorProyecto]  WITH CHECK ADD  CONSTRAINT [FK_TrabajadorProyecto_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[TrabajadorProyecto] CHECK CONSTRAINT [FK_TrabajadorProyecto_Trabajador]
GO
