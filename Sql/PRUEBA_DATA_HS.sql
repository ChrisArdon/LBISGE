USE [PRUEBA_DATA_HS]
GO
/****** Object:  Table [dbo].[Areas]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Areas](
	[ID_area] [varchar](10) NOT NULL,
	[NombreDeArea] [varchar](500) NOT NULL,
	[TipoArea] [varchar](800) NOT NULL,
	[Largo] [varchar](10) NULL,
	[Ancho] [varchar](10) NULL,
	[CalcArea] [varchar](10) NULL,
	[CantidadPersonas] [varchar](10) NULL,
	[Nivel] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_area] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Edificios]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edificios](
	[ID_edificio] [varchar](10) NOT NULL,
	[NombreDeEdificio] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_edificio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InformacionArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InformacionArea](
	[Item] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](1000) NOT NULL,
	[CantidadEquipos] [varchar](10) NOT NULL,
	[Capacidad] [varchar](15) NOT NULL,
	[HorasDeUso] [varchar](5) NOT NULL,
	[Dias] [varchar](10) NOT NULL,
	[Consumo] [varchar](15) NOT NULL,
	[Imagen] [image] NULL,
	[ID_edificio] [varchar](10) NOT NULL,
	[ID_area] [varchar](10) NOT NULL,
	[ID_subsistema] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subsistema]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subsistema](
	[ID_subsistema] [varchar](10) NOT NULL,
	[NombreDeSubsistema] [varchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_subsistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Aud ', N'E4N1 Salon audiovisual ', N'Conference Room', N'9.6', N'6.3', N'651.001300', N'14', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'AudEmba', N'E4N2 Auditorium Embajada Americana', N'Auditorium', N'8.8', N'9.5', N'899.862909', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Autom', N'E3N1 Automatizacion', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Bod', N'E4N1 Bodega', N'Storage (Unconditioned)', N'5', N'5', N'269.09776', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_ArqComp', N'E3N2 Arquitectura de Computadoras', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_BiomExp', N'E3N1 Biomedica Experimental', N'Vocational Areas', N'10', N'10', N'1076.39104', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_BiomVir', N'E3N1 Biomedica Virtual', N'Classroom/Lecture', N'10', N'10', N'1076.39104', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_BodN2', N'E3N2 Bodega 2', N'Storage (Unconditioned)', N'10', N'10', N'1076.39104', N'1', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_FundGen', N'E3N2 Fundamentos Generales', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_InstyCo', N'E3N2 Instrumentacion y Control', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_MecVirt', N'E3N1 Mecatronica Virtual', N'Classroom/Lecture', N'10', N'10', N'1076.39104', N'8', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_MicroP', N'E3N2 Microprocesadores', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_OfiDire', N'E3N1 Oficina Director IIIE', N'Office (Executive/Private)', N'10', N'10', N'1076.39104', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Pasillo', N'E3N1 Pasillo', N'Corridor', N'10', N'10', N'1076.39104', N'0', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_PCBLab', N'E3N1 Laboratorio de PCB', N'Vocational Areas', N'10', N'10', N'1076.39104', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Redes1', N'E3N2 Redes de computadora 1', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Redes2', N'E3N2 Redes de computadora 2', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3_Teleco', N'E3N2 Telecomunicaciones', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E3Pasillo_', N'E3N2 Pasillo', N'Corridor', N'10', N'10', N'1076.39104', N'0', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E4', N'E4N1 Construcciones Electromecanicas ', N'Computer Room (Instructional/PC Lab)', N'9.80', N'6.7', N'706.758356', N'8', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E4N2 DirEm', N'E4N2 Direccion de emprendimiento e innovacion', N'Office (Open Plan)', N'30', N'9.6', N'3100.00619', N'30', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 CapB', N'E5N2 capacitaciones B', N'Conference Room', N'9.7', N'8.5', N'887.484412', N'18', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 OFP', N'E5N2 Oficina principal', N'Office (General)', N'6.6', N'5', N'355.209043', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 OfSop', N'E5N2 Oficina soporte tecnico', N'Office (Executive/Private)', N'12', N'9.7', N'1252.91917', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2 SoPte', N'E5N2 Oficinas CTIC', N'Computer Room (Mainframe/Server)', N'12', N'10', N'1291.66924', N'18', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2LoCap', N'E5N2 Lobby capacitaciones', N'Lobby (Office Reception/Waiting)', N'8', N'6', N'516.667699', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2Sal1', N'E5N2 Salon 1 capacitaciones', N'Classroom/Lecture', N'6', N'5', N'322.917312', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E5N2Salcap', N'E5N2 Salon capacitaciones2', N'Classroom/Lecture', N'6.2', N'4.8', N'320.333973', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Bodega', N'E7N1 Bodega', N'Storage (Unconditioned)', N'10', N'10', N'1076.39104', N'0', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Bombas', N'E7N1 Cuarto Compresores', N'Mechanical/Electrical Room', N'10', N'10', N'1076.39104', N'0', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Taller', N'E7N1 Taller Mecanica', N'Vocational Areas', N'10', N'10', N'1076.39104', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'E7_Vestibu', N'E7N1 Vestidores', N'Locker and Dressing Room', N'10', N'10', N'1076.39104', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2', N'E2N1 Salon de Audiovisuales', N'Classroom/Lecture', N'10', N'7.3', N'785.765459', N'14', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2C', N'E2N1 Estudio de audio cabina ', N'Computer Room (Instructional/PC Lab)', N'5', N'2.4', N'129.166924', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2E', N'E2N1 Estudio de audio grabacion ', N'Conference Room', N'5', N'5', N'269.09776', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2IF', N'E2N1 Estudio de iluminacion fotografica ', N'Computer Room (Instructional/PC Lab)', N'7.4', N'5', N'398.264684', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2S2', N'E6N2 Sala 2', N'Computer Room (Instructional/PC Lab)', N'8', N'5.4', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2T', N'E2N1 Estudio de television ', N'Conference Room', N'15', N'10', N'1614.58656', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf2TV', N'E2N1 Isla de edicion de TV', N'Computer Room (Instructional/PC Lab)', N'5', N'3', N'161.458656', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf3S3', N'E6N2 Sala 3', N'Computer Room (Instructional/PC Lab)', N'8', N'5.4', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf5SM', N'E5N2 Salon mosaic', N'Conference Room', N'10', N'8', N'861.112832', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf5TyM', N'E5N1 Termometria y mediciones electricas ', N'Comm/Ind Work (Precision)', N'7', N'6', N'452.084236', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6', N'E6N1 Diseño digital ', N'Computer Room (Instructional/PC Lab)', N'10', N'9.6', N'1033.33539', N'11', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Hid', N'E6N1 Laboratorio de hidraulica ', N'Computer Room (Instructional/PC Lab)', N'7.8', N'8.6', N'722.043109', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Lob', N'E6N1 Lobby', N'Lobby (Office Reception/Waiting)', N'10', N'10', N'1076.39104', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Lobb', N'E6N1 Pasillo de entrada ', N'Lobby (Main Entry and Assembly)', N'10', N'4', N'430.556416', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Neu ', N'E6N1 Laboratorio de neumatica ', N'Computer Room (Instructional/PC Lab)', N'6', N'9.6', N'620.001239', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6Ofc', N'E6N1 Officina', N'Office (General)', N'9.7', N'5', N'522.049654', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6PAS2', N'E6N2 Pasillo A', N'Corridor', N'18', N'1.6 ', N'310.000619', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6PAS2B', N'E6N2 Pasillo B', N'Corridor', N'20', N'1.7', N'365.972953', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6PNH', N'E6N1 Pasillo Neumatica-Hidraulica ', N'Corridor', N'8.6', N'1.7', N'157.368370', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6REC', N'E6N2 Recepcion', N'Convention and Meeting Center', N'12', N'5', N'645.834624', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S10', N'E6N2 Sala 10', N'Computer Room (Instructional/PC Lab)', N'9.5', N'5', N'511.285744', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S11', N'E6N2 Sala 11', N'Computer Room (Instructional/PC Lab)', N'9.6', N'6', N'620.001239', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S12', N'E6N2 Sala 12', N'Computer Room (Instructional/PC Lab)', N'9.5', N'4', N'409.028595', N'7', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S4', N'E6N2 Sala 4', N'Computer Room (Instructional/PC Lab)', N'5.4', N'8', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S5', N'E6N2 Sala 5', N'Computer Room (Instructional/PC Lab)', N'5.3', N'8', N'456.389800', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S6', N'E6N2 Sala 6', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S7', N'E6N2 Sala 7', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S8', N'E6N2 Sala 8', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6S9', N'E6N2 Sala 9', N'Computer Room (Instructional/PC Lab)', N'7.8', N'5', N'419.792505', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6SE', N'E6N2 Sala de estudio ', N'Conference Room', N'12', N'4.4', N'568.334469', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6SERV', N'E6N2 Area de servidores ', N'Computer Room (Mainframe/Server)', N'10', N'2.1', N'226.042118', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edf6SM', N'E6N1 Simulacion de materiales ', N'Classroom/Lecture', N'10', N'4.6', N'495.139878', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edi8Ent', N'E8N2 Entrada principal', N'Lobby (Main Entry and Assembly)', N'10', N'4', N'430.556416', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2Aire', N'E2N1 Exteriores ', N'All Others', N'35', N'15', N'5651.05296', N'30', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CD2', N'E2N2 Centro de diseño 2', N'Computer Room (Instructional/PC Lab)', N'7.3', N'5', N'392.882729', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CD3', N'E2N2 Centro de diseño 3', N'Computer Room (Instructional/PC Lab)', N'7.3', N'10', N'785.765459', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CD4', N'E2N2 Centro de diseño 4', N'Computer Room (Instructional/PC Lab)', N'5', N'5', N'269.09776', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2CDE', N'E2N2 Centro de diseño ', N'Computer Room (Instructional/PC Lab)', N'5', N'7.3', N'392.882729', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2FOT', N'E2N1 Estudio de fotografia A', N'Computer Room (Instructional/PC Lab)', N'3.6', N'3.3', N'127.875255', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2FOTB', N'E2N1 Estudio de fotografia B', N'Computer Room (Instructional/PC Lab)', N'4', N'5', N'215.278208', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2pasS', N'E2N2 Pasillo', N'Corridor', N'20', N'2.3', N'495.139878', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2Pass1', N'E2N1 Pasillo', N'Corridor', N'20', N'2.3', N'495.139878', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2Recp', N'E2N1 Recepcion', N'Office (General)', N'5', N'5', N'269.09776', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif2VIC', N'E2N2 Vicerrectoria ', N'Office (General)', N'5', N'5', N'269.09776', N'2', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5CA', N'E5N2 Capacitaciones A', N'Conference Room', N'10', N'8.6', N'925.696294', N'18', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Cor', N'E5N1 Pasillo laboratorio ensayo de materiales ', N'Corridor', N'18.5', N'2.3', N'458.004387', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5EFP', N'E5N1 Ensayos fisicos de plasticos ', N'Comm/Ind Work (Precision)', N'7', N'3.3', N'248.646330', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5ML', N'E5N1 Dimensional metrologia de longitud ', N'Comm/Ind Work (Precision)', N'9.5', N'5', N'511.285744', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5MYB', N'E5N1 Dimensional masas y balanzas ', N'Comm/Ind Work (Precision)', N'9.5', N'4.5', N'460.157169', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Ofci', N'E5N2 Recepcion Oficina Ing.', N'Office (General)', N'3.4', N'4.7', N'172.007288', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5pasCm', N'E5N2 Pasillo salones cisco y mosaic', N'Corridor', N'9.8', N'3', N'316.458965', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5PE', N'E5N2 Proyectos educativos ', N'Office (General)', N'11.2', N'9', N'1085.00216', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Pres', N'E5N1 Lab de Presion ', N'Comm/Ind Work (Precision)', N'7', N'5', N'376.736864', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Recp', N'E5N1 Recepcion', N'Lobby (Office Reception/Waiting)', N'6', N'10', N'645.834624', N'4', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5RecpC', N'E5N1 Centro de documentacion ', N'Office (General)', N'4.7', N'3', N'151.771136', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5SC', N'E5N2 Salon cisco A', N'Computer Room (Instructional/PC Lab)', N'6.7', N'5', N'360.590998', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5SC5', N'E5N2 Salon cisco B', N'Computer Room (Instructional/PC Lab)', N'6.7', N'5', N'360.590998', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5SR', N'E5N2 Recepcion sala de reuniones', N'Conference Room', N'3.6', N'3.3', N'127.875255', N'3', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif5Vol', N'E5N1 Volumetria ', N'Comm/Ind Work (Precision)', N'7', N'5', N'376.736864', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif6S1', N'E6N2 Sala 1', N'Computer Room (Instructional/PC Lab)', N'8', N'5.4', N'465.000929', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif6S13', N'E6N2 Sala13', N'Computer Room (Instructional/PC Lab)', N'4.6', N'9.6', N'475.334283', N'13', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8', N'E8N1 Sala de laminacion ', N'Comm/Ind Work (Precision)', N'15', N'9.7', N'1566.14896', N'20', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Almao', N'E8N1 Almacen O y P', N'Storage (Unconditioned)', N'7.8', N'7.6', N'638.084608', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8B', N'E8N2 Bodega ', N'Storage (Unconditioned)', N'7.7', N'4.9', N'406.122339', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8BOD', N'E8N2 Bodega principal', N'Storage (Conditioded)', N'7.7', N'5', N'414.410550', N'4', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8C1', N'E8N2 Salon de clases 1', N'Classroom/Lecture', N'7.7', N'9.9', N'820.532889', N'20', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8CC', N'E8N2 Comedor-Cocina ', N'Dining Area', N'5.7', N'2.8', N'171.792009', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Clinc', N'E8N1 Clinica ', N'Medical and Clinical Care', N'5', N'3', N'161.458656', N'3', N'1')
GO
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8DEOyP', N'E8N1 Direccion de escuela O. y P.', N'Office (General)', N'3', N'5', N'161.458656', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8N2Pas', N'E8N2 Pasillo-Recepcion ', N'Lobby (Main Entry and Assembly)', N'40', N'6.5', N'2798.61670', N'15', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8N2T', N'E8N2 Taller de rehabilitacion ', N'Laboratory, Medical', N'12', N'9.5', N'1227.08578', N'20', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8oc', N'E8N2 Salon de casilleros', N'Storage (Unconditioned)', N'7.7', N'5', N'414.410550', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Of', N'E8N2 Oficinas profesores ', N'Office (General)', N'8.6', N'5.8', N'536.903850', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8OS', N'E8N2 Oficina Secetraria', N'Office (General)', N'7.6', N'4.8', N'392.667451', N'6', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8P3y4', N'E8N1 Prueba 3 y 4', N'Medical and Clinical Care', N'4.7', N'3', N'151.771136', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8PasR', N'E8N1 Pasillo recepcion', N'Lobby (Main Entry and Assembly)', N'17.4', N'6', N'1123.75224', N'20', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Pr2', N'E8N1 Prueba 2', N'Medical and Clinical Care', N'2.4', N'3', N'77.5001548', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Prueb', N'E8N1 Prueba 1', N'Medical and Clinical Care', N'4.7', N'3', N'151.771136', N'5', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SalaO', N'E8N1 Laboratorio O. y P. 2', N'Comm/Ind Work (Precision)', N'7.5', N'10.9', N'879.949675', N'16', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8Salap', N'E8N1 Sala de pruebas y chequeo ', N'Medical and Clinical Care', N'7', N'6.7', N'504.827397', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SE', N'E8N2 Salon de estudio 1', N'Library (Reading Areas)', N'7.7', N'4.9', N'406.122339', N'12', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SM', N'E8N1 Sala de maquinas ', N'Comm/Ind Work (Precision)', N'9.7', N'6', N'626.459585', N'10', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8ST', N'E8N1 Sala de termoformado ', N'Comm/Ind Work (Precision)', N'6.7', N'3.1', N'223.566419', N'9', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edif8SY', N'E8N1 Sala de yeso ', N'Computer Room (Instructional/PC Lab)', N'10', N'9.7', N'1044.09930', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Edife8PLAB', N'E8N1 Pasillo lab', N'Corridor', N'13.4', N'2', N'288.472798', N'8', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Icim', N'E3N1 Sistema de manufactura integrada por computadora', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'2', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'InstaElect', N'E4N1 Instalaciones Electricass', N'Computer Room (Instructional/PC Lab)', N'13', N'9.8', N'1371.32218', N'18', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LABENSMAT', N'E5N1 Laboratorio de ensayo de materiales', N'Computer Room (Instructional/PC Lab)', N'15.7', N'4.6', N'777.369609', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Lableed', N'E4N2 Lab Leed', N'Computer Room (Instructional/PC Lab)', N'10.25', N'9.73', N'1073.51169', N'11', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabManEdif', N'E6N1 Laboratorio de Manufactura', N'Comm/Ind Work (Precision)', N'18.9', N'9.6', N'1953.00390', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LABPROT', N'E6N1 Laboratorio de Prototipado', N'Computer Room (Instructional/PC Lab)', N'10.9', N'4.9', N'574.900454', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'LabRef ', N'E6N1 Laboratorio de Refrigeracion ', N'Computer Room (Instructional/PC Lab)', N'10', N'5', N'538.19552', N'6', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MacElec', N'E4N1 Maquinas electricas ', N'Computer Room (Instructional/PC Lab)', N'10', N'10', N'1076.39104', N'7', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaC', N'MCN1 Salon principal', N'Conference Room', N'26.1', N'19.2', N'5394.01077', N'140', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaCEP', N'MCN1 Recepcion-Entrada', N'Lobby (Main Entry and Assembly)', N'16', N'5.6', N'964.446371', N'15', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'MagnaCSC', N'MCN1 Sala de control ', N'Computer Room (Instructional/PC Lab)', N'2.1', N'4.9', N'110.760638', N'3', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Ofc', N'E5N1 Oficina ', N'Office (General)', N'5', N'4.8', N'258.333849', N'1', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SalonRB', N'E8N2 Salon de Rehabilitacion ', N'Medical and Clinical Care', N'7.7', N'9.9', N'820.532889', N'8', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SC4', N'E4N2 Sala Cientifica', N'Office (General)', N'10.93', N'9.61', N'1130.61208', N'5', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'SisPote', N'E4N1 Sistema de Potencia', N'Computer Room (Instructional/PC Lab)', N'9.9', N'9.9', N'1054.97085', N'12', N'1')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'UDBVirt', N'E4N2 UDB Virtual ', N'Computer Room (Instructional/PC Lab)', N'12.80', N'9.76', N'1344.71379', N'10', N'2')
INSERT [dbo].[Areas] ([ID_area], [NombreDeArea], [TipoArea], [Largo], [Ancho], [CalcArea], [CantidadPersonas], [Nivel]) VALUES (N'Volu5', N'E5N1 Laboratorio de Volumetria', N'Comm/Ind Work (Precision)', N'4', N'7', N'301.389491', N'1', N'1')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E2', N'Edificio 2')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E3', N'Edificio 3')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E4', N'Edificio 4')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E5', N'Edificio 5')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E6', N'Edificio 6')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E7', N'Edificio 7')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E8', N'Edificio 8')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EA', N'Edificio A')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EB', N'Edificio B')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-Bibl', N'Biblioteca')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EC', N'Edificio C')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-CDIU', N'Edificio CDIU')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-OWCC', N'Edificio OWCC')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'EP', N'Edificio de profesores')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'E-Pinac', N'Pinacoteca')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'ER', N'Edificio R')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'MA', N'Magna A')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'MB', N'Magna B')
INSERT [dbo].[Edificios] ([ID_edificio], [NombreDeEdificio]) VALUES (N'MC', N'Magna C')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'ACompr', N'Aire comprimido')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Acondic', N'Aire acondicionado')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'AireAcond', N'Aire Acondicionado')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Audv', N'Equipo audiovisual')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'ECo', N'Equipo de Cocina')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EOfic', N'Equipo de oficina')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EProcFab', N'Equipo de procesos de fabricación')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EquipoP', N'Equipo de medicion ')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'EqupM', N'Equipo de prueba ')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'ERefrig', N'Equipo de refrigeración')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Fem', N'Fuentes de Voltaje')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'HDPOT', N'Horno de potencia')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'IExte', N'Iluminación Exterior')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'IInter', N'Iluminación Interior')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'MElec', N'Motores electricos')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Misc', N'Miscelaneos')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'Trafo', N'Transformador de potencia ')
INSERT [dbo].[Subsistema] ([ID_subsistema], [NombreDeSubsistema]) VALUES (N'VentForz', N'Ventilacion Forzada')
ALTER TABLE [dbo].[InformacionArea]  WITH CHECK ADD  CONSTRAINT [Fk_area] FOREIGN KEY([ID_area])
REFERENCES [dbo].[Areas] ([ID_area])
GO
ALTER TABLE [dbo].[InformacionArea] CHECK CONSTRAINT [Fk_area]
GO
ALTER TABLE [dbo].[InformacionArea]  WITH CHECK ADD  CONSTRAINT [Fk_edificio] FOREIGN KEY([ID_edificio])
REFERENCES [dbo].[Edificios] ([ID_edificio])
GO
ALTER TABLE [dbo].[InformacionArea] CHECK CONSTRAINT [Fk_edificio]
GO
ALTER TABLE [dbo].[InformacionArea]  WITH CHECK ADD  CONSTRAINT [Fk_subsistema] FOREIGN KEY([ID_subsistema])
REFERENCES [dbo].[Subsistema] ([ID_subsistema])
GO
ALTER TABLE [dbo].[InformacionArea] CHECK CONSTRAINT [Fk_subsistema]
GO
/****** Object:  StoredProcedure [dbo].[fl_getTipoAreaList]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[fl_getTipoAreaList]
as
select 
a.TipoArea as 'NombreTipoArea',
a.TipoArea as 'ValueMember'
from Areas a
GO
/****** Object:  StoredProcedure [dbo].[pr_deleteArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteArea]
@IDareaPr varchar(10)
as delete from Areas where ID_area = @IDareaPr




GO
/****** Object:  StoredProcedure [dbo].[pr_deleteEdificio]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteEdificio]
@ID_edificioPr varchar(10)
as
delete from Edificios where ID_edificio = @ID_edificioPr





GO
/****** Object:  StoredProcedure [dbo].[pr_deleteInformacionArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteInformacionArea]
@Item int
as
delete from InformacionArea where Item = @Item



GO
/****** Object:  StoredProcedure [dbo].[pr_deleteSubsistema]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_deleteSubsistema]
@IDsubsistemaPr varchar(10) 
as delete from Subsistema where ID_subsistema = @IDsubsistemaPr




GO
/****** Object:  StoredProcedure [dbo].[pr_getAreaData]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getAreaData]
as
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea',
a.CantidadPersonas as 'CantidadPersonas',
a.Nivel as 'Nivel'
--a.ID_edificio as 'IDedificio'
from Areas a
order by a.NombreDeArea asc





GO
/****** Object:  StoredProcedure [dbo].[pr_getAreaDataLIKE]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getAreaDataLIKE]
@data varchar (50)
as 
select
a.ID_area as 'ID',
a.NombreDeArea as 'Nombre',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea',
a.CantidadPersonas as 'CantidadPersonas',
a.Nivel as 'Nivel'
from Areas a
where a.NombreDeArea like '%'+@data+'%'
order by a.NombreDeArea asc





GO
/****** Object:  StoredProcedure [dbo].[pr_getEdificioData]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getEdificioData]
as
select
e.ID_edificio as 'ID',
e.NombreDeEdificio as 'Nombre'
from Edificios e
order by e.NombreDeEdificio asc




GO
/****** Object:  StoredProcedure [dbo].[pr_getEdificioDataLIKE]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getEdificioDataLIKE]
@data varchar(50)
as
select
e.ID_edificio as 'ID',
e.NombreDeEdificio as 'Nombre'
from Edificios e
where
e.NombreDeEdificio like '%'+@data+'%'
order by e.NombreDeEdificio asc




GO
/****** Object:  StoredProcedure [dbo].[pr_getInformacionAreaData]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getInformacionAreaData]
as
select
i.Item as 'Item',
i.Descripcion as 'Descripcion',
i.CantidadEquipos as 'Equipos',
a.CantidadPersonas as 'Personas',
a.TipoArea as 'Tipo',
i.Capacidad as 'Capacidad',
i.HorasDeUso as 'Horas',
i.Dias as 'Dias',
i.Consumo as 'Consumo',
e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'Edificio',
a.ID_area as 'IDarea',
a.NombreDeArea as 'Area',
s.ID_subsistema as 'IDsubsistema',
s.NombreDeSubsistema as 'Subsistema'
from InformacionArea i 
inner join Edificios e on e.ID_edificio = i.ID_edificio
inner join Areas a on a.ID_area = i.ID_area
inner join Subsistema s on s.ID_subsistema = i.ID_subsistema
order by e.NombreDeEdificio


GO
/****** Object:  StoredProcedure [dbo].[pr_getInformacionAreaDataLIKE]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getInformacionAreaDataLIKE]
@data varchar(50)
as
select
i.Item as 'Item',
i.Descripcion as 'Descripcion',
i.CantidadEquipos as 'Equipos',
a.CantidadPersonas as 'Personas',
a.TipoArea as 'Tipo',

i.Capacidad as 'Capacidad',
i.HorasDeUso as 'Horas',
i.Dias as 'Dias',
i.Consumo as 'Consumo',
e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'Edificio',
a.ID_area as 'IDarea',
a.NombreDeArea as 'Area',
s.ID_subsistema as 'IDsubsistema',
s.NombreDeSubsistema as 'Subsistema'
from InformacionArea i 
inner join Edificios e on e.ID_edificio = i.ID_edificio
inner join Areas a on a.ID_area = i.ID_area
inner join Subsistema s on s.ID_subsistema = i.ID_subsistema
where
a.TipoArea like '%'+@data+'%'
or
e.NombreDeEdificio like '%'+@data+'%'
or 
a.NombreDeArea like '%'+@data+'%'
or 
s.NombreDeSubsistema like '%'+@data+'%'


GO
/****** Object:  StoredProcedure [dbo].[pr_getSubsistemaData]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getSubsistemaData]
as
select 
s.ID_subsistema as 'ID',
s.NombreDeSubsistema as 'Nombre'
from Subsistema s
order by s.NombreDeSubsistema asc




GO
/****** Object:  StoredProcedure [dbo].[pr_getSubsistemaDataLIKE]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_getSubsistemaDataLIKE]
@data varchar(50)
as
select 
s.ID_subsistema as 'ID',
s.NombreDeSubsistema as 'Nombre'
from Subsistema s
where
s.NombreDeSubsistema like '%'+@data+'%'
order by s.NombreDeSubsistema asc




GO
/****** Object:  StoredProcedure [dbo].[pr_insertArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertArea]
@IDareapr varchar(10),
@nombreAreapr varchar(500),
@TipoAreapr varchar (800),
@Largopr varchar (10),
@Anchopr varchar (10),
@CalcAreapr varchar (10),
@CantidadPersonaspr varchar(10),
@Nivelpr varchar(10)
as
insert into Areas(ID_area, NombreDeArea, TipoArea, Largo, Ancho, CalcArea, CantidadPersonas, Nivel) values (@IDareapr, @nombreAreapr, @TipoAreapr, @Largopr, @Anchopr, @CalcAreapr, @CantidadPersonaspr, @Nivelpr)




GO
/****** Object:  StoredProcedure [dbo].[pr_insertEdificio]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertEdificio]
@ID_EdificioPr varchar(10),
@nombre_edificioPr varchar(30)
as
insert into Edificios(ID_edificio, NombreDeEdificio) values (@ID_EdificioPr, @nombre_edificioPr)




GO
/****** Object:  StoredProcedure [dbo].[pr_insertInformacionArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertInformacionArea]
@DescripcionPr varchar(1000),
@CantidadEquiposPr varchar(10),
@CapacidadPr varchar(15),
@HorasDeUsoPr varchar(5),
@DiasPr varchar(10),
@ConsumoPr varchar(15),
@ID_edificioPr varchar(10),
@ID_areaPr varchar(10),
@ID_subsistemaPr varchar(10)
as
insert into InformacionArea(Descripcion,CantidadEquipos,Capacidad,HorasDeUso,Dias,Consumo,ID_edificio,ID_area,ID_subsistema)
values (@DescripcionPr,@CantidadEquiposPr,@CapacidadPr,@HorasDeUsoPr,@DiasPr,@ConsumoPr,@ID_edificioPr,@ID_areaPr,@ID_subsistemaPr)


GO
/****** Object:  StoredProcedure [dbo].[pr_insertSubsistema]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_insertSubsistema]
@IDsubsistemaPr varchar(10),
@NombreSubsistemaPr varchar(1000)
as 
insert into Subsistema(ID_subsistema,NombreDeSubsistema) values (@IDsubsistemaPr,@NombreSubsistemaPr)




GO
/****** Object:  StoredProcedure [dbo].[pr_updateArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateArea]
@IDareapr varchar(10),
@nombreAreapr varchar(500),
@TipoAreapr varchar (800),
@Largopr varchar (10),
@Anchopr varchar (10),
@CalcAreapr varchar (10),
@CantidadPersonaspr varchar(10),
@Nivelpr varchar(10)
as
update Areas
set
ID_area = @IDareapr,
NombreDeArea = @nombreAreapr,
TipoArea = @TipoAreapr,
Largo = @Largopr,
Ancho = @Anchopr,
CalcArea = @CalcAreapr,
CantidadPersonas = @CantidadPersonaspr,
Nivel = @Nivelpr
where ID_area = @IDareapr




GO
/****** Object:  StoredProcedure [dbo].[pr_updateEdificio]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateEdificio]
@ID_EdificioPr varchar(10),
@nombre_edificioPr varchar(30)
as
update Edificios
set
ID_edificio = @ID_EdificioPr,
NombreDeEdificio = @nombre_edificioPr
where ID_edificio = @ID_EdificioPr




GO
/****** Object:  StoredProcedure [dbo].[pr_updateInformacionArea]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateInformacionArea]
@Item int,
@DescripcionPr varchar(1000),
@CantidadEquiposPr varchar(10),
@CapacidadPr varchar(15),
@HorasDeUsoPr varchar(5),
@DiasPr varchar(10),
@ConsumoPr varchar(15),
@ID_edificioPr varchar(10),
@ID_areaPr varchar(10),
@ID_subsistemaPr varchar(10)
as
update InformacionArea
set 
Descripcion = @DescripcionPr,
CantidadEquipos = @CantidadEquiposPr,
Capacidad = @CapacidadPr,
HorasDeUso = @HorasDeUsoPr,
Dias = @DiasPr,
Consumo = @ConsumoPr,
ID_edificio = @ID_edificioPr,
ID_area = @ID_areaPr,
ID_subsistema = @ID_subsistemaPr
where Item = @Item



GO
/****** Object:  StoredProcedure [dbo].[pr_updateSubsistema]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pr_updateSubsistema]
@IDsubsistemaPr varchar(10),
@NombreSubsistemaPr varchar(1000)
as 
update Subsistema
set 
ID_subsistema = @IDsubsistemaPr,
NombreDeSubsistema = @NombreSubsistemaPr
where ID_subsistema = @IDsubsistemaPr





GO
/****** Object:  StoredProcedure [dbo].[qp_sys_ParseNumbersString]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[qp_sys_ParseNumbersString]   
  @InputString nvarchar(4000) ,  
  @Separator char(1) = NULL  
                                                                                                                                                                                            
 AS  
    
                                                                                                                                                                                                                                                              
 BEGIN  
                                                                                                                                                                                                                                                           
 DECLARE @Numbers TABLE  
 (Number int)  
 DECLARE @Strings TABLE  
 (String nvarchar(4000))  
  
 SELECT @Separator = ISNULL(@Separator,',')   
  
 DECLARE @pos int,  
   @Num nvarchar(4000)  
  
 SELECT @pos = Charindex(@Separator,@InputString)  
 WHILE @pos <>0  
 BEGIN  
 SELECT @Num=Substring (@InputString,1,@pos-1)  
 IF IsNumeric(@Num)=1  
  INSERT INTO @Numbers  
   SELECT convert (int,str(@Num))  
 ELSE   
   INSERT INTO @Strings  
   SELECT @Num  
 SELECT @InputString = Substring(@InputString,@pos+1,len(@InputString))  
 SELECT @pos = Charindex(@Separator,@InputString)  
 END  
   
IF IsNumeric(@InputString)=1  
 INSERT INTO @Numbers  
  SELECT convert (int,str(@InputString))  
ELSE  
INSERT INTO @Strings  
   SELECT @InputString  
  
IF exists (select TOP 1 1 from @Numbers)  
 SELECT Number FROM @Numbers  
ELSE   
 SELECT String from @Strings  
                                                                                                                                                                                                                                                         
END  
  
  
                                                                                                                                                                                                                                                             
  
--------------------------  
--calling example  
-- exec qp_sys_ParseNumbersString @InputString ='1;2;3;4;5', @Separator = ';'  
-------------------------  
  
  
GO
/****** Object:  StoredProcedure [dbo].[sp_ConsumoPorSubS]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_ConsumoPorSubS]

as
 --consumo por subsistema
SELECT        dbo.Subsistema.NombreDeSubsistema, SUM(convert(numeric(10,4), dbo.InformacionArea.Consumo)) AS ConsumoTotal
FROM            dbo.Areas INNER JOIN
                         dbo.InformacionArea ON dbo.Areas.ID_area = dbo.InformacionArea.ID_area INNER JOIN
                         dbo.Edificios ON dbo.InformacionArea.ID_edificio = dbo.Edificios.ID_edificio INNER JOIN
                         dbo.Subsistema ON dbo.InformacionArea.ID_subsistema = dbo.Subsistema.ID_subsistema
WHERE        (dbo.Subsistema.NombreDeSubsistema = 'Iluminación Interior' 
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo audiovisual'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire comprimido'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire Acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de Cocina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de oficina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de procesos de fabricación'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de medicion '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de prueba '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de refrigeración'
				or dbo.Subsistema.NombreDeSubsistema = 'Fuentes de Voltaje '
				or dbo.Subsistema.NombreDeSubsistema = 'Horno de potencia '
				or dbo.Subsistema.NombreDeSubsistema = 'Iluminación Exterior '
				or dbo.Subsistema.NombreDeSubsistema = 'Motores electricos '
				or dbo.Subsistema.NombreDeSubsistema = 'Miscelaneos '
				or dbo.Subsistema.NombreDeSubsistema = 'Transformador de potencia  '
				or dbo.Subsistema.NombreDeSubsistema = 'Ventilacion Forzada '
				 ) 
				group by dbo.Subsistema.NombreDeSubsistema
GO
/****** Object:  StoredProcedure [dbo].[sp_CosumoPorEdificioprueba]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_CosumoPorEdificioprueba]
@edificio varchar (500)
as
SELECT        dbo.Edificios.NombreDeEdificio, dbo.Subsistema.NombreDeSubsistema, SUM(convert(numeric(10,4), dbo.InformacionArea.Consumo)) AS ConsumoTotal
FROM            dbo.Areas INNER JOIN
                         dbo.InformacionArea ON dbo.Areas.ID_area = dbo.InformacionArea.ID_area INNER JOIN
                         dbo.Edificios ON dbo.InformacionArea.ID_edificio = dbo.Edificios.ID_edificio INNER JOIN
                         dbo.Subsistema ON dbo.InformacionArea.ID_subsistema = dbo.Subsistema.ID_subsistema
WHERE        (dbo.Edificios.NombreDeEdificio = @edificio) AND (dbo.Subsistema.NombreDeSubsistema = 'Iluminación Interior'
or dbo.Subsistema.NombreDeSubsistema = 'Equipo audiovisual'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire comprimido'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire Acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de Cocina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de oficina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de procesos de fabricación'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de medicion '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de prueba '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de refrigeración'
				or dbo.Subsistema.NombreDeSubsistema = 'Fuentes de Voltaje '
				or dbo.Subsistema.NombreDeSubsistema = 'Horno de potencia '
				or dbo.Subsistema.NombreDeSubsistema = 'Iluminación Exterior '
				or dbo.Subsistema.NombreDeSubsistema = 'Motores electricos '
				or dbo.Subsistema.NombreDeSubsistema = 'Miscelaneos '
				or dbo.Subsistema.NombreDeSubsistema = 'Transformador de potencia  '
				or dbo.Subsistema.NombreDeSubsistema = 'Ventilacion Forzada '
				) 
                     group by dbo.Edificios.NombreDeEdificio,dbo.Subsistema.NombreDeSubsistema 
GO
/****** Object:  StoredProcedure [dbo].[sp_CosumoPorEdificioprueba1]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_CosumoPorEdificioprueba1]
@e varchar (500)
as
SELECT        dbo.Edificios.NombreDeEdificio, dbo.Subsistema.NombreDeSubsistema, SUM(convert(numeric(10,4), dbo.InformacionArea.Consumo)) AS ConsumoTotal
FROM            dbo.Areas INNER JOIN
                         dbo.InformacionArea ON dbo.Areas.ID_area = dbo.InformacionArea.ID_area INNER JOIN
                         dbo.Edificios ON dbo.InformacionArea.ID_edificio = dbo.Edificios.ID_edificio INNER JOIN
                         dbo.Subsistema ON dbo.InformacionArea.ID_subsistema = dbo.Subsistema.ID_subsistema
WHERE        (dbo.Edificios.NombreDeEdificio = @e) 
                AND (dbo.Subsistema.NombreDeSubsistema = 'Iluminación Interior'
                or dbo.Subsistema.NombreDeSubsistema = 'Equipo audiovisual'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire comprimido'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire Acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de Cocina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de oficina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de procesos de fabricación'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de medicion '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de prueba '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de refrigeración'
				or dbo.Subsistema.NombreDeSubsistema = 'Fuentes de Voltaje '
				or dbo.Subsistema.NombreDeSubsistema = 'Horno de potencia '
				or dbo.Subsistema.NombreDeSubsistema = 'Iluminación Exterior '
				or dbo.Subsistema.NombreDeSubsistema = 'Motores electricos '
				or dbo.Subsistema.NombreDeSubsistema = 'Miscelaneos '
				or dbo.Subsistema.NombreDeSubsistema = 'Transformador de potencia  '
				or dbo.Subsistema.NombreDeSubsistema = 'Ventilacion Forzada '
				) 
                     group by dbo.Edificios.NombreDeEdificio,dbo.Subsistema.NombreDeSubsistema 
GO
/****** Object:  StoredProcedure [dbo].[sp_CosumoPorEdificioReport]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[sp_CosumoPorEdificioReport]
@e varchar (500)
as
SELECT         dbo.Subsistema.NombreDeSubsistema, SUM(convert(numeric(10,4), dbo.InformacionArea.Consumo)) AS ConsumoTotal
FROM            dbo.Areas INNER JOIN
                         dbo.InformacionArea ON dbo.Areas.ID_area = dbo.InformacionArea.ID_area INNER JOIN
                         dbo.Edificios ON dbo.InformacionArea.ID_edificio = dbo.Edificios.ID_edificio INNER JOIN
                         dbo.Subsistema ON dbo.InformacionArea.ID_subsistema = dbo.Subsistema.ID_subsistema
WHERE        (dbo.Edificios.NombreDeEdificio = @e) 
                AND (dbo.Subsistema.NombreDeSubsistema = 'Iluminación Interior'
                or dbo.Subsistema.NombreDeSubsistema = 'Equipo audiovisual'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire comprimido'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Aire Acondicionado'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de Cocina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de oficina'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de procesos de fabricación'
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de medicion '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de prueba '
				or dbo.Subsistema.NombreDeSubsistema = 'Equipo de refrigeración'
				or dbo.Subsistema.NombreDeSubsistema = 'Fuentes de Voltaje '
				or dbo.Subsistema.NombreDeSubsistema = 'Horno de potencia '
				or dbo.Subsistema.NombreDeSubsistema = 'Iluminación Exterior '
				or dbo.Subsistema.NombreDeSubsistema = 'Motores electricos '
				or dbo.Subsistema.NombreDeSubsistema = 'Miscelaneos '
				or dbo.Subsistema.NombreDeSubsistema = 'Transformador de potencia  '
				or dbo.Subsistema.NombreDeSubsistema = 'Ventilacion Forzada '
				) 
                     group by dbo.Edificios.NombreDeEdificio,dbo.Subsistema.NombreDeSubsistema 
GO
/****** Object:  StoredProcedure [dbo].[sp_eQUESTLIKE]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_eQUESTLIKE]
@data varchar (50)
as
begin
 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
Ia.Consumo AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (a.Nivel=1 and A.NombreDeArea like '%'+@data+'%')
)
as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable 

SELECT Nombre,tipo,cantidad,calculo,CFMpers,
convert(numeric(10,2),(isnull([Aire comprimido],0))) as 'AireComprimido'
,convert(numeric(10,2),(isnull([Aire Acondicionado],0))) as 'AireAcondicionado'
,convert(numeric(10,2),(isnull([Equipo audiovisual],0))) as 'EquipoAudiovisual'
,convert(numeric(10,2),(isnull([Equipo de Cocina],0))) as 'EquipoCocina'
,convert(numeric(10,2),(isnull([Equipo de oficina],0))) as 'EquipoOficina'
,convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))) as 'ProcesosFabricacion'
,convert(numeric(10,2),(isnull([Equipo de medicion],0))) as 'EquipoMedicion'
,convert(numeric(10,2),(isnull([Equipo de prueba],0))) as 'EquipoPrueba'
,convert(numeric(10,2),(isnull([Equipo de refrigeración],0))) as 'EquipoRefrigeracion'
,convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))) as 'FuentesVoltaje'
,convert(numeric(10,2),(isnull([Horno de potencia],0))) as 'HornoPotencia'
,convert(numeric(10,2),(isnull([Iluminación Exterior],0))) as 'IluminacionExterior'
,convert(numeric(10,2),(isnull([Iluminación Interior],0))) as 'IluminacionInterior'
,convert(numeric(10,2),(isnull([Motores electricos],0))) as 'MotoresElectricos'
,convert(numeric(10,2),(isnull([Miscelaneos],0))) as 'Miscelaneos'
,convert(numeric(10,2),(isnull([Transformador de potencia],0))) as 'TransformadorPotencia'
,convert(numeric(10,2),(isnull([Ventilacion Forzada],0))) as 'VentilacionForzada'
from #Temp
--where (Nombre like '%'+@data+'%')
 group by tipo,Nombre,cantidad,calculo,CFMpers,[Aire comprimido],[Aire Acondicionado]
,[Equipo audiovisual],[Equipo de Cocina],[Equipo de oficina],[Equipo de procesos de fabricación]
,[Equipo de medicion],[Equipo de prueba],[Equipo de refrigeración],[Fuentes de Voltaje]
,[Horno de potencia],[Iluminación Exterior],[Iluminación Interior],[Motores electricos]
,[Miscelaneos],[Transformador de potencia],[Ventilacion Forzada]


end


--------------------------------------------------------------------------------------------
--EXEC sp_eQUESTLIKE @data = ''
GO
/****** Object:  StoredProcedure [dbo].[sp_eQUESTNivel1]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_eQUESTNivel1]
as
begin
 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
Ia.Consumo AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (a.Nivel=1)
)
as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable 

SELECT Nombre,tipo,cantidad,calculo,CFMpers,
convert(numeric(10,2),(isnull([Aire comprimido],0))) as 'AireComprimido'
,convert(numeric(10,2),(isnull([Aire Acondicionado],0))) as 'AireAcondicionado'
,convert(numeric(10,2),(isnull([Equipo audiovisual],0))) as 'EquipoAudiovisual'
,convert(numeric(10,2),(isnull([Equipo de Cocina],0))) as 'EquipoCocina'
,convert(numeric(10,2),(isnull([Equipo de oficina],0))) as 'EquipoOficina'
,convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))) as 'ProcesosFabricacion'
,convert(numeric(10,2),(isnull([Equipo de medicion],0))) as 'EquipoMedicion'
,convert(numeric(10,2),(isnull([Equipo de prueba],0))) as 'EquipoPrueba'
,convert(numeric(10,2),(isnull([Equipo de refrigeración],0))) as 'EquipoRefrigeracion'
,convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))) as 'FuentesVoltaje'
,convert(numeric(10,2),(isnull([Horno de potencia],0))) as 'HornoPotencia'
,convert(numeric(10,2),(isnull([Iluminación Exterior],0))) as 'IluminacionExterior'
,convert(numeric(10,2),(isnull([Iluminación Interior],0))) as 'IluminacionInterior'
,convert(numeric(10,2),(isnull([Motores electricos],0))) as 'MotoresElectricos'
,convert(numeric(10,2),(isnull([Miscelaneos],0))) as 'Miscelaneos'
,convert(numeric(10,2),(isnull([Transformador de potencia],0))) as 'TransformadorPotencia'
,convert(numeric(10,2),(isnull([Ventilacion Forzada],0))) as 'VentilacionForzada'
from #Temp group by tipo,Nombre,cantidad,calculo,CFMpers,[Aire comprimido],[Aire Acondicionado]
,[Equipo audiovisual],[Equipo de Cocina],[Equipo de oficina],[Equipo de procesos de fabricación]
,[Equipo de medicion],[Equipo de prueba],[Equipo de refrigeración],[Fuentes de Voltaje]
,[Horno de potencia],[Iluminación Exterior],[Iluminación Interior],[Motores electricos]
,[Miscelaneos],[Transformador de potencia],[Ventilacion Forzada]


end


--------------------------------------------------------------------------------------------
--EXEC sp_eQUESTNivel1 
GO
/****** Object:  StoredProcedure [dbo].[sp_eQUESTNivel2]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_eQUESTNivel2]
as
begin
 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
Ia.Consumo AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (a.Nivel=2)
)
as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable 

SELECT Nombre,tipo,cantidad,calculo,CFMpers,
convert(numeric(10,2),(isnull([Aire comprimido],0))) as 'AireComprimido'
,convert(numeric(10,2),(isnull([Aire Acondicionado],0))) as 'AireAcondicionado'
,convert(numeric(10,2),(isnull([Equipo audiovisual],0))) as 'EquipoAudiovisual'
,convert(numeric(10,2),(isnull([Equipo de Cocina],0))) as 'EquipoCocina'
,convert(numeric(10,2),(isnull([Equipo de oficina],0))) as 'EquipoOficina'
,convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))) as 'ProcesosFabricacion'
,convert(numeric(10,2),(isnull([Equipo de medicion],0))) as 'EquipoMedicion'
,convert(numeric(10,2),(isnull([Equipo de prueba],0))) as 'EquipoPrueba'
,convert(numeric(10,2),(isnull([Equipo de refrigeración],0))) as 'EquipoRefrigeracion'
,convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))) as 'FuentesVoltaje'
,convert(numeric(10,2),(isnull([Horno de potencia],0))) as 'HornoPotencia'
,convert(numeric(10,2),(isnull([Iluminación Exterior],0))) as 'IluminacionExterior'
,convert(numeric(10,2),(isnull([Iluminación Interior],0))) as 'IluminacionInterior'
,convert(numeric(10,2),(isnull([Motores electricos],0))) as 'MotoresElectricos'
,convert(numeric(10,2),(isnull([Miscelaneos],0))) as 'Miscelaneos'
,convert(numeric(10,2),(isnull([Transformador de potencia],0))) as 'TransformadorPotencia'
,convert(numeric(10,2),(isnull([Ventilacion Forzada],0))) as 'VentilacionForzada'
from #Temp group by tipo,Nombre,cantidad,calculo,CFMpers,[Aire comprimido],[Aire Acondicionado]
,[Equipo audiovisual],[Equipo de Cocina],[Equipo de oficina],[Equipo de procesos de fabricación]
,[Equipo de medicion],[Equipo de prueba],[Equipo de refrigeración],[Fuentes de Voltaje]
,[Horno de potencia],[Iluminación Exterior],[Iluminación Interior],[Motores electricos]
,[Miscelaneos],[Transformador de potencia],[Ventilacion Forzada]


end


--------------------------------------------------------------------------------------------
--EXEC sp_eQUESTNivel2 
GO
/****** Object:  StoredProcedure [dbo].[sp_TablaEQUEST]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TablaEQUEST]
@TipoA varchar(800),
@IdA varchar(10)
as
begin
select*
from(
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
Sb.NombreDeSubsistema as 'Nombresub',
SUM(convert(numeric(10,4), Ia.Consumo)) AS 'ConsumoTotal'

from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
where (A.TipoArea = @TipoA and A.ID_area=@IdA)
group by a.NombreDeArea,a.TipoArea,a.CantidadPersonas,a.CalcArea,Sb.NombreDeSubsistema)
as SourceTable 
PIVOT(max(ConsumoTotal) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion ],[Equipo de prueba ],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia ],
[Ventilacion Forzada])) AS PivotTable 

end
GO
/****** Object:  StoredProcedure [dbo].[sp_TablaEQUEST_PRUEBA2]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_TablaEQUEST_PRUEBA2]
@ListaNombreA varchar(1000)
as
begin

 -- create temp table for branches in process.           
 DECLARE @ListaNombreA_Table TABLE (NombreA varchar(100))
  DECLARE @TotalCalculo numeric(10,2) 
-- set ListaTiposA list to process.         
 INSERT INTO @ListaNombreA_Table        
 EXECUTE qp_sys_ParseNumbersString @InputString = @ListaNombreA, @Separator = ',' 

 if object_id('tempdb..#Temp') > 0 
  begin
	drop table #Temp
  end
 --if #Temp 

select *
INTO #Temp from (
Select A.NombreDeArea as 'Nombre',
A.TipoArea as 'tipo',
Convert(decimal(5,0),A.CantidadPersonas)  as 'cantidad',
A.CalcArea as 'calculo',
convert(numeric(10,1), A.CantidadPersonas)*20 as 'CFMpers',
isnull(Sb.NombreDeSubsistema,0.00)  as 'Nombresub',
convert(numeric(10,2),Ia.Consumo ) AS 'Consumo'
from Areas A
inner join InformacionArea Ia on Ia.ID_area=A.ID_area 
inner join Subsistema Sb on Sb.ID_subsistema=Ia.ID_subsistema
inner join @ListaNombreA_Table lt
on lt.NombreA = a.NombreDeArea
)

as SourceTable 
PIVOT(max(Consumo) FOR Nombresub 
IN([Aire comprimido],[Aire Acondicionado],[Equipo audiovisual],[Equipo de Cocina],
[Equipo de oficina],[Equipo de procesos de fabricación],[Equipo de medicion ],[Equipo de prueba],
[Equipo de refrigeración],[Fuentes de Voltaje],[Horno de potencia],[Iluminación Exterior],
[Iluminación Interior],[Motores electricos],[Miscelaneos],[Transformador de potencia],
[Ventilacion Forzada])
) AS PivotTable  



select @TotalCalculo=sum(convert(numeric(10,1),calculo))  from #Temp 

select tipo,(sum(convert(numeric(10,1),calculo))/@TotalCalculo)*100  as 'Porcentaje', 
(sum(convert(numeric(10,1),calculo)) / sum(convert(numeric(10,1),cantidad))) as 'FT2/Personas',
sum(CFMpers) as 'CFM/Pers'
,(sum(convert(numeric(10,2),(isnull([Aire comprimido],0))))/ sum(convert(numeric(10,1),calculo))) as 'AireComprimido'
,(sum(convert(numeric(10,2),(isnull([Aire Acondicionado],0))))/ sum(convert(numeric(10,1),calculo))) as 'AireAcondicionado'
,(sum(convert(numeric(10,2),(isnull([Equipo audiovisual],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoAudiovisual'
,(sum(convert(numeric(10,2),(isnull([Equipo de Cocina],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoCocina'
,(sum(convert(numeric(10,2),(isnull([Equipo de oficina],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoOficina'
,(sum(convert(numeric(10,2),(isnull([Equipo de procesos de fabricación],0))))/ sum(convert(numeric(10,1),calculo))) as 'ProcesosFabricacion'
,(sum(convert(numeric(10,2),(isnull([Equipo de medicion ],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoMedicion'
,(sum(convert(numeric(10,2),(isnull([Equipo de prueba],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoPrueba'
,(sum(convert(numeric(10,2),(isnull([Equipo de refrigeración],0))))/ sum(convert(numeric(10,1),calculo))) as 'EquipoRefrigeracion'
,(sum(convert(numeric(10,2),(isnull([Fuentes de Voltaje],0))))/ sum(convert(numeric(10,1),calculo))) as 'FuentesVoltaje'
,(sum(convert(numeric(10,2),(isnull([Horno de potencia],0))))/ sum(convert(numeric(10,1),calculo))) as 'HornoPotencia'
,(sum(convert(numeric(10,2),(isnull([Iluminación Exterior],0))))/ sum(convert(numeric(10,1),calculo))) as 'IluminacionExterior'
,(sum(convert(numeric(10,2),(isnull([Iluminación Interior],0))))/ sum(convert(numeric(10,1),calculo))) as 'IluminaciónInterior'
,(sum(convert(numeric(10,2),(isnull([Motores electricos],0))))/ sum(convert(numeric(10,1),calculo))) as 'MotoresElectricos'
,(sum(convert(numeric(10,2),(isnull([Miscelaneos],0))))/ sum(convert(numeric(10,1),calculo))) as 'Miscelaneos'
,(sum(convert(numeric(10,2),(isnull([Transformador de potencia],0))))/ sum(convert(numeric(10,1),calculo))) as 'TransformadorPotencia'
,(sum(convert(numeric(10,2),(isnull([Ventilacion Forzada],0))))/ sum(convert(numeric(10,1),calculo))) as 'VentilacionForzada'
from #Temp group by tipo

end
--------------------------------------------------------------------------------------------
--EXEC sp_TablaEQUEST_PRUEBA2 @ListaNombreA ='E4N1 Salon audiovisual ,E4N2 Auditorium Embajada Americana,E3N1 Automatizacion,E3N2 Arquitectura de Computadoras'
-------------------------------------------------------------------------------------------
GO
/****** Object:  StoredProcedure [dbo].[st_getAreaList]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getAreaList]
as
select a.ID_area as 'IDarea',
a.NombreDeArea as 'NombreArea',
a.TipoArea as 'TipoArea',
a.Largo as 'Largo',
a.Ancho as 'Ancho',
a.CalcArea as 'CalcArea',
a.CantidadPersonas as 'CantidadPersonas',
a.Nivel as 'Nivel'
from Areas a
order by a.NombreDeArea asc




GO
/****** Object:  StoredProcedure [dbo].[st_getAreaType]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getAreaType]
@NombreAreaPr varchar(100)
as
select 
a.TipoArea as 'Tipo',
a.CantidadPersonas as 'CantidadPersonas'
from Areas a
where a.NombreDeArea = @NombreAreaPr 




GO
/****** Object:  StoredProcedure [dbo].[st_getEdificioList]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getEdificioList]
as
select e.ID_edificio as 'IDedificio',
e.NombreDeEdificio as 'NombreEdificio'
from Edificios e
order by e.NombreDeEdificio asc





GO
/****** Object:  StoredProcedure [dbo].[st_getSubsistemaList]    Script Date: 17/5/2022 15:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[st_getSubsistemaList]
as
select s.ID_subsistema as 'IDsubsistema',
s.NombreDeSubsistema as 'NombreSubsistema'
from Subsistema s
order by s.NombreDeSubsistema asc




GO
