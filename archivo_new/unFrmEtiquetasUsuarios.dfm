�
 TFRMETIQUETASUSR 0�  TPF0TfrmEtiquetasUSRfrmEtiquetasUSRLeftTop� ActiveControl
lcbUsuarioBorderIconsbiSystemMenu BorderStylebsSingleCaption   Impresión Etiquetas UsuariosClientHeightClientWidthsColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoScreenCenterOnCreate
FormCreate	OnDestroyFormDestroyPixelsPerInch`
TextHeight TBevelbvMarcoLeft Top WidthsHeightIAlignalTopShapebsFrame  TLabel	lblNombreLeftTopWidth(HeightCaption&Nombre:FocusControl
lcbUsuario  TLabel	lblSectorLeftTop,Width"HeightCaptionSector:
OnDblClicklblSectorDblClick  	TListViewlvLstUsuarioLeft TopIWidthsHeight� AlignalClientColumnsCaptionNombreWidthx CaptionSectorWidthx CaptionUsuarioWidthn  	RowSelect		PopupMenupumMenuOpcionesTabOrder 	ViewStylevsReport  TRxDBLookupCombo
lcbUsuarioLeft<TopWidth� HeightDropDownCountLookupField	SE_NOMBRELookupDisplay	SE_NOMBRELookupSource
dsUsuariosTabOrder  TDBEdit	dbeSectorLeft<Top(Width� Height	DataFieldSC_DESCRIPCION
DataSource
dsUsuariosReadOnly	TabOrder  TButton
btnAgregarLeftTop(WidthKHeightAction
actAgregarCaption&Agregar >>TabOrder  TPanel	pnBotonesLeft Top� WidthsHeightAlignalBottom
BevelOuterbvNoneTabOrder TButtonbtnImprimirLeftTopWidthKHeightActionactImprimirCaption	&ImprimirTabOrder    	TCheckBoxcbTodosLeftTopWidth]HeightCaptionAgregar TodosTabOrderOnClickcbTodosClick  TSDQueryqryUsuariosDatabaseNamedbPrincipalSQL.Strings,SELECT	SE_NOMBRE, SC_DESCRIPCION, SE_USUARIO'FROM ART.USE_USUARIOS, ART.USC_SECTORES�WHERE (SC_CODIGO IN ('SIN', 'AMED', 'LEGAL', 'AUDIT', 'COMPUTOS', 'SCONTGEST', 'LIQUI', 'INCAP', 'PATCRO', 'RECA', 'ENFPROF', 'CARGAAM', 'ODONTO', 'SERO', 'PRESDIN', 'INVSIN', 'MEDLAB', 'CALIDAD', 'COB', 'UACR')!       OR SC_DELEGACION <> '840')AND SE_SECTOR=SC_CODIGOORDER BY SE_NOMBRE        Left� Top�  TStringFieldqryUsuariosSE_NOMBRE	FieldName	SE_NOMBRESize2  TStringFieldqryUsuariosSC_DESCRIPCION	FieldNameSC_DESCRIPCIONSize<  TStringFieldqryUsuariosSE_USUARIO	FieldName
SE_USUARIORequired	   TDataSource
dsUsuariosDataSetqryUsuariosLeft� Top�   
TPopupMenupumMenuOpcionesLeft8Top�  	TMenuItem	mnuQuitarActionactMnuQuitarCaption&Quitar  	TMenuItemmnuLimpiarListaActionactMnuLimpiarCaption&Limpiar Lista  	TMenuItemN1Caption-  	TMenuItemmnuImprimirActionactImprimirCaption	&Imprimir   TActionList
ActionListLeftTTop�  TAction
actAgregarCaption
actAgregar	OnExecutebtnAgregarClick  TActionactImprimirCaptionactImprimirEnabled	OnExecutebtnImprimirClick  TActionactMnuLimpiarCaptionactMnuLimpiarEnabled	OnExecutemnuLimpiarListaClick  TActionactMnuQuitarCaptionactMnuQuitarEnabled	OnExecutemnuQuitarClick    