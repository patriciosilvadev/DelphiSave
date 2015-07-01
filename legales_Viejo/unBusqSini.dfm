object dlgBusqSini: TdlgBusqSini
  Left = 138
  Top = 223
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Buscar Siniestros'
  ClientHeight = 316
  ClientWidth = 897
  Color = clBtnFace
  Constraints.MinHeight = 264
  Constraints.MinWidth = 440
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    897
    316)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 156
    Top = 47
    Width = 56
    Height = 13
    Caption = 'Diagn'#243'stico'
  end
  object grpTrabajador: TGroupBox
    Left = 0
    Top = 0
    Width = 897
    Height = 41
    Align = alTop
    Caption = 'Trabajador'
    Enabled = False
    TabOrder = 0
    object lbTrabNombre: TLabel
      Left = 484
      Top = 17
      Width = 40
      Height = 13
      Caption = 'Siniestro'
      FocusControl = fraTrabajadorSiniestrado.cmbNombre
    end
    inline fraTrabajadorSiniestrado: TfraTrabajador
      Left = 6
      Top = 14
      Width = 470
      Height = 25
      TabOrder = 0
      ExplicitLeft = 6
      ExplicitTop = 14
      ExplicitWidth = 470
      ExplicitHeight = 25
      inherited cmbNombre: TArtComboBox
        Width = 302
        ExplicitWidth = 302
      end
    end
    object tbExplorarHistoricoEstado: TToolBar
      Left = 639
      Top = 11
      Width = 39
      Height = 26
      Align = alNone
      BorderWidth = 1
      ButtonWidth = 25
      Caption = 'ToolBar de Hist'#243'rico de Estado'
      HotImages = dmLegales.ilByN
      Images = dmLegales.ilColor
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object tbHistoricoEstados: TToolButton
        Left = 0
        Top = 0
        Hint = 'Nuevo'
        ImageIndex = 14
        OnClick = tbHistoricoEstadosClick
      end
    end
    object edSiniestro: TSinEdit
      Left = 529
      Top = 12
      Width = 100
      Height = 21
      TabOrder = 2
      ViewStyle = [etSiniestro, etOrden]
    end
  end
  object dbgBusqueda: TRxDBGrid
    Left = 4
    Top = 67
    Width = 888
    Height = 243
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsBusqueda
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgBusquedaDblClick
    OnKeyPress = dbgBusquedaKeyPress
    MultiSelect = True
    RowColor2 = 16776176
    Columns = <
      item
        Color = 14811135
        Expanded = False
        FieldName = 'CODSINI'
        Title.Caption = 'Siniestro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_SINIESTRORED'
        Title.Caption = 'Siniestro Mutual'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_FECHAACCIDENTE'
        Title.Caption = 'Fecha de Accidente'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_BAJAMEDICA'
        Title.Caption = 'Fecha de Baja'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_FECHARECAIDA'
        Title.Caption = 'Fecha de Raca'#237'da'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_ALTAMEDICA'
        Title.Caption = 'Fecha de Alta'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TB_DESCRIPCION'
        Title.Caption = 'Tipo'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MP_NOMBRE'
        Title.Caption = 'Empresa'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TJ_NOMBRE'
        Title.Caption = 'Trabajador'
        Width = 220
        Visible = True
      end>
  end
  object edDiagnostico: TEdit
    Left = 216
    Top = 43
    Width = 676
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    TabOrder = 2
  end
  object tbHerramientas: TToolBar
    Left = 4
    Top = 43
    Width = 149
    Height = 24
    Align = alNone
    Caption = 'tbHerramientas'
    EdgeBorders = [ebRight]
    HotImages = dmLegales.ilColor
    Images = dmLegales.ilByN
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object tbSeleccionar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Seleccionar'
      Caption = 'Seleccionar'
      ImageIndex = 23
      OnClick = tbSeleccionarClick
    end
    object tbRefrescar: TToolButton
      Left = 23
      Top = 0
      Hint = 'Refrescar (F5)'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbRefrescarClick
    end
    object tbLimpiar: TToolButton
      Left = 46
      Top = 0
      Caption = 'Limpiar'
      ImageIndex = 1
      OnClick = tbLimpiarClick
    end
    object tbOrden: TToolButton
      Left = 69
      Top = 0
      Hint = 'Orden (Ctrl+O)'
      DropdownMenu = pmnuOrden
      ImageIndex = 2
      Style = tbsDropDown
    end
    object tbSeparador2: TToolButton
      Left = 107
      Top = 0
      Width = 8
      Caption = 'tbSeparador2'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object tbSalir: TToolButton
      Left = 115
      Top = 0
      Hint = 'Salir (Esc)'
      Caption = 'tbSalir'
      ImageIndex = 5
      OnClick = tbSalirClick
    end
  end
  object sdqBusqueda: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    AfterScroll = sdqBusquedaAfterScroll
    SQL.Strings = (
      'SELECT EX_SINIESTRO, EX_ORDEN, EX_RECAIDA,'
      
        '       EX_SINIESTRO || '#39'/'#39' || EX_ORDEN || '#39'/'#39' || EX_RECAIDA CODS' +
        'INI,'
      '       EX_SINIESTRORED,'
      '       MP_CONTRATO, MP_CUIT, MP_NOMBRE, TJ_CUIL, TJ_NOMBRE,'
      
        '       EX_DIAGNOSTICO, EX_FECHAACCIDENTE, EX_BAJAMEDICA, EX_FECH' +
        'ARECAIDA, EX_ALTAMEDICA, TB_DESCRIPCION'
      'FROM CTB_TABLAS, CTJ_TRABAJADORES, CMP_EMPRESAS, SEX_EXPEDIENTES'
      'WHERE NVL(EX_TIPO, '#39'1'#39') = TB_CODIGO(+)'
      'AND TB_CLAVE = '#39'STIPO'#39
      'AND MP_CUIT = EX_CUIT'
      'AND TJ_CUIL = EX_CUIL'
      'AND EX_SINIESTRO = -1')
    Left = 52
    Top = 168
    object sdqBusquedaEX_SINIESTRO: TFloatField
      FieldName = 'EX_SINIESTRO'
      Required = True
    end
    object sdqBusquedaEX_ORDEN: TFloatField
      FieldName = 'EX_ORDEN'
      Required = True
    end
    object sdqBusquedaEX_RECAIDA: TFloatField
      FieldName = 'EX_RECAIDA'
      Required = True
    end
    object sdqBusquedaCODSINI: TStringField
      FieldName = 'CODSINI'
      Required = True
      Size = 122
    end
    object sdqBusquedaEX_SINIESTRORED: TFloatField
      FieldName = 'EX_SINIESTRORED'
    end
    object sdqBusquedaMP_CONTRATO: TFloatField
      FieldName = 'MP_CONTRATO'
    end
    object sdqBusquedaMP_CUIT: TStringField
      FieldName = 'MP_CUIT'
      Required = True
      Size = 11
    end
    object sdqBusquedaMP_NOMBRE: TStringField
      FieldName = 'MP_NOMBRE'
      Size = 60
    end
    object sdqBusquedaTJ_CUIL: TStringField
      FieldName = 'TJ_CUIL'
      Required = True
      Size = 11
    end
    object sdqBusquedaTJ_NOMBRE: TStringField
      FieldName = 'TJ_NOMBRE'
      Size = 60
    end
    object sdqBusquedaEX_DIAGNOSTICO: TStringField
      FieldName = 'EX_DIAGNOSTICO'
      Size = 250
    end
    object sdqBusquedaEX_FECHAACCIDENTE: TDateTimeField
      FieldName = 'EX_FECHAACCIDENTE'
    end
    object sdqBusquedaEX_BAJAMEDICA: TDateTimeField
      FieldName = 'EX_BAJAMEDICA'
    end
    object sdqBusquedaEX_FECHARECAIDA: TDateTimeField
      FieldName = 'EX_FECHARECAIDA'
    end
    object sdqBusquedaEX_ALTAMEDICA: TDateTimeField
      FieldName = 'EX_ALTAMEDICA'
    end
    object sdqBusquedaTB_DESCRIPCION: TStringField
      FieldName = 'TB_DESCRIPCION'
      Size = 150
    end
  end
  object dsBusqueda: TDataSource
    DataSet = sdqBusqueda
    Left = 80
    Top = 168
  end
  object pmnuOrden: TPopupMenu
    Left = 24
    Top = 168
    object mnuOrdSinOrdenRec: TMenuItem
      Caption = 'Siniestro / Orden / Reca'#237'da'
      OnClick = mnuOrdenClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuOrdTrabajador: TMenuItem
      Tag = 1
      Caption = 'Trabajador'
      OnClick = mnuOrdenClick
    end
    object mnuOrdEmpresa: TMenuItem
      Tag = 2
      Caption = 'Empresa'
      OnClick = mnuOrdenClick
    end
  end
  object ShortCutControl: TShortCutControl
    ShortCuts = <
      item
        Key = 116
        OnShortCutPress = tbRefrescarClick
      end
      item
        Key = 114
      end
      item
        Key = 16460
        OnShortCutPress = tbLimpiarClick
      end
      item
        Key = 16463
        OnShortCutPress = ShortCutControlShortCuts3ShortCutPress
      end
      item
        Key = 27
        OnShortCutPress = tbSalirClick
      end>
    Left = 80
    Top = 134
  end
end
