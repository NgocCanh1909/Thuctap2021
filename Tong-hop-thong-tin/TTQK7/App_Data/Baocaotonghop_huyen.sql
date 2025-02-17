USE [TTQK7]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoTongHopHuyen]    Script Date: 2/4/2021 9:15:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[BaoCaoTongHopHuyen]
	-- Add the parameters for the stored procedure here
	 @dvid int,
	  @ngay int, @thang int, @nam int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT dbo.BaoCaoNgay.NgayBaoCao,dbo.BaoCaoNgay.IsGui, dbo.tblDonVi.TenDonVi, dbo.BaoCaoNgay.NguoiBaoCao, dbo.TBBD_A1.CanhBTTM AS TBBD_A1_CanhBTTM, dbo.TBBD_A1.CanhBTTM_Dut AS TBBD_A1_CanhBTTM_Dut, dbo.TBBD_A1.CanhQK AS TBBD_A1_CanhQK, 
                  dbo.TBBD_A1.CanhQK_Dut AS TBBD_A1_CanhQK_Dut, dbo.TBBD_A1.Lanphatchuan AS TBBD_A1_Lanphatchuan, dbo.TBBD_A1.ThuTinHieuBo AS TBBD_A1_ThuTinHieuBo, dbo.TBBD_A1.ThuTinHieuQK AS TBBD_A1_ThuTinHieuQK, 
                  dbo.TBBD_A1.QKPhatTinHieu AS TBBD_A1_QKPhatTinHieu, dbo.DonBien_A2.SoDoiTuong AS DonBien_A2_SoDoiTuong, dbo.DonBien_A2.TongSoPhien AS DonBien_A2_TongSoPhien, 
                  dbo.DonBien_A2.TongSoPhien_Dut AS DonBien_A2_TongSoPhien_Dut, dbo.DonBien_A2.SoPhienCT AS DonBien_A2_SoPhienCT, dbo.DonBien_A2.SoPhienCT_Dut AS DonBien_A2_SoPhienCT_Dut, 
                  dbo.DonBien_A2.DienS AS DonBien_A2_DienS, dbo.DonBien_A2.DienT AS DonBien_A2_DienT, dbo.SongNgan_BTTM_A3.TongSoPhien AS SongNgan_BTTM_A3_TongSoPhien, 
                  dbo.SongNgan_BTTM_A3.TongSoPhien_Dut AS SongNgan_BTTM_A3_TongSoPhien_Dut, dbo.SongNgan_BTTM_A3.GoiCanh AS SongNgan_BTTM_A3_GoiCanh, 
                  dbo.SongNgan_BTTM_A3.GoiCanh_Dut AS SongNgan_BTTM_A3_GoiCanh_Dut, dbo.SongNgan_BTTM_A3.TraLoiCanh AS SongNgan_BTTM_A3_TraLoiCanh, 
                  dbo.SongNgan_BTTM_A3.TraLoiCanh_Dut AS SongNgan_BTTM_A3_TraLoiCanh_Dut, dbo.SongNgan_BTTM_A3.DienS AS SongNgan_BTTM_A3_DienS, dbo.SongNgan_BTTM_A3.DienR AS SongNgan_BTTM_A3_DienR, 
                  dbo.SongNgan_NoiBo_A3.SoDoiTuong AS SongNgan_NoiBo_A3_SoDoiTuong, dbo.SongNgan_NoiBo_A3.TongSoPhien AS SongNgan_NoiBo_A3_TongSoPhien, 
                  dbo.SongNgan_NoiBo_A3.TongSoPhien_Dut AS SongNgan_NoiBo_A3_TongSoPhien_Dut, dbo.SongNgan_NoiBo_A3.SoPhienCT AS SongNgan_NoiBo_A3_SoPhienCT, 
                  dbo.SongNgan_NoiBo_A3.SoPhienCT_Dut AS SongNgan_NoiBo_A3_SoPhienCT_Dut, dbo.SongNgan_NoiBo_A3.TraLoiCanh AS SongNgan_NoiBo_A3_TraLoiCanh, 
                  dbo.SongNgan_NoiBo_A3.TraLoiCanh_Dut AS SongNgan_NoiBo_A3_TraLoiCanh_Dut, dbo.SongNgan_NoiBo_A3.GoiCanh AS SongNgan_NoiBo_A3_GoiCanh, 
                  dbo.SongNgan_NoiBo_A3.GoiCanh_Dut AS SongNgan_NoiBo_A3_GoiCanh_Dut, dbo.SongNgan_NoiBo_A3.DienS AS SongNgan_NoiBo_A3_DienS, dbo.SongNgan_NoiBo_A3.DienR AS SongNgan_NoiBo_A3_DienR, 
                  dbo.SongNgan_NoiBo_A3.DienDong AS SongNgan_NoiBo_A3_DienDong, dbo.SongNgan_HiepDong_A3.TraLoiCanh AS SongNgan_HiepDong_A3_TraLoiCanh, 
                  dbo.SongNgan_HiepDong_A3.TraLoiCanh_Dut AS SongNgan_HiepDong_A3_TraLoiCanh_Dut, dbo.SongNgan_HiepDong_A3.DienS AS SongNgan_HiepDong_A3_DienS, 
                  dbo.SongNgan_HiepDong_A3.DienR AS SongNgan_HiepDong_A3_DienR, dbo.SCN_A4.SoDoiTuong AS SCN_A4_SoDoiTuong, dbo.SCN_A4.TongSoPhien AS SCN_A4_TongSoPhien, 
                  dbo.SCN_A4.TongSoPhien_Dut AS SCN_A4_TongSoPhien_Dut, dbo.SCN_A4.SoPhienCT AS SCN_A4_SoPhienCT, dbo.SCN_A4.SoPhienCT_Dut AS SCN_A4_SoPhienCT_Dut, dbo.SCN_A4.DienS AS SCN_A4_DienS, 
                  dbo.SCN_A4.DienR AS SCN_A4_DienR, dbo.ViBa_A6.SoDoiTuong AS ViBa_A6_SoDoiTuong, dbo.ViBa_A6.GioLienLac AS ViBa_A6_GioLienLac, dbo.ViBa_A6.GioPhatLienLac AS ViBa_A6_GioPhatLienLac, 
                  dbo.ViBa_A6.GioPhat AS ViBa_A6_GioPhat, dbo.ViBa_A6.GioPhat_Dut AS ViBa_A6_GioPhat_Dut, dbo.HDT_B2.SoDoiTuong AS HDT_B2_SoDoiTuong, dbo.HDT_B2.LanChuyenTiep AS HDT_B2_LanChuyenTiep, 
                  dbo.HDT_B2.SoLanDut AS HDT_B2_SoLanDut, dbo.HDT_B2.DayTieuHao AS HDT_B2_DayTieuHao, dbo.HDT_B2.GioLienLac AS HDT_B2_GioLienLac, dbo.HDT_B2.PhutLienLac AS HDT_B2_PhutLienLac, 
                  dbo.HTD_B3.MayDung AS HTD_B3_MayDung, dbo.HTD_B3.MaySua AS HTD_B3_MaySua, dbo.HTD_B3.MayDong AS HTD_B3_MayDong, dbo.HTD_B3.DatMayMoi AS HTD_B3_DatMayMoi, dbo.HTD_B3.TongSoTrKe AS HTD_B3_TongSoTrKe, 
                  dbo.HTD_B3.TongSoTrKe_Dut AS HTD_B3_TongSoTrKe_Dut, dbo.HTD_B3.TongSoTrKeNB AS HTD_B3_TongSoTrKeNB, dbo.HTD_B3.TongSoTrKeNB_Dut AS HTD_B3_TongSoTrKeNB_Dut, 
                  dbo.QuanBuu_47_B4.TongVanHanh AS QuanBuu_47_B4_TongVanHanh, dbo.QuanBuu_47_B4.TongVanHanh_Dut AS QuanBuu_47_B4_TongVanHanh_Dut, dbo.QuanBuu_HoaToc_B4.Ve AS QuanBuu_HoaToc_B4_Ve, 
                  dbo.QuanBuu_HoaToc_B4.Di AS QuanBuu_HoaToc_B4_Di, dbo.QuanBuu_HoaToc_B4.Dong AS QuanBuu_HoaToc_B4_Dong, dbo.QuanBuu_CongVan_B4.Ve AS QuanBuu_CongVan_B4_Ve, 
                  dbo.QuanBuu_CongVan_B4.Di AS QuanBuu_CongVan_B4_Di, dbo.QuanBuu_CongVan_B4.Dong AS QuanBuu_CongVan_B4_Dong, dbo.QuanBuu_VanKien_B4.Ve AS QuanBuu_VanKien_B4_Ve, 
                  dbo.QuanBuu_VanKien_B4.Di AS QuanBuu_VanKien_B4_Di, dbo.QuanBuu_VanKien_B4.Dong AS QuanBuu_VanKien_B4_Dong, dbo.QuanBuu_ThuBao_B4.Ve AS QuanBuu_ThuBao_B4_Ve, 
                  dbo.QuanBuu_ThuBao_B4.Di AS QuanBuu_ThuBao_B4_Di, dbo.QuanBuu_ThuBao_B4.Dong AS QuanBuu_ThuBao_B4_Dong, dbo.QuanBuu_PhuongTien_B4.XeDap, dbo.QuanBuu_PhuongTien_B4.MoTo, 
                  dbo.QuanBuu_PhuongTien_B4.OTo, dbo.QuanBuu_PhuongTien_B4.SoChuyen, dbo.QuanBuu_PhuongTien_B4.TrongLuong, dbo.QuanBuu_PhuongTien_B4.CuLy,
					STUFF(CONCAT(',' + NULLIF(dbo.TBBD_A1.GhiChu, ''),',' + NULLIF(DonBien_A2.GhiChu, ''),',' + NULLIF(dbo.SongNgan_BTTM_A3.GhiChu, '')
					,',' + NULLIF(dbo.SongNgan_NoiBo_A3.GhiChu, '')
					,',' + NULLIF(dbo.SongNgan_HiepDong_A3.GhiChu, '')
					,',' + NULLIF(dbo.SCN_A4.GhiChu, '')
					,',' + NULLIF(dbo.ViBa_A6.GhiChu, '')
					,',' + NULLIF(dbo.HDT_B2.GhiChu, '')
					,',' + NULLIF(dbo.HTD_B3.GhiChu, '')
					,',' + NULLIF(dbo.QuanBuu_47_B4.GhiChu, '')
					,',' + NULLIF(dbo.QuanBuu_HoaToc_B4.GhiChu, '')
					,',' + NULLIF(dbo.QuanBuu_CongVan_B4.GhiChu, '')
					,',' + NULLIF(dbo.QuanBuu_VanKien_B4.GhiChu, '')
					,',' + NULLIF(dbo.QuanBuu_ThuBao_B4.GhiChu, '')
					,',' + NULLIF(dbo.QuanBuu_PhuongTien_B4.GhiChu, ''))
					
					,1,1,'') AS tonghopghichu
FROM     dbo.tblDonVi LEFT OUTER JOIN
                  dbo.BaoCaoNgay ON dbo.tblDonVi.DonViID = dbo.BaoCaoNgay.DonViID LEFT OUTER JOIN
                  dbo.TBBD_A1 ON dbo.BaoCaoNgay.BaoCaoID = dbo.TBBD_A1.BaoCaoID LEFT OUTER JOIN
                  dbo.DonBien_A2 ON dbo.BaoCaoNgay.BaoCaoID = dbo.DonBien_A2.BaoCaoID LEFT OUTER JOIN
                  dbo.SongNgan_BTTM_A3 ON dbo.BaoCaoNgay.BaoCaoID = dbo.SongNgan_BTTM_A3.BaoCaoID LEFT OUTER JOIN
                  dbo.SongNgan_NoiBo_A3 ON dbo.BaoCaoNgay.BaoCaoID = dbo.SongNgan_NoiBo_A3.BaoCaoID LEFT OUTER JOIN
                  dbo.SongNgan_HiepDong_A3 ON dbo.BaoCaoNgay.BaoCaoID = dbo.SongNgan_HiepDong_A3.BaoCaoID LEFT OUTER JOIN
                  dbo.SCN_A4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.SCN_A4.BaoCaoID LEFT OUTER JOIN
                  dbo.ViBa_A6 ON dbo.BaoCaoNgay.BaoCaoID = dbo.ViBa_A6.BaoCaoID LEFT OUTER JOIN
                  dbo.HDT_B2 ON dbo.BaoCaoNgay.BaoCaoID = dbo.HDT_B2.BaoCaoID LEFT OUTER JOIN
                  dbo.HTD_B3 ON dbo.BaoCaoNgay.BaoCaoID = dbo.HTD_B3.BaoCaoID LEFT OUTER JOIN
                  dbo.QuanBuu_47_B4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.QuanBuu_47_B4.BaoCaoID LEFT OUTER JOIN
                  dbo.QuanBuu_HoaToc_B4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.QuanBuu_HoaToc_B4.BaoCaoID LEFT OUTER JOIN
                  dbo.QuanBuu_CongVan_B4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.QuanBuu_CongVan_B4.BaoCaoID LEFT OUTER JOIN
                  dbo.QuanBuu_VanKien_B4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.QuanBuu_VanKien_B4.BaoCaoID LEFT OUTER JOIN
                  dbo.QuanBuu_ThuBao_B4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.QuanBuu_ThuBao_B4.BaoCaoID LEFT OUTER JOIN
                  dbo.QuanBuu_PhuongTien_B4 ON dbo.BaoCaoNgay.BaoCaoID = dbo.QuanBuu_PhuongTien_B4.BaoCaoID
WHERE dbo.tblDonVi.ParentID = @dvid And  DAY(dbo.BaoCaoNgay.NgayBaoCao) = @ngay and MONTH(dbo.BaoCaoNgay.NgayBaoCao) = @thang and
 YEAR(dbo.BaoCaoNgay.NgayBaoCao) = @nam
END