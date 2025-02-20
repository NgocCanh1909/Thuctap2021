/*
   Thursday, December 24, 20202:31:20 PM
   User: 
   Server: ADMIN
   Database: TTQK7
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.SCN_A4
	DROP CONSTRAINT FK_SCN_A4_BaoCaoNgay
GO
ALTER TABLE dbo.BaoCaoNgay SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.BaoCaoNgay', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.BaoCaoNgay', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.BaoCaoNgay', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_SCN_A4
	(
	A4_ID int NOT NULL IDENTITY (1, 1),
	SoDoiTuong int NULL,
	TongSoPhien int NULL,
	TongSoPhien_Dut int NULL,
	SoPhienCT int NULL,
	SoPhienCT_Dut int NULL,
	DienS int NULL,
	DienR int NULL,
	GhiChu nvarchar(500) NULL,
	BaoCaoID int NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_SCN_A4 SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_SCN_A4 ON
GO
IF EXISTS(SELECT * FROM dbo.SCN_A4)
	 EXEC('INSERT INTO dbo.Tmp_SCN_A4 (A4_ID, SoDoiTuong, TongSoPhien, TongSoPhien_Dut, SoPhienCT, SoPhienCT_Dut, DienS, DienR, GhiChu, BaoCaoID)
		SELECT A4_ID, SoDoiTuong, TongSoPhien, TongSoPhien_Dut, SoPhienCT, SoPhienCT_Dut, DienS, DienR, CONVERT(nvarchar(500), GhiChu), BaoCaoID FROM dbo.SCN_A4 WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_SCN_A4 OFF
GO
DROP TABLE dbo.SCN_A4
GO
EXECUTE sp_rename N'dbo.Tmp_SCN_A4', N'SCN_A4', 'OBJECT' 
GO
ALTER TABLE dbo.SCN_A4 ADD CONSTRAINT
	PK_SCN_A4 PRIMARY KEY CLUSTERED 
	(
	A4_ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SCN_A4 ADD CONSTRAINT
	FK_SCN_A4_BaoCaoNgay FOREIGN KEY
	(
	BaoCaoID
	) REFERENCES dbo.BaoCaoNgay
	(
	BaoCaoID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SCN_A4', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SCN_A4', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SCN_A4', 'Object', 'CONTROL') as Contr_Per 