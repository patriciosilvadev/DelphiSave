�
 TFRMMANAGENDA 0�u  TPF0�TfrmManAGENDAfrmManAGENDALeft�Top� WidthHeight,BorderIcons Caption3Mantenimiento | Sistema Integrado de ComunicacionesConstraints.MinHeight�Constraints.MinWidth	Font.NameTahomaOldCreateOrder	OnResizeAjustarGrillasPixelsPerInch`
TextHeight � TJvOutlookSplitterJvOutlookSplitter2Left6Top WidthHeightCursorcrSizeWEAlignalLeft	ColorFrom��� ColorTo��� StyleManagerJvNavPaneStyleManager1ParentStyleManager  �TPanelpnlLeftLeft Top Width6HeightAlignalLeft
BevelOuterbvNoneTabOrder OnResizeAjustarGrillas TJvOutlookSplitterJvOutlookSplitter1Left Top Width6HeightAlignalClient	ColorFrom��� ColorTo��� StyleManagerJvNavPaneStyleManager1ParentStyleManager  TPanelpnlArbolLeft Top Width6HeightAlignalClient
BevelInnerbvRaised
BevelOuter	bvLoweredTabOrder  
TFormPanelfpDatosLeft`Top,Width� Height� CaptionDatos adicionales	FormWidth 
FormHeigth BorderIcons PositionpoScreenCenterOnShowfpDatosShow
DesignSize� �   TBevelBevelAbmLeft�Top� Width� HeightAnchorsakLeftakRightakBottom Shape	bsTopLine  TLabelLabel5LeftTopWidth1HeightCaption
Privacidad  TLabelLabel6LeftTop4Width1HeightCaption
   Operación  TButtonbtnAceptarDatosLeft.Top� WidthKHeightAnchorsakRightakBottom Caption&AceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickbtnAceptarDatosClick  TButtonbtnCancelarDatosLeftyTop� WidthKHeightAnchorsakRightakBottom Cancel	Caption	&CancelarModalResultTabOrder  	TComboBoxcmbPrivacidadLeftTopWidth� HeightStylecsDropDownList
ItemHeightTabOrder Items.StringsPR - PrivadoPG - Protegido   PU - PúblicoSE - SectorJE - JefaturaGE - Gerencia   	TCheckBoxchkHitoLeftTop`Width� HeightAllowGrayed	CaptionHitoTabOrder  	TCheckBoxchkRequiereRespuestaLeftToptWidth� HeightAllowGrayed	CaptionRequiere respuestaTabOrderOnClickchkRequiereRespuestaClick  	TComboBoxcmbOperacionLeftTopDWidth� HeightStylecsDropDownList
ItemHeightTabOrderItems.Strings   AutomáticoManual   	TCheckBoxchkObligatorioLeftTop� Width� HeightAllowGrayed	CaptionObligatorioTabOrderVisible  	TCheckBoxchkRequiereRespuestaTabuladaLeftTop� Width� HeightAllowGrayed	CaptionRequiere respuesta tabuladaTabOrderVisibleOnClick!chkRequiereRespuestaTabuladaClick     �TPanelpnlRightLeft=Top Width�HeightAlignalClient
BevelOuterbvNoneConstraints.MinWidth�TabOrder TPanelpnlTopLeft Top Width�HeightIAlignalTop
BevelOuterbvNoneTabOrder  TLabelLabel1Left]TopWidthHeightCaption:   ¿Cada cuántos minutos se revisan los eventos pendientes?  TLabelLabel2Left]Top,Width HeightCaption4   Cantidad máxima de alertas que se muestran a la vez  TIntEdit	edMinutosLeft�TopWidth<HeightTabOrder   TIntEditedCantidadMaximaLeft�Top(Width<HeightTabOrder  TButton
btnActivarLeftTop
WidthKHeightCaptionActivarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickbtnActivarClick  TButtonbtnDesactivarLeftTop%WidthKHeightCaption
DesactivarTabOrderOnClickbtnDesactivarClick   TJvPageControlPaginasLeft TopIWidth�Height�
ActivePageAG_IDRESPUESTAAlignalClientTabOrderOnChangePaginasChange
OnChangingPaginasChanging 	TTabSheettsami_motivoingresoCaptionMotivos de ingresoOnResizeAjustarGrillas TJvOutlookSplitterJvOutlookSplitter4Left� Top WidthHeight�CursorcrSizeWEAlignalLeft	ColorFrom��� ColorTo��� StyleManagerJvNavPaneStyleManager1ParentStyleManager  	TJvDBGriddbgEventosDisponiblesLeft Top Width� Height�AlignalLeftConstraints.MinWidth� 
DataSourcedsEventosDisponibles0OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNamemi_DESCRIPCIONTitle.CaptionDisponiblesWidth� Visible	    	TJvDBGriddbgEventosAsociadosTagLeft� Top Width� Height�AlignalClientConstraints.MinWidth� 
DataSourcedsEventosAsociados0OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNamemi_DESCRIPCIONTitle.Caption	AsociadosWidth� Visible	     	TTabSheettsATE_TIPOEVENTOCaptionEventos
ImageIndexOnResizeAjustarGrillas TJvOutlookSplitterJvOutlookSplitter5Left� TopWidthHeightvCursorcrSizeWEAlignalLeft	ColorFrom��� ColorTo��� StyleManagerJvNavPaneStyleManager1ParentStyleManager  TPanelPanel1Left� TopWidthHeightvAlignalLeft
BevelOuterbvNoneTabOrder TToolBarToolBar1Left Top� WidthHeight� AlignalLeftAutoSize	EdgeBorders Flat		HotImagesilColorImagesilByNTabOrder Transparent	 TToolButtonToolButton1Left Top HintAsociarCaptiontbAgregarEventos
ImageIndexParentShowHintWrap	ShowHint	OnClickAsociacionesDeItems  TToolButtonToolButton2TagLeft TopHintRemoverCaptiontbQuitarEventos
ImageIndexParentShowHintShowHint	OnClickAsociacionesDeItems   TPanelPanel2Left Top WidthHeight� AlignalTop
BevelOuterbvNoneTabOrder   TPanelPanel8Left Top Width�HeightAlignalTop
BevelOuterbvNoneTabOrderVisible TLabelLabel4LeftTopWidtheHeightCaptionMotivo de ingresoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TJvDBLookupCombocmbEventoMotivosLeftlTop WidthSHeightAlignalRightAnchorsakLeftakTopakRightakBottom LookupFieldMI_IDLookupDisplayMI_DESCRIPCIONLookupSource	dsEventosTabOrder OnChangecmbEventoMotivosChange   	TJvDBGriddbgIngresosAsociados1TagLeft� TopWidth� HeightvAlignalClientConstraints.MinWidth� 
DataSourcedsMotivosAsociados1OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNameTE_DESCRIPCIONTitle.Caption	AsociadosWidth7Visible	 Expanded	FieldNameTS_PRIVACIDADTitle.CaptionEstadoWidth%Visible	 Expanded	FieldNameTS_TIPOOPERACIONTitle.CaptionTipoWidthVisible	 Expanded	FieldNameTS_REQUIERERESPUESTATitle.CaptionRta.WidthVisible	 Expanded	FieldNameTS_HITOTitle.CaptionHitoWidthVisible	 Expanded	FieldNameTS_OBLIGATORIOTitle.CaptionObl.WidthVisible	    	TJvDBGriddbgIngresosDisponibles1Left TopWidth� HeightvAlignalLeftConstraints.MinWidth� 
DataSourcedsMotivosDisponibles1OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNameTE_DESCRIPCIONTitle.CaptionDisponiblesWidth� Visible	     	TTabSheetAG_IDMOTIVOCaptionTareas
ImageIndexOnResizeAjustarGrillas TJvOutlookSplitterJvOutlookSplitter8Left� ToppWidthHeightCursorcrSizeWEAlignalLeft	ColorFrom��� ColorTo��� StyleManagerJvNavPaneStyleManager1ParentStyleManager  TPanelPanel3Left� ToppWidthHeightAlignalLeft
BevelOuterbvNoneTabOrder TToolBarToolBar2Left Top� WidthHeight� AlignalLeftAutoSize	EdgeBorders Flat		HotImagesilColorImagesilByNTabOrder Transparent	 TToolButtonToolButton3Left Top HintAsociarCaptiontbAgregarEventos
ImageIndexParentShowHintWrap	ShowHint	OnClickAsociacionesDeItems  TToolButtonToolButton4TagLeft TopHintRemoverCaptiontbQuitarEventos
ImageIndexParentShowHintShowHint	OnClickAsociacionesDeItems   TPanelPanel4Left Top WidthHeight� AlignalTop
BevelOuterbvNoneTabOrder   	TJvDBGriddbgMotivoIngresosAsociados2TagLeft� ToppWidth� HeightAlignalClientConstraints.MinWidth� 
DataSourcedsTareasAsociadas2OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNameTE_DESCRIPCIONTitle.Caption	AsociadosWidth>Visible	 Expanded	FieldNameTS_PRIVACIDADTitle.CaptionEstadoWidth%Visible	 Expanded	FieldNameTS_TIPOOPERACIONTitle.CaptionTipoWidthVisible	 Expanded	FieldNameTS_REQUIERERESPUESTATitle.CaptionRta.WidthVisible	 Expanded	FieldNameTS_HITOTitle.CaptionHitoWidthVisible	 Expanded	FieldNameTS_OBLIGATORIOTitle.CaptionObl.WidthVisible	    	TJvDBGriddbgMotivoIngresosDisponibles2Left ToppWidth� HeightAlignalLeftConstraints.MinWidth� 
DataSourcedsTareasDisponibles2OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNameTE_DESCRIPCIONTitle.CaptionDisponiblesWidth� Visible	 Expanded	FieldNameEVENTOTitle.CaptionEventoWidth1Visible	    TPanelpnlTopTareasLeft Top Width�HeightpAlignalTop
BevelOuterbvNoneTabOrderVisible TPanel	pnlEventoLeft Top Width� HeightpAlignalLeft
BevelOuterbvNoneTabOrder  TLabelLabel3LeftTopWidtheHeightCaptionMotivo de ingresoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TJvDBLookupListlstEventoTareasLeft TopWidth� Height_AlignalBottomAnchorsakLeftakTopakRightakBottom LookupFieldmi_IDLookupDisplaymi_DESCRIPCIONLookupSource	dsEventosTabOrder OnClicklstEventoTareasChange   TPanelPanel10Left� Top Width� HeightpAlignalClient
BevelOuterbvNoneTabOrder TLabelLabel8LeftTopWidth'HeightCaptionEventoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TJvDBLookupListlstMotivoTareasLeft TopWidth� Height_AlignalBottomDisplayEmpty[Sin elegir]
EmptyValue-1AnchorsakLeftakTopakRightakBottom LookupFieldTE_IDLookupDisplayTE_DESCRIPCIONLookupSource	dsMotivosTabOrder OnClicklstMotivoTareasChange     	TTabSheetAG_IDRESPUESTACaptionRespuestas precodificadas
ImageIndexOnResizeAjustarGrillas TJvOutlookSplitterJvOutlookSplitter10Left� TopWidthHeightvCursorcrSizeWEAlignalLeft	ColorFrom��� ColorTo��� StyleManagerJvNavPaneStyleManager1ParentStyleManager  TPanelPanel5Left� TopWidthHeightvAlignalLeft
BevelOuterbvNoneTabOrder TToolBarToolBar3Left Top� WidthHeight� AlignalLeftAutoSize	EdgeBorders Flat		HotImagesilColorImagesilByNTabOrder Transparent	 TToolButtonToolButton5Left Top HintAsociarCaptiontbAgregarEventos
ImageIndexParentShowHintWrap	ShowHint	OnClickAsociacionesDeItems  TToolButtonToolButton6TagLeft TopHintRemoverCaptiontbQuitarEventos
ImageIndexParentShowHintShowHint	OnClickAsociacionesDeItems   TPanelPanel6Left Top WidthHeight� AlignalTop
BevelOuterbvNoneTabOrder   	TJvDBGriddbgRespuestasAsociados3TagLeft� TopWidth� HeightvAlignalClientConstraints.MinWidth� 
DataSourcedsRespuestasAsociadas3OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNameRS_DESCRIPCIONTitle.Caption	AsociadasWidth� Visible	    	TJvDBGriddbgRespuestasDisponibles3Left TopWidth� HeightvAlignalLeftConstraints.MinWidth� 
DataSourcedsRespuestasDisponibles3OptionsdgTitlesdgColumnResize
dgColLines
dgRowLinesdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameTahomaTitleFont.Style 
OnDblClickAsociacionesDeItemsAutoSizeColumns	"SelectColumnsDialogStrings.CaptionSelect columns*SelectColumnsDialogStrings.RealNamesOption[With the real field name]SelectColumnsDialogStrings.OK&OK-SelectColumnsDialogStrings.NoSelectionWarning$At least one column must be visible!EditControls 
RowsHeightTitleRowHeightColumnsExpanded	FieldNameRS_DESCRIPCIONTitle.CaptionDisponiblesWidth� Visible	    TPanelPanel9Left Top Width�HeightAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel7LeftTopWidthHeightCaption   ÍtemFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFont  TJvDBLookupCombocmbItemsSectorLeft/Top Width�HeightAlignalRightAnchorsakLeftakTopakRightakBottom LookupFieldIDLookupDisplayDESCRIPCIONLookupSourcedsItemsSectorTabOrder OnChangecmbItemsSectorChange     TPanel	pnlBottomLeft Top�Width�Height!AlignalBottom
BevelOuterbvNoneTabOrder
DesignSize�!  TButtonbtnCancelarLeft-TopWidthKHeightAnchorsakTopakRight CaptionCancelarTabOrder OnClickbtnCancelarClick  TButton
btnAceptarLeft� TopWidthKHeightAnchorsakTopakRight CaptionAceptarFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 
ParentFontTabOrderOnClickbtnAceptarClick  TButton
btnAplicarLeftxTopWidthKHeightAnchorsakTopakRight CaptionAplicarTabOrderOnClickbtnAplicarClick  	TCheckBox	chkSaludoLeft	Top	Width� HeightCaptionMostrar saludo de bienvenidaTabOrderVisibleOnClickchkSaludoClick    �TFormStorageFormStorageStoredProps.StringspnlLeft.Width LeftTop|  �TXPMenuXPMenuLeft4Top|  �
TImageListilByNLeftTop�   �
TImageListilColorLeft4Top�   �
TImageListIconosXPLeftPTop�   TSDQuery	sdqSectorDatabaseNamedbPrincipalOptions AfterScrollsdqSectorAfterScrollSQL.Strings
  SELECT *    FROM USC_SECTORES   WHERE SC_MOSTRAR = 'S'     AND SC_FECHABAJA IS NULLORDER BY SC_DESCRIPCION LeftTop�   TDataSourcedsSectorDataSet	sdqSectorLeft4Top�   
TSeguridad	SeguridadAutoEjecutar	Claves DBLoginfrmPrincipal.DBLoginPermitirEdicion	LeftPTop|  TSDQuerysdqEventosDisponibles0DatabaseNamedbPrincipalOptions SQL.Strings)  SELECT ami_motivoingreso.*, mi_id as id!    FROM agenda.ami_motivoingreso   WHERE NOT EXISTS(SELECT 1q                      FROM agenda.ats_tipoeventosector, agenda.ati_tipoeventomotivoingreso, agenda.ate_tipoevento5                     WHERE mi_id = ti_idmotivoingreso2                       AND te_id = ts_idtipoevento2                       AND ti_idtipoevento = te_id2                       AND ts_idsector = :idsector0                       AND ts_fechabaja IS NULL)ORDER BY mi_descripcion LeftTop� 	ParamDataDataType	ftUnknownNameidsector	ParamTypeptInput    TDataSourcedsEventosDisponibles0DataSetsdqEventosDisponibles0Left4Top�   TSDQuerysdqEventosAsociados0DatabaseNamedbPrincipalOptions SQL.Strings)  SELECT ami_motivoingreso.*, mi_id as id!    FROM agenda.ami_motivoingreso   WHERE EXISTS(SELECT 1m                  FROM agenda.ati_tipoeventomotivoingreso, agenda.ats_tipoeventosector, agenda.ate_tipoevento.                 WHERE ti_idtipoevento = te_id1                   AND ti_idmotivoingreso = mi_id.                   AND te_id = ts_idtipoevento.                   AND ts_idsector = :idsector+                   AND ti_fechabaja IS NULL,                   AND ts_fechabaja IS NULL)ORDER BY mi_descripcion LeftTop� 	ParamDataDataType	ftUnknownNameidsector	ParamTypeptInput    TDataSourcedsEventosAsociados0DataSetsdqEventosAsociados0Left4Top�   TSDQuerysdqMotivosDisponibles1DatabaseNamedbPrincipalOptions SQL.Stringsw SELECT DISTINCT te_id, te_descripcion, te_usualta, te_fechaalta, te_usumodif, te_fechamodif, te_usubaja, te_fechabaja,b        te_tipoevento, te_idproceso, te_ayuda, te_idpadre, te_iddestinatario, te_tiemporesolucion,j        te_respuestasugeridafija, te_destinatario_idsector, te_destinatario_sector, te_destinatario_cargo,=        te_id AS ID --, ti_idmotivoingreso AS IdMotivoIngresoA   FROM agenda.ate_tipoevento, agenda.ati_tipoeventomotivoingreso  WHERE NOT EXISTS(SELECT 1Y                     FROM agenda.ats_tipoeventosector, agenda.ati_tipoeventomotivoingreso1                    WHERE te_id = ts_idtipoeventoI--                              AND ti_idmotivoingreso = ;IdMotivoIngreso1                      AND ti_idtipoevento = te_id1                      AND ts_idsector = :idsector.                      AND ti_fechabaja IS NULL/                      AND ts_fechabaja IS NULL)    AND NOT EXISTS(SELECT 1Y                     FROM agenda.ats_tipoeventosector, agenda.ati_tipoeventomotivoingreso1                    WHERE te_id = ts_idtipoeventoI--                              AND ti_idmotivoingreso = ;IdMotivoIngreso1                      AND ti_idtipoevento = te_id.                      AND ts_privacidad = 'PU'.                      AND ti_fechabaja IS NULL/                      AND ts_fechabaja IS NULL)    AND te_tipoevento = 'E'    AND te_fechabaja IS NULL    AND ti_idtipoevento = te_id+    AND :IdMotivoIngreso = :IdMotivoIngreso/*-    AND(ti_idmotivoingreso = ;IdMotivoIngreso      OR ;IdMotivoIngreso IS NULL     OR ;IdMotivoIngreso = -1)*/ORDER BY te_descripcion LeftTop	ParamDataDataType	ftUnknownNameidsector	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput    TDataSourcedsMotivosDisponibles1DataSetsdqMotivosDisponibles1Left4Top  TSDQuerysdqMotivosAsociados1DatabaseNamedbPrincipalOptions SQL.Stringsx  SELECT DISTINCT te_id, te_descripcion, te_usualta, te_fechaalta, te_usumodif, te_fechamodif, te_usubaja, te_fechabaja,c         te_tipoevento, te_idproceso, te_ayuda, te_idpadre, te_iddestinatario, te_tiemporesolucion,k         te_respuestasugeridafija, te_destinatario_idsector, te_destinatario_sector, te_destinatario_cargo,>         ats.*, ts_id as id --, ti_idmotivoingreso as ideventog    FROM agenda.ate_tipoevento ate, agenda.ati_tipoeventomotivoingreso, agenda.ats_tipoeventosector ats    WHERE te_id = ts_idtipoevento      AND ti_idtipoevento = te_id      AND ts_idsector = :idsector     AND te_tipoevento = 'E'     AND te_fechabaja IS NULL     AND ts_fechabaja IS NULL     AND ti_fechabaja IS NULL,     AND :IdMotivoIngreso = :IdMotivoIngreso/*.     AND(ti_idmotivoingreso = ;IdMotivoIngreso!      OR ;IdMotivoIngreso IS NULL      OR ;IdMotivoIngreso = -1)*/ORDER BY te_descripcion LeftTop,	ParamDataDataType	ftUnknownNameidsector	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput    TDataSourcedsMotivosAsociados1DataSetsdqMotivosAsociados1Left4Top,  TDataSourcedsTareasAsociadas2DataSetsdqTareasAsociadas2Left4Toph  TSDQuerysdqTareasAsociadas2DatabaseNamedbPrincipalOptions SQL.Stringsx  SELECT DISTINCT te_id, te_descripcion, te_usualta, te_fechaalta, te_usumodif, te_fechamodif, te_usubaja, te_fechabaja,c         te_tipoevento, te_idproceso, te_ayuda, te_idpadre, te_iddestinatario, te_tiemporesolucion,k         te_respuestasugeridafija, te_destinatario_idsector, te_destinatario_sector, te_destinatario_cargo,>         ats.*, ts_id as id --, ti_idmotivoingreso as ideventog    FROM agenda.ate_tipoevento ate, agenda.ati_tipoeventomotivoingreso, agenda.ats_tipoeventosector ats    WHERE te_id = ts_idtipoevento      AND ti_idtipoevento = te_id,     AND :IdMotivoIngreso = :IdMotivoIngreso0--     AND ti_idmotivoingreso = ;IdMotivoIngreso      AND ts_idsector = :idsectorE     AND(te_idpadre = :idpadre or :idpadre IS NULL or :idpadre = -1)      AND te_tipoevento = 'T'     AND ts_fechabaja IS NULL     AND ti_fechabaja IS NULLORDER BY te_descripcion LeftToph	ParamDataDataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameidSector	ParamTypeptInput DataType	ftUnknownNameidpadre	ParamTypeptInput DataType	ftUnknownNameidpadre	ParamTypeptInput DataType	ftUnknownNameidpadre	ParamTypeptInput    TSDQuerysdqTareasDisponibles2DatabaseNamedbPrincipalOptions SQL.Stringsx  SELECT DISTINCT te_id, te_descripcion, te_usualta, te_fechaalta, te_usumodif, te_fechamodif, te_usubaja, te_fechabaja,c         te_tipoevento, te_idproceso, te_ayuda, te_idpadre, te_iddestinatario, te_tiemporesolucion,k         te_respuestasugeridafija, te_destinatario_idsector, te_destinatario_sector, te_destinatario_cargo,         te_id as id,#         (SELECT eve.te_descripcion*            FROM agenda.ate_tipoevento eve6           WHERE eve.te_id = tar.te_idpadre) as EVENTO0       --, ti_idmotivoingreso as IdMotivoIngresoF    FROM agenda.ate_tipoevento tar, agenda.ati_tipoeventomotivoingreso   WHERE NOT EXISTS(SELECT 16                      FROM agenda.ats_tipoeventosector2                     WHERE te_id = ts_idtipoevento2                       AND ts_idsector = :idsector0                       AND ts_fechabaja IS NULL)     AND NOT EXISTS(SELECT 16                      FROM agenda.ats_tipoeventosector2                     WHERE te_id = ts_idtipoevento/                       AND ts_privacidad = 'PU'3                       AND ts_idsector <> :idsector0                       AND ts_fechabaja IS NULL)     AND te_tipoevento = 'T'     AND te_fechabaja IS NULL     AND ti_fechabaja IS NULL      AND ti_idtipoevento = te_id,     AND :IdMotivoIngreso = :IdMotivoIngreso0--     AND ti_idmotivoingreso = ;IdMotivoIngresoE     AND(te_idpadre = :idpadre or :idpadre IS NULL or :idpadre = -1) ORDER BY te_descripcion LeftTopL	ParamDataDataType	ftUnknownNameidSector	ParamTypeptInput DataType	ftUnknownNameidsector	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameidpadre	ParamTypeptInput DataType	ftUnknownNameidpadre	ParamTypeptInput DataType	ftUnknownNameidpadre	ParamTypeptInput    TDataSourcedsTareasDisponibles2DataSetsdqTareasDisponibles2Left4TopL  TSDQuerysdqRespuestasAsociadas3DatabaseNamedbPrincipalOptions SQL.StringsSELECT   ars.*, re_id AS IDZ    FROM agenda.ars_respuesta ars, agenda.ats_tipoeventosector, agenda.are_respuestaevento&   WHERE re_idtipoeventosector = ts_id     AND rs_id = re_idrespuesta      AND ts_idsector = :idsector$     AND ts_id = :idtipoeventosector     AND rs_fechabaja IS NULL     AND re_fechabaja IS NULLORDER BY rs_descripcion LeftTop�	ParamDataDataType	ftUnknownNameidSector	ParamTypeptInput DataType	ftUnknownNameidtipoeventosector	ParamTypeptInput    TSDQuerysdqRespuestasDisponibles3DatabaseNamedbPrincipalOptions SQL.Strings  SELECT ars.*, rs_id AS ID!    FROM agenda.ars_respuesta ars   WHERE NOT EXISTS(SELECT 1R                      FROM agenda.ats_tipoeventosector, agenda.are_respuestaevento8                     WHERE re_idtipoeventosector = ts_id1                       AND rs_id = re_idrespuesta6                       AND ts_id = :idtipoeventosector2                       AND ts_idsector = :idsector0                       AND re_fechabaja IS NULL)     /*     AND NOT EXISTS(SELECT 1R                      FROM agenda.ats_tipoeventosector, agenda.are_respuestaevento8                     WHERE re_idtipoeventosector = ts_id1                       AND rs_id = re_idrespuesta4                       AND ts_idsector <> ::idsector/                       AND ts_privacidad = 'PU'0                       AND re_fechabaja IS NULL)     */     AND rs_fechabaja IS NULLORDER BY rs_descripcion LeftTop�	ParamDataDataType	ftUnknownNameidtipoeventosector	ParamTypeptInput DataType	ftUnknownNameidSector	ParamTypeptInput    TDataSourcedsRespuestasDisponibles3DataSetsdqRespuestasDisponibles3Left4Top�  TDataSourcedsRespuestasAsociadas3DataSetsdqRespuestasAsociadas3Left4Top�  TJvNavPaneStyleManagerJvNavPaneStyleManager1ThemenptStandardLeftPTop�   TSDQuery
sdqEventosDatabaseNamedbPrincipalOptions SQL.Strings)  SELECT ami_motivoingreso.*, mi_id as id!    FROM agenda.ami_motivoingresoORDER BY mi_descripcion Left� Top�   TDataSource	dsEventosDataSet
sdqEventosLeftTop�   TSDQuerysdqItemsSectorDatabaseNamedbPrincipalOptions SQL.Strings  SELECT distinct /*mi_descripcion || ' - ' ||*/ te_descripcion as descripcion, ts_id as id, ti_idtipoevento as IdMotivoIngreso�    FROM agenda.ami_motivoingreso, agenda.ati_tipoeventomotivoingreso, agenda.ate_tipoevento ate, agenda.ats_tipoeventosector ats    WHERE te_id = ts_idtipoevento      AND ts_idsector = :idsector     AND ts_fechabaja IS NULL     AND ti_fechabaja IS NULL      AND ti_idtipoevento = te_id#     AND mi_id = ti_idmotivoingreso#     AND ti_idmotivoingreso = mi_idORDER BY te_descripcion Left� Top� 	ParamDataDataType	ftUnknownNameidsector	ParamTypeptInput    TDataSourcedsItemsSectorDataSetsdqItemsSectorLeftTop�   TSDQuery
sdqMotivosDatabaseNamedbPrincipalOptions SQL.Stringso  SELECT te_id, te_descripcion, te_usualta, te_fechaalta, te_usumodif, te_fechamodif, te_usubaja, te_fechabaja,c         te_tipoevento, te_idproceso, te_ayuda, te_idpadre, te_iddestinatario, te_tiemporesolucion,k         te_respuestasugeridafija, te_destinatario_idsector, te_destinatario_sector, te_destinatario_cargo,;         ats.*, ts_id as id, ti_idmotivoingreso as ideventog    FROM agenda.ate_tipoevento ate, agenda.ati_tipoeventomotivoingreso, agenda.ats_tipoeventosector ats    WHERE te_id = ts_idtipoevento      AND ti_idtipoevento = te_id0--     AND ti_idmotivoingreso = ;IdMotivoIngreso,     AND :IdMotivoIngreso = :IdMotivoIngreso      AND ts_idsector = :idsector     AND te_tipoevento = 'E'     AND ts_fechabaja IS NULL     AND ti_fechabaja IS NULLORDER BY te_descripcion Left� Top	ParamDataDataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameIdMotivoIngreso	ParamTypeptInput DataType	ftUnknownNameidsector	ParamTypeptInput    TDataSource	dsMotivosDataSet
sdqMotivosLeftTop   