�
 TFRMRPTLIBRODIARIO 0q  TPF0TfrmRptLibroDiariofrmRptLibroDiarioLeftTopBWidth�Height�CaptionLibroDiarioColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderScaledOnCreate
FormCreatePixelsPerInch`
TextHeight 	TQuickReprptLibroDiarioLeftTopWidth@Height0Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRight
AfterPrintrptLibroDiarioAfterPrintBeforePrintrptLibroDiarioBeforePrintDataSet
sdqReporteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' IDReport OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.OrientationpoLandscapePage.PaperSizeLegalPage.Values       �@      ��
@       �@      @�
@       �@       �@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.ExtendedDuplex "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrintIfEmpty	
SnapToGrid	UnitsMMZoomdPrevFormStylefsNormalPreviewInitialStatewsNormal TQRBandQRBand2Left&Top� Width�Height<Frame.ColorclBlackFrame.DrawTop	Frame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@��������
@ BandType	rbSummary TQRLabel	QRLabel17Left�TopWidthOHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUUo�
@       �@��TUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTotales del mes:ColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  TQRExpr
sumaDebitoLeftcTopWidthDHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUU��
@       �@~�����@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrintTransparentWordWrap	
Expressionsum( sdqReporte.DEBITO )Mask0.00FontSize  TQRExprSumaCreditoLeft�TopWidth<HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@      ��
@       �@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style ColorclWhite
ParentFontResetAfterPrintTransparentWordWrap	
Expressionsum( sdqReporte.CREDITO)Mask0.00FontSize  TQRLabel	QRLabel27LeftTop'Width8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU�@      `�@������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionConceptoColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel28Left� Top'Width)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU�@      `�@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   CódigoColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel29LeftXTop'WidthSHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@      `�@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   DenominaciónColorclWhiteTransparentWordWrap	FontSize
   TQRBandQRBand1Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@��������
@ BandTyperbDetail 	TQRDBText	QRDBText1LeftTopWidth!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@       �@UUUUUUU�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldFECHAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText2Left�TopWidth'HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@O媪����
@[sUUUUU�@      `�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldCUENTAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText3Left�TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@�UUUUܥ
@[sUUUUU�@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldCCFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText4LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@O媪���
@[sUUUUU�@2Ъ���j�@ 	AlignmenttaRightJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldPCIAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText5LeftTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@�UUUUK�
@[sUUUUU�@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldPRESTFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText6LeftCTopWidth"HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@O媪��i�
@[sUUUUU�@痪����@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldSUBPRESTFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText7LeftpTopWidth6HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@O媪��ڻ
@[sUUUUU�@      ��@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldDEBITOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Mask0.00
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText8Left�TopWidth2HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@�UUUU��
@[sUUUUU�@~����J�@ 	AlignmenttaRightJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldCREDITOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Mask0.00
ParentFontTransparentWordWrap	FontSize  	TQRDBText	QRDBText9LeftETopWidthhHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@��UUUU'�	@[sUUUUU�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldDESCRIPCIONFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText10Left[TopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@ª�����@[sUUUUU�@      Ԕ@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldTERCEROFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText11Left_TopWidthXHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values      ��@~����Z�@[sUUUUU�@��TUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSizeAutoStretchColorclWhiteDataSet
sdqReporte	DataFieldFACT_CHEQUEFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText12Left>TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������
�@UUUUUUU� @VUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldTIPOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText13Left� TopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������R�@UUUUUUU� @������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldOPFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText14LeftTopWidthCHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@UUUUUUU� @UUUUUUE�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqReporte	DataFieldNRO_ASIENTOFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize   TQRBand	qrbTituloLeft&Top&Width�HeighteFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesUUUUUU��@��������
@ BandTyperbPageHeader TQRLabel	qrlTituloLeft^Top&Width8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values��������@      l�	@UUUUUU�@������*�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaptionDIARIOColorclWhiteFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontTransparentWordWrap	FontSize  TQRLabelqrlFolioLeftITopWidth!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪��g�
@7�TUUUU�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFolio:ColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel1LeftTopWidth/HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@       �@      l�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption6Sede legal: Carlos Pellegrini 91 p.5, Capital Federal.ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel34LeftITopWidth1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪��g�
@       �@��TUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	   Período:ColorclWhiteTransparentWordWrap	FontSize
  TQRLabelFolioLeftnTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@      ��
@7�TUUUU�@hUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFolioColorclWhiteOnPrint
FolioPrintTransparentWordWrap	FontSize
  TQRLabelPeriodoLeft{TopWidth-HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUU��
@       �@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionPeriodoColorclWhiteOnPrintPeriodoPrintTransparentWordWrap	FontSize
  TQRLabelQRLabel2LeftTopQWidth%HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@      P�@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFechaColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel3Left?TopQWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@      ��@      P�@������J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTipoColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel4LefthTopQWidth.HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUU��@      P�@������j�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   NúmeroColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel5Left@Top@WidthNHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU�@UUUUUUU�@      `�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionComprobanteColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel6Left� TopQWidth8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������J�@      P�@������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	Nro. O.P.ColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel7LeftTopQWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUM�@      P�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionNro.AsientoColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel8Left[TopQWidth,HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@      P�@VUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionTerceroColorclWhiteTransparentWordWrap	FontSize
  TQRLabelQRLabel9LeftDTopQWidthEHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@������ҿ	@      P�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   DescripciónColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel10Left�TopQWidth*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪����
@      P�@      @�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionCuentaColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel11Left�TopQWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUU]�
@      P�@�/UUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionCCColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel12Left�TopQWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪�� �
@      P�@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionPciaColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel13LeftTopQWidth HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUUK�
@      P�@hUUUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionPrestColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel14LeftATopQWidth%HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@      �
@      P�@痪�����@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionSub.PColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel15LeftTopQWidth&HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪��U�
@      P�@�VUUU�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   DébitoColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel16Left�TopQWidth*HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪����
@      P�@      @�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   CréditoColorclWhiteTransparentWordWrap	FontSize
  TQRLabelqrlProvinciaARTLeftTopWidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@       �@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption/PROVINCIA ASEGURADORA DE RIESGO DE TRABAJO S.A.ColorclWhiteTransparentWordWrap	FontSize
    	TQuickRep
rptPlanCtaLeftTopWidth@Height0Frame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRight
AfterPrintrptPlanCtaAfterPrintDataSet
sdqPlanCtaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style Functions.Strings
PAGENUMBERCOLUMNNUMBERREPORTTITLE Functions.DATA00'' IDReport OptionsFirstPageHeaderLastPageFooter Page.ColumnsPage.OrientationpoLandscapePage.PaperSizeLegalPage.Values       �@      ��
@       �@      @�
@       �@       �@           PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.ExtendedDuplex "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrintIfEmpty	
SnapToGrid	UnitsMMZoomdPrevFormStylefsNormalPreviewInitialStatewsNormal TQRBandQRBand3Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values       �@��������
@ BandTyperbDetail 	TQRDBText
QRDBText15Left� TopWidth-HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesUUUUUU��@��������@UUUUUUU�@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqPlanCta	DataFieldCOD_CTAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize  	TQRDBText
QRDBText16LeftWTopWidth2HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.ValuesUUUUUU��@TUUUUU��@UUUUUUU� @������J�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteDataSet
sdqPlanCta	DataFieldDESC_CTAFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ParentFontTransparentWordWrap	FontSize   TQRBandQRBand4Left&Top&Width�HeightJFrame.ColorclBlackFrame.DrawTopFrame.DrawBottom	Frame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values��������@��������
@ BandTyperbPageHeader TQRLabel	QRLabel18LeftTop7Width8HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@UUUUUUU�@UUUUUU��@������*�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionConceptoColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel19Left� Top7Width)HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@VUUUUU�@UUUUUU��@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   CódigoColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel20LeftXTop7WidthSHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������@UUUUUU��@��������@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption   DenominaciónColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel21LeftITopWidth!HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@O媪��g�
@       �@      ��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFolio:ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel22LeftoTopWidthHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUU��
@7�TUUUU�@hUUUUu�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionFolioColorclWhiteOnPrint
FolioPrintTransparentWordWrap	FontSize
  TQRLabel	QRLabel23LeftJTopWidth1HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@      ��
@       �@��TUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption	   Período:ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel24Left{TopWidth-HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values2Ъ����@�UUUU��
@       �@       �@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaptionPeriodoColorclWhiteOnPrintPeriodoPrintTransparentWordWrap	FontSize
  TQRLabel	QRLabel25LeftTopWidthoHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@       �@UUUUUU��@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption/PROVINCIA ASEGURADORA DE RIESGO DE TRABAJO S.A.ColorclWhiteTransparentWordWrap	FontSize
  TQRLabel	QRLabel26LeftTopWidth/HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@       �@      l�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchCaption6Sede legal: Carlos Pellegrini 91 p.5, Capital Federal.ColorclWhiteTransparentWordWrap	FontSize
   TQRGroup	qrGupoCtaLeft&ToppWidth�HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.Values      ��@��������
@ 
ExpressionsdqPlanCta.'CUENTAS'Master
rptPlanCtaReprintOnNewPage	 TQRExprQRExpr3LeftTopWidth� HeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@       �@UUUUUUU� @UUUUUU=�@ 	AlignmenttaLeftJustifyAlignToBandAutoSize	AutoStretchColorclWhiteResetAfterPrintTransparentWordWrap	
ExpressionsdqPlanCta.'CUENTAS'FontSize
   TQRBandQRBand5Left&Top� Width�HeightFrame.ColorclBlackFrame.DrawTop	Frame.DrawBottomFrame.DrawLeftFrame.DrawRightAlignToBottomColorclWhiteForceNewColumnForceNewPageSize.ValuesUUUUUUu�@��������
@ BandType	rbSummary TQRLabel	QRLabel30Left�Top	WidthYHeightFrame.ColorclBlackFrame.DrawTopFrame.DrawBottomFrame.DrawLeftFrame.DrawRightSize.Values�������@��������	@      ��@������z�@ 	AlignmenttaCenterAlignToBand	AutoSize	AutoStretchCaptionFin de RegistroColorclWhiteOnPrintQRLabel30PrintTransparentWordWrap	FontSize
    TSDQuery
sdqReporteDatabaseNamedbfinancialsOptions SQL.Strings/*BSELECT cia, cuenta, cc, pcia, prest, subprest, fecha, descripcion,9	     tercero, fact_cheque, debito, credito, nro_asiento,	     tipo, op  FROM LIBRO_DIARIO WHERE 1 = 1 ORDER BY fecha, nro_asiento*/OSELECT GL_CODE_COMBINATIONS.SEGMENT1 cia, GL_CODE_COMBINATIONS.SEGMENT2 cuenta,I	   GL_CODE_COMBINATIONS.SEGMENT3 cc, GL_CODE_COMBINATIONS.SEGMENT4 pcia,P	   GL_CODE_COMBINATIONS.SEGMENT5 prest, GL_CODE_COMBINATIONS.SEGMENT6 subprest,J	   GL_JE_LINES.EFFECTIVE_DATE fecha, GL_JE_LINES.DESCRIPTION descripcion,%	   GL_JE_LINES.REFERENCE_1 tercero, y                   decode(apps.get_tipocomp(GL_JE_LINES.REFERENCE_3) , null, null, GL_JE_LINES.REFERENCE_5) fact_cheque, F	   GL_JE_LINES.ACCOUNTED_DR debito, GL_JE_LINES.ACCOUNTED_CR credito,4             GL_JE_HEADERS.je_header_id nro_asiento,3	 apps.get_tipocomp(GL_JE_LINES.REFERENCE_3) tipo, Q	 decode(apps.get_tipocomp(GL_JE_LINES.REFERENCE_3), 'CHQ', reference_2, null) opQ  FROM GL.GL_CODE_COMBINATIONS GL_CODE_COMBINATIONS, GL.GL_JE_LINES GL_JE_LINES, D  	   GL.GL_JE_HEADERS GL_JE_HEADERS, GL.GL_JE_BATCHES GL_JE_BATCHES4 WHERE ( GL_JE_HEADERS.PERIOD_NAME = :PeriodoParam )$   AND ( GL_JE_LINES.STATUS = 'P' ) +   AND ( GL_JE_LINES.SET_OF_BOOKS_ID = 1 ) +   AND ( GL_JE_HEADERS.ACTUAL_FLAG = 'A' ) V   AND ( GL_JE_LINES.CODE_COMBINATION_ID = GL_CODE_COMBINATIONS.CODE_COMBINATION_ID ) A   AND ( GL_JE_HEADERS.JE_HEADER_ID = GL_JE_LINES.JE_HEADER_ID ) @   AND ( GL_JE_BATCHES.JE_BATCH_ID = GL_JE_HEADERS.JE_BATCH_ID ) --and rownum < 15.--and GL_CODE_COMBINATIONS.SEGMENT2 = '212001'(--and GL_JE_HEADERS.je_header_id = 39286 @ ORDER BY GL_JE_LINES.EFFECTIVE_DATE, GL_JE_HEADERS.je_header_id LeftTop	ParamDataDataType	ftUnknownNamePeriodoParam	ParamTypeptInput    TQRCompositeReportQRCompositeOnAddReportsQRCompositeAddReportsOptions PrinterSettings.CopiesPrinterSettings.OutputBinAutoPrinterSettings.DuplexPrinterSettings.FirstPage PrinterSettings.LastPage PrinterSettings.ExtendedDuplex "PrinterSettings.UseStandardprinter PrinterSettings.UseCustomBinCodePrinterSettings.CustomBinCode "PrinterSettings.UseCustomPaperCodePrinterSettings.CustomPaperCode PrinterSettings.PrintMetaFilePrinterSettings.OrientationpoLandscapePrinterSettings.PaperSizeLegalLeftTop  TSDQuery
sdqPlanCtaDatabaseNamedbfinancialsOptions SQL.Strings+/************* Cuentas *******************/=Select 1, 'Cuentas', flex_value cod_cta, description desc_cta  From fnd_flex_values_vl! Where flex_value_set_id = 102773,   And flex_value not in ('TOTAL', '044503') --and rownum < 15 --Order By cod_cta	Union All&/************* CC *******************/=Select 2, 'Cent.Cost', flex_value cod_cc, description desc_cc  From fnd_flex_values_vl" Where flex_value_set_id = 1000087    And flex_value not in ('TOT') 
--and 1= 2  -- Order By cod_cc	Union All-/************* Provincia *******************/ASelect 3, 'Provincia', flex_value cod_prov, description desc_prov  From fnd_flex_values_vl" Where flex_value_set_id = 1000058   And flex_value not in ('TT') 
--and 1= 2 -- Order By cod_prov	Union All./************* Prestacion *******************/BSelect 4, 'Prestacion', flex_value cod_pres, description desc_pres  From fnd_flex_values_vl" Where flex_value_set_id = 1000052    And flex_value not in ('TOT') 
--and 1= 2 -- Order By cod_pres	Union All1/************* SubPrestacion *******************/ESelect 5, 'SubPrestacion', flex_value cod_subp, description desc_subp  From fnd_flex_values_vl" Where flex_value_set_id = 1000039    And flex_value not in ('TOT') 
--and 1= 2 order by 1, 3 LeftTop�    