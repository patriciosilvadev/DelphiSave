inherited frmConsultaLiquidacionPagos: TfrmConsultaLiquidacionPagos
  Caption = 'Consulta Pagos Liquidaci'#243'n'
  ClientHeight = 585
  ClientWidth = 919
  OldCreateOrder = True
  OnKeyPress = FSFormKeyPress
  ExplicitWidth = 927
  ExplicitHeight = 615
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFiltros: TPanel
    Width = 919
    Height = 130
    ExplicitWidth = 919
    ExplicitHeight = 130
    object lblEtapa: TLabel
      Left = 238
      Top = 7
      Width = 52
      Height = 13
      Caption = 'Mediacion:'
    end
    object Label1: TLabel
      Left = 3
      Top = 7
      Width = 77
      Height = 13
      Caption = 'Nro Liquidaci'#243'n:'
    end
    object Label2: TLabel
      Left = 183
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Hasta:'
    end
    object Label3: TLabel
      Left = 7
      Top = 35
      Width = 69
      Height = 13
      Caption = 'Fecha Emisi'#243'n'
    end
    object Label4: TLabel
      Left = 567
      Top = 35
      Width = 31
      Height = 13
      Caption = 'Hasta:'
    end
    object TLabel
      Left = 367
      Top = 35
      Width = 91
      Height = 13
      Caption = 'Fecha Vencimiento'
    end
    object Label5: TLabel
      Left = 183
      Top = 63
      Width = 31
      Height = 13
      Caption = 'Hasta:'
    end
    object Label6: TLabel
      Left = 7
      Top = 63
      Width = 79
      Height = 13
      Caption = 'Fecha Aprobado'
    end
    object Label7: TLabel
      Left = 7
      Top = 87
      Width = 60
      Height = 13
      Caption = 'Nro Cheque:'
    end
    object cbPagosBloqueados: TCheckBox
      Left = 370
      Top = 109
      Width = 129
      Height = 17
      Caption = 'Ver Pagos Bloqueados'
      TabOrder = 12
    end
    object cbPendientesDeAprobacion: TCheckBox
      Left = 2
      Top = 109
      Width = 151
      Height = 17
      Caption = 'Pendientes de Aprobaci'#243'n'
      TabOrder = 9
    end
    object cbAprobadas: TCheckBox
      Left = 154
      Top = 109
      Width = 73
      Height = 17
      Caption = 'Aprobadas'
      TabOrder = 10
    end
    object cbConceptoDuplicado: TCheckBox
      Left = 234
      Top = 109
      Width = 135
      Height = 17
      Caption = 'Conceptos Duplicados'
      TabOrder = 11
    end
    object edEtapa: TIntEdit
      Left = 298
      Top = 4
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edNroLiquidacion: TIntEdit
      Left = 89
      Top = 4
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edEmisionHasta: TDateComboBox
      Left = 229
      Top = 31
      Width = 88
      Height = 21
      TabOrder = 3
    end
    object edEmisionDesde: TDateComboBox
      Left = 88
      Top = 31
      Width = 88
      Height = 21
      TabOrder = 2
    end
    object edVencimientoHasta: TDateComboBox
      Left = 613
      Top = 31
      Width = 88
      Height = 21
      TabOrder = 5
    end
    object edVencimientoDesde: TDateComboBox
      Left = 470
      Top = 31
      Width = 88
      Height = 21
      TabOrder = 4
    end
    object edAprobadoHasta: TDateComboBox
      Left = 229
      Top = 59
      Width = 88
      Height = 21
      TabOrder = 7
    end
    object edAprobadoDesde: TDateComboBox
      Left = 88
      Top = 59
      Width = 88
      Height = 21
      TabOrder = 6
    end
    object edNumeroCheque: TIntEdit
      Left = 89
      Top = 84
      Width = 192
      Height = 21
      TabOrder = 8
    end
  end
  inherited CoolBar: TCoolBar
    Top = 130
    Width = 919
    Bands = <
      item
        Control = ToolBar
        ImageIndex = -1
        MinHeight = 27
        Width = 915
      end>
    ExplicitTop = 130
    ExplicitWidth = 919
    inherited ToolBar: TToolBar
      Width = 906
      ExplicitWidth = 906
      inherited tbNuevo: TToolButton
        Visible = True
        OnClick = tbNuevoClick
      end
      inherited tbModificar: TToolButton
        Visible = True
        OnClick = tbModificarClick
      end
      inherited ToolButton8: TToolButton
        Enabled = False
      end
      inherited tbMostrarFiltros: TToolButton
        Enabled = False
      end
      inherited tbMaxRegistros: TToolButton
        Enabled = False
      end
      inherited ToolButton11: TToolButton
        Enabled = False
      end
      object tbAprobacionPagos: TToolButton
        Left = 370
        Top = 0
        Hint = 'Aprobaci'#243'n de Pago (Ctrl+A)'
        ImageIndex = 19
        OnClick = tbAprobacionPagosClick
      end
      object tbAprobacionduplicadosMultiple: TToolButton
        Left = 393
        Top = 0
        Hint = 'Aprobaci'#243'n de duplicados multiple'
        Caption = 'tbAprobacionDuplicadoMultiple'
        ImageIndex = 23
        OnClick = tbAprobacionduplicadosMultipleClick
      end
    end
  end
  inherited Grid: TArtDBGrid
    Top = 159
    Width = 919
    Height = 397
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    OnCellClick = GridCellClick
    OnDrawColumnCell = GridDrawColumnCell
    OnKeyPress = GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'SELECTED'
        Title.Caption = #191'?'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'Nro. Liquidaci'#243'n'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOBENEFICIARIO'
        Title.Caption = 'Tipo Beneficiario'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUITCUIL'
        Title.Caption = 'CUIT/CUIL'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGUESEA'
        Title.Caption = 'Paguese a'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CHEQUENOMBRE'
        Title.Caption = 'Cheque Nombre'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PAGOEXCLUSIVO'
        Title.Caption = 'Pago Exclusivo'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUEMISION'
        Title.Caption = 'Usuario Emision'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAEMISION'
        Title.Caption = 'Fecha Emision'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAVENCIMIENTO'
        Title.Caption = 'Fecha Vencimiento'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIOAPROBADO'
        Title.Caption = 'Usuario Aprobado'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHAAPROBADO'
        Title.Caption = 'Fecha Aprobado'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTESINRETENCION'
        Title.Caption = 'Importe Sin Retenci'#243'n'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTECONRETENCION'
        Title.Caption = 'Importe Con Retenci'#243'n'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DETALLE'
        Title.Caption = 'Detalle'
        Width = 114
        Visible = True
      end>
  end
  object fpCambiarPreventor: TFormPanel [3]
    Left = 132
    Top = 253
    Width = 637
    Height = 89
    Caption = 'Impresi'#243'n de Conceptos de Pago'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    Position = poOwnerFormCenter
    DesignSize = (
      637
      89)
    object btnAceptarCambioPreventor: TButton
      Left = 480
      Top = 59
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnAceptarCambioPreventorClick
    end
    object btnCancelarCambioPreventor: TButton
      Left = 558
      Top = 59
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object gbCopias: TGroupBox
      Left = 0
      Top = 0
      Width = 637
      Height = 52
      Align = alTop
      Caption = ' Cantidad Copias '
      TabOrder = 2
      object lblCantidadCopias: TLabel
        Left = 21
        Top = 23
        Width = 109
        Height = 13
        Caption = 'Recibo de Liquidaci'#243'n:'
      end
      object lblLiquidacion: TLabel
        Left = 301
        Top = 23
        Width = 54
        Height = 13
        Caption = 'Liquidaci'#243'n'
      end
      object udCantidadReciboLiquidacion: TUpDown
        Left = 177
        Top = 19
        Width = 15
        Height = 21
        Associate = edCantidadCopiasReciboLiquidacion
        Position = 2
        TabOrder = 1
      end
      object edCantidadCopiasReciboLiquidacion: TIntEdit
        Left = 136
        Top = 19
        Width = 41
        Height = 21
        TabOrder = 0
        Text = '2'
        Alignment = taRightJustify
        MaxLength = 3
        MaxValue = 999
        MinValue = 1
        Value = 2
      end
      object udCantidadLiquidacion: TUpDown
        Left = 401
        Top = 19
        Width = 15
        Height = 21
        Associate = edCantidadCopiasLiquidacion
        Position = 2
        TabOrder = 3
      end
      object edCantidadCopiasLiquidacion: TIntEdit
        Left = 360
        Top = 19
        Width = 41
        Height = 21
        TabOrder = 2
        Text = '2'
        Alignment = taRightJustify
        MaxLength = 3
        MaxValue = 999
        MinValue = 1
        Value = 2
      end
    end
  end
  object pnAprobacionConDup: TFormPanel [4]
    Left = 284
    Top = 232
    Width = 423
    Height = 146
    Caption = 'Aprobaci'#243'n de Conceptos Duplicados'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    Position = poOwnerFormCenter
    DesignSize = (
      423
      146)
    object lbMotivo: TLabel
      Left = 10
      Top = 55
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object btnAceptarAprobConDup: TButton
      Left = 266
      Top = 116
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnAceptarAprobConDupClick
    end
    object btnCancelarAprobConDup: TButton
      Left = 344
      Top = 116
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object gbAprobacion: TGroupBox
      Left = 120
      Top = 4
      Width = 185
      Height = 41
      TabOrder = 2
      object cbAprobadoConDup: TCheckBox
        Left = 16
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Aprobado'
        TabOrder = 0
      end
      object cbRechazadoConDup: TCheckBox
        Left = 96
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Rechazado'
        TabOrder = 1
      end
    end
    object edMotivo: TMemo
      Left = 56
      Top = 50
      Width = 361
      Height = 57
      MaxLength = 400
      TabOrder = 3
    end
  end
  object plTotalesLiquidacion: TPanel [5]
    Left = 0
    Top = 556
    Width = 919
    Height = 29
    Align = alBottom
    TabOrder = 5
    ExplicitLeft = -109
    ExplicitWidth = 1028
    object lbSumatoriaTotal: TLabel
      Left = 8
      Top = 8
      Width = 24
      Height = 13
      Caption = 'Total'
    end
  end
  inherited sdqConsulta: TSDQuery
    SQL.Strings = (
      
        'SELECT lj_id ID, lj_idbeneficiario idbeneficiario, lj_beneficiar' +
        'io beneficiario, bp_descripcion tipobeneficiario,'
      
        '       lj_cuitcuil cuitcuil, lj_paguesea paguesea, lj_chequenomb' +
        're chequenombre, lj_usuemision usuemision,'
      
        '       lj_fechaemision fechaemision, lj_fechavencimiento fechave' +
        'ncimiento, lj_usuarioaprobado AS usuarioaprobado,'
      
        '       lj_fechaaprobado AS fechaaprobado, (SELECT SUM(NVL(pl_imp' +
        'ortepago, 0))'
      
        '                                             FROM legales.lpl_pa' +
        'golegal'
      
        '                                            WHERE lj_id = pl_idl' +
        'iquidacion) AS importesinretencion,'
      '       (SELECT SUM(NVL(pl_importeconretencion, 0))'
      '          FROM legales.lpl_pagolegal'
      
        '         WHERE lj_id = pl_idliquidacion) AS importeconretencion,' +
        ' lj_detalle AS detalle, lj_pagoexclusivo pagoexclusivo'
      
        '  FROM legales.lbp_beneficiariopago, legales.llj_liquidacionjuic' +
        'io'
      ' WHERE bp_id = lj_idbeneficiario')
    object sdqConsultaSELECTED: TStringField
      FieldKind = fkCalculated
      FieldName = 'SELECTED'
      Size = 0
      Calculated = True
    end
    object sdqConsultaID: TFloatField
      FieldName = 'ID'
      Required = True
    end
    object sdqConsultaIDBENEFICIARIO: TFloatField
      FieldName = 'IDBENEFICIARIO'
      Required = True
    end
    object sdqConsultaBENEFICIARIO: TFloatField
      FieldName = 'BENEFICIARIO'
      Required = True
    end
    object sdqConsultaTIPOBENEFICIARIO: TStringField
      FieldName = 'TIPOBENEFICIARIO'
      Required = True
      Size = 50
    end
    object sdqConsultaCUITCUIL: TStringField
      FieldName = 'CUITCUIL'
      Size = 11
    end
    object sdqConsultaPAGUESEA: TStringField
      FieldName = 'PAGUESEA'
      Size = 255
    end
    object sdqConsultaCHEQUENOMBRE: TStringField
      FieldName = 'CHEQUENOMBRE'
      Size = 255
    end
    object sdqConsultaUSUEMISION: TStringField
      FieldName = 'USUEMISION'
    end
    object sdqConsultaFECHAEMISION: TDateTimeField
      FieldName = 'FECHAEMISION'
    end
    object sdqConsultaFECHAVENCIMIENTO: TDateTimeField
      FieldName = 'FECHAVENCIMIENTO'
    end
    object sdqConsultaUSUARIOAPROBADO: TStringField
      FieldName = 'USUARIOAPROBADO'
    end
    object sdqConsultaFECHAAPROBADO: TDateTimeField
      FieldName = 'FECHAAPROBADO'
    end
    object sdqConsultaIMPORTESINRETENCION: TFloatField
      FieldName = 'IMPORTESINRETENCION'
    end
    object sdqConsultaIMPORTECONRETENCION: TFloatField
      FieldName = 'IMPORTECONRETENCION'
    end
    object sdqConsultaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 250
    end
    object sdqConsultaPAGOEXCLUSIVO: TStringField
      FieldName = 'PAGOEXCLUSIVO'
      Size = 1
    end
  end
  inherited ShortCutControl: TShortCutControl
    ShortCuts = <
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end
      item
        Key = 0
      end>
  end
  object ShortCutControl1: TShortCutControl
    ShortCuts = <
      item
        Key = 116
        LinkControl = tbRefrescar
      end
      item
        Key = 16462
        LinkControl = tbNuevo
      end
      item
        Key = 16461
        LinkControl = tbModificar
      end
      item
        Key = 16430
        LinkControl = tbEliminar
      end
      item
        Key = 16460
        LinkControl = tbLimpiar
      end
      item
        Key = 16463
        LinkControl = tbOrdenar
      end
      item
        Key = 16457
        LinkControl = tbImprimir
      end
      item
        Key = 16453
        LinkControl = tbExportar
      end
      item
        Key = 16467
        LinkControl = tbSalir
      end>
    Left = 80
    Top = 260
  end
end
