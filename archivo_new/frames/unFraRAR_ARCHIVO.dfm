�
 TFRARAR_ARCHIVO 0  TPF0�TfraRAR_ARCHIVOfraRAR_ARCHIVOWidth/Heighth
DesignSize/h  � TLabellbTipoArchivoLeftTopWidth$HeightCaptionArchivo  �TFSPageControlpcFormularioLeft TopWidth/HeightP
ActivePagetsBiblioratoNotaAnchorsakLeftakTopakRightakBottom TabOrderTabStopHideTabs	 	TTabSheettsNoneCaptiontsNone
ImageIndex TPanelpnlNoneLeft Top Width/HeightPAlignalClient
BevelOuter	bvLoweredCaption#Debe seleccionar un Tipo de ArchivoTabOrder    	TTabSheettsCuitCaptiontsCuit
DesignSize/P  �TfraEmpresa
fraEmpresaLeftTopWidth)HeightAnchorsakLeftakTopakRight TabOrder  �TLabel	lbRSocialLeft�   �TLabel
lbContratoLeft�  �	TMaskEditmskCUITLeft0  �TIntEdit
edContratoLeft�  �TArtComboBox
cmbRSocialLeft� Width   �TfraEstablecimientofraEstablecimientoLeftTopWidth*Height4AnchorsakLeftakTopakRight TabOrderVisible �TLabellbLocalidadLeft�   �TLabellbEstableciLeft  �TLabel	lbCPostalLeftS  �TLabellbDomicilioLeft  �TLabellbProvinciaLeft�   �TIntEditedCodigoLeft0  �TArtComboBoxcmbDescripcionLeft`WidthL  �TEditedLocalidadLeft�   �TEdit	edCPostalLeftk  �TEditedDomicilioLeft0Width|  �TEditedProvinciaLeft�   �TSDQuerysdqDatosLeftPTop  �TDataSourcedsDatosLeftlTop    	TTabSheettsSiniestroCaptiontsSiniestro
ImageIndex TLabellblSiniestroLeftTopWidth(HeightCaption	Siniestro  TSinEditedSiniestroLeft4TopWidthdHeightTabOrder    	TTabSheettsTipoNumeroCaptiontsTipoNumero
ImageIndex
DesignSize/P  TLabellblTipoNumeroLeftTopWidthHeightCaptionTipo  TLabel	lblNumeroLeft�TopWidth%HeightAnchorsakTopakRight Caption   Número  �TfraCodigoDescripcionfraTipNumTipoLeft3TopWidth�HeightAnchorsakLeftakTopakRight TabOrder  �TArtComboBoxcmbDescripcionWidthG   TIntEditedTipNumNumeroLeft�TopWidthAHeightAnchorsakTopakRight TabOrder	MaxLength
   	TTabSheettsNumeroCaptiontsNumero
ImageIndex TLabellblNumeroNumeroLeftTopWidth%HeightCaption   Número  TIntEditedNumNumeroLeft4TopWidthyHeightTabOrder    	TTabSheettsJuicioCaptiontsJuicio
ImageIndex
DesignSize/P  TLabelJuicioLeftTopWidthHeightCaptionJuicio  �TfraArchJuicio	fraJuicioLeft3TopWidth�HeightAnchorsakLeftakTopakRight TabOrder  �TArtComboBoxcmbDescripcionWidth�    	TTabSheettsCuitEstablecimCaptiontsCuitEstablecim
ImageIndex  	TTabSheettsBiblioratoNotaCaptiontsBiblioratoNota TLabellblBilblioratoLeftTopWidth1HeightCaptionBibliorato:   TLabellblNotaLeft� TopWidthHeightCaptionNota:  TIntEditedBiblioratoLeftBTopWidth� HeightTabOrder   TIntEditedNotaLeft� TopWidthyHeightTabOrder    �TDBComboGridcmbTipoArchivoLeftATopWidth�HeightAnchorsakLeftakTopakRight TabOrder DirectInputKeyFieldTA_ID	ListFieldTA_DESCRIPCION
ListSourcedsDatosOnValueChangecmbTipoArchivoValueChangeColumnsExpanded	FieldNameTA_DESCRIPCIONTitle.Caption   DescripciónVisible	    �TSDQuerysdqDatosSQL.StringsNSELECT TA_ID, TA_DESCRIPCION, TA_FORMULARIO, TA_TABLA, TA_CAMPO_ID, AU_USUARIO(FROM RTA_TIPOARCHIVO, RAU_ARCHIVOUSUARIOWHERE TA_FECHABAJA IS NULL AND AU_IDTIPOARCHIVO (+) = TA_IDAND AU_USUARIO (+) = :pUsuarioORDER BY TA_DESCRIPCION  LeftDTop 	ParamDataDataTypeftStringNamepUsuario	ParamTypeptInput    �TDataSourcedsDatosLeft`Top    