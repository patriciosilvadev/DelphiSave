�
 TFRMAPERTURASINIESTRO 0�  TPF0�TfrmAperturaSiniestrofrmAperturaSiniestroLeft� Top� Width�ActiveControlSinEditCaption%   Actualización de Fecha de ReaperturaConstraints.MinHeight�Constraints.MinWidth�	Font.NameTahomaPixelsPerInch`
TextHeight �TPanel
pnlFiltrosWidth�Height%Visible	 TLabelLabel1Left	TopWidth)HeightCaption	Siniestro  TLabelLabel10Left� TopWidthOHeightCaptionMotivo de Cierre  TSinEditSinEditLeft:TopWidthdHeightTabOrder   �TfraCtbTablasfraCTBMotivoCierreLeft� TopWidth�HeightAnchorsakLeftakTopakRight TabOrder �TArtComboBoxcmbDescripcionLeft3Width�    �TCoolBarCoolBarTop%Width�BandsControlToolBar
ImageIndex�	MinHeightWidth�   �TToolBarToolBarWidth� �TToolButtontbNuevoVisible  �TToolButtontbModificarHintReapertura (Ctrl+R)  �TToolButton
tbEliminarVisible  �TToolButton	tbLimpiarVisible	  �TToolButtontbSalirVisible  TToolButtontbCerrarLeftrTop HintCierre (Ctrl+A)
ImageIndexOnClicktbCerrarClick  TToolButtonToolButton1Left�Top WidthCaptionToolButton1
ImageIndex	StyletbsSeparator  TToolButtontbSalir2Left�Top HintSalir (Ctrl+S)CaptiontbSalir2
ImageIndexOnClicktbSalirClick    �
TArtDBGridGridTopBWidth�HeightuOptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TitleFont.NameTahomaColumnsExpanded	FieldNameEX_SINIESTROTitle.Caption	SiniestroWidth6Visible	 Expanded	FieldNameEX_ORDENTitle.CaptionOrdenWidth%Visible	 Expanded	FieldName
EX_RECAIDATitle.CaptionRec.WidthVisible	 Expanded	FieldNameMOTIVOCIERRETitle.CaptionMotivo de CierreWidth� Visible	 Expanded	FieldNamePROCESOCIERRETitle.CaptionProceso de CierreWidth� Visible	 	AlignmenttaCenterExpanded	FieldNameCS_FECHACIERRETitle.AlignmenttaCenterTitle.Caption	F. CierreWidthCVisible	 Expanded	FieldNameMOTIVOREAPERTURATitle.CaptionMotivo de ReaperturaWidth� Visible	 	AlignmenttaCenterExpanded	FieldNameCS_FECHAREAPERTURATitle.AlignmenttaCenterTitle.CaptionF. ReaperturaWidthNVisible	    �
TFormPanelfpAbmLeftzTop� Width�HeightkCaption
ReaperturaConstraints.MaxHeightkConstraints.MinHeightkConstraints.MinWidth� �TBevelBevelAbmTopGWidth�  �TLabelLabel2Left
TopWidthiHeight	AlignmenttaRightJustifyCaptionMotivo de Reapertura  �TLabelLabel3LeftVTop,WidthHeight	AlignmenttaRightJustifyCaptionFecha  �TButton
btnAceptarLeft� TopM	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrder  �TButtonbtnCancelarLeftGTopMTabOrder  �TfraCtbTablasfraCTBMotivoReaperturaLeftvTopWidthHeightAnchorsakLeftakTopakRight TabOrder  �TArtComboBoxcmbDescripcionLeft3Width�    TDateComboBoxedFechaReaperturaLeftvTop)WidthXHeightTabOrder   �
TFormPanelfpCerrarSiniestroLeftTop
Width�Height~CaptionCierre del Siniestro	FormWidth 
FormHeigth BorderIcons PositionpoOwnerFormCenterConstraints.MaxHeight~Constraints.MinHeight~Constraints.MinWidth�OnEnterfpCerrarSiniestroEnter
DesignSize�~  TBevelBevel1LeftTopZWidth�HeightAnchorsakLeftakRightakBottom Shape	bsTopLine  TLabelLabel4LeftTop)WidthOHeight	AlignmenttaRightJustifyCaptionMotivo de Cierre  TLabelLabel5Left1TopAWidth&Height	AlignmenttaRightJustifyCaptionProceso  TLabelLabel6Left.TopWidth)Height	AlignmenttaRightJustifyCaption	Siniestro  TButtonbtnAceptarCierreLeft� Top`WidthKHeightAnchorsakRightakBottom Caption&AceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickbtnAceptarCierreClick  TButtonbtnCancelarCierreLeft9Top`WidthKHeightAnchorsakRightakBottom Cancel	Caption	&CancelarModalResultTabOrder  �TfraCtbTablasfraCTBMotivoCierreSinLeftZTop$Width*HeightAnchorsakLeftakTopakRight TabOrder �TArtComboBoxcmbDescripcionLeft3Width�    �TfraCtbTablasfraCtbProcesoCierreLeftZTop>Width*HeightAnchorsakLeftakTopakRight TabOrder �TArtComboBoxcmbDescripcionLeft3Width�    TSinEditSinEditCierreSinLeft[TopWidthdHeightTabOrder    �TSDQuerysdqConsultaSQL.Strings[SELECT EX_SINIESTRO, EX_ORDEN, EX_RECAIDA, EX_ID, CTBMOTCIERRE.TB_DESCRIPCION MOTIVOCIERRE,H       CS_FECHACIERRE, CTBMOTREAPERTURA.TB_DESCRIPCION MOTIVOREAPERTURA,M       CTBPROCCIERRE.TB_DESCRIPCION PROCESOCIERRE, CS_FECHAREAPERTURA, CS_ID,       CS_MOTIVOCIERREz FROM CTB_TABLAS CTBMOTREAPERTURA, CTB_TABLAS CTBPROCCIERRE, CTB_TABLAS CTBMOTCIERRE, SEX_EXPEDIENTES, SCS_CIERRESINIESTROWHERE CS_IDEXPEDIENTE=EX_ID&  AND CTBMOTCIERRE.TB_CLAVE(+)='MOTCI'/  AND CTBMOTCIERRE.TB_CODIGO(+)=CS_MOTIVOCIERRE'  AND CTBPROCCIERRE.TB_CLAVE(+)='PROCI'1  AND CTBPROCCIERRE.TB_CODIGO(+)=CS_PROCESOCIERRE*  AND CTBMOTREAPERTURA.TB_CLAVE(+)='MOTRE'7  AND CTBMOTREAPERTURA.TB_CODIGO(+)=CS_MOTIVOREAPERTURA       �TQueryPrint
QueryPrintLastColTypelcFill  �TShortCutControlShortCutControl	ShortCutsKeytLinkControltbRefrescar KeyN@LinkControltbNuevo KeyR@LinkControltbModificar Key.@LinkControl
tbEliminar KeyL@LinkControl	tbLimpiar KeyO@LinkControl	tbOrdenar KeyI@LinkControl
tbImprimir KeyE@LinkControl
tbExportar KeyS@LinkControltbSalir2 KeyA@LinkControltbCerrar     