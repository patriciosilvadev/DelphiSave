�
 TQRREMUNERACIONES 0!  TPF0TqrRemuneracionesqrRemuneracionesLeft Top Width0Height Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightDataSetsdqDatosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' IDReport OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.Orientation
poPortraitPage.PaperSizeLetterPage.Values       �@      ��
@       �@      ��
@       �@       �@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.ExtendedDuplex "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrintIfEmpty	ReportTitleRemuneraciones
SnapToGrid	UnitsMMZoomdPrevFormStylefsNormalPreviewInitialStatewsNormal TQRBandPageHeaderBand1Left&Top&Width�HeightMFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �������@ PUUUU��	@ BandTyperbPageHeader TQRLabel	qrlTituloLeftTopWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����j�@ XUUUUU� @ XUUUUU�@ �����j�	@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption	qrlTituloColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize   TQRBandColumnHeaderBand1Left&TopsWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values �����J�@ PUUUU��	@ BandTyperbColumnHeader TQRShapeQRShape2LeftTopWidth.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����j�@ �����*�@ XUUUUU�@ �������@ ShapeqrsRectangle
VertAdjust   TQRLabelQRLabel1LeftTopWidth<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@       �@ XUUUUU�@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionPeriodoColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel2LeftPTopWidth^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������@ XUUUUU�@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaption
PresentadoColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
  TQRLabelQRLabel3Left� TopWidthzHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��@ XUUUUU�@ XUUUUe�@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchCaptionImporte DGIColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize
   TQRBandDetailBand1Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@ PUUUU��	@ BandTyperbDetail TQRShapeQRShape1LeftTop Width.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values �����j�@ �����*�@           �������@ ShapeqrsRectangle
VertAdjust   	TQRDBText	QRDBText1LeftTopWidth<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@       �@       �@      ��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetsdqDatos	DataFieldperiodoTransparentWordWrap	FontSize
  	TQRDBText	QRDBText2LeftPTopWidth^HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ �������@       �@ XUUUU��@ 	AlignmenttaCenterAlignToBandAutoSizeAutoStretchColorclWhiteDataSetsdqDatos	DataField
presentadoTransparentWordWrap	FontSize
  	TQRDBText	QRDBText3Left� TopWidthzHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��@       �@ XUUUUe�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSetsdqDatos	DataFieldimporteOnPrintFormatMontoTransparentWordWrap	FontSize
   TQRBandPageFooterBand1Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@ PUUUU��	@ BandTyperbPageFooter TQRLabelQRLabel4Left�TopWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@ XUUUU��	@ XUUUUU�@ XUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   Pág. ColorclWhiteTransparentWordWrap	FontSize
  
TQRSysData
QRSysData1Left�TopWidth6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values ������@      8�	@ XUUUUU�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeColorclWhiteDataqrsPageNumberTransparentFontSize
   TSDQuerysdqDatosDatabaseNamedbPrincipalSQL.StringsU  SELECT dj_periodo periodo, dj_fechapresentacion presentado, dt_remuneracion importeZ  FROM sex_expedientes, emi.idj_ddjj, emi.idt_ddjjtrabajador, emi.iev_estadoverificado iev  WHERE dj_id = dt_idddjjO   AND dj_contrato = AFILIACION.Get_ContratoVigente(ex_cuit, ex_fechaaccidente)   AND dt_cuil = ex_cuil   AND dj_estado = iev.ev_id   AND ev_estado || '' = 'A'    AND ex_siniestro = :Siniestro   AND ex_orden = :Orden   AND ex_recaida = 0 ORDER BY dj_periodo    Left$Top	ParamDataDataType	ftUnknownName	Siniestro	ParamTypeptInput DataType	ftUnknownNameOrden	ParamTypeptInput     