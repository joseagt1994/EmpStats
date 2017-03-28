USE [master]
GO
CREATE DATABASE [EmployeeStats]
GO
USE [EmployeeStats]
GO
CREATE TABLE [dbo].[Area](
	[Codigo area] [int] NOT NULL,
	[Nombre area] [varchar](50) NULL,
	[Jefe inmediato] [varchar](50) NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY ([Codigo area]) 
)
GO
CREATE TABLE [dbo].[Ciudad](
	[Codigo postal] [int] NOT NULL,
	[Nombre ciudad] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY ([Codigo postal]) 
)
GO
CREATE TABLE [dbo].[Especialización](
	[No especialización] [int] IDENTITY(1,1) NOT NULL,
	[Nombre especialización] [varchar](50) NULL,
 CONSTRAINT [PK_Especialización] PRIMARY KEY ([No especialización]) 
)
GO
CREATE TABLE [dbo].[Estado Civil](
	[Codigo EC] [int] IDENTITY(1,1) NOT NULL,
	[Nombre EC] [varchar](50) NULL,
 CONSTRAINT [PK_Estado Civil] PRIMARY KEY ([Codido EC]) 
)
GO
CREATE TABLE [dbo].[Nacionalidad](
	[Codigo nacionalidad] [int] NOT NULL,
	[Nombre nacionalidad] [varchar](50) NULL,
 CONSTRAINT [PK_Nacionalidad] PRIMARY KEY ([codigo nacionalidad])
)
GO
CREATE TABLE [dbo].[Profesión u Oficio](
	[Codigo profesión] [int] NOT NULL,
	[Nombre profesión] [varchar](50) NULL,
 CONSTRAINT [PK_Profesión u Oficio] PRIMARY KEY ([Codigo profesión])
)
GO
CREATE TABLE [dbo].[Proyecto](
	[Codigo proyecto] [int] NOT NULL,
	[Nombre proyecto] [varchar](50) NULL,
	[Porcentaje proyecto] [numeric](2, 2) NULL,
 CONSTRAINT [PK_Proyecto] PRIMARY KEY CLUSTERED ([Codigo proyecto])
)
GO
CREATE TABLE [dbo].[Puesto Funcional](
	[Codigo PF] [int] NOT NULL,
	[Nombre puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto Funcional] PRIMARY KEY ([Codigo PF])
)
GO
CREATE TABLE [dbo].[Puesto Nominal](
	[Codigo PN] [int] NOT NULL,
	[Nombre puesto] [varchar](50) NULL,
 CONSTRAINT [PK_Puesto Nominal] PRIMARY KEY ([Codigo PN])
)
GO
CREATE TABLE [dbo].[Sexo](
	[Codigo sexo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre sexo] [varchar](50) NULL,
 CONSTRAINT [PK_Sexo] PRIMARY KEY ([Codigo sexo])
)
GO
CREATE TABLE [dbo].[Trabajador](
	[Id trabajador] [int] IDENTITY(1,1) NOT NULL,
	[DPI] [int] NOT NULL,
	[Pasaporte] [int] NULL,
	[Primer apellido] [varchar](50) NULL,
	[Segundo apellido] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Codigo sexo] [int] NULL,
	[Lugar de nacimiento] [varchar](50) NULL,
	[Fecha de nacimiento] [date] NULL,
	[Codigo EC] [int] NULL,
	[Codigo postal] [int] NULL,
	[No Colegiado] [int] NULL,
	[Dirección] [varchar](50) NULL,
	[Tel Residencia] [int] NULL,
	[Tel Celular] [int] NULL,
	[Tel Emergencia] [int] NULL,
	[Foto] [varchar](50) NULL,
	[Funciones] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Codigo PF] [int] NULL,
	[Codigo PN] [int] NULL,
	[Codigo area] [int] NULL,
	[Fecha de ingreso] [date] NULL,
	[Tel Oficina y ext] [int] NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY ([Id trabajador]) 
 CONSTRAINT [UK_Trabajador] UNIQUE KEY ([DPI])
)
GO
CREATE TABLE [dbo].[Trabajador-Especialización](
	[Id trabajador] [int] NOT NULL,
	[No especialización] [int] NOT NULL
) 
GO
CREATE TABLE [dbo].[Trabajador-Nacionalidad](
	[Id trabajador] [int] NOT NULL,
	[Codigo nacionalidad] [int] NOT NULL
) 
GO
CREATE TABLE [dbo].[Trabajador-ProfesiónuOficio](
	[Id trabajador] [int] NOT NULL,
	[Codigo profesión] [int] NOT NULL
) 
GO
CREATE TABLE [dbo].[Trabajador-Proyecto](
	[Id trabajador] [int] NOT NULL,
	[Codigo proyecto] [int] NOT NULL
) 
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
ALTER TABLE [dbo].[Trabajador-Especialización]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-Especialización_Especialización] FOREIGN KEY([No especialización])
REFERENCES [dbo].[Especialización] ([No especialización])
GO
ALTER TABLE [dbo].[Trabajador-Especialización] CHECK CONSTRAINT [FK_Trabajador-Especialización_Especialización]
GO
ALTER TABLE [dbo].[Trabajador-Especialización]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-Especialización_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[Trabajador-Especialización] CHECK CONSTRAINT [FK_Trabajador-Especialización_Trabajador]
GO
ALTER TABLE [dbo].[Trabajador-Nacionalidad]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-Nacionalidad_Nacionalidad] FOREIGN KEY([Codigo nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([Codigo nacionalidad])
GO
ALTER TABLE [dbo].[Trabajador-Nacionalidad] CHECK CONSTRAINT [FK_Trabajador-Nacionalidad_Nacionalidad]
GO
ALTER TABLE [dbo].[Trabajador-Nacionalidad]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-Nacionalidad_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[Trabajador-Nacionalidad] CHECK CONSTRAINT [FK_Trabajador-Nacionalidad_Trabajador]
GO
ALTER TABLE [dbo].[Trabajador-ProfesiónuOficio]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-ProfesiónuOficio_Profesión u Oficio] FOREIGN KEY([Codigo profesión])
REFERENCES [dbo].[Profesión u Oficio] ([Codigo profesión])
GO
ALTER TABLE [dbo].[Trabajador-ProfesiónuOficio] CHECK CONSTRAINT [FK_Trabajador-ProfesiónuOficio_Profesión u Oficio]
GO
ALTER TABLE [dbo].[Trabajador-ProfesiónuOficio]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-ProfesiónuOficio_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[Trabajador-ProfesiónuOficio] CHECK CONSTRAINT [FK_Trabajador-ProfesiónuOficio_Trabajador]
GO
ALTER TABLE [dbo].[Trabajador-Proyecto]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-Proyecto_Proyecto] FOREIGN KEY([Codigo proyecto])
REFERENCES [dbo].[Proyecto] ([Codigo proyecto])
GO
ALTER TABLE [dbo].[Trabajador-Proyecto] CHECK CONSTRAINT [FK_Trabajador-Proyecto_Proyecto]
GO
ALTER TABLE [dbo].[Trabajador-Proyecto]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador-Proyecto_Trabajador] FOREIGN KEY([Id trabajador])
REFERENCES [dbo].[Trabajador] ([Id trabajador])
GO
ALTER TABLE [dbo].[Trabajador-Proyecto] CHECK CONSTRAINT [FK_Trabajador-Proyecto_Trabajador]
GO
USE [master]
GO
ALTER DATABASE [EmployeeStats] SET  READ_WRITE 
GO
