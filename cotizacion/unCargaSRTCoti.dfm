�
 TFRMCARGASRTCOTI 0�-  TPF0TfrmCargaSRTCotifrmCargaSRTCotiLeft� Top� AlignalClientBorderIcons BorderStylebsNoneCaptionS.R.T.ClientHeightClientWidth�Color	clBtnFaceConstraints.MinHeight,Constraints.MinWidth�Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style OldCreateOrderPosition	poDefaultShowHint	Visible	OnClose	FormCloseOnCreate
FormCreate
DesignSize� PixelsPerInch`
TextHeight TLabelLabel10LeftpTop"Width)HeightAnchorsakTopakRight Caption6   Fecha de última actualización desde la web de la SRTFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TLabellbFechaUltimaActualizacionSRTLeft�Top"WidthDHeightAnchorsakTopakRight Caption
99/99/9999Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TToolBar
tlbControlLeft Top Width�HeightButtonWidthCaption
tlbControlColor	clBtnFaceEdgeBordersebLeftebTopebRightebBottom Flat		HotImagesfrmPrincipal.ilColorImagesfrmPrincipal.ilByNParentColorParentShowHintShowHint	TabOrder TToolButtontbObtenerHistorialLeft Top HintObtener Historial
ImageIndexOnClicktbObtenerHistorialClick  TToolButtontbSRTLeftTop Hint$Obtener datos desde la web de la SRTCaptiontbSRT
ImageIndexOnClick
tbSRTClick  TToolButtontbNavegarSRTLeft2Top HintNavegar a la SRTCaptiontbNavegarSRT
ImageIndex.OnClicktbNavegarSRTClick  TToolButtonToolButton1LeftKTop WidthCaptionToolButton1
ImageIndexStyletbsSeparator  TToolButtontlbNuevoLeftSTop HintNuevo (Ctrl -  V)CaptiontlbNuevo
ImageIndexOnClicktlbNuevoClick  TToolButtontlbModificarLeftlTop HintModificar (Ctrl + M)CaptiontlbModificar
ImageIndexOnClicktlbModificarClick  TToolButtontlbBajaLeft� Top HintBaja (Ctrl-J)CaptiontlbBaja
ImageIndexOnClicktlbBajaClick  TToolButtontblSeparador1Left� Top WidthCaptiontblSeparador1
ImageIndexStyle
tbsDivider  TToolButton
tlbGuardarLeft� Top HintGuardar (Ctrl-R)Caption
tlbGuardar
ImageIndexOnClicktlbGuardarClick   
TArtDBGrid	ArtDBGridLeft Top5Width�Height`AnchorsakLeftakTopakRightakBottom 
DataSourcesdDatosOptions	dgEditingdgTitlesdgColumnResize
dgColLines
dgRowLinesdgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style OnGetCellParamsArtDBGridGetCellParams
FooterBandTitleHeightColumnsExpanded	FieldName	AR_NOMBRETitle.CaptionARTVisible	 Expanded	FieldNameTB_DESCRIPCIONTitle.Caption
   OperaciónWidthVisible	 Expanded	FieldNameSS_VIGENCIADESDETitle.Caption	Vig.DesdeVisible	 Expanded	FieldNameSS_VIGENCIAHASTATitle.Caption	Vig.HastaVisible	 Expanded	FieldNameSS_NIVELTitle.CaptionNivelVisible	 Expanded	FieldName	AC_CODIGOTitle.CaptionCod. ActividadVisible	 Expanded	FieldNameAC_DESCRIPCIONTitle.Caption	ActividadVisible	 Expanded	FieldNameSS_FECHAEXTINCIONTitle.Caption   F.ExtinciónVisible	 Expanded	FieldNameSS_FECHAREGULARIZACIONTitle.Caption   F.RegularizaciónVisible	 Expanded	FieldNameSS_IDVisible Expanded	FieldNameSS_IDACTIVIDAD2Visible Expanded	FieldNameSS_IDACTIVIDAD3Visible    	TGroupBoxgrbIdentificaLeft Top� Width�Height|AlignalBottomCaptionS.R.TFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.Style 
ParentFontTabOrder
DesignSize�|  TLabellbOperacionLeft�TopWidthHeightAnchorsakTopakRight CaptionOper.  TLabellbARTLeft&TopWidthHeightCaptionART  TLabelLabel1Left�TopWidthHeightAnchorsakTopakRight CaptionNivel  TLabellbActividadUnoLeft
Top,Width3HeightCaptionActividad I  TLabellbActividadDosLeftTopHWidth7HeightCaptionActividad II  TLabellbActividadTresLeftTopeWidth;HeightCaptionActividad III  TLabelLabel2Left�Top'WidthRHeightAnchorsakTopakRight Caption   Tipo de Rescisión  �TfraStaticCTB_TABLASfraSS_OPERACIONLeft�Top
Width� HeightAnchorsakTopakRight TabOrder �
TComboGridcmbDescripcionWidth� Cells   Código   DescripciónIdFecha de BajaTB_CLAVETB_ESPECIAL1 	ColWidths(,����    �TfraStaticActividadfraSS_ACTIVIDAD1LeftATop'WidthbHeightAnchorsakLeftakTopakRight TabOrder �
TComboGridcmbDescripcionWidth!Cells   Código   DescripciónIdFecha de Baja 	ColWidths(,��    �TfraStaticActividadfraSS_ACTIVIDAD2LeftATopCWidthbHeightAnchorsakLeftakTopakRight TabOrder �
TComboGridcmbDescripcionWidth!Cells   Código   DescripciónIdFecha de Baja 	ColWidths(,��    �TfraStaticActividadfraSS_ACTIVIDAD3LeftATop`WidthbHeightAnchorsakLeftakTopakRight TabOrder �
TComboGridcmbDescripcionWidth!Cells   Código   DescripciónIdFecha de Baja 	ColWidths(,��    TPatternEdit
edSS_NIVELLeft�TopWidthHeightAnchorsakTopakRight 	MaxLengthTabOrderPattern1234  �TfraStaticCodigoDescripcion	fraSS_ARTLeftATop
WidthbHeightAnchorsakLeftakTopakRight TabOrder  �
TComboGridcmbDescripcionWidth!Cells   Código   DescripciónIdFecha de Baja 	ColWidths(,��    	TGroupBox
gbVigenciaLeft�Top7Width� Height?AnchorsakTopakRight CaptionVigenciaTabOrder TLabellbSS_VIGENCIADESDELeftTopWidthHeightCaptionDesde  TLabel
lbVigHastaLeftTop(WidthHeightCaptionHasta  TDateComboBoxedSS_VIGENCIADESDELeft'TopWidthXHeightMaxDateComboedSS_VIGENCIAHASTATabOrder OnExitedSS_VIGENCIADESDEExit  TDateComboBoxedSS_VIGENCIAHASTALeft'Top$WidthXHeightMinDateComboedSS_VIGENCIADESDETabOrderOnExitedSS_VIGENCIAHASTAExit   	TGroupBox	GroupBox1Left4Top7Width� Height?AnchorsakTopakRight TabOrder TLabellbFRegularizacionLeftTopWidthEHeightCaption   Regularización  TLabellbFechaExtincionLeft Top(Width+HeightCaption
   Extinción  TDateComboBoxedSS_FECHAREGULARIZACIONLeftNTopWidthXHeightTabOrder OnExitedSS_FECHAREGULARIZACIONExit  TDateComboBoxedSS_FECHAEXTINCIONLeftNTop$WidthXHeightTabOrderOnExitedSS_FECHAEXTINCIONExit   �TfraStaticCTB_TABLASfraSS_RESCISIONLeft Top"Width� HeightAnchorsakTopakRight TabOrder �
TComboGridcmbDescripcionWidth� Cells   Código   DescripciónIdFecha de BajaTB_CLAVETB_ESPECIAL1 	ColWidths(,����     	TCheckBoxchkEmpresaSRTLeftTopWidth� HeightCaption   Empresa nueva en régimenTabOrderOnClickchkEmpresaSRTClick  
TFormPanelfpArtLeftxToplWidth�Height[CaptionIngrese la ART correspondiente	FormWidth 
FormHeigth BorderIconsbiSystemMenu BorderStylebsSinglePositionpoOwnerFormCenter
DesignSize�[  TBevelBevel1Left Top,Width�HeightAnchorsakLeftakRightakBottom ShapebsBottomLine  TLabelLabel3LeftTop	WidthHeightCaptionWeb  TLabelLabel4Left
Top WidthHeightCaptionArt   TButton
btnAceptarLeft� Top=WidthKHeightAnchorsakRightakBottom CaptionAceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder OnClickbtnAceptarClick  TButtonbtnCancelarLeft0Top=WidthKHeightAnchorsakRightakBottom CaptionCancelarModalResultTabOrder  �TfraStaticCodigoDescripcion	fraArtWebLeftTopWidth`HeightAnchorsakLeftakTopakRight TabOrder �
TComboGridcmbDescripcionWidth!Cells   Código   DescripciónIdFecha de Baja 	ColWidths(,��    TEditedNombreWebLeftTopWidth]HeightAnchorsakLeftakTopakRight TabOrder   
TFormPanelfpOperacionLeftXTop� Width�Height[Caption%   Ingrese la operación correspondiente	FormWidth 
FormHeigth BorderIconsbiSystemMenu BorderStylebsSinglePositionpoOwnerFormCenter
DesignSize�[  TBevelBevel2Left Top,Width�HeightAnchorsakLeftakRightakBottom ShapebsBottomLine  TLabelLabel5LeftTop	WidthHeightCaptionWeb  TLabelLabel6LeftTop Width1HeightCaption
   Operación  TLabelLabel7Left� Top	WidthHeightCaptionOp.OnClickbtnAceptarClick  TButtonbtnAceptarOPLeft� Top=WidthKHeightAnchorsakRightakBottom CaptionAceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder OnClickbtnAceptarOPClick  TButtonbtnCancelarOPLeft0Top=WidthKHeightAnchorsakRightakBottom CaptionCancelarModalResultTabOrder  TEditedLineaOperacionWebLeft:TopWidth� HeightAnchorsakLeftakTopakRight TabOrderOnExitedLineaOperacionWebExit  �TfraStaticCTB_TABLASfraOperacionWebLeft9TopWidthEHeightTabOrder �
TComboGridcmbDescripcionWidthCells   Código   DescripciónIdFecha de BajaTB_CLAVETB_ESPECIAL1 	ColWidths(,����    	TComboBoxedNombreOperacionWebLeftTopWidthiHeightStylecsDropDownListAnchorsakLeftakTopakRight 
ItemHeightTabOrder   
TFormPanelfpTipoOperacionLefthTop|Width�Height[CaptionIngrese la ART correspondiente	FormWidth 
FormHeigth BorderIconsbiSystemMenu BorderStylebsSinglePositionpoOwnerFormCenter
DesignSize�[  TBevelBevel3Left Top,Width�HeightAnchorsakLeftakRightakBottom ShapebsBottomLine  TLabelLabel8LeftTop	WidthHeightCaptionWeb  TLabelLabel9Left
Top WidthHeightCaptionArt   TButtonbtnAceptarTOPLeft� Top=WidthKHeightAnchorsakRightakBottom CaptionAceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder OnClickbtnAceptarTOPClick  TButtonbtnCancelarTOPLeft0Top=WidthKHeightAnchorsakRightakBottom CaptionCancelarModalResultTabOrder  TEditedNombreTipoOperacionWebLeftTopWidth]HeightAnchorsakLeftakTopakRight TabOrder  �TfraStaticCTB_TABLASfraTipoOperacionWebLeftTopWidth`HeightTabOrder �
TComboGridcmbDescripcionWidth Cells   Código   DescripciónIdFecha de BajaTB_CLAVETB_ESPECIAL1 	ColWidths(,����     TSDQuerysdqDatosDatabaseNamedbPrincipalOptions AfterScrollsdqDatosAfterScrollSQL.StringszSELECT   ar_nombre, ss_vigenciadesde, ar_nombre, ac_codigo, ac_descripcion, ss_vigenciahasta, t2.tb_descripcion, ss_nivel,w         ss_idactividad1, ss_fechaextincion, ss_fecharegularizacion, ss_id, ss_idactividad2, ss_idactividad3, ss_idart,/         ss_operacion, ss_usubaja, ss_rescision@    FROM tss_solicitudsrt, ctb_tablas t2, aar_art, cac_actividad   WHERE t2.tb_clave = 'COPER'$     AND ss_operacion = t2.tb_codigo     AND ss_idart = ar_id      AND ac_id = ss_idactividad1+     AND ss_idcotizacion = :ss_idcotizacionORDER BY ss_vigenciadesde  Left� Top"	ParamDataDataType	ftUnknownNameSS_IDCOTIZACION	ParamTypeptInput    TDataSourcesdDatosDataSetsdqDatosLeft� Top"  TShortCutControlShortCutControl	ShortCutsKeyG@LinkControl
tlbGuardar KeyN@LinkControltlbNuevo KeyS@ KeyI@ KeyT@ KeyB@LinkControltlbBaja KeyO@ KeyE@  Left� Top   