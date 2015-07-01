inherited frmImportarImagRepositorio: TfrmImportarImagRepositorio
  Left = 297
  Top = 159
  Caption = 'Importaci'#243'n de Im'#225'genes al Repositorio'
  ClientHeight = 560
  ClientWidth = 787
  Constraints.MinHeight = 590
  Constraints.MinWidth = 795
  ExplicitLeft = 297
  ExplicitTop = 159
  ExplicitWidth = 795
  ExplicitHeight = 590
  DesignSize = (
    787
    560)
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFiltros: TPanel
    Width = 787
    Height = 121
    Visible = True
    ExplicitWidth = 950
    ExplicitHeight = 121
    DesignSize = (
      787
      121)
    object gbFiltroErrores: TGroupBox
      Left = 285
      Top = 39
      Width = 391
      Height = 40
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Errores'
      TabOrder = 2
      DesignSize = (
        391
        40)
      object cmbErrores: TDBCheckCombo
        Left = 8
        Top = 14
        Width = 375
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnChange = cmbChange
        DropDownCount = 20
        DataSource = dsErrores
        KeyField = 'COD'
        ListField = 'DESCR'
      end
    end
    object gbFiltroWarnings: TGroupBox
      Left = 285
      Top = 0
      Width = 391
      Height = 40
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Warnings'
      TabOrder = 1
      DesignSize = (
        391
        40)
      object cmbWarnings: TDBCheckCombo
        Left = 8
        Top = 14
        Width = 375
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnChange = cmbChange
        DropDownCount = 20
        DataSource = dsWarnings
        KeyField = 'COD'
        ListField = 'DESCR'
      end
    end
    object rgVerRegistros: TRadioGroup
      Left = 3
      Top = 0
      Width = 278
      Height = 79
      Caption = 'Ver Registros'
      Columns = 2
      ItemIndex = 4
      Items.Strings = (
        'Solo con Errores'
        'Solo con Warnings'
        'Con Errores o Warnings'
        'Con Errores y Warnings'
        'Todos')
      TabOrder = 0
    end
    object gbSecuencia: TGroupBox
      Left = 3
      Top = 79
      Width = 278
      Height = 40
      Caption = 'Secuencia'
      TabOrder = 3
      object lblHastaNroLote: TLabel
        Left = 132
        Top = 17
        Width = 12
        Height = 13
        Caption = '>>'
      end
      object edSecDesde: TIntEdit
        Left = 8
        Top = 13
        Width = 115
        Height = 21
        TabOrder = 0
        OnExit = edSecDesdeExit
      end
      object edSecHasta: TIntEdit
        Left = 154
        Top = 13
        Width = 115
        Height = 21
        TabOrder = 1
      end
    end
    object chkSoloNoModif: TCheckBox
      Left = 702
      Top = 89
      Width = 80
      Height = 28
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      Caption = 'Ver Solo No Modificados'
      TabOrder = 5
      WordWrap = True
    end
    object GroupBox1: TGroupBox
      Left = 285
      Top = 79
      Width = 391
      Height = 40
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Lotes'
      TabOrder = 4
      DesignSize = (
        391
        40)
      object cmbLotes: TDBCheckCombo
        Left = 8
        Top = 14
        Width = 375
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        DropDownCount = 20
        DataSource = dsLotes
        KeyField = 'LOTE'
        ListField = 'DESCRLOTE'
      end
    end
  end
  inherited CoolBar: TCoolBar
    Top = 121
    Width = 787
    Bands = <
      item
        Control = ToolBar
        ImageIndex = -1
        MinHeight = 27
        Width = 781
      end>
    ExplicitTop = 121
    ExplicitWidth = 787
    inherited ToolBar: TToolBar
      Width = 772
      ExplicitWidth = 772
      inherited ToolButton5: TToolButton
        Visible = False
      end
      inherited tbNuevo: TToolButton
        Visible = False
      end
      inherited tbEliminar: TToolButton
        Hint = 'Eliminar (Ctrl+Del)'
        DropdownMenu = pmnuEliminar
        Style = tbsDropDown
        ExplicitWidth = 38
      end
      inherited ToolButton4: TToolButton
        Left = 115
        Visible = True
        ExplicitLeft = 115
      end
      inherited tbPropiedades: TToolButton
        Left = 123
        Hint = 'Traspasar C'#243'd. Doc. Sistema (Ctrl+X)'
        Visible = True
        OnClick = tbPropiedadesClick
        ExplicitLeft = 123
      end
      inherited ToolButton3: TToolButton
        Left = 146
        ExplicitLeft = 146
      end
      inherited tbLimpiar: TToolButton
        Left = 154
        Visible = True
        ExplicitLeft = 154
      end
      inherited tbOrdenar: TToolButton
        Left = 177
        ExplicitLeft = 177
      end
      inherited tbMostrarOcultarColumnas: TToolButton
        Left = 200
        Visible = True
        ExplicitLeft = 200
      end
      inherited ToolButton6: TToolButton
        Left = 223
        ExplicitLeft = 223
      end
      inherited tbImprimir: TToolButton
        Left = 231
        ExplicitLeft = 231
      end
      inherited tbExportar: TToolButton
        Left = 254
        DropdownMenu = pmnuExportar
        Style = tbsDropDown
        ExplicitLeft = 254
        ExplicitWidth = 38
      end
      inherited tbEnviarMail: TToolButton
        Left = 292
        ExplicitLeft = 292
      end
      inherited ToolButton8: TToolButton
        Left = 315
        ExplicitLeft = 315
      end
      inherited tbMostrarFiltros: TToolButton
        Left = 323
        ExplicitLeft = 323
      end
      inherited tbMaxRegistros: TToolButton
        Left = 346
        ExplicitLeft = 346
      end
      inherited ToolButton11: TToolButton
        Left = 369
        ExplicitLeft = 369
      end
      inherited tbSalir: TToolButton
        Left = 377
        Visible = False
        ExplicitLeft = 377
      end
      object tbCargarArchivo: TToolButton
        Left = 400
        Top = 0
        Hint = 'Cargar Archivo'
        ImageIndex = 21
        OnClick = tbCargarArchivoClick
      end
      object tbReCargarDatos: TToolButton
        Left = 423
        Top = 0
        Hint = 'Re-Cargar Archivo Temporal'
        ImageIndex = 32
        OnClick = tbReCargarDatosClick
      end
      object ToolButton10: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton10'
        ImageIndex = 6
        Wrap = True
        Style = tbsSeparator
      end
      object tbRevalidarRegistro: TToolButton
        Left = 0
        Top = 30
        Hint = 'Revalidar solo Registro Seleccionado'
        Enabled = False
        ImageIndex = 13
        OnClick = tbRevalidarRegistroClick
      end
      object tbRevalidarParcial: TToolButton
        Left = 23
        Top = 30
        Hint = 'Revalidar solo Registros Actuales (en grilla)'
        Enabled = False
        ImageIndex = 52
        OnClick = tbRevalidarParcialClick
      end
      object tbRevalidar: TToolButton
        Left = 46
        Top = 30
        Hint = 'Revalidar Archivo Completo'
        Caption = '?'
        Enabled = False
        ImageIndex = 44
        OnClick = tbRevalidarClick
      end
      object tbValidarCargaCD: TToolButton
        Left = 69
        Top = 30
        Hint = 'Validar Carga CD'
        ImageIndex = 38
        OnClick = tbValidarCargaCDClick
      end
      object ToolButton9: TToolButton
        Left = 92
        Top = 30
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbImportar: TToolButton
        Left = 100
        Top = 30
        Hint = 'Importar al Repositorio / Seguimiento de Errores'
        Enabled = False
        ImageIndex = 22
        OnClick = tbImportarClick
      end
      object ToolButton13: TToolButton
        Left = 123
        Top = 30
        Width = 8
        Caption = 'ToolButton13'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbAltaSegErroresUsuarios: TToolButton
        Left = 131
        Top = 30
        Hint = 'Alta Seguimiento de Errores de Usuarios (Ctrl+U)'
        ImageIndex = 26
        OnClick = tbAltaSegErroresUsuariosClick
      end
      object tbPrepararRemito: TToolButton
        Left = 154
        Top = 30
        Hint = 'Preparar el Remito para la Administradora (Ctrl+R)'
        ImageIndex = 58
        OnClick = tbPrepararRemitoClick
      end
      object tbPrepararLote: TToolButton
        Left = 177
        Top = 30
        Hint = 'Preparar el Lote (Ctrl+P)'
        DropdownMenu = pmnuPreparaLote
        ImageIndex = 57
        Style = tbsDropDown
        OnClick = tbPrepararLoteClick
      end
      object tbConsultaCarpetas: TToolButton
        Left = 215
        Top = 30
        Hint = 'Consulta de Carpetas (Ctrl+A)'
        ImageIndex = 59
        OnClick = tbConsultaCarpetasClick
      end
      object tbDocsArchivo: TToolButton
        Left = 238
        Top = 30
        Hint = 'Mant. de Documentos por Archivo (Ctrl+D)'
        ImageIndex = 41
        OnClick = tbDocsArchivoClick
      end
      object tbCartasDoc: TToolButton
        Left = 261
        Top = 30
        Hint = 'Consulta de Cartas Doc. (Ctrl+T)'
        ImageIndex = 53
        OnClick = tbCartasDocClick
      end
      object ToolButton12: TToolButton
        Left = 284
        Top = 30
        Width = 8
        Caption = 'ToolButton12'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbVerImagen: TToolButton
        Left = 292
        Top = 30
        Hint = 'Visualizar Imagen'
        ImageIndex = 51
        OnClick = tbVerImagenClick
      end
      object ToolButton1: TToolButton
        Left = 315
        Top = 30
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbSumatoria: TToolButton
        Left = 323
        Top = 30
        Hint = 'Sumatoria'
        ImageIndex = 48
        Style = tbsCheck
        OnClick = tbSumatoriaClick
      end
      object ToolButton7: TToolButton
        Left = 346
        Top = 30
        Width = 8
        Caption = 'ToolButton7'
        ImageIndex = 7
        Style = tbsSeparator
      end
      object tbSalir2: TToolButton
        Left = 354
        Top = 30
        Hint = 'Salir (Ctrl+S)'
        ImageIndex = 5
        OnClick = tbSalirClick
      end
    end
  end
  inherited Grid: TArtDBGrid
    Top = 150
    Width = 787
    Height = 155
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = pmnuSeleccionar
    OnDrawColumnCell = GridDrawColumnCell
    OnKeyDown = nil
    MultiSelect = True
    OnPaintFooter = GridPaintFooter
    Columns = <
      item
        Expanded = False
        FieldName = 'CODARCHIVO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Archivo'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLAVE'
        Title.Alignment = taCenter
        Title.Caption = 'Clave'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Doc.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROMEDIO'
        Title.Alignment = taCenter
        Title.Caption = 'CD'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOTE'
        Title.Alignment = taCenter
        Title.Caption = 'Lote'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REMITO'
        Title.Alignment = taCenter
        Title.Caption = 'Remito'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAJAADMIN'
        Title.Alignment = taCenter
        Title.Caption = 'Caja Admin.'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PATHARCHIVO'
        Title.Caption = 'Path Archivo'
        Width = 238
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARCHIVO'
        Title.Caption = 'Archivo'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBSERVACIONES'
        Title.Caption = 'Observaciones'
        Width = 244
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NRODOCUMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nro. Carta Doc.'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOJA'
        Title.Alignment = taCenter
        Title.Caption = 'Nro. Hoja'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LEGAJO'
        Title.Alignment = taCenter
        Title.Caption = 'Legajo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NROOPERACION_GT'
        Title.Alignment = taCenter
        Title.Caption = 'Nro. Oper. Giro/Transf.'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECUENCIATRAZABIL'
        Title.Alignment = taCenter
        Title.Caption = 'Sec. Trazabilidad'
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'OK'
        Title.Alignment = taCenter
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'WARNING'
        Title.Alignment = taCenter
        Title.Caption = 'Warning'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ERROR'
        Title.Alignment = taCenter
        Title.Caption = 'Error'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'WARNINGS'
        Title.Caption = 'Warnings'
        Width = 193
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ERRORES'
        Title.Caption = 'Errores'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTWARNINGS'
        Title.Alignment = taCenter
        Title.Caption = 'Cant. Warnings'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CANTERRORES'
        Title.Alignment = taCenter
        Title.Caption = 'Cant. Errores'
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROBLEMAART'
        Title.Alignment = taCenter
        Title.Caption = 'Probl. ART'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRPROBLEMAART'
        Title.Caption = 'Descripci'#243'n Problema ART'
        Width = 293
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PROCESADO'
        Title.Alignment = taCenter
        Title.Caption = 'Modificado'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECUENCIA'
        Title.Alignment = taCenter
        Title.Caption = 'Secuencia'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDOCS_CLAVELOTE'
        Title.Caption = 'C'#243'd. Doc. Sistema'
        Width = 135
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'VALIDACIONREDUCIDA'
        Title.Alignment = taCenter
        Title.Caption = 'Validac. Reducida'
        Width = 96
        Visible = True
      end>
  end
  object gbErrores: TGroupBox [3]
    Left = 0
    Top = 460
    Width = 787
    Height = 100
    Align = alBottom
    Caption = 'Errores'
    Constraints.MinHeight = 100
    TabOrder = 4
    object edErrores: TMemo
      Left = 2
      Top = 15
      Width = 783
      Height = 83
      Align = alClient
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object gbWarnings: TGroupBox [4]
    Left = 0
    Top = 360
    Width = 787
    Height = 100
    Align = alBottom
    Caption = 'Warnings'
    Constraints.MinHeight = 100
    TabOrder = 5
    object edWarnings: TMemo
      Left = 2
      Top = 15
      Width = 783
      Height = 83
      Align = alClient
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 59110
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object jvpgProgreso: TJvProgressBar [5]
    Left = 0
    Top = 305
    Width = 787
    Height = 16
    Align = alBottom
    Step = 100
    TabOrder = 6
    Visible = False
  end
  object gbResumen: TGroupBox [6]
    Left = 0
    Top = 321
    Width = 787
    Height = 39
    Align = alBottom
    Caption = 'Resumen del Archivo'
    TabOrder = 7
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 56
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cant. Reg.:'
    end
    object Label2: TLabel
      Left = 139
      Top = 16
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total Warnings:'
    end
    object Label3: TLabel
      Left = 291
      Top = 16
      Width = 63
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total Errores:'
    end
    object lbImportar: TLabel
      Left = 623
      Top = 16
      Width = 155
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '*** ARCHIVO SIN VALIDAR ***'
      Visible = False
    end
    object Label17: TLabel
      Left = 432
      Top = 16
      Width = 97
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Cant. Reg. en Grilla:'
    end
    object edCantReg: TIntEdit
      Left = 67
      Top = 13
      Width = 68
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
      Text = '0'
    end
    object edCantWarnings: TIntEdit
      Left = 219
      Top = 13
      Width = 68
      Height = 21
      TabStop = False
      Color = 59110
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = '0'
    end
    object edCantErrores: TIntEdit
      Left = 358
      Top = 13
      Width = 68
      Height = 21
      TabStop = False
      Color = clRed
      ReadOnly = True
      TabOrder = 2
      Text = '0'
    end
    object edCantRegGrilla: TIntEdit
      Left = 533
      Top = 13
      Width = 68
      Height = 21
      TabStop = False
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
      Text = '0'
    end
  end
  inline fraFiltroArchivoImpo: TfraFiltroArchivo [7]
    Left = 270
    Top = 196
    Width = 241
    Height = 102
    VertScrollBar.Visible = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Visible = False
    ExplicitLeft = 270
    ExplicitTop = 196
    ExplicitWidth = 241
    inherited pcFormulario: TJvPageControl
      Width = 241
      Visible = False
      ExplicitWidth = 241
      inherited tsNone: TTabSheet
        ExplicitWidth = 241
      end
      inherited tsCuit: TTabSheet
        inherited fraEmpresaCUIT: TfraEmpresa
          inherited edContrato: TIntEdit
            ExplicitLeft = 422
          end
          inherited cmbRSocial: TArtComboBox
            ExplicitWidth = 242
          end
        end
      end
      inherited tsSiniestro: TTabSheet
        inherited lbRSocial: TLabel
          FocusControl = fraFiltroArchivoImpo.fraEmpresaSiniestro.cmbRSocial
        end
        inherited fraEmpresaSiniestro: TfraEmpresa
          inherited edContrato: TIntEdit
            ExplicitLeft = 413
          end
          inherited cmbRSocial: TArtComboBox
            ExplicitWidth = 232
          end
        end
        inherited fraTrabajadorSiniestro: TfraTrabajador
          inherited cmbNombre: TArtComboBox
            ExplicitWidth = 213
          end
        end
        inherited edJuicio: TEdit
          ExplicitWidth = 224
        end
        inherited ToolBarSiniestro: TToolBar
          ExplicitLeft = 495
        end
      end
      inherited tsTipoNumero: TTabSheet
        inherited fraCodDescTipo: TfraCodigoDescripcion
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 286
          end
        end
      end
      inherited tsNumero: TTabSheet
        ExplicitWidth = 1920
        ExplicitHeight = 0
        inherited edInfoAdicionalNro: TMemo
          ExplicitWidth = 469
        end
      end
      inherited tsJuicio: TTabSheet
        inherited fraJuicio: TfraArchJuicio
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 410
          end
        end
        inherited edDemandado: TEdit
          ExplicitWidth = 257
        end
      end
      inherited tsCuitEstableci: TTabSheet
        inherited fraEmpresaEmpresa: TfraEmpresa
          inherited edContrato: TIntEdit
            ExplicitLeft = 413
          end
          inherited cmbRSocial: TArtComboBox
            ExplicitWidth = 231
          end
        end
      end
      inherited tsBiblioratoNota: TTabSheet
        inherited lbCUIT: TLabel
          FocusControl = fraFiltroArchivoImpo.fraEmpresaNota.mskCUIT
        end
        inherited fraEmpresaNota: TfraEmpresa
          inherited edContrato: TIntEdit
            ExplicitLeft = 414
          end
          inherited cmbRSocial: TArtComboBox
            ExplicitWidth = 235
          end
        end
        inherited edObservaciones: TEdit
          ExplicitWidth = 472
        end
      end
      inherited tsProveedor: TTabSheet
        inherited fraProveedor: TfraProveedor
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 212
          end
        end
      end
      inherited tsEntidadVendedor: TTabSheet
        inherited fraEntidadCUIT: TfraEntidadCUIT
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 231
          end
        end
        inherited fraVendedorCUIT: TfraVendedoresCUIT
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 231
          end
        end
      end
      inherited tsVendedor: TTabSheet
        inherited fraVendedoresCUIT: TfraVendedoresCUIT
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 227
          end
        end
      end
      inherited tsTrabajador: TTabSheet
        inherited fraTrabajad: TfraTrabajador
          inherited cmbNombre: TArtComboBox
            ExplicitWidth = 388
          end
        end
      end
      inherited tsEmpresaTrab: TTabSheet
        inherited fraEmpresaTrab: TfraEmpresa
          inherited edContrato: TIntEdit
            ExplicitLeft = 413
          end
          inherited cmbRSocial: TArtComboBox
            ExplicitWidth = 231
          end
        end
        inherited fraTrabajadorTrab: TfraTrabajador
          inherited cmbNombre: TArtComboBox
            ExplicitWidth = 388
          end
        end
      end
      inherited tsExtractoBanc: TTabSheet
        inherited fraBancoExtracto: TfraStaticCodigoDescripcion
          ExplicitWidth = 1867
          inherited cmbDescripcion: TComboGrid
            ExplicitWidth = 410
            Cells = (
              'C'#243'digo'
              'Descripci'#243'n'
              'Id'
              'Fecha de Baja')
            ColWidths = (
              40
              300
              -1
              -1)
          end
        end
        inherited fraCuentaBancariaExtracto: TfraStaticCodigoDescripcion
          ExplicitWidth = 1867
          inherited cmbDescripcion: TComboGrid
            ExplicitWidth = 410
            Cells = (
              'C'#243'digo'
              'Descripci'#243'n'
              'Id'
              'Fecha de Baja')
            ColWidths = (
              40
              300
              -1
              -1)
          end
        end
      end
      inherited tsAnioPeriodo: TTabSheet
        ExplicitWidth = 526
        ExplicitHeight = 84
      end
      inherited tsCBU: TTabSheet
        inherited fraCuentaPago: TfraCodigoDescripcion
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 392
          end
        end
      end
      inherited tsPrestador: TTabSheet
        inherited fraPrestador: TfraPrestador
          inherited cmbPrestFantasia: TArtComboBox
            ExplicitWidth = 54
          end
          inherited cmbPrestador: TArtComboBox
            ExplicitWidth = 179
          end
          inherited edPresLocalidad: TEdit
            ExplicitWidth = 83
          end
          inherited edPresCPostal: TEdit
            ExplicitLeft = 454
          end
          inherited edPresTelefono: TEdit
            ExplicitLeft = 369
          end
        end
      end
      inherited tsTexto: TTabSheet
        ExplicitWidth = 526
        ExplicitHeight = 84
      end
      inherited tsTipo: TTabSheet
        inherited fraCodTipo: TfraCodigoDescripcion
          inherited cmbDescripcion: TArtComboBox
            ExplicitWidth = 404
          end
        end
      end
    end
    inherited pnSeleccionArchivo: TPanel
      Width = 241
      ExplicitWidth = 241
      DesignSize = (
        241
        24)
      inherited btnCargarCodigoBarras: TJvXPButton
        Left = 144
        ExplicitLeft = 144
      end
      inherited fraTipoArchivo: TfraCodDesc
        Width = 88
        ExplicitWidth = 88
        DesignSize = (
          88
          23)
        inherited cmbDescripcion: TArtComboBox
          Width = 23
          ExplicitWidth = 23
        end
      end
    end
    inherited ImageList: TImageList
      Bitmap = {
        494C010101009400A00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
        0000000000003600000028000000400000001000000001002000000000000010
        0000000000000000000000000000000000000000000000000000EFEFEF00CECE
        CE00CECECE00F7F7F70000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF0073635A007373
        73009C84A5007B7B7B00F7F7F700000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF006B5A5A0052BD
        FF003973CE00A58CA5007B737300F7F7F7000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00E7E7E700BDBDBD005A5A
        630052C6FF003973CE00A58CA5007B737300F7F7F70000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000AD390800CE421800E7523100F763
        4A0084525A0052C6FF003973CE00AD8CAD009C9C9C00DEDEDE00B5B5B500BDB5
        B500DEDEDE00FFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C6421000EF5A4200FF6B5A00FF7B
        6300DE6B4200847B7B0052C6FF006B84AD007B5A4A00A5736B00D6B59400E7CE
        B500A5847B00847B7B00F7F7F700000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000AD421000FF6B5200FF846300FF94
        7300E7A57300FFD6A500B55A4A009C7B7300EFB59400FFFFCE00FFFFD600FFFF
        DE00FFFFEF00E7CEC60073737300FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000DEDEDE00CE4A2100FF8C7300BD4A
        1800FFC69400FFCE9400BD522900CE9C8C00FFFFCE00FFF7BD00FFFFDE00FFFF
        EF00FFFFFF00FFFFF700AD7B7300DEDEDE000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00B5B5B5005A2100000008
        6B000821840000086B0084391800F7D6B500FFE7AD00FFEFBD00FFFFD600FFFF
        EF00FFFFEF00FFFFDE00EFD6B500ADADAD000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004242420008080800000000001039
        A5001042AD001042A50021215A00F7DEBD00FFDEAD00FFEFB500FFFFCE00FFFF
        D600FFFFDE00FFFFD600EFD6AD00A5A5A5000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000101010001818180010398C00185A
        BD00185AC600185AC600184AA500DEB59C00FFFFEF00FFEFCE00FFE7B500FFEF
        BD00FFF7BD00FFFFCE00C6948400D6D6D6000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000212121002929290018529C002173
        DE00297BE7002973DE00216BD600634A4A00FFF7EF00FFFFFF00FFE7BD00FFDE
        A500FFF7C600FFD6AD005A525200FFFFFF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000292929003939390000101800319C
        FF00319CFF00319CFF00298CF7006B7B94007B635A00D6AD9C00F7E7B500FFDE
        B500EFBDA500635A5A00EFEFEF00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000080808004A4A4A00525252001818
        1800082163001852D6001852A500CECECE00F7F7F700D6D6D600B5B5B500B5B5
        B500DEDEDE00FFFFFF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C6C6C600424242006B6B6B008C8C
        8C00BDBDBD006B6B6B0008080800F7F7F7000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00BDBDBD00181818007B7B
        7B005A5A5A0008080800DEDEDE00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000424D3E000000000000003E000000
        2800000040000000100000000100010000000000800000000000000000000000
        000000000000000000000000FFFFFF00C3FF00000000000081FF000000000000
        80FF000000000000007F00000000000000030000000000000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000000000003000000000000
        00FF00000000000001FF00000000000000000000000000000000000000000000
        000000000000}
    end
  end
  object pnlColores: TPanel [8]
    Left = 680
    Top = 4
    Width = 105
    Height = 75
    Anchors = [akTop, akRight]
    TabOrder = 9
    object Label4: TLabel
      Left = 24
      Top = 6
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'OK'
    end
    object shpOK: TShape
      Left = 5
      Top = 5
      Width = 15
      Height = 15
      Brush.Color = clRed
    end
    object shpError: TShape
      Left = 5
      Top = 56
      Width = 15
      Height = 15
      Brush.Color = clRed
    end
    object label10: TLabel
      Left = 24
      Top = 57
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'Error'
    end
    object shpWarning: TShape
      Left = 5
      Top = 22
      Width = 15
      Height = 15
      Brush.Color = clRed
    end
    object label11: TLabel
      Left = 24
      Top = 23
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'Warning'
    end
    object shpErrWarn: TShape
      Left = 5
      Top = 39
      Width = 15
      Height = 15
      Brush.Color = clRed
    end
    object label12: TLabel
      Left = 24
      Top = 40
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'Warning y Error '
    end
  end
  object fpImagen: TFormPanel [9]
    Left = 600
    Top = 584
    Width = 700
    Height = 500
    Caption = 'Visualizar Imagen'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = [biSystemMenu, biMaximize]
    Position = poScreenCenter
    OnShow = fpImagenShow
    Constraints.MinHeight = 500
    Constraints.MinWidth = 700
    inline fraVistaTIFFImg: TfraVistaTIFF
      Left = 0
      Top = 0
      Width = 700
      Height = 500
      Align = alClient
      Constraints.MinWidth = 670
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 700
      ExplicitHeight = 500
      inherited sbScrollBox: TJvScrollBox
        Width = 664
        Height = 403
        ExplicitWidth = 664
        ExplicitHeight = 403
      end
      inherited CoolBar: TCoolBar
        Width = 700
        Bands = <
          item
            Control = fraVistaTIFFImg.tbToolBar
            ImageIndex = -1
            MinHeight = 26
            Width = 694
          end>
        ExplicitWidth = 700
        inherited tbToolBar: TToolBar
          Width = 685
          ExplicitWidth = 685
          inherited tbMaxMinimizar: TToolButton
            OnClick = fraVistaTIFFImgtbMaxMinimizarClick
          end
        end
      end
      inherited pnlImgStatus: TPanel
        Top = 433
        Width = 700
        ExplicitTop = 433
        ExplicitWidth = 700
        DesignSize = (
          700
          48)
        inherited Label1: TLabel
          Left = 638
          ExplicitLeft = 638
        end
        inherited Label2: TLabel
          Left = 627
          ExplicitLeft = 627
        end
        inherited edWidth: TIntEdit
          Left = 659
          ExplicitLeft = 659
        end
        inherited edHeight: TIntEdit
          Left = 659
          ExplicitLeft = 659
        end
        inherited btnOriginal: TAdvGlowButton
          Left = 542
          ExplicitLeft = 542
        end
      end
      inherited pnlStatus: TPanel
        Top = 481
        Width = 700
        ExplicitTop = 481
        ExplicitWidth = 700
      end
      inherited pnlLeft: TPanel
        Height = 403
        ExplicitHeight = 403
        inherited CoolBarLeft: TCoolBar
          Height = 399
          Bands = <
            item
              Control = fraVistaTIFFImg.tbToolBarLeft
              ImageIndex = -1
              MinHeight = 30
              Width = 393
            end>
          ExplicitHeight = 399
        end
      end
      inherited imglIconos: TImageList
        Bitmap = {
          494C010107007800840020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          0000000000003600000028000000800000004000000001002000000000000080
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00F7F7F700F7F7F700FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00EFEFEF00D6D6D600D6D6D600EFEFEF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00EFEFEF00CECECE00399C6B00008C4A00EFEFEF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00EFEFEF00CECECE00399C6B0000C68400008C4A00DEDEDE00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00F7F7F700FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF00EFEF
          EF00CECECE00399C6B0000BD840000E7A500008C4A00B5B5B500BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00C6C6C600D6D6D600E7E7E700F7F7F700FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00EFEFEF00CECE
          CE00399C6B0000BD840000DEA50000DEA5000084420000844200008C4200008C
          4200008C4200008C4200008C4200008C4200008C4200008C4200008C4200008C
          4200218C5A004A9C7300B5BDB500CECECE00E7E7E700F7F7F700FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F7F7F700D6D6D600399C
          6B0000BD840000D6A50000D69C0000D69C0000DEA50000DEA50000DEA50000DE
          A50000DEA50000DEA50000DEA50000DEA50000DEA50008DEA50008DEA50008DE
          A50008CE8C0000AD7300008C4A0039946B00B5BDBD00DEDEDE00F7F7F700FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000EFEFEF00399C730000B5
          840000D69C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE
          9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000D69C0000D69C0000D6
          9C0008D6A50010DEAD0010D6A50008B57B00008C42008CAD9C00DEDEDE00F7F7
          F700FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F7F7F700008C4A0029DE
          BD0000CEA50000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE
          9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE
          9C0000CE9C0000CE9C0008CEA50018D6AD0010CE9C00008C4A007BAD9400DEDE
          DE00F7F7F7000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00219C630000B5
          840063DEC60000C69C0000C69C0000C69C0000C69C0000C69C0000C69C0000C6
          9C0000C69C0000C69C0000C69C0000C69C0000C69C0000C69C0000C69C0000C6
          9C0000C69C0000C69C0000C69C0000C69C0021D6AD0021CEA500008C4A008CB5
          A500E7E7E700FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018AD630000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF0052AD
          7B0000AD7B0063DEC60000BD940094E7D6004AE7D60052EFD60052EFD60052EF
          D60052EFD60052EFD60052EFD60052EFD6004AEFD6009CEFDE0094EFDE008CE7
          D6005AD6C60000C69C0000BD9C0000BD9C0000C69C0029CEB50021C6A500008C
          4200C6CEC600F7F7F70000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000021BD730018AD6300000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF0052AD7B0000AD7B005ADEC60084E7D6000084390000844200008442000084
          42000084420000844200008442000084420000844200008C4A00189C6B0029B5
          840063DEC60084E7D60029CEAD0000BD9C0000C69C0000C69C0039D6B50018AD
          8400429C7300E7E7E700FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000029CE840029CE840018AD63000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000018AD630018AD
          630018AD630018AD630018AD630018AD630018AD630018AD630018AD630018AD
          630018AD63000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF0052AD7B0000AD7B007BE7DE00008C4200EFEFEF00000000000000
          000000000000000000000000000000000000FFFFFF00CEE7D600CEE7DE006BB5
          9400008C4A0029BD94007BE7D60029CEAD0000C69C0000C69C0018CEAD0039D6
          B500008C4A00CECECE00F7F7F700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000029CE840029CE840029BD7B0018AD630000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000021BD
          730029CE840029CE840018C6730021C67B0029CE84004AD69C004ADEA50031BD
          840018AD63000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF0052AD7B0000AD8400008C4A00EFEFEF00000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00DEEFE70018945A0029BD940073E7CE0000CE9C0000C69C0000C69C004ADE
          BD0018AD7B0052A57B00EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010C66B0010C66B0031CE8C0039D6940018AD6300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000018AD630029CE840029CE840018C6730031CE8C0042D6940029BD7B000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF004AAD7B00008C4A00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00D6E7DE00008C4A0052DEBD0039DEB50000CE9C0000CE9C0039DE
          B50039CEA50021945A00EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010C66B0010C66B0029CE840031CE8C0029BD7B0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000021BD730029CE840029CE840031CE8C0029BD7B0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF0063AD840021B584005AE7C60000CE940000CE9C0021D6
          AD0063E7CE0000844200EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000010BD630029CE840029CE840021BD730000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018AD630029CE840021BD730000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00BDD6C600109C630063E7CE0000CE9C0000CE9C0010D6
          A5006BEFCE0000844200EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000021BD730029C67B0021BD730018AD630000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000021BD730018AD630000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00B5CEBD00109C63005AE7C60000D69C0000D69C0010D6
          A50073EFD60000844200EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000021BD6B0021B56B00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00F7F7F700ADC6B50010A5630052EFC60000D69C0000D69C0010DE
          A5007BF7D60000844200EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018B56B0018AD6300000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00DEDEDE00529C7B0029B5840042E7BD0000D69C0000D6940031E7
          B50084F7DE0000844200EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F7F7
          F700DEDEDE00ADBDB500008C4A0042E7B50021E7AD0000D69C0000D694005AEF
          C6006BDEB50018945200F7F7F700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700DEDEDE00CECE
          CE00A5B5AD00108C520029CE940031E7B50000DE9C0000DE940000DE9C0094F7
          DE0039BD84005AAD8C00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000F7F7F700D6D6D600C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0094B5A50094ADA5004A9C
          7300008C4A0018C68C0031E7B50008DEA50000DE940000DE940042E7B5008CF7
          D600008C4A00E7EFEF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EFEFEF00399C6B00008C4A00008C4200008C4200008C4200008C4200008C
          4200008C4200008C4200008C4200008C4200008C420008945200009C630008B5
          7B0021D6A50029E7AD0008DEA50000D69C0000D6940008D6A50094F7DE0042BD
          94004AAD7B00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EFEFEF00008C4A0039E7BD0000DEA50000DEA50000DEA50000DEA50000DE
          A50000DEA50000DEA50000DEA50000DEA50000DEA50021DEB50021DEAD0021DE
          AD0010D6A50000CE9C0000CE9C0000CE940000CE9C008CEFD6007BDEC6000084
          4200EFF7EF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EFEFEF00008C420052E7C60000CE9C0000CE9C0000CE9C0000CE9C0000CE
          9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE9C0000CE
          9C0000CE9C0000CE9C0000C69C0008CEA5008CEFD6008CEFD600008C4A009CCE
          B500FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EFEFEF00008442006BE7CE0000C69C0000C69C0000C69C0000C69C0000C6
          9C0000C69C0000C69C0000C69C0000C69C0000C69C0000C69C0000C69C0000C6
          9C0000C6940000C69C0042D6B50094EFDE007BDEC600008C4A009CCEB500FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EFEFEF00008C420084E7DE0000C6A50000C6A50000C6A50000C6A50000C6
          A50000C6A50000C6A50000C6A50000C6A50000C6A50018C6AD0018C6A50039CE
          B50052D6C60094E7DE008CE7D60042BD940000844200B5DEC600FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000F7F7F700008C42009CEFE7004AE7D60052E7D60052E7D60052E7D60052E7
          D60052E7D60052E7D60052E7D60052E7D6004AE7D6009CE7E7009CE7E7009CE7
          E7006BCEBD0039B58400008C4A0052AD8400EFF7F70000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF004AAD7B00008C4200008C42000084420000844200008442000084
          420000844200008442000084420000844200008442000084420000844200008C
          420018945A0063B58C00F7F7F700000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00F7F7F700EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00F7F7F700FFFFFF00F7F7F700E7E7E700D6D6D600D6D6
          D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
          D600D6D6D600DEDEDE00E7E7E700DEDEDE00DEDEDE00E7E7E700DEDEDE00D6D6
          D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
          D600D6D6D600D6D6D600E7E7E700F7F7F7000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F7F7F700D6D6D600BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00D6D6D600E7E7E700D6D6D600C6C6C600BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00D6D6D600F7F7F700E7E7E700ADADAD008C8C8C008C8C
          8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
          8C008C8C8C009C9C9C00A5A5A5009C9C9C009C9C9C00A5A5A5009C9C9C008C8C
          8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C8C008C8C
          8C008C8C8C008C8C8C00ADADAD00E7E7E7000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000EFEFEF00BD8C5A00B57B4200B57B
          3900B5733900B5733900B5733900B5733900B5733900B5733900B5733900B57B
          3900B57B3900B5845200D6D6D600C6A57B00C6945200C6945200C6945200C694
          5200C6945200C6945200C6945200C6945200C6945200C6945200C6945200C694
          5200C6945200C6945A00C6A57B00EFEFEF00DEDEDE00C6945A00C6945A00C694
          5200C6945200C6945200C6945200C6945200C6945200C6945200C6945200C694
          5200C6945200C6945200C6945200C6945200C6945A00A57B4200AD7B4200B57B
          3900B57B3900B5733900B5733900B5733900B5733900B5733900B5733900B573
          3900B57B3900B57B4200B57B4A00DEDEDE000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F7F7F700B57B4200FFF7E700FFF7
          E700FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7
          DE00FFFFE700B57B3900D6D6D600C6945A00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6945A00F7F7F700EFEFEF00C6945A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6945A00D6D6D600B57B3900FFFF
          E700FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7DE00FFF7
          DE00FFF7E700FFF7E700B57B4200EFEFEF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00CEAD9400DEB58C00FFEF
          D600FFEFD600FFE7D600FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFEF
          D600FFF7DE00B5733900D6D6D600C6945200FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00F7EFE700CEA56B00D6BD9400FFFFFF00FFFFFF00C69C6B00CEA56B00F7EF
          E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6945200D6D6D600B5733900FFF7
          DE00FFEFD600FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7D600FFEF
          D600FFEFD600DEB58C00BD946300FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000EFEFEF00BD845200FFEF
          DE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7
          CE00FFF7DE00AD733900D6D6D600C6945200FFFFFF00FFFFF700FFF7F700FFF7
          F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFFFF700FFFFFF00E7CE
          B500C6945200EFE7DE00FFFFFF000000000000000000EFEFEF00BD845200C694
          5200E7CEB500FFFFFF00FFFFF700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
          F700FFF7F700FFF7F700FFFFF700FFFFFF00C6945200CECEC600AD733900FFF7
          DE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7CE00FFE7
          CE00FFEFDE00BD845200EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00C69C7300E7C6
          A500FFE7CE00F7E7C600F7E7C600F7E7C600F7E7C600F7E7C600F7E7C600FFE7
          C600FFF7DE00AD733900D6D6D600C6945200FFFFFF00FFF7E700FFF7E700FFF7
          E700FFF7E700FFF7E700FFF7E700FFF7E700FFFFFF00FFFFFF00D6AD8400CEAD
          7B00FFFFFF00000000000000000000000000000000000000000000000000DEC6
          9C00CEA57300D6AD8400FFFFFF00FFFFFF00FFF7E700FFF7E700FFF7E700FFF7
          E700FFF7E700FFF7E700FFF7E700FFFFFF00C6945200CECEBD00AD733900FFF7
          DE00FFE7C600F7E7C600F7E7C600F7E7C600F7E7C600F7E7C600F7E7C600FFE7
          CE00E7C6A500C69C7300FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00E7D6CE00C694
          6300FFEFD600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DE
          C600FFF7DE00AD733900D6D6D600C6945200FFFFFF00F7EFDE00F7EFDE00F7EF
          DE00F7EFDE00F7EFDE00F7F7E700FFFFFF00F7E7D600CE9C5A00DECEB500FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000FFEFD600DEBD9400CE9C5A00F7E7D600FFFFFF00F7F7E700F7EFDE00F7EF
          DE00F7EFDE00F7EFDE00F7EFDE00FFFFFF00C6945200CEC6B500AD733900FFF7
          DE00F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600F7DEC600FFEF
          D600C6946300E7D6CE00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000F7F7F700B584
          4A00F7DEC600F7DEC600F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
          BD00FFF7DE00AD733900D6D6D600C6945200FFFFFF00F7EFD600F7EFD600F7EF
          D600F7EFD600F7F7E700FFFFFF00E7C6A500CE9C6300F7EFE700FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F7DEC600EFCEAD00C69C5A00E7C6A500FFFFFF00F7F7E700F7EF
          D600F7EFD600F7EFD600F7EFD600FFFFFF00C6945200C6BDAD00AD733900FFF7
          DE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEC600F7DE
          C600B5844A00F7F7F70000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF00D6C6
          AD00D6A57B00FFE7CE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DE
          BD00FFF7DE00AD733900D6D6D600C6945200FFFFFF00EFE7CE00EFE7CE00EFE7
          CE00FFF7EF00FFFFFF00CEAD7300D6BD9C00FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000EFD6BD00D6AD7B00CEAD7300FFFFFF00FFF7
          E700EFE7CE00EFE7CE00EFE7CE00FFFFFF00C6945200C6BDA500AD733900FFF7
          DE00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00F7DEBD00FFE7CE00D6A5
          7B00D6C6AD00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000F7F7
          F700B5733900FFEFD600F7DEB500F7D6B500F7D6B500F7D6B500F7D6B500F7D6
          B500FFF7DE00AD733900D6D6D600C6945200FFFFFF00EFDEBD00EFE7C600FFFF
          FF00EFDECE00CE9C6300EFE7DE00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F7D6B500E7C6A500CE9C6300EFDE
          CE00FFFFFF00EFE7C600EFDEBD00FFFFFF00C6945200C6B59C00AD733900FFF7
          DE00F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500F7DEB500FFEFD600B573
          3900F7F7F7000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000018AD630018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00CEAD9400DEB58C00FFE7C600F7D6B500F7D6B500F7D6B500F7D6B500F7D6
          B500FFF7E700AD733900D6D6D600C6945200FFFFFF00EFE7C600FFFFFF00DEC6
          9C00CEAD7B00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EFD6AD00CEA5
          6B00DEC69C00FFFFFF00EFE7C600FFFFFF00C6945200C6BDA500AD733900FFF7
          E700F7D6B500F7D6B500F7D6B500F7D6B500F7D6B500FFE7C600DEB58C00CEAD
          9400FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031C6840018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EFEFEF00BD845200FFF7DE00EFD6AD00EFD6AD00EFD6AD00EFD6AD00EFD6
          AD00FFF7E700AD733900DEDEDE00C6945A00FFFFFF00FFF7F700D6AD7B00DECE
          B500FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000EFD6
          AD00DEC6A500D6AD7B00FFFFF700FFFFFF00C6945A00D6D6D600AD733900FFF7
          E700EFD6AD00EFD6AD00EFD6AD00EFD6AD00EFD6AD00FFF7DE00BD845200EFEF
          EF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000018AD63000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000018AD630029BD7B005ADEAD0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00C69C7300E7C6A500F7DEBD00EFD6AD00EFD6AD00EFD6AD00EFCE
          AD00FFF7E700B5733900E7E7E700D6B58C00C6945A00CE9C6300F7EFE700FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFF7DE00AD733900C69C6300C6945A00C69C5A00B58C5A00B5733900FFF7
          E700EFCEAD00EFD6AD00EFD6AD00EFD6AD00F7DEBD00E7C6A500C69C7300FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000029BD730018AD630000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000029BD7B0042D69C0052DEAD0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFF00E7D6CE00C6946300FFEFD600EFCEA500EFCEA500EFCEA500EFCE
          A500FFF7E700B5733900EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000EFEFEF00B5733900FFF7
          E700EFCEA500EFCEA500EFCEA500EFCEA500FFEFD600C6946300E7D6CE00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018AD630021BD730031CE8C0031CE8C0018AD6300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000018AD630021BD730031CE8C0039D6940039CE940018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000F7F7F700B5844A00F7DEC600F7D6AD00EFCEA500EFCEA500EFCE
          9C00FFF7E700B5733900EFEFEF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000EFEFEF00B5733900FFF7
          E700EFCE9C00EFCEA500EFCEA500F7D6AD00F7DEC600B5844A00F7F7F7000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000021BD730029CE840029CE840031CE8C0029BD7B0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000021BD730029CE840029CE840021CE7B0031CE8C0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00D6C6AD00D6A57B00FFEFD600EFC69C00EFCE9C00EFC6
          9C00FFF7E700B57B3900EFEFEF00000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00F7F7F700EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00FFFFFF00FFFFFF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00CEBDAD00CEA57B000000000000000000000000000000
          00000000000000000000000000000000000000000000EFEFEF00B57B3900FFF7
          E700EFC69C00EFCE9C00EFC69C00FFEFD600D6A57B00D6BDAD00EFEFEF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000018AD
          630021B56B0029CE840029CE840010C66B0018C6730031CE8C0039D6940018AD
          6300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018AD630029CE840029CE840029CE840018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000F7F7F700B5733900FFEFDE00EFCEAD00E7C69C00E7C6
          9C00FFF7E700B57B3900EFEFEF00000000000000000000000000FFFFFF00F7F7
          F700F7F7F700FFFFFF000000000000000000FFFFFF00E7E7E700CECECE00BDBD
          BD00BDBDBD00BDBDBD00CECECE00EFEFEF00EFEFEF00CECECE00BDBDBD00BDBD
          BD00BDBDBD00CECECE00DEDEDE00AD7339000000000000000000E7C69400DEBD
          8C00F7EFD600AD733900000000000000000000000000EFEFEF00B57B3900FFF7
          E700E7C69C00E7C69C00EFCEAD00FFEFDE00B5733900DEDEDE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000021B5
          6B0021C6730029CE840010C66B0010C66B0010C66B0031CE8C0039CE8C0029BD
          7B0018AD63000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000021BD730029CE840039D6940018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00CEAD9400DEB59400FFE7C600E7C69400E7C6
          9400FFF7E700B57B3900EFEFEF000000000000000000FFFFFF00EFEFEF00D6D6
          D600CECECE00EFEFEF000000000000000000F7F7F700A5C6B500008C4A00008C
          4A0000844200008C4A0008945200EFEFEF00EFEFEF0008945200008C4A000084
          4200008C4A00008C4A00A5C6B500C6AD8C000000000000000000D6B58C00BD9C
          7B00D6C6BD00A56B3900E7E7E7000000000000000000E7E7E700B57B3900FFF7
          E700E7C69400E7C69400FFE7C600DEB59400CEAD8C00A5C6B500000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000018AD630031CE8C0018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000EFEFEF00BD8C5200FFF7E700E7C69400E7BD
          8C00FFF7E700B57B3900EFEFEF0000000000FFFFFF00EFEFEF00CECECE00399C
          6B00008C4A00EFEFEF00FFFFFF00F7F7F700E7E7E7007BAD9C0000A5630000E7
          A50000E7A50010EFB500008C4A00EFEFEF00EFEFEF00008C4A0010EFB50000E7
          A50000E7A50000A563007BAD9C00D6D6CE00B5844A00FFF7DE00D6B58C00008C
          4A00399463008C633100D6D6D600FFFFFF0000000000D6D6D600B57B3900FFF7
          E700E7BD8C00E7C69400FFF7E700BD8C5200D6D6CE0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000021BD730018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00C69C7300E7C6A500F7DEBD00E7BD
          8400FFF7E700B57B3900EFEFEF00FFFFFF00EFEFEF00CECECE00399C6B0000C6
          8400008C4A00D6D6D600E7E7E700D6D6D600C6C6C600088C4A0000CE8C0000DE
          9C0008DEA50031E7B500008C4200F7F7F700F7F7F700008C420031E7B50008DE
          A50000DE9C0000CE8C00088C4A00BDBDBD00A5846300CEAD9400CEBDA500008C
          4A0000C6840029733900BDBDBD00EFEFEF00EFEFEF00BDBDBD00B57B3900FFF7
          E700E7BD8400F7DEBD00E7C6A500B5946B00BDBDBD0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000018AD63000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00E7D6CE00C6946300FFF7E700E7BD
          8C00FFF7E700B57B3900E7E7E700EFEFEF00CECECE00399C6B0000BD840000E7
          A500008C4200B5B5B50094ADA50073A58C00088C4A0000A5630000DE9C0000D6
          9C0031E7B50039CE9C004AA57B00FFFFFF00FFFFFF004AA57B0039CE9C0031E7
          B50000D69C0000DE9C0000A56300088C4A006B94730073734A00B5ADA500008C
          420000E7A50000BD840039946300BDBDBD00BDBDBD00398C6300B57B3900FFF7
          E700E7BD8C00FFF7E700C69463007B947300088C4A0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000F7F7F700B5845200F7DEC600F7DE
          B500FFF7E700BD7B3900DEDEDE00D6D6D600399C6B0000BD840000D6A50000D6
          A5000084420000844200008C4A0000A56B0000C68C0000D69C0000D69C0008D6
          A50073EFCE00189C6300D6E7DE00FFFFFF00FFFFFF00D6E7DE00189C630073EF
          CE0008D6A50000D69C0000D69C0000C68C0000A56B00008C4A00008442000084
          420000D6A50000D6A50000BD8400318C6300317B5A0000A56B00B57B3900FFF7
          E700F7DEB500F7DEC6009C7B3900009C63000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00DEC6B500D6AD7B00FFF7
          E700FFFFEF00C67B4200DEDEDE00429C730000BD840000D69C0000CE9C0000CE
          9C0000D69C0000D6A50000D69C0000CE9C0000CE9C0000CE9C0018D6AD008CEF
          D60052BD8C0073BD9400FFFFFF000000000000000000FFFFFF0073BD940052BD
          8C008CEFD60018D6AD0000CE9C0000CE9C0000CE9C0000D69C0000D6A50000D6
          9C0000CE9C0000CE9C0000D69C0000BD8400008C520000B58C00B57B4200FFFF
          EF00FFF7E700D6AD7B0042AD730000CE9C000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00C69C6B00B57B
          3900B57B4200D69C7300EFEFEF00008C420063E7CE0000CE9C0000C69C0000C6
          9C0000CEA50000CEA50000CEA50018CEAD0021D6AD005ADEC6009CEFDE005ABD
          940052AD7B00FFFFFF0000000000000000000000000000000000FFFFFF0052AD
          84005ABD8C009CEFDE005ADEC60021D6AD0018CEAD0000CEA50000CEA50000CE
          A50000C69C0000C69C0000CE9C0063E7CE00008C4A0000BD94008C8C5A00B57B
          4200B57B39008C8C5A0000CEA500000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF004AAD7B0000B5840063DEC60000C6940094E7
          D6004AEFD60052EFD6004AEFD6009CEFE7009CEFD60063C69C00299C63008CC6
          AD00FFFFFF00000000000000000000000000000000000000000000000000FFFF
          FF008CC6AD00299C630063C69C009CEFD6009CEFE7004AEFD60052EFD6004AEF
          D60094E7D60000C6940063DEC60000B58400009452005ADEC600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF0052AD7B0000AD7B005ADEC60084E7
          D60000843900008442000084420000844200189452007BBD9C00FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF007BBD9C00189452000084420000844200008442000084
          390084E7D6005ADEC60000AD7B0052AD7B0052AD7B0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF0052AD7B0000AD7B007BE7
          DE00008C4200EFEFEF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EFEFEF00008C
          42007BE7DE0000AD7B0052AD7B00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF0052AD7B0000AD
          8400008C4A00EFEFEF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000EFEFEF00008C
          4A0000AD840052AD7B00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF004AAD
          7B00008C4A00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF00008C
          4A004AAD7B00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000424D3E000000000000003E000000
          2800000080000000400000000100010000000000000400000000000000000000
          000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
          FFFFFFFFFFFFFFFFFC3FFFFF00000000FFFFFFFFFFFFFFFFF83FFFFF00000000
          FFFFFFFFFFFFFFFFF03FFFFF00000000FFFFFFFFFFFFFFFFE00001FF00000000
          FFFFFFFFFFFFFFFFC000007F00000000FFFFFFFFFFFFFFFF8000001F00000000
          FFFFFFFFFFFFFFFF8000000F00000000FFFFFFFFFFFFFFFF8000000700000000
          FFFFFFFFFFFFFFFF8000000700000000FFFFFFFFFFFFFFFF8000000300000000
          FFFBFFFFFFFFFFFFC000000300000000FFF9FFFFFFFFFFFFE000000100000000
          FFF8FFFFFFC007FFF03F000100000000FFF87FFFFFE007FFF83FE00100000000
          FFF83FFFFFF01FFFFC3FF00100000000FFF81FFFFFF81FFFFFFFF80100000000
          FFF87FFFFFFC7FFFFFFFF80100000000FFF87FFFFFFE7FFFFFFFF80100000000
          FFF9FFFFFFFFFFFFFFFFF00100000000FFF9FFFFFFFFFFFFFFFFE00100000000
          FFFFFFFFFFFFFFFFFFFF000100000000FFFFFFFFFFFFFFFFF000000100000000
          FFFFFFFFFFFFFFFFF000000300000000FFFFFFFFFFFFFFFFF000000300000000
          FFFFFFFFFFFFFFFFF000000700000000FFFFFFFFFFFFFFFFF000000700000000
          FFFFFFFFFFFFFFFFF000000F00000000FFFFFFFFFFFFFFFFF000001F00000000
          FFFFFFFFFFFFFFFFF000007F00000000FFFFFFFFFFFFFFFFF00001FF00000000
          FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF
          0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF
          0000000000000000FFFFFFFFFFFFFFFF8000000180000001FFFFFFFFFFFFFFFF
          80000007E0000001FFFFFFFFFFFFFFFF8000000FF0000001FFFFFFFFFFFFFFFF
          C000001FF8000003FFFFFFFFFFFFFFFFC000007FFE000003FFFFFFFFFFFFFFFF
          E00000FFFF000007FFFFFFFFFFFF9FFFE00003FFFFC00007FFFFFFFFFFFF9FFF
          F00007FFFFE0000FFFFEFFFFFFFE1FFFF0000FFFFFF0000FFFFE7FFFFFFE1FFF
          F001FFFFFFFF800FFFF83FFFFFF81FFFF801FFFFFFFF801FFFF81FFFFFF81FFF
          F801FF0000FF801FFFE00FFFFFFC1FFFFC01C30000C3803FFFE007FFFFFE1FFF
          FC01830000C1803FFFFFFFFFFFFF1FFFFE0100000000807FFFFFFFFFFFFF9FFF
          FE0000000000007FFFFFFFFFFFFFDFFFFE0000000000007FFFFFFFFFFFFFFFFF
          FF000000000000FFFFFFFFFFFFFFFFFFFF000001800000FFFFFFFFFFFFFFFFFF
          FF800003C00001FFFFFFFFFFFFFFFFFFFFFC0007E0003FFFFFFFFFFFFFFFFFFF
          FFFE001FF8007FFFFFFFFFFFFFFFFFFFFFFF03FFFFC0FFFFFFFFFFFFFFFFFFFF
          FFFF83FFFFC1FFFFFFFFFFFFFFFFFFFFFFFFC3FFFFC3FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
          000000000000}
      end
      inherited imgIconsColor: TImageList
        Bitmap = {
          494C010104007800840010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          0000000000003600000028000000400000002000000001002000000000000020
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A005A5A5A0084848400B5B5B500B5B5B500B5B5B500CECECE00CECECE00CECE
          CE00CECECE00CECECE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A005A5A5A0073737300B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005A5A
          5A0073737300B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600CECECE00DEDE
          DE00B5B5B5000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C9C9C009C9C9C0000000000000000000000
          0000000000000000000000000000000000000000000000000000C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600B5B5B500B5B5B500B5B5B500737373005A5A
          5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
          00008484840084848400B5B5B500C6C6C600C6C6C600CECECE00DEDEDE009C9C
          9C00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000949494009C9C9C00DEDEDE009C9C9C00000000000000
          000000000000000000000000000000000000000000000000000000000000B5B5
          B500DEDEDE00CECECE00C6C6C600C6C6C600B5B5B500B5B5B500B5B5B5007373
          73005A5A5A000000000000000000000000000000000000000000000000000000
          0000000000008484840084848400C6C6C600CECECE00DEDEDE009C9C9C000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C9C9C009C9C9C0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840084848400C6C6C600CECECE00DEDEDE009C9C9C000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009C9C9C00DEDEDE00CECECE00C6C6C600C6C6C600B5B5B500848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          00000000000000000000949494009C9C9C00DEDEDE009C9C9C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000949494009C9C9C00DEDEDE009C9C9C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008484840084848400B5B5B500C6C6C600C6C6C600CECECE00DEDEDE009C9C
          9C00000000000000000000000000000000000000000000000000000000000000
          0000000000009C9C9C00DEDEDE00CECECE00C6C6C60084848400848484000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C9C9C009C9C9C0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840084848400C6C6C600CECECE00DEDEDE009C9C9C000000
          0000000000000000000000000000000000000000000000000000000000005A5A
          5A0073737300B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600CECECE00DEDE
          DE00B5B5B5000000000000000000000000000000000000000000000000000000
          000000000000000000009C9C9C00DEDEDE009C9C9C0094949400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008484840084848400B5B5B500C6C6C600C6C6C600CECECE00DEDEDE009C9C
          9C000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A005A5A5A0073737300B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
          00000000000000000000000000009C9C9C009C9C9C0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005A5A
          5A0073737300B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600CECECE00DEDE
          DE00B5B5B5000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A005A5A5A0073737300B5B5B500B5B5B500B5B5B500C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A005A5A5A0084848400B5B5B500B5B5B500B5B5B500CECECE00CECECE00CECE
          CE00CECECE00CECECE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000424D3E000000000000003E000000
          2800000040000000200000000100010000000000000100000000000000000000
          000000000000000000000000FFFFFF0000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8001FFFFFFFF80018001FFFFFFFF80018001FE7F8001C003FFFFFC3F8001E007
          FE7FF81FC003F00FFC3FF00FE007F81FF81FE007F00FFC3FF00FC003F81FFE7F
          E0078001FC3FFFFFC0038001FE7F80018001FFFFFFFF80018001FFFFFFFF8001
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
          000000000000}
      end
      inherited imgIconsByN: TImageList
        Bitmap = {
          494C010104007800840010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          0000000000003600000028000000400000002000000001002000000000000020
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF630000FF63
          0000FF630000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFCE
          3100FFCE3100FFCE310000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF630000FF63
          0000FF630000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFCE
          3100FFCE3100FFCE310000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF63
          0000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFFF9C00FFFF
          CE00FF9C63000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF633100FF63310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF630000FF633100FF9C3100FFCE3100FFCE3100FFFF9C00FFFFCE00FF63
          3100000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF630000FF633100FFFFCE00FF633100000000000000
          0000000000000000000000000000000000000000000000000000FF630000FF63
          0000FF630000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFCE
          3100FFCE3100FFCE310000000000000000000000000000000000000000000000
          000000000000FF630000FF633100FFCE3100FFFF9C00FFFFCE00FF6331000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF633100FF63310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF630000FF633100FFCE3100FFFF9C00FFFFCE00FF6331000000
          000000000000000000000000000000000000000000000000000000000000FF63
          0000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFFF9C00FFFF
          CE00FF9C63000000000000000000000000000000000000000000000000000000
          00000000000000000000FF630000FF633100FFFFCE00FF633100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF630000FF633100FFFFCE00FF633100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF630000FF633100FF9C3100FFCE3100FFCE3100FFFF9C00FFFFCE00FF63
          3100000000000000000000000000000000000000000000000000000000000000
          0000FF630000FF633100FF9C3100FFCE3100FFCE3100FFFF9C00FFFFCE00FF63
          3100000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF633100FF63310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF630000FF633100FFCE3100FFFF9C00FFFFCE00FF6331000000
          000000000000000000000000000000000000000000000000000000000000FF63
          0000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFFF9C00FFFF
          CE00FF9C63000000000000000000000000000000000000000000000000000000
          000000000000FF630000FF633100FFCE3100FFFF9C00FFFFCE00FF6331000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF630000FF633100FF9C3100FFCE3100FFCE3100FFFF9C00FFFFCE00FF63
          3100000000000000000000000000000000000000000000000000FF630000FF63
          0000FF630000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFCE
          3100FFCE3100FFCE310000000000000000000000000000000000000000000000
          00000000000000000000FF630000FF633100FFFFCE00FF633100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF63
          0000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFFF9C00FFFF
          CE00FF9C63000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF633100FF63310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF630000FF63
          0000FF630000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFCE
          3100FFCE3100FFCE310000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000FF630000FF63
          0000FF630000FF633100FF9C3100FF9C3100FF9C3100FFCE3100FFCE3100FFCE
          3100FFCE3100FFCE310000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000424D3E000000000000003E000000
          2800000040000000200000000100010000000000000100000000000000000000
          000000000000000000000000FFFFFF0000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          8001FFFFFFFF80018001FFFFFFFF80018001FE7FFFFFC003FFFFFC3F8001E007
          FE7FF81F8001F00FFC3FF00FC003F81FF81FE007E007FC3FF00FC003F00FFE7F
          E0078001F81FFFFFC0038001FC3F80018001FFFFFE7F80018001FFFFFFFF8001
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
          000000000000}
      end
      inherited ilByN: TImageList
        Bitmap = {
          494C01013B007800840010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          000000000000360000002800000040000000F0000000010020000000000000F0
          000000000000000000000000000000000000000000004A4A4A00525252006363
          6300424242000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00525252008484
          840063636300424242000000000084848400B5B5B500B5B5B500B5B5B500B5B5
          B500B5B5B500B5B5B5000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600B5B5
          B500B5B5B500BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
          B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00ADADAD00B5B5B500FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000525252008484
          840084848400848484000000000084848400C6C6C60052525200525252005252
          520052525200B5B5B5000000000073737300FFFFFF00CECECE00C6C6C600C6C6
          C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
          BD00BDBDBD00C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C600BDBD
          BD00B5B5B500FFFFFF00ADADAD00FFFFFF00FFFFFF00ADADAD00FFFFFF00ADAD
          AD00B5B5B500B5B5B500B5B5B500FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005252
          520084848400848484004242420084848400E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B5007373730042424200FFFFFF00CECECE00CECECE00C6C6
          C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
          C600CECECE00CECECE00CECECE00FFFFFF00FFFFFF00C6C6C600CECECE00C6C6
          C600BDBDBD00BDBDBD00ADADAD00FFFFFF00FFFFFF00B5B5B500BDBDBD00BDBD
          BD00BDBDBD00BDBDBD00BDBDBD00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000052525200949494004242420084848400C6C6C60063636300636363006363
          630063636300636363004242420000000000FFFFFF00D6D6D600BDBDBD00CECE
          CE00C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600CECECE00CECE
          CE00D6D6D600BDBDBD00D6D6D600FFFFFF00FFFFFF00FFFFFF00C6C6C600CECE
          CE00C6C6C600C6C6C600B5B5B500FFFFFF00FFFFFF00B5B5B500C6C6C600C6C6
          C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000084848400525252006363630042424200E7E7E700C6C6C600E7E7E700C6C6
          C60063636300424242000000000000000000FFFFFF00B5B5B500C6C6C600BDBD
          BD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600D6D6
          D600BDBDBD00FFFFFF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6
          D600CECECE00C6C6C600CECECE00CECECE00CECECE00CECECE00CECECE00D6D6
          D600D6D6D600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000084848400E7E7E70052525200636363004242420084848400848484006363
          630042424200B5B5B5000000000000000000FFFFFF00FFFFFF00C6C6C600FFFF
          FF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
          BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6D6D600D6D6
          D600CECECE00A5A5A500BDBDBD00FFFFFF00FFFFFF00BDBDBD00CECECE00D6D6
          D600D6D6D600D6D6D600FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400B5B5B500B5B5
          B50084848400C6C6C60063636300525252006363630042424200636363004242
          420084848400000000000000000000000000FFFFFF00FFFFFF00C6C6C600FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00A5A5A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400C6C6C6005252
          520084848400E7E7E700C6C6C60084848400525252006363630042424200E7E7
          E70084848400000000000000000000000000FFFFFF00FFFFFF00CECECE00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00ADADAD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400E7E7E700C6C6
          C60084848400C6C6C60084848400848484006363630042424200636363004242
          420084848400000000000000000000000000FFFFFF00FFFFFF00D6D6D600FFFF
          FF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
          B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
          C600BDBDBD00BDBDBD00B5B5B500FFFFFF00FFFFFF00B5B5B500CECECE00BDBD
          BD00C6C6C600C6C6C600CECECE00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400C6C6C6006363
          630084848400E7E7E70084848400636363004242420084848400000000006363
          630042424200000000000000000000000000FFFFFF00A5A5A500CECECE00B5B5
          B500ADADAD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
          BD00B5B5B500FFFFFF00ADADAD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
          BD00BDBDBD00ADADAD008C8C8C007B7B7B008484840094949400BDBDBD00C6C6
          C600C6C6C600C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400E7E7E700C6C6
          C6004A4A4A004A4A4A006363630042424200E7E7E70084848400000000000000
          000063636300424242000000000000000000FFFFFF00BDBDBD00B5B5B500BDBD
          BD00BDBDBD00BDBDBD00C6C6C600FFFFFF00FFFFFF00C6C6C600CECECE00C6C6
          C600BDBDBD00B5B5B500B5B5B500FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
          C600C6C6C600CECECE00B5B5B500FFFFFF00FFFFFF00B5B5B500CECECE00CECE
          CE00CECECE00C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484004A4A4A004A4A
          4A00848484006363630042424200848484008484840084848400000000000000
          000000000000636363004242420000000000FFFFFF00C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600CECE
          CE00C6C6C600C6C6C600BDBDBD00FFFFFF00FFFFFF00C6C6C600C6C6C600CECE
          CE00CECECE00D6D6D600B5B5B500FFFFFF00FFFFFF00ADADAD00D6D6D600CECE
          CE00CECECE00C6C6C600C6C6C600FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00848484008484
          8400636363004242420084848400000000000000000000000000000000000000
          000000000000000000007373730042424200FFFFFF00CECECE00CECECE00CECE
          CE00C6C6C600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6
          C600CECECE00C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600D6D6D600D6D6
          D600BDBDBD00B5B5B500B5B5B500FFFFFF00FFFFFF00ADADAD00B5B5B500B5B5
          B500CECECE00CECECE00BDBDBD00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A4A4A0084848400737373006363
          630042424200E7E7E70084848400000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00D6D6D600D6D6D600D6D6
          D600D6D6D600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00DEDE
          DE00D6D6D600CECECE00CECECE00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
          C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00B5B5B500BDBDBD00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007373730052525200525252007373
          7300848484008484840084848400000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000007B7B7B007B7B
          7B007B7B7B000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD0000000000000000000000000000000000000000000000
          0000000000008C8C8C006B6B6B00525252004A4A4A005A5A5A007B7B7B000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007B7B7B00F7F7F7007B7B
          7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD00000000000000000000000000000000004A4A4A004242
          42004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A005A5A5A006363
          63005A5A5A007373730000000000000000000000000000000000000000000000
          00000000000000000000000000007B7B7B00F7F7F700F7F7F700F7F7F7007B7B
          7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400C6C6C600C6C6
          C600C6C6C6000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD0000000000000000000000000084848400636363006363
          63005A5A5A00525252004A4A4A004A4A4A004A4A4A0052525200525252005A5A
          5A005A5A5A00636363004A4A4A00000000000000000000000000000000000000
          0000000000007B7B7B00F7F7F700F7F7F700F7F7F700F7F7F700F7F7F7007B7B
          7B007B7B7B007B7B7B00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484840084848400C6C6
          C600C6C6C6000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD00000000000000000000000000636363007B7B7B007373
          730073737300737373006B6B6B006B6B6B006B6B6B0063636300636363005252
          52005A5A5A006B6B6B0063636300000000000000000000000000000000007B7B
          7B00F7F7F700F7F7F700B5B5B500B5B5B500F7F7F700F7F7F700F7F7F7007B7B
          7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00848484008484
          8400C6C6C6000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD000000000000000000000000007B7B7B00737373008484
          84007B7B7B0073737300737373008484840084848400848484006B6B6B005A5A
          5A00525252005A5A5A006363630000000000000000007B7B7B00F7F7F700F7F7
          F7007B7B7B00F7F7F700B5B5B5009C9C9C009C9C9C00F7F7F700F7F7F7007B7B
          7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008484
          8400848484000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
          AD00ADADAD000000000000000000000000000000000073737300848484008484
          84007B7B7B008484840084848400BDBDBD00CECECE00D6D6D600A5A5A5007B7B
          7B00525252005252520052525200000000007B7B7B00F7F7F700F7F7F7007B7B
          7B007B7B7B00F7F7F700F7F7F700F7F7F7009C9C9C00F7F7F700F7F7F7007B7B
          7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
          0000848484000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
          AD0000000000000000000000000000000000000000007B7B7B007B7B7B008484
          840094949400B5B5B500C6C6C600CECECE00DEDEDE00D6D6D600D6D6D6008C8C
          8C00525252005252520042424200000000007B7B7B00F7F7F7007B7B7B00F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F7007B7B7B00F7F7F700F7F7F7007B7B
          7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000006B6B6B00636363007373
          73008C8C8C00A5A5A500C6C6C600DEDEDE00D6D6D600CECECE00E7E7E700A5A5
          A5006B6B6B00636363004A4A4A00000000007B7B7B00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F700F7F7F7007B7B7B007B7B7B00F7F7F700F7F7F7007B7B
          7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD00000000000000000000000000292929005A5A5A007373
          730063636300525252003939390042424200636363007B7B7B007B7B7B004A4A
          4A006B6B6B006363630084848400000000007B7B7B00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F7007B7B7B007B7B7B00F7F7F700F7F7F700F7F7F7007B7B
          7B007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD0000000000000000000000000039393900636363006363
          63006B6B6B006B6B6B00737373007B7B7B00848484007B7B7B006B6B6B006363
          6300636363005252520000000000000000007B7B7B00F7F7F7009C9C9C00B5B5
          B500F7F7F700F7F7F700F7F7F700F7F7F700FFFFFF00C6C6C6007B7B7B00DEDE
          DE007B7B7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD00000000000000000000000000000000004A4A4A006B6B
          6B006B6B6B006B6B6B0063636300636363005A5A5A005A5A5A005A5A5A005A5A
          5A004A4A4A000000000000000000000000007B7B7B00F7F7F700B5B5B500B5B5
          B500F7F7F700F7F7F7007B7B7B00DEDEDE00DEDEDE00DEDEDE00DEDEDE007B7B
          7B000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00000000000000000000000000000000000000000000000000ADAD
          AD00ADADAD00ADADAD0000000000000000000000000000000000000000005A5A
          5A00848484006B6B6B0063636300636363005A5A5A005A5A5A005A5A5A004A4A
          4A00737373000000000000000000000000007B7B7B00F7F7F700F7F7F700F7F7
          F700F7F7F700C6C6C6007B7B7B00DEDEDE00DEDEDE00DEDEDE00C6C6C6000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
          AD00ADADAD00ADADAD0000000000000000000000000000000000000000000000
          0000636363006B6B6B00636363004A4A4A004A4A4A004A4A4A00525252000000
          0000000000000000000000000000000000007B7B7B00F7F7F700F7F7F700C6C6
          C6007B7B7B00DEDEDE00DEDEDE007B7B7B00C6C6C6007B7B7B00000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
          AD00ADADAD000000000000000000000000000000000000000000000000000000
          00000000000073737300525252004A4A4A004242420042424200000000000000
          0000000000000000000000000000000000007B7B7B00C6C6C6007B7B7B00DEDE
          DE00DEDEDE007B7B7B0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000ADADAD00ADAD
          AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
          AD00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007B7B7B00DEDEDE007B7B
          7B00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00B5B5B500BDBD
          BD00C6C6C600C6C6C600ADADAD00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000636363007B7B7B0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000313131003131
          310000000000000000000000000000000000FFFFFF00B5B5B5009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C00525252005A5A5A006B6B6B005252
          5200525252005252520063636300F7F7F700000000005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
          00000000000000000000636363006B6B6B00A5A5A50063636300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000031313100A5A5
          A50042424200000000000000000000000000FFFFFF004A4A4A004A4A4A002929
          29001818180010101000101010002929290031313100525252006B6B6B005252
          52005A5A5A00525252005A5A5A00F7F7F70000000000000000005A5A5A005A5A
          5A005A5A5A00FFFFFF0000000000000000000000000000000000000000000000
          0000000000005A5A5A0000000000000000000000000000000000000000000000
          000063636300BDBDBD00C6C6C6007B7B7B00F7F7F700E7E7E700737373005252
          5200848484006B6B6B0000000000000000000000000000000000000000000000
          000000000000313131003131310031313100313131003131310031313100DEDE
          DE00A5A5A500424242000000000000000000FFFFFF0039393900393939002929
          29001818180008080800080808001010100018181800525252005A5A5A005A5A
          5A005A5A5A004A4A4A005A5A5A00F7F7F7000000000000000000000000005A5A
          5A005A5A5A005A5A5A00FFFFFF00000000000000000000000000000000000000
          0000000000005A5A5A0000000000000000000000000000000000000000007B7B
          7B00B5B5B500CECECE00BDBDBD007B7B7B00F7F7F700DEDEDE00737373004A4A
          4A00A5A5A5009494940000000000000000000000000000000000000000000000
          0000000000004242420094949400A5A5A500B5B5B500DEDEDE00DEDEDE00DEDE
          DE00DEDEDE00A5A5A5004242420000000000FFFFFF009C9C9C00737373003939
          39003131310018181800313131003131310029292900525252005A5A5A005252
          52005A5A5A005A5A5A005A5A5A00F7F7F7000000000000000000000000000000
          00005A5A5A005A5A5A005A5A5A00FFFFFF000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009C9C9C00EFEF
          EF00DEDEDE00C6C6C600BDBDBD0084848400FFFFFF00DEDEDE006B6B6B004242
          4200A5A5A5009494940000000000000000000000000000000000000000000000
          00000000000042424200424242005A5A5A005A5A5A005A5A5A005A5A5A00A5A5
          A50094949400424242000000000000000000000000004A4A4A00525252003939
          39004242420029292900424242005A5A5A0031313100525252005A5A5A005252
          52005A5A5A00525252005A5A5A00F7F7F7000000000000000000000000000000
          0000000000005A5A5A005A5A5A005A5A5A00FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000A5A5A500EFEF
          EF00E7E7E700CECECE00B5B5B5007B7B7B00FFFFFF00E7E7E700BDBDBD007373
          7300A5A5A5009494940000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A009494
          940042424200000000000000000000000000FFFFFF005A5A5A005A5A5A003939
          390052525200393939004A4A4A007B7B7B004A4A4A005A5A5A00525252005A5A
          5A005A5A5A005A5A5A005A5A5A00F7F7F7000000000000000000000000000000
          000000000000000000005A5A5A005A5A5A005A5A5A00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000B5B5B500DEDE
          DE00ADADAD0094949400B5B5B5009C9C9C0084848400EFEFEF00DEDEDE00CECE
          CE00C6C6C6008C8C8C0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A0000000000000000000000000000000000FFFFFF004A4A4A00525252004A4A
          4A006B6B6B006B6B6B00636363008C8C8C002121210031313100424242005252
          52005252520052525200000000008C8C8C000000000000000000000000000000
          00000000000000000000FFFFFF005A5A5A005A5A5A005A5A5A00000000000000
          0000000000000000000000000000000000000000000000000000A5A5A5008C8C
          8C008C8C8C00ADADAD00B5B5B500B5B5B50094949400DEDEDE00E7E7E700CECE
          CE00C6C6C6008484840000000000000000000000000000000000000000000000
          0000313131003131310000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF0063636300737373004A4A
          4A00636363006363630063636300848484001010100000000000000000003131
          3100393939004A4A4A0000000000C6C6C6000000000000000000000000000000
          000000000000FFFFFF005A5A5A005A5A5A005A5A5A0000000000000000000000
          000000000000000000000000000000000000000000009C9C9C00B5B5B500A5A5
          A500949494009C9C9C00A5A5A500BDBDBD00BDBDBD00848484009C9C9C00C6C6
          C6008C8C8C009C9C9C0094949400000000000000000000000000000000004242
          4200A5A5A5003131310000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BDBDBD00BDBDBD00ADAD
          AD00B5B5B500B5B5B500BDBDBD00BDBDBD000808080000000000000000000000
          0000080808002929290000000000949494000000000000000000000000000000
          0000FFFFFF005A5A5A005A5A5A005A5A5A000000000000000000000000000000
          00000000000000000000000000000000000000000000A5A5A500D6D6D600B5B5
          B5009C9C9C00949494009C9C9C00B5B5B500BDBDBD00A5A5A500848484008484
          840084848400949494000000000000000000000000000000000042424200A5A5
          A500DEDEDE005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A00000000000000
          00000000000000000000000000000000000000000000ADADAD00A5A5A500ADAD
          AD00ADADAD00B5B5B500B5B5B5005A5A5A000000000000000000000000000000
          0000000000005252520084848400B5B5B500000000000000000000000000FFFF
          FF005A5A5A005A5A5A005A5A5A00000000000000000000000000000000000000
          000000000000FFFFFF00000000000000000000000000000000008C8C8C00CECE
          CE00BDBDBD009494940094949400A5A5A500ADADAD00BDBDBD00ADADAD00A5A5
          A500949494000000000000000000000000000000000042424200A5A5A500DEDE
          DE00DEDEDE00DEDEDE00B5B5B500A5A5A500949494005A5A5A00000000000000
          00000000000000000000000000000000000000000000ADADAD0094949400A5A5
          A5009C9C9C00ADADAD00ADADAD00101010000000000000000000000000000000
          0000000000000000000000000000C6C6C6000000000000000000FFFFFF005A5A
          5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
          0000000000005A5A5A000000000000000000000000000000000000000000B5B5
          B500CECECE00A5A5A500949494009C9C9C00ADADAD00ADADAD009C9C9C008C8C
          8C00000000000000000000000000000000000000000000000000424242009494
          9400A5A5A5003131310031313100313131005A5A5A005A5A5A00000000000000
          00000000000000000000000000000000000000000000949494009C9C9C009494
          94009C9C9C00A5A5A500ADADAD00424242000000000000000000000000000000
          00000000000000000000000000008C8C8C0000000000FFFFFF005A5A5A005A5A
          5A005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005A5A5A0000000000000000000000000000000000000000000000
          000094949400ADADAD00949494008C8C8C00737373008C8C8C00000000000000
          0000000000000000000000000000000000000000000000000000000000004242
          4200949494003131310000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
          9C009C9C9C00A5A5A500B5B5B500292929000000000000000000000000000000
          0000000000000000000084848400BDBDBD00000000005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A0000000000000000000000000000000000000000000000
          00000000000094949400ADADAD0000000000525252006B6B6B00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000313131003131310000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000009C9C9C006B6B6B009494
          9400ADADAD00ADADAD0094949400212121000000000000000000000000000808
          0800000000000000000008080800D6D6D6000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F7F7F700F7F7F700EFEF
          EF00FFFFFF00EFEFEF00F7F7F700EFEFEF00F7F7F700FFFFFF00000000000000
          0000000000000000000000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000063636300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006363630084848400636363000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000008C8C8C006363630000000000000000000000
          00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600636363009494940073737300636363000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000525252002929290000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002184
          3100000000000000000000000000000000000000000000000000000000000000
          000000000000000000008C8C8C006B6B6B008C8C8C0063636300000000000000
          00000000000000000000000000000000000084848400F7F7F700848484008484
          84008484840084848400636363009C9C9C0073737300C6C6C600737373006363
          630000000000000000000000000000000000000000000000000000000000A5A5
          A5005A5A5A005252520029292900000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000218429002994
          310052BD5A000000000000000000000000000000000000000000000000000000
          000000000000A5A5A5007B7B7B000000000000000000A5A5A500000000000000
          00000000000000000000000000000000000084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F7007373730073737300F7F7F700C6C6C600737373006363
          6300000000000000000000000000000000000000000000000000000000007373
          73005A5A5A005A5A5A0052525200292929000000000000000000000000000000
          00000000000000000000737373000000000000000000399C4A00000000000000
          000000000000000000000000000000000000084A1000298C3100299431002194
          310031A542000000000000000000000000000000000000000000000000000000
          0000000000008C8C8C0073737300000000000000000000000000848484000000
          00000000000000000000000000000000000084848400F7F7F700A5A5A500A5A5
          A500A5A5A500A5A5A500A5A5A500A5A5A500F7F7F700C6C6C600000000007373
          7300636363000000000000000000000000000000000000000000ADADAD005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A002929290000000000000000000000
          00000000000000000000636363000000000000000000318C3900000000000000
          0000000000000000000000000000084A10002994310029943100299431002994
          3100299431005AC663000000000000000000000000000000000000000000A5A5
          A5007B7B7B0084848400848484006B6B6B000000000000000000000000000000
          00000000000000000000000000000000000084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C600000000007373
          73006363630000000000000000000000000000000000000000007B7B7B005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A0029292900000000000000
          000000000000000000004A4A4A000000000000000000187329006BDE7B000000
          000000000000000000000842100029943100299C310029943100299431002994
          31002194310039A5420000000000000000000000000000000000000000000000
          000084848400848484007B7B7B00000000000000000000000000000000000000
          00000000000000000000000000000000000084848400F7F7F700949494009494
          940094949400949494009494940094949400F7F7F700C6C6C60000000000C6C6
          C6007373730063636300000000000000000000000000ADADAD005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A00525252005A5A5A004A4A4A00000000000000
          000000000000ADADAD00393939000000000000000000105A18005ACE6B000000
          00000000000000000000217B2900299431002184290029943100299431002994
          310021943100299431005ACE6B00000000000000000000000000000000000000
          0000ADADAD007B7B7B0000000000000000000000000000000000636363000000
          00000000000000000000000000000000000084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C6007373730063636300000000000000000000000000949494005A5A5A006B6B
          6B00636363005A5A5A005A5A5A00424242000000000000000000000000000000
          0000000000008C8C8C00000000000000000000000000000000004AB552000000
          000000000000000000000000000000000000186B2100299C310029943100319C
          390042AD4A00218C290042B55200000000000000000000000000000000000000
          000000000000737373000000000000000000000000005A5A5A0084848400A5A5
          A5000000000000000000000000000000000084848400F7F7F700B5B5B500B5B5
          B500B5B5B500C6C6C600F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000007373730063636300000000000000000000000000000000000000
          0000949494005A5A5A005A5A5A005A5A5A000000000000000000000000000000
          0000000000006363630000000000000000000000000000000000298C39000000
          000000000000000000000000000000000000298C310029943100218C310052C6
          6300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005252520084848400848484007B7B
          7B00BDBDBD0000000000000000000000000084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000000000000073737300636363000000000000000000000000000000
          0000000000006B6B6B005A5A5A005A5A5A004242420000000000000000000000
          0000A5A5A5004242420000000000000000000000000000000000106B21005ACE
          6B00000000000000000000000000105A1800299C31002194310039A542000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484000000000000000000737373007B7B7B00848484007B7B
          7B009C9C9C0000000000000000000000000084848400F7F7F7009C9C9C009C9C
          9C00C6C6C600F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000000000000000000000737373000000000000000000000000000000
          000000000000ADADAD005A5A5A005A5A5A005A5A5A0029292900000000000000
          00007B7B7B0000000000000000000000000000000000000000000000000042B5
          52000000000000000000084A1000298C310029943100219431005ACE6B000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6C6C60000000000000000006B6B6B008C8C8C000000
          00000000000000000000000000000000000084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          000000000000000000008C8C8C00525252005A5A5A0052525200393939006B6B
          6B004A4A4A000000000000000000000000000000000000000000000000001873
          2100319C4200186B2100218C310029943100218C290042B55200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000009494940000000000000000007B7B7B00A5A5A5000000
          0000000000000000000000000000000000008484840084848400848484008484
          840084848400848484008484840084848400848484008484840000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484005A5A5A005A5A5A005A5A5A005A5A
          5A00000000000000000000000000000000000000000000000000000000000000
          0000218C2900299C390029943100218C31004ABD5A0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000063636300848484007373730084848400000000000000
          000000000000000000000000000000000000000000000000000084848400F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000009C9C9C006B6B6B00525252000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002184290031A5420052BD5A000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000636363008C8C8C00ADADAD00000000000000
          0000000000000000000000000000000000000000000000000000848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400B5B5B500B5B5B500B5B5B500B5B5B500B5B5
          B500B5B5B5000000000000000000000000000000000000000000000000000000
          000000000000000000000000000084848400B5B5B500B5B5B500B5B5B500B5B5
          B500B5B5B500B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CECECE001010
          100000000000000000000000FF006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400C6C6C6005252520052525200525252005252
          5200B5B5B5000000000000000000000000000000000000000000000000000000
          000000000000000000000000000084848400C6C6C60052525200525252005252
          520052525200B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CECECE001010
          100000000000000000000000CE006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400E7E7E700C6C6C600E7E7E700C6C6C600E7E7
          E700B5B5B5000000000000000000000000000000000000000000000000000000
          00000000000084848400B5B5B50084848400E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CECECE001010
          100000000000000000000000CE00000000000000000000000000000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400C6C6C6006363630063636300636363006363
          6300B5B5B5000000000000000000000000000000000000000000000000000000
          00000000000084848400C6C6C60084848400C6C6C60063636300636363006363
          630063636300B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CECECE001010
          100000000000000000000000CE00FFFFFF00FFFFFF00F7FFFF00000000000000
          9C000000FF000000000000000000000000000000000000000000000000008484
          8400B5B5B500B5B5B50084848400E7E7E700C6C6C600E7E7E700C6C6C600E7E7
          E700B5B5B5000000000000000000000000000000000000000000000000008484
          8400B5B5B50084848400E7E7E70084848400E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000CE000000CE000000CE0000009C00000000000000
          9C000000FF000000000000000000000000000000000000000000000000008484
          8400C6C6C6005252520084848400C6C6C600848484008484840084848400C6C6
          C600B5B5B5000000000000000000000000000000000000000000000000008484
          8400C6C6C60084848400C6C6C60084848400C6C6C60084848400848484008484
          8400C6C6C600B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C9C
          9C000000000000000000DEDEDE00FFFFFF00FFFFFF00F7FFFF00000000000000
          9C000000FF000000000000000000000000000000000000000000000000008484
          8400E7E7E700C6C6C60084848400E7E7E700C6C6C600E7E7E700C6C6C6008484
          8400000000000000000000000000000000000000000000000000000000008484
          8400E7E7E70084848400E7E7E70084848400E7E7E700C6C6C600E7E7E700C6C6
          C600848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009C9C9C004242
          420000000000000000000000CE000000CE000000CE0000009C00000000000000
          9C000000FF000000000000000000000000000000000000000000000000008484
          8400C6C6C6006363630084848400E7E7E700E7E7E700E7E7E700E7E7E7008484
          8400000000000000000000000000000000000000000000000000000000008484
          8400C6C6C60084848400C6C6C60084848400E7E7E700E7E7E700E7E7E700E7E7
          E700848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009C9C9C000000
          000000000000000000000000CE00FFFFFF00FFFFFF00F7FFFF00000000000000
          9C000000FF000000000000000000000000000000000000000000000000008484
          8400E7E7E700C6C6C60084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000008484
          8400E7E7E70084848400E7E7E700848484008484840084848400848484008484
          8400848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009C9C9C000000
          00000000000000000000000000006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000000000000000000006363
          6300C6C6C600848484008484840084848400C6C6C600B5B5B500000000000000
          0000000000000000000000000000000000000000000000000000000000006363
          6300C6C6C60084848400E7E7E700E7E7E700E7E7E700E7E7E700848484000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242000000
          000000000000000000000000CE006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000063636300000000006363
          6300E7E7E70063636300E7E7E700C6C6C6008484840000000000000000000000
          0000000000000000000000000000000000000000000063636300000000006363
          6300E7E7E7008484840084848400848484008484840084848400848484000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242000000
          000000000000000000000000CE006300FF000000CE000000CE000000CE000000
          9C00000000000000000000000000000000000000000000000000636363006363
          630063636300E7E7E700E7E7E700E7E7E7008484840000000000000000000000
          0000000000000000000000000000000000000000000000000000636363006363
          630063636300E7E7E700E7E7E700E7E7E7008484840000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242000000
          00000000000000000000000000000000CE00000000000000000000009C000000
          9C00000000000000000000000000000000006363630063636300636363008484
          8400636363006363630063636300848484008484840000000000000000000000
          0000000000000000000000000000000000006363630063636300636363008484
          8400636363006363630063636300848484008484840000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242000000
          0000000000000000000000000000000000000000FF000000FF00000000000000
          0000525252000000000000000000000000000000000000000000636363006363
          6300636363000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000636363006363
          6300636363000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242004242
          42000000000000000000C6C6C6000000000000BD0000FFFFFF00000000000000
          0000000000000000000000000000000000000000000063636300000000006363
          6300000000006363630000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000063636300000000006363
          6300000000006363630000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C9C
          9C009C9C9C009C9C9C00DEDEDE009C9C9C0000000000000000009C9C9C009C9C
          9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000424242000000000000000000000000004A4A4A00525252006363
          6300424242000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000042424200737373008484840000000000000000004A4A4A00525252008484
          8400636363004242420000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000005A5A
          5A00000000000000000000000000000000000000000000000000000000000000
          00005A5A5A000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004242
          4200000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004242
          420073737300C6C6C600B5B5B500424242000000000000000000525252008484
          8400848484008484840000000000000000000000000000000000000000000000
          0000000000000000000000000000737373000000000000000000000000005A5A
          5A005A5A5A000000000000000000000000000000000000000000000000000000
          00005A5A5A000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242007373
          7300848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000424242007373
          7300A5A5A500C6C6C60042424200000000000000000000000000000000005252
          5200848484008484840042424200000000000000000000000000000000000000
          0000000000000000000073737300424242000000000000000000000000005A5A
          5A00737373008484840000000000000000000000000000000000000000000000
          00005A5A5A000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004242420073737300C6C6
          C600B5B5B5004242420000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004242420073737300A5A5
          A500B5B5B5004242420000000000000000000000000000000000000000000000
          0000525252009494940042424200000000000000000000000000000000000000
          0000000000006363630042424200000000000000000000000000000000007373
          7300B5B5B5008484840084848400000000000000000000000000000000000000
          0000848484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004242420073737300A5A5A500C6C6
          C600424242000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004242420073737300A5A5A500B5B5
          B500424242000000000000000000000000000000000000000000000000000000
          0000000000005252520063636300424242000000000000000000000000000000
          000063636300424242000000000000000000000000000000000000000000B5B5
          B500B5B5B500B5B5B50084848400949494000000000000000000000000000000
          0000B5B5B5000000000000000000000000000000000000000000000000000000
          00004242420042424200424242004242420084848400A5A5A500B5B5B5004242
          4200000000000000000000000000000000000000000000000000000000004242
          42004242420042424200424242004242420084848400A5A5A500B5B5B5004242
          4200000000000000000000000000000000000000000000000000000000000000
          0000000000000000000052525200636363004242420000000000000000006363
          630042424200000000000000000000000000000000000000000000000000B5B5
          B500B5B5B500C6C6C600C6C6C6009C9C9C009C9C9C0000000000000000000000
          0000B5B5B5000000000000000000000000000000000000000000000000004242
          4200CECECE00CECECE00D6D6D600C6C6C6004242420084848400424242000000
          000000000000000000000000000000000000000000000000000042424200CECE
          CE00D6D6D600C6C6C600C6C6C600424242004242420084848400424242000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000525252006363630042424200636363004242
          420000000000000000000000000000000000000000000000000000000000B5B5
          B500C6C6C600C6C6C600CECECE00DEDEDE009C9C9C0000000000000000000000
          0000B5B5B500000000000000000000000000000000000000000042424200CECE
          CE00CECECE00D6D6D600D6D6D600C6C6C600C6C6C60042424200000000000000
          0000000000000000000000000000000000000000000042424200CECECE00D6D6
          D600D6D6D600C6C6C600C6C6C600C6C6C6004242420042424200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005252520063636300424242000000
          000000000000000000000000000000000000000000000000000000000000C6C6
          C600C6C6C600CECECE00DEDEDE009C9C9C000000000000000000000000000000
          0000CECECE00000000000000000000000000000000000000000042424200CECE
          CE00F7F7F700E7E7E700D6D6D600C6C6C600C6C6C60042424200000000000000
          00000000000000000000000000000000000042424200CECECE00F7F7F700E7E7
          E700D6D6D600C6C6C600C6C6C600C6C6C600C6C6C60042424200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484006363630042424200636363004242
          420000000000000000000000000000000000000000000000000000000000C6C6
          C600CECECE00DEDEDE009C9C9C00000000000000000000000000000000000000
          0000CECECE00000000000000000000000000000000000000000042424200D6D6
          D600D6D6D600D6D6D600C6C6C600A5A5A500A5A5A50042424200000000000000
          00000000000000000000000000000000000042424200D6D6D600E7E7E700E7E7
          E700D6D6D600C6C6C600C6C6C600C6C6C600C6C6C60042424200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400636363004242420000000000000000006363
          630042424200000000000000000000000000000000000000000000000000C6C6
          C600DEDEDE009C9C9C0000000000000000000000000000000000000000000000
          0000CECECE00000000000000000000000000000000000000000042424200B5B5
          B500B5B5B500B5B5B500C6C6C600848484008484840042424200000000000000
          00000000000000000000000000000000000042424200D6D6D600D6D6D600D6D6
          D600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A50042424200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A4A4A004A4A4A0063636300424242000000000000000000000000000000
          000063636300424242000000000000000000000000000000000000000000C6C6
          C600B5B5B5000000000000000000000000000000000000000000000000000000
          0000CECECE000000000000000000000000000000000000000000000000004242
          4200B5B5B500C6C6C60094949400848484004242420000000000000000000000
          00000000000000000000000000000000000042424200C6C6C600CECECE00CECE
          CE00C6C6C600C6C6C600C6C6C60084848400A5A5A50042424200000000000000
          00000000000000000000000000000000000000000000000000004A4A4A004A4A
          4A00848484006363630042424200000000000000000000000000000000000000
          000000000000636363004242420000000000000000000000000000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000CECECE000000000000000000000000000000000000000000000000000000
          0000424242004242420042424200424242000000000000000000000000000000
          0000000000000000000000000000000000000000000042424200B5B5B500B5B5
          B500C6C6C600C6C6C600C6C6C600848484004242420000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00848484008484
          8400636363004242420000000000000000000000000000000000000000000000
          0000000000000000000073737300424242000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000042424200C6C6
          C600C6C6C6009494940094949400424242000000000000000000000000000000
          0000000000000000000000000000000000004A4A4A0084848400737373006363
          6300424242000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004242
          4200424242004242420042424200000000000000000000000000000000000000
          0000000000000000000000000000000000007373730052525200525252007373
          7300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400848484004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00E7E7E700D6D6
          D600D6D6D600D6D6D600848484004A4A4A004A4A4A004A4A4A00000000004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A000000000000000000000000005A5A
          5A00000000000000000000000000000000000000000000000000000000000000
          00005A5A5A000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005A5A5A00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A5A5A0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484004A4A4A00E7E7
          E700D6D6D600D6D6D600CECECE00C6C6C600C6C6C6004A4A4A004A4A4A006363
          6300636363006363630063636300636363000000000000000000000000005A5A
          5A00000000000000000000000000000000000000000000000000000000005A5A
          5A005A5A5A000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005A5A5A005A5A5A00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A5A5A005A5A5A00000000000000000000000000000000000000
          00000000000000000000000000000000000084848400B5B5B500B5B5B5004A4A
          4A00E7E7E700E7E7E700DEDEDE00DEDEDE00CECECE00CECECE004A4A4A008484
          8400848484008484840084848400848484000000000000000000000000005A5A
          5A00000000000000000000000000000000000000000000000000848484007373
          73005A5A5A000000000000000000000000000000000000000000000000000000
          000000000000000000000000000084848400737373005A5A5A00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A5A5A0073737300848484000000000000000000000000000000
          00000000000000000000000000000000000084848400C6C6C600525252005252
          520084848400E7E7E700E7E7E700DEDEDE00D6D6D600CECECE004A4A4A008484
          8400848484008484840084848400848484000000000000000000000000008484
          840000000000000000000000000000000000000000008484840084848400B5B5
          B500737373000000000000000000000000000000000000000000000000000000
          000000000000000000008484840084848400B5B5B50073737300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000073737300B5B5B500848484008484840000000000000000000000
          00000000000000000000000000000000000084848400E7E7E700C6C6C600E7E7
          E700C6C6C600636363006363630063636300636363006363630000000000B5B5
          B500B5B5B500B5B5B500B5B5B500B5B5B500000000000000000000000000B5B5
          B500000000000000000000000000000000009494940084848400B5B5B500B5B5
          B500B5B5B5000000000000000000000000000000000000000000000000000000
          0000000000009494940084848400B5B5B500B5B5B500B5B5B500000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B5B5B500B5B5B500B5B5B5008484840094949400000000000000
          00000000000000000000000000000000000084848400C6C6C600636363006363
          63006363630063636300B5B5B500000000000000000000000000000000006363
          630063636300636363006363630063636300000000000000000000000000B5B5
          B5000000000000000000000000009C9C9C009C9C9C00C6C6C600C6C6C600B5B5
          B500B5B5B5000000000000000000000000000000000000000000000000000000
          00009C9C9C009C9C9C00C6C6C600C6C6C600B5B5B500B5B5B500000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B5B5B500B5B5B500C6C6C600C6C6C6009C9C9C009C9C9C000000
          00000000000000000000000000000000000084848400E7E7E700C6C6C600E7E7
          E700C6C6C600E7E7E700B5B5B500000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000B5B5
          B5000000000000000000000000009C9C9C00DEDEDE00CECECE00C6C6C600C6C6
          C600B5B5B5000000000000000000000000000000000000000000000000000000
          00009C9C9C00DEDEDE00CECECE00C6C6C600C6C6C600B5B5B500000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B5B5B500C6C6C600C6C6C600CECECE00DEDEDE009C9C9C000000
          00000000000000000000000000000000000084848400C6C6C600848484008484
          840084848400C6C6C600B5B5B500000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          CE00000000000000000000000000000000009C9C9C00DEDEDE00CECECE00C6C6
          C600C6C6C6000000000000000000000000000000000000000000000000000000
          0000000000009C9C9C00DEDEDE00CECECE00C6C6C600C6C6C600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C600C6C6C600CECECE00DEDEDE009C9C9C00000000000000
          00000000000000000000000000000000000084848400E7E7E700C6C6C600E7E7
          E700C6C6C6008484840000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          CE0000000000000000000000000000000000000000009C9C9C00DEDEDE00CECE
          CE00C6C6C6000000000000000000000000000000000000000000000000000000
          000000000000000000009C9C9C00DEDEDE00CECECE00C6C6C600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C600CECECE00DEDEDE009C9C9C0000000000000000000000
          00000000000000000000000000000000000084848400E7E7E700E7E7E700E7E7
          E700E7E7E7008484840000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          CE000000000000000000000000000000000000000000000000009C9C9C00DEDE
          DE00C6C6C6000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C9C9C00DEDEDE00C6C6C600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C600DEDEDE009C9C9C000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          8400848484008484840000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          CE0000000000000000000000000000000000000000000000000000000000B5B5
          B500C6C6C6000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B5B5B500C6C6C600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C600B5B5B500000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000C6C6C6000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C6C6C600000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C60000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000636363006363630063636300636363006363
          6300636363000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A4A4A00000000000000000000000000000000006363
          6300949494006363630000000000000000000000000000000000000000000000
          0000000000008484840084848400848484008484840000000000000000008484
          84000000000000000000000000000000000042424200CECECE00CECECE00CECE
          CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600B5B5B500B5B5B500000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A5A5A0000000000000000000000000000000000000000000000
          0000636363009494940063636300000000000000000084848400848484008484
          84008484840084848400C6C6C600C6C6C6008484840000000000C6C6C6008484
          84008484840000000000848484000000000042424200D6D6D600EFEFEF00EFEF
          EF00DEDEDE00D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00C6C6C600C6C6C6009C9C9C00000000008484000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848400000000000084848400B5B5B500B5B5
          B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
          B500636363009494940063636300000000000000000084848400C6C6C6008484
          84008484840084848400FFFFFF00FFFFFF008484840000000000C6C6C6008484
          840084848400848484000000000000000000424242005A5A5A00CECECE00DEDE
          DE00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00C6C6C600B5B5B5005A5A5A000000000084848400B5B5B500EFEFEF00EFEF
          EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600C6C6
          C600C6C6C600B5B5B500B5B5B500848484000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C60063636300B5B5
          B500636363009494940063636300000000000000000084848400C6C6C6008484
          8400FFFFFF00C6C6C60084848400FFFFFF008484840000000000848484008484
          84008484840084848400848484000000000042424200E7E7E7005A5A5A00C6C6
          C600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00B5B5B5005A5A5A00B5B5B5000000000084848400EFEFEF00B5B5B500EFEF
          EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
          D600C6C6C600B5B5B500B5B5B500848484000000000084848400E7E7E7005252
          5200525252005252520052525200525252005252520052525200636363006363
          630063636300949494006363630000000000000000008484840084848400C6C6
          C600FFFFFF00FFFFFF00C6C6C600FFFFFF008484840000000000848484008484
          8400C6C6C60084848400848484000000000042424200E7E7E700DEDEDE005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
          5A005A5A5A00E7E7E700C6C6C6000000000084848400EFEFEF00EFEFEF00B5B5
          B500E7E7E700D6D6D600C6C6C600A5A5A500B5B5B500DEDEDE00DEDEDE00D6D6
          D600B5B5B500D6D6D600B5B5B500848484000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600636363009C9C
          9C0063636300636363006363630000000000000000008484840084848400C6C6
          C600FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000848484008484
          8400C6C6C600C6C6C600848484000000000042424200E7E7E7005A5A5A00DEDE
          DE00DEDEDE00DEDEDE00C6C6C600C6C6C600C6C6C600DEDEDE00C6C6C600DEDE
          DE00DEDEDE005A5A5A00C6C6C6000000000084848400EFEFEF00EFEFEF00E7E7
          E700B5B5B500C6C6C600B5B5B500D6D6D600D6D6D600A5A5A500DEDEDE00B5B5
          B500D6D6D600D6D6D600B5B5B500848484000000000084848400E7E7E7006363
          6300636363006363630063636300636363006363630063636300636363009C9C
          9C00B5B5B500636363000000000000000000000000008484840084848400C6C6
          C600FFFFFF00FFFFFF0084848400FFFFFF008484840000000000848484008484
          840084848400848484008484840000000000424242005A5A5A0000000000EFEF
          EF00DEDEDE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600DEDEDE00DEDE
          DE00EFEFEF00000000005A5A5A000000000084848400E7E7E700EFEFEF00D6D6
          D600C6C6C600B5B5B500DEDEDE00DEDEDE00DEDEDE00DEDEDE00A5A5A500DEDE
          DE00CECECE00D6D6D600B5B5B500848484000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600636363006363
          6300636363006363630063636300000000000000000084848400C6C6C6008484
          8400C6C6C6008484840084848400FFFFFF008484840000000000C6C6C600C6C6
          C60084848400C6C6C600848484000000000042424200B5B5B50000000000EFEF
          EF00DEDEDE00DEDEDE00C6C6C600DEDEDE00DEDEDE00C6C6C600C6C6C600DEDE
          DE00EFEFEF0000000000B5B5B5000000000084848400E7E7E700DEDEDE00C6C6
          C600B5B5B500E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00A5A5
          A500D6D6D600DEDEDE00B5B5B500848484000000000084848400E7E7E7007373
          7300737373007373730073737300737373007373730073737300C6C6C600B5B5
          B500000000000000000000000000000000000000000084848400FFFFFF008484
          84008484840084848400FFFFFF00C6C6C6008484840000000000C6C6C600C6C6
          C600C6C6C600C6C6C6008484840000000000000000008484840000000000EFEF
          EF00DEDEDE00C6C6C600C6C6C600C6C6C600C6C6C600DEDEDE00C6C6C600DEDE
          DE00EFEFEF0000000000212121000000000084848400E7E7E700D6D6D600B5B5
          B500EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
          E700A5A5A500D6D6D600C6C6C600848484000000000084848400E7E7E700E7E7
          E700E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700B5B5
          B500000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00848484008484840084848400848484008484840084848400000000008484
          8400C6C6C600C6C6C6008484840000000000000000000000000021212100EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
          EF00EFEFEF0000000000000000000000000084848400DEDEDE00B5B5B500F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700EFEFEF00B5B5B500B5B5B500848484000000000084848400E7E7E7008484
          840084848400848484008484840084848400C6C6C600E7E7E700E7E7E700B5B5
          B500000000000000000000000000000000000000000084848400848484008484
          840084848400848484008484840084848400C6C6C600C6C6C600848484008484
          840084848400000000000000000000000000000000000000000000000000EFEF
          EF00DEDEDE00C6C6C600C6C6C600EFEFEF00EFEFEF00EFEFEF00EFEFEF00D6E7
          E700DEDEDE0000000000000000000000000084848400B5B5B500FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F7F7F700A5A5A500848484000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700C6C6C600E7E7E70084848400000000000000
          000000000000000000000000000000000000000000008484840084848400C6C6
          C600C6C6C600C6C6C60084848400848484008484840084848400848484008484
          8400C6C6C600848484008484840000000000000000000000000000000000F7FF
          FF00DEDEDE00DEDEDE00C6C6C600F7FFFF00F7FFFF00F7FFFF00C6C6C6004A4A
          4A004A4A4A000000000000000000000000008484000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848400000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70084848400FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000008484
          840084848400C6C6C60084848400848484008484840084848400C6C6C6008484
          840084848400848484000000000000000000000000000000000000000000F7FF
          FF00DEDEDE00DEDEDE00C6C6C600F7FFFF00F7FFFF00F7FFFF0084848400EFEF
          EF00DEDEDE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400848484008484840084848400000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400DEDE
          DE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00525252006363
          6300424242003939390039393900393939003939390039393900393939003939
          3900393939000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005A5A5A005A5A
          5A005A5A5A0052525200737373006363630063636300636363005A5A5A007373
          7300000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005A5A5A00000000000000
          000000000000000000000000000000000000000000004A4A4A00525252008484
          8400636363004242420063636300636363006363630063636300636363006363
          6300636363003939390000000000000000000000000052525200525252005252
          5200525252005252520052525200525252005252520052525200525252005252
          5200525252005252520052525200000000000000000000000000000000007373
          73005A5A5A004A4A4A0094949400A5A5A5008484840063636300737373000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005A5A5A0084848400525252000000
          0000000000000000000000000000000000000000000000000000525252008484
          84008484840084848400B5B5B500FFFFFF0063636300FFFFFF00B5B5B500B5B5
          B500A5A5A500737373003939390073737300000000009C9C9C00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60052525200000000000000000000000000000000005252
          520094949400C6C6C600B5B5B500A5A5A5008484840084848400000000000000
          0000000000000000000000000000000000000000000084848400B5B5B500B5B5
          B500B5B5B500B5B5B500B5B5B5005A5A5A00848484006363630052525200B5B5
          B500000000000000000000000000000000000000000000000000212121005252
          5200848484008484840042424200636363006363630063636300FFFFFF00CECE
          CE00B5B5B5009C9C9C007373730042424200000000009C9C9C00F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700C6C6C60052525200000000000000000000000000000000008484
          8400CECECE00C6C6C600B5B5B500A5A5A5008484840084848400848484008484
          8400000000000000000000000000000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C6005A5A5A008484840063636300C6C6C600636363005252
          520000000000000000000000000000000000000000003939390063636300B5B5
          B500525252009494940042424200FFFFFF0063636300FFFFFF0063636300E7E7
          E700C6C6C600636363004242420039393900000000009C9C9C00F7F7F700CECE
          CE00CECECE00CECECE0084848400C6C6C60084848400CECECE00CECECE00CECE
          CE00F7F7F700C6C6C60052525200000000000000000000000000848484008484
          840084848400C6C6C600B5B5B500A5A5A5008484840084848400848484008484
          8400848484000000000000000000000000000000000084848400E7E7E7005252
          5200525252005252520063636300636363005252520052525200636363005252
          520000000000000000000000000000000000000000003939390063636300B5B5
          B500D6D6D6005252520063636300424242006363630063636300FFFFFF00F7F7
          F70063636300424242006363630039393900000000009C9C9C00F7F7F700E7E7
          E700CECECE00E7E7E700636363006363630063636300E7E7E700CECECE00E7E7
          E700F7F7F700C6C6C60052525200000000000000000000000000848484008484
          84008484840084848400C6C6C600CECECE00CECECE00CECECE00CECECE00C6C6
          C600848484000000000000000000000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E7006363
          630052525200000000000000000000000000000000003939390063636300B5B5
          B500D6D6D600F7F7F700525252006363630042424200FFFFFF00FFFFFF006363
          630042424200B5B5B5006363630039393900000000009C9C9C00F7F7F700CECE
          CE00CECECE006363630094949400C6C6C6009494940063636300CECECE00CECE
          CE00F7F7F700C6C6C60052525200000000000000000084848400848484008484
          8400848484008484840084848400DEDEDE00D6D6D600D6D6D600CECECE00C6C6
          C600848484000000000000000000000000000000000084848400E7E7E7006363
          6300636363006363630063636300636363006363630063636300C6C6C6006363
          63005252520000000000000000000000000000000000000000004A4A4A00A5A5
          A500CECECE00EFEFEF0063636300525252006363630042424200636363004242
          4200C6C6C6009C9C9C004A4A4A0000000000000000009C9C9C00F7F7F700E7E7
          E700CECECE00E7E7E70094949400E7E7E7009494940063636300CECECE00E7E7
          E700F7F7F700C6C6C60052525200000000000000000084848400848484008484
          84008484840084848400C6C6C600DEDEDE00DEDEDE00D6D6D600CECECE00C6C6
          C600848484008484840000000000000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700B5B5
          B500636363005252520000000000000000000000000000000000393939008484
          8400B5B5B500D6D6D600FFFFFF0063636300525252006363630042424200CECE
          CE00B5B5B500848484003939390000000000000000009C9C9C00F7F7F700CECE
          CE00CECECE00CECECE00636363006363630063636300CECECE00CECECE00CECE
          CE00F7F7F700C6C6C60052525200000000000000000084848400848484008484
          840084848400C6C6C600DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600CECE
          CE00C6C6C6000000000000000000000000000000000084848400E7E7E7007373
          7300737373007373730073737300737373007373730073737300C6C6C600B5B5
          B500636363005252520000000000000000000000000000000000000000004242
          42009C9C9C00B5B5B500C6C6C600848484006363630042424200636363004242
          42009C9C9C00393939000000000000000000000000009C9C9C00F7F7F700E7E7
          E700CECECE006363630094949400E7E7E70094949400E7E7E700CECECE00E7E7
          E700F7F7F700C6C6C60052525200000000000000000084848400848484008484
          84008484840084848400C6C6C600DEDEDE00DEDEDE00DEDEDE005A5A5A00DEDE
          DE00848484000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700B5B5
          B50000000000636363005A5A5A00000000000000000000000000000000000000
          000039393900636363008484840063636300424242009C9C9C009C9C9C006363
          630042424200000000000000000000000000000000009C9C9C00F7F7F700CECE
          CE00CECECE006363630094949400C6C6C6009494940063636300CECECE00CECE
          CE00F7F7F700C6C6C60052525200000000000000000084848400848484008484
          840084848400848484008484840084848400DEDEDE00DEDEDE00848484008484
          8400848484000000000000000000000000000000000084848400E7E7E7008484
          840084848400848484008484840084848400C6C6C600E7E7E700E7E7E700B5B5
          B500000000000000000063636300525252000000000000000000000000000000
          00004A4A4A004A4A4A0063636300424242005A5A5A005A5A5A00313131000000
          000063636300424242000000000000000000000000009C9C9C00F7F7F700E7E7
          E700CECECE00E7E7E700636363006363630063636300E7E7E700CECECE00E7E7
          E700F7F7F700C6C6C60052525200000000000000000084848400848484008484
          840084848400848484008484840084848400C6C6C600DEDEDE00DEDEDE00CECE
          CE00848484000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700C6C6C600E7E7E70084848400000000000000
          00000000000000000000000000006363630000000000000000004A4A4A004A4A
          4A008484840063636300424242007373730094949400848484004A4A4A000000
          000000000000636363004242420000000000000000009C9C9C00F7F7F700CECE
          CE00CECECE00CECECE0084848400C6C6C60084848400CECECE00CECECE00CECE
          CE00F7F7F700C6C6C60052525200000000000000000000000000848484008484
          84008484840084848400848484008484840084848400C6C6C600DEDEDE00CECE
          CE00848484000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70084848400FFFFFF000000
          000000000000000000000000000000000000000000004A4A4A00848484008484
          8400636363004242420094949400B5B5B500A5A5A500DEDEDE00848484003939
          390000000000000000007373730042424200000000009C9C9C00F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700C6C6C60052525200000000000000000000000000848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70084848400000000000000
          0000000000000000000000000000000000004A4A4A0084848400737373006363
          6300424242006363630084848400C6C6C600B5B5B500B5B5B500848484004A4A
          4A0000000000000000000000000000000000000000009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          0000000000000000000000000000000000007373730052525200525252007373
          7300000000006363630039393900636363003939390063636300393939006363
          6300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000848484008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000393939003939390039393900393939003939390039393900393939003939
          3900393939000000000000000000000000004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003939
          3900737373006363630063636300636363006363630063636300636363006363
          6300636363003939390000000000000000004A4A4A00A5A5A500A5A5A5004A4A
          4A00C6C6C600D6D6D600D6D6D600D6D6D6004A4A4A00A5A5A500A5A5A5004A4A
          4A004A4A4A000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000636363006363630063636300636363006363
          6300636363000000000000000000000000000000000000000000000000004A4A
          4A00A5A5A500A5A5A500B5B5B500FFFFFF0063636300FFFFFF00B5B5B500B5B5
          B500A5A5A5007373730039393900000000004A4A4A00A5A5A500A5A5A5004A4A
          4A00C6C6C600C6C6C600C6C6C600D6D6D6004A4A4A00A5A5A500A5A5A5004A4A
          4A00CECECE004A4A4A000000000000000000000000000000000063636300CECE
          CE00949494009494940094949400949494009494940094949400949494009494
          9400949494009494940000000000000000000000000000000000000000000000
          000000000000000000004A4A4A00000000000000000000000000000000006363
          630094949400636363000000000000000000000000000000000021212100A5A5
          A500C6C6C600DEDEDE00FFFFFF00636363006363630063636300FFFFFF00CECE
          CE00B5B5B5009C9C9C0039393900000000004A4A4A00A5A5A500A5A5A5004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00A5A5A500A5A5A5004A4A
          4A00CECECE00CECECE004A4A4A0000000000000000000000000063636300CECE
          CE00B5B5B500C6C6C600B5B5B5009C9C9C00B5B5B5009C9C9C00B5B5B5009494
          9400B5B5B5009494940000000000000000000000000000000000000000000000
          0000000000005A5A5A0000000000000000000000000000000000000000000000
          000063636300949494006363630000000000000000003939390063636300B5B5
          B500D6D6D600F7F7F70063636300FFFFFF0063636300FFFFFF0063636300E7E7
          E700C6C6C600B5B5B50063636300393939004A4A4A00A5A5A500A5A5A500A5A5
          A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5004A4A
          4A00CECECE00CECECE004A4A4A00000000000000000063636300CECECE00B5B5
          B500CECECE00B5B5B500C6C6C600B5B5B5009C9C9C00B5B5B5009C9C9C00B5B5
          B500848484000000000094949400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000063636300949494006363630000000000000000003939390063636300B5B5
          B500D6D6D600F7FFFF00FFFFFF00FFFFFF006363630063636300FFFFFF00F7F7
          F700CECECE00B5B5B50063636300393939004A4A4A00A5A5A500A5A5A500A5A5
          A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5004A4A
          4A00CECECE00CECECE004A4A4A00000000000000000063636300CECECE00CECE
          CE00B5B5B500CECECE00B5B5B500C6C6C600B5B5B5009C9C9C00B5B5B5009C9C
          9C00B5B5B5000000000094949400000000000000000084848400B5B5B500B5B5
          B500B5B5B500B5B5B500B5B5B500B5B5B5000000000000000000636363000000
          000063636300949494006363630000000000000000003939390063636300B5B5
          B500D6D6D600F7F7F700FFFFFF006363630063636300FFFFFF00FFFFFF00EFEF
          EF00D6D6D600B5B5B50063636300393939004A4A4A00A5A5A500A5A5A500A5A5
          A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A5004A4A
          4A00CECECE00CECECE004A4A4A000000000063636300CECECE00C6C6C600B5B5
          B500CECECE00B5B5B500CECECE00B5B5B500C6C6C600B5B5B5009C9C9C00B5B5
          B50000000000B5B5B50094949400000000000000000084848400C6C6C6005252
          5200525252005252520052525200B5B5B5000000000000000000636363006363
          63006363630094949400636363000000000000000000000000004A4A4A00A5A5
          A500CECECE00EFEFEF0063636300FFFFFF0063636300FFFFFF0063636300E7E7
          E700C6C6C6009C9C9C004A4A4A00000000004A4A4A00A5A5A500A5A5A5004A4A
          4A004A4A4A00A5A5A500A5A5A5004A4A4A004A4A4A00A5A5A500A5A5A5004A4A
          4A00CECECE00CECECE004A4A4A000000000063636300CECECE00CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00000000009494940094949400000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700B5B5B5000000000000000000636363009C9C
          9C00636363006363630063636300000000000000000000000000393939008484
          8400B5B5B500D6D6D600FFFFFF00636363006363630063636300FFFFFF00CECE
          CE00B5B5B500848484003939390000000000000000004A4A4A00A5A5A5004A4A
          4A00CECECE004A4A4A00A5A5A5004A4A4A00CECECE004A4A4A00A5A5A5004A4A
          4A00CECECE00CECECE004A4A4A00000000006363630063636300636363006363
          6300636363006363630063636300636363006363630063636300636363006363
          63009C9C9C00B5B5B50094949400000000000000000084848400C6C6C6006363
          6300636363006363630063636300B5B5B5000000000000000000636363009C9C
          9C00B5B5B5006363630000000000000000000000000000000000000000004242
          42009C9C9C00B5B5B500C6C6C600FFFFFF0063636300FFFFFF00CECECE00B5B5
          B5009C9C9C0039393900000000000000000000000000000000004A4A4A004A4A
          4A00CECECE00CECECE004A4A4A004A4A4A00CECECE00CECECE004A4A4A004A4A
          4A00CECECE00CECECE004A4A4A00000000000000000063636300CECECE00B5B5
          B500C6C6C600B5B5B500C6C6C600B5B5B500C6C6C600B5B5B500B5B5B5009C9C
          9C00B5B5B5009C9C9C0094949400000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700B5B5B5000000000000000000636363006363
          6300636363006363630063636300000000000000000000000000000000000000
          000039393900636363009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C007373
          7300393939000000000000000000000000000000000000000000000000004A4A
          4A00CECECE00CECECE00CECECE004A4A4A00CECECE00CECECE00CECECE004A4A
          4A00CECECE00CECECE004A4A4A00000000000000000063636300CECECE00C6C6
          C600B5B5B500C6C6C600B5B5B500C6C6C600B5B5B500E7E7E700CECECE00CECE
          CE00CECECE00CECECE00CECECE00000000000000000084848400C6C6C6008484
          84008484840084848400C6C6C600B5B5B5000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000031313100636363005A5A5A005A5A5A00313131000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A4A4A00CECECE004A4A4A00000000004A4A4A00CECECE004A4A4A000000
          00004A4A4A00CECECE004A4A4A00000000000000000063636300CECECE00B5B5
          B500C6C6C600B5B5B500CECECE00B5B5B5009C9C9C0063636300636363006363
          6300636363006363630063636300636363000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C60084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A4A4A007373730094949400848484004A4A4A000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004A4A4A004A4A4A0000000000000000004A4A4A004A4A4A000000
          0000000000004A4A4A004A4A4A0000000000000000000000000063636300CECE
          CE00CECECE00CECECE00CECECE009C9C9C006363630000000000000000000000
          0000000000000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E70084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003939390094949400B5B5B500A5A5A500DEDEDE00848484003939
          3900000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A4A4A000000000000000000000000004A4A4A000000
          000000000000000000004A4A4A00000000000000000000000000000000006363
          6300636363006363630063636300636363000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006363630084848400C6C6C600B5B5B500B5B5B500848484004A4A
          4A00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006363630039393900636363003939390063636300393939006363
          6300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484008484840084848400848484008484
          840084848400848484008484840084848400D6D6D600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600EFEF
          EF00D6D6D600B5B5B500C6C6C600C6C6C6000000000000000000000000000000
          0000000000000000000000000000000000000000000063636300000000000000
          0000000000000000000000000000000000006363630063636300636363006363
          6300636363006363630063636300636363005A5A5A0000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C60094949400949494009494
          94009C9C9C009C9C9C00F7F7F700B5B5B5009C9C9C009C9C9C00B5B5B500FFFF
          FF00B5B5B500949494009C9C9C009C9C9C000000000000000000000000000000
          0000000000000000000000000000000000006363630084848400636363000000
          0000000000000000000000000000000000006363630073737300737373007373
          730063636300C6C6C600636363005A5A5A005A5A5A0000000000000000000000
          00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60084848400FFFFFF0084848400848484008484
          84008484840084848400FFFFFF0084848400C6C6C60094949400949494009C9C
          9C009494940094949400F7F7F700B5B5B5009494940094949400CECECE00DEDE
          DE00949494009C9C9C0094949400B5B5B50084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600636363009494940073737300636363000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400C6C6C600B5B5B500A5A5A500848484005A5A5A00A5A5A500949494006363
          63005A5A5A0084848400000000000000000084848400FFFFFF00FFFFFF00C6C6
          C600FFFFFF00C6C6C600FFFFFF0084848400FFFFFF008484840084848400FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C60094949400949494009494
          9400949494009C9C9C00F7F7F700B5B5B5009C9C9C0094949400F7F7F700B5B5
          B500949494009C9C9C009C9C9C009C9C9C0084848400F7F7F700848484008484
          84008484840084848400636363009C9C9C0073737300C6C6C600737373006363
          630000000000000000000000000000000000000000000000000084848400C6C6
          C600B5B5B500A5A5A50084848400848484005A5A5A005A5A5A00C6C6C6006363
          63005A5A5A0084848400000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00848484008484
          840084848400FFFFFF00FFFFFF0084848400D6D6D600C6C6C600CECECE00CECE
          CE00B5B5B50094949400F7F7F700C6C6C600B5B5B500DEDEDE00DEDEDE009494
          9400949494009C9C9C00949494009C9C9C0084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F7007373730073737300F7F7F700C6C6C600737373006363
          6300000000000000000000000000000000000000000000000000848484008484
          8400C6C6C6008484840084848400848484005A5A5A00C6C6C600B5B5B500A5A5
          A5008484840000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
          C600FFFFFF00C6C6C600FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008484840084848400FFFFFF0084848400F7F7F700CECECE00C6C6C600CECE
          CE00F7F7F700D6D6D600F7F7F700DEDEDE00DEDEDE00EFEFEF00D6D6D600B5B5
          B500F7F7F7009C9C9C00949494009C9C9C0084848400F7F7F700A5A5A500A5A5
          A500A5A5A500A5A5A500A5A5A500A5A5A500F7F7F700C6C6C600000000007373
          7300636363000000000000000000000000000000000084848400848484008484
          8400C6C6C600D6D6D600D6D6D600C6C6C60084848400B5B5B500A5A5A5008484
          84008484840000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400FFFFFF008484840084848400FFFF
          FF008484840084848400FFFFFF0084848400C6C6C600949494009C9C9C009494
          9400B5B5B500FFFFFF00FFFFFF00B5B5B5009494940094949400C6C6C600F7F7
          F700F7F7F7009C9C9C0094949400B5B5B50084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C600000000007373
          7300636363000000000000000000000000008484840084848400848484008484
          8400C6C6C600D6D6D600D6D6D600C6C6C60084848400A5A5A500848484008484
          84008484840000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
          C600FFFFFF00848484008484840084848400FFFFFF00FFFFFF00848484008484
          840084848400FFFFFF00FFFFFF0084848400C6C6C60094949400949494009494
          940094949400EFEFEF00FFFFFF00B5B5B500949494009494940094949400FFFF
          FF00F7F7F700B5B5B5009C9C9C009C9C9C0084848400F7F7F700949494009494
          940094949400949494009494940094949400F7F7F700C6C6C60000000000C6C6
          C600737373006363630000000000000000008484840084848400848484008484
          8400C6C6C600D6D6D600CECECE00CECECE00C6C6C60084848400D6D6D600D6D6
          D600C6C6C60084848400000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C60094949400949494009494
          9400B5B5B500FFFFFF00FFFFFF00B5B5B5009494940094949400B5B5B500FFFF
          FF00F7F7F7009C9C9C009C9C9C009C9C9C0084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600737373006363630000000000000000008484840084848400848484008484
          840084848400D6D6D600D6D6D6005A5A5A0084848400D6D6D600D6D6D600D6D6
          D600C6C6C60084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF008484840084848400FFFF
          FF008484840084848400FFFFFF0084848400C6C6C6009494940094949400C6C6
          C600F7F7F700C6C6C600FFFFFF00C6C6C600C6C6C600CECECE00EFEFEF00DEDE
          DE00F7F7F7009C9C9C00949494009C9C9C0084848400F7F7F700B5B5B500B5B5
          B500B5B5B500C6C6C600F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000007373730063636300000000008484840084848400848484008484
          840084848400C6C6C600D6D6D600D6D6D60084848400C6C6C600D6D6D600CECE
          CE00CECECE00C6C6C60084848400000000008484840084848400848484008484
          840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600B5B5B500EFEFEF00EFEF
          EF00B5B5B5009C9C9C00CECECE00D6D6D600D6D6D600CECECE00C6C6C6009C9C
          9C00F7F7F7009C9C9C0094949400B5B5B50084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000000000000073737300636363008484840084848400848484008484
          8400848484008484840084848400C6C6C600C6C6C60084848400D6D6D600D6D6
          D6005A5A5A0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400848484008484
          840084848400848484008484840084848400D6D6D600F7F7F700C6C6C6009494
          94009C9C9C0094949400949494009C9C9C00949494009C9C9C009C9C9C009C9C
          9C00F7F7F7009C9C9C00949494009C9C9C0084848400F7F7F7009C9C9C009C9C
          9C00C6C6C600F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000000000000000000000737373000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400C6C6C600D6D6
          D600D6D6D60084848400000000000000000084848400FFFFFF00848484008484
          840084848400848484008484840084848400FFFFFF00FFFFFF00848484008484
          840084848400FFFFFF00C6C6C60084848400FFFFFF00C6C6C600949494009494
          9400949494009C9C9C0094949400949494009494940094949400949494009494
          9400F7F7F7009C9C9C009C9C9C009C9C9C0084848400F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6C60000000000C6C6
          C600000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400C6C6C600C6C6C600848484000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00C6C6C6009C9C9C009494
          9400949494009C9C9C00949494009C9C9C00949494009C9C9C009C9C9C009494
          9400F7F7F700B5B5B5009C9C9C009C9C9C008484840084848400848484008484
          840084848400848484008484840084848400848484008484840000000000C6C6
          C600000000000000000000000000000000000000000000000000848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          840084848400848484008484840084848400DEDEDE00F7F7F700B5B5B5009C9C
          9C00B5B5B500B5B5B50094949400949494009C9C9C00D6D6D600D6D6D600CECE
          CE00FFFFFF00D6D6D600D6D6D600DEDEDE00000000000000000084848400F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000084848400848484008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C6C6C600CECECE00F7F7F700E7E7
          E700F7F7F700CECECE009C9C9C009C9C9C009C9C9C00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484008484840084848400848484008484
          840084848400000000000000000000000000000000009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C00000000000808080000000000080808000000
          0000000000000808080000000000080808000000000000000000080808000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031313100313131000000
          0000000000004242420000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400CECECE00CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00080808000000000000000000000000000000000000000000000000000000
          000000000000000000000000000031313100C6C6C600FFFFFF00C6C6C6000000
          0000424242007373730084848400000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          840084848400848484008484840084848400000000009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C000000000084848400FFFFFF00DEDEDE009494
          940094949400FFFFFF0094949400949494009494940094949400FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          00000000000031313100C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF004242
          420073737300C6C6C600B5B5B5004242420084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00DEDEDE00FFFFFF00DEDEDE00FFFFFF00DEDEDE00FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000003131
          3100C6C6C600FFFFFF00FFFFFF00FFFFFF00CECECE009C9C9C00424242007373
          7300A5A5A500C6C6C600424242000000000084848400FFFFFF00FFFFFF00C6C6
          C600FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C60084848400000000009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C000000000084848400FFFFFF00FFFFFF00A5A5
          A500A5A5A500FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00CECE
          CE0000000000000000000000000000000000000000000000000084848400FFFF
          FF00FFFFFF00FFFFFF00CECECE009C9C9C00CECECE004242420073737300A5A5
          A500B5B5B50042424200000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600848484004A4A4A0000000000000000000000
          00004A4A4A00000000004A4A4A000000000000000000000000004A4A4A000000
          00004A4A4A0000000000000000004A4A4A0084848400FFFFFF00DEDEDE00FFFF
          FF00FFFFFF00DEDEDE00FFFFFF00DEDEDE00FFFFFF00DEDEDE00FFFFFF00CECE
          CE0000000000000000000000000000000000000000000000000000000000FFFF
          FF00CECECE009C9C9C00CECECE009C9C9C004242420073737300A5A5A500B5B5
          B5004242420000000000000000000000000084848400FFFFFF00FFFFFF00C6C6
          C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
          C600FFFFFF00FFFFFF00C6C6C600848484004A4A4A009C9C9C009C9C9C009C9C
          9C004A4A4A009C9C9C004A4A4A009C9C9C009C9C9C009C9C9C004A4A4A009C9C
          9C004A4A4A009C9C9C009C9C9C004A4A4A0084848400FFFFFF00FFFFFF00B5B5
          B500B5B5B500FFFFFF00B5B5B500B5B5B500B5B5B500B5B5B500FFFFFF00CECE
          CE00000000000000000000000000000000000000000031313100DEDEDE004242
          42004242420042424200424242004242420084848400A5A5A500B5B5B5004242
          4200FFFFFF0031313100000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600848484004A4A4A0000000000000000000000
          00004A4A4A00000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
          00004A4A4A0000000000000000004A4A4A0084848400FFFFFF00FFFFFF00DEDE
          DE00FFFFFF00DEDEDE00FFFFFF00DEDEDE00FFFFFF00DEDEDE00FFFFFF00CECE
          CE000808080000000000000000000000000000000000FFFFFF0042424200CECE
          CE00D6D6D600C6C6C600C6C6C600424242004242420084848400424242009C9C
          9C00CECECE00C6C6C600000000000000000084848400FFFFFF00FFFFFF00C6C6
          C600FFFFFF00848484008484840084848400FFFFFF00C6C6C600FFFFFF00C6C6
          C600FFFFFF00FFFFFF00C6C6C600848484004A4A4A009C9C9C009C9C9C009C9C
          9C004A4A4A009C9C9C004A4A4A009C9C9C009C9C9C009C9C9C004A4A4A009C9C
          9C009C9C9C004A4A4A004A4A4A000000000084848400FFFFFF00CECECE00CECE
          CE00DEDEDE00FFFFFF00DEDEDE00CECECE0000000000CECECE00DEDEDE00CECE
          CE00000000000000000000000000000000000000000042424200CECECE00D6D6
          D600D6D6D600C6C6C600C6C6C600C6C6C6004242420042424200CECECE009C9C
          9C009C9C9C00FFFFFF00313131000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600848484004A4A4A00000000004A4A4A000000
          00004A4A4A00000000004A4A4A000000000000000000000000004A4A4A000000
          0000000000004A4A4A004A4A4A000000000084848400FFFFFF00003100000031
          0000CECECE00FFFFFF00CECECE0000310000CECECE0000000000CECECE00CECE
          CE000000000000000000000000000000000042424200CECECE00F7F7F700E7E7
          E700D6D6D600C6C6C600C6C6C600C6C6C600C6C6C600424242009C9C9C00CECE
          CE009C9C9C00CECECE00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
          C600FFFFFF00FFFFFF00C6C6C600848484004A4A4A004A4A4A009C9C9C004A4A
          4A004A4A4A009C9C9C009C9C9C004A4A4A009C9C9C004A4A4A009C9C9C009C9C
          9C004A4A4A009C9C9C009C9C9C004A4A4A0084848400FFFFFF009C9C9C00D6D6
          D60000310000CECECE0000310000CECECE0094949400CECECE00000000000000
          00000808080000000000080808000000000042424200D6D6D600E7E7E700E7E7
          E700D6D6D600C6C6C600C6C6C600C6C6C600C6C6C60042424200CECECE00CECE
          CE00FFFFFF00FFFFFF00FFFFFF00313131008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          84008484840084848400C6C6C600848484004A4A4A0000000000000000000000
          00004A4A4A000000000000000000000000004A4A4A0000000000000000000000
          00004A4A4A0000000000000000004A4A4A0084848400FFFFFF00FFFFFF009C9C
          9C00D6D6D60000310000CECECE0094949400CECECE00949494009C9C9C009C9C
          9C009C9C9C00000000009C9C9C009C9C9C0042424200D6D6D600D6D6D600D6D6
          D600C6C6C600C6C6C600C6C6C600A5A5A500A5A5A50042424200FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C6003131310084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C60084848400000000009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C00000000008484840084848400848484008484
          84009C9C9C00D6D6D60000310000CECECE0094949400C6C6C600C6C6C600C6C6
          C6009C9C9C009C9C9C00B5B5B500B5B5B50042424200C6C6C600CECECE00CECE
          CE00C6C6C600C6C6C600C6C6C60084848400A5A5A5004242420094949400DEDE
          DE00C6C6C60031313100000000000000000084848400FFFFFF00848484008484
          840084848400848484008484840084848400FFFFFF00FFFFFF00848484008484
          840084848400FFFFFF00C6C6C600848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009C9C9C00D6D6D60000310000E7E7E700E7E7E700C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6000000000042424200B5B5B500B5B5
          B500C6C6C600C6C6C600C6C6C6008484840042424200DEDEDE00B5B5B5001818
          18006363630000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C60084848400000000009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C00000000000000000000000000000000000000
          000000000000000000009C9C9C00FFFFFF00FFFFFF00E7E7E700E7E7E700E7E7
          E700E7E7E7009C9C9C00CECECE00CECECE00000000000000000042424200C6C6
          C600C6C6C6009494940094949400424242008484840084848400848484003131
          3100000000000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C00FFFFFF009C9C9C009C9C9C000000000000000000000000004242
          4200424242004242420042424200000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00525252006363
          6300424242000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00525252008484
          8400636363004242420000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000000000000000000000525252008484
          84008484840084848400B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
          B500B5B5B5000000000000000000737373009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
          00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000848484005252
          5200848484008484840042424200E7E7E700C6C6C600E7E7E700C6C6C600E7E7
          E700B5B5B5000000000073737300424242009C9C9C00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F700F7F7F700A5A5A500A5A5A500A5A5A500F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F7009C9C9C000000000000000000000000000000
          0000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004A4A4A004A4A4A0000000000000000000000
          000000000000000000000000000000000000000000000000000084848400E7E7
          E70052525200949494004242420052525200525252005252520052525200C6C6
          C600B5B5B5006363630042424200000000009C9C9C00D6D6D6009C9C9C00D6D6
          D600D6D6D600D6D6D600A5A5A500848484008484840084848400A5A5A500D6D6
          D600D6D6D600D6D6D600F7F7F7009C9C9C000000000000000000000000000000
          000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A00000000000000
          000000000000000000000000000000000000000000000000000084848400E7E7
          E700C6C6C600525252006363630042424200C6C6C600E7E7E700C6C6C600E7E7
          E700636363004242420000000000000000009C9C9C00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F700A5A5A500F7F7F700F7F7F700F7F7F700A5A5A500F7F7
          F700F7F7F700F7F7F700F7F7F7009C9C9C000000000000000000000000000000
          00000000000000000000000000004A4A4A004A4A4A0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
          000000000000000000000000000000000000000000000000000084848400E7E7
          E700636363006363630052525200636363004242420063636300636363006363
          6300424242000000000000000000000000009C9C9C00D6D6D6009C9C9C00D6D6
          D600D6D6D600D6D6D600A5A5A500848484008484840084848400A5A5A500D6D6
          D600D6D6D600D6D6D600F7F7F7009C9C9C000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A0000000000000000000000000000000000000000000000000084848400E7E7
          E700C6C6C600E7E7E700C6C6C600525252006363630042424200636363004242
          4200B5B5B5000000000000000000000000009C9C9C00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F700A5A5A500F7F7F700F7F7F700F7F7F700A5A5A500F7F7
          F700F7F7F700F7F7F700F7F7F7009C9C9C00000000004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400E7E7
          E70073737300737373007373730073737300525252006363630042424200C6C6
          C600B5B5B5000000000000000000000000009C9C9C00D6D6D6009C9C9C00D6D6
          D600D6D6D600D6D6D600A5A5A500848484008484840084848400A5A5A500D6D6
          D600D6D6D600D6D6D600F7F7F7009C9C9C000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400E7E7
          E700E7E7E700E7E7E700C6C6C600848484006363630042424200636363004242
          4200B5B5B5000000000000000000000000009C9C9C00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F700A5A5A500F7F7F700F7F7F700F7F7F700A5A5A500F7F7
          F700F7F7F700F7F7F700F7F7F7009C9C9C00000000004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000000000000000000000000000000000
          00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A0000000000000000000000000000000000000000000000000084848400E7E7
          E7008484840084848400848484006363630042424200C6C6C600E7E7E7006363
          6300424242000000000000000000000000009C9C9C00D6D6D6009C9C9C00D6D6
          D600D6D6D600D6D6D600A5A5A500848484008484840084848400A5A5A500D6D6
          D600D6D6D600D6D6D600F7F7F7009C9C9C000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
          000000000000000000000000000000000000000000000000000084848400E7E7
          E7004A4A4A004A4A4A006363630042424200C6C6C600E7E7E700848484000000
          0000636363004242420000000000000000009C9C9C00F7F7F7009C9C9C00F7F7
          F700F7F7F700F7F7F700F7F7F700A5A5A500A5A5A500A5A5A500F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F7009C9C9C000000000000000000000000000000
          00000000000000000000000000004A4A4A004A4A4A0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A00000000000000
          00000000000000000000000000000000000000000000000000004A4A4A004A4A
          4A00848484006363630042424200E7E7E700E7E7E700E7E7E70084848400FFFF
          FF00000000006363630042424200000000009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
          000000000000000000004A4A4A004A4A4A004A4A4A004A4A4A00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004A4A4A004A4A4A0000000000000000000000
          000000000000000000000000000000000000000000004A4A4A00848484008484
          84006363630042424200E7E7E700E7E7E700E7E7E700E7E7E700848484000000
          0000000000000000000073737300424242009C9C9C00D6D6D6009C9C9C00D6D6
          D600D6D6D600D6D6D6009C9C9C00D6D6D600D6D6D600D6D6D6009C9C9C00D6D6
          D600D6D6D600D6D6D600D6D6D6009C9C9C000000000000000000000000000000
          0000000000004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004A4A4A0084848400737373006363
          6300424242008484840084848400848484008484840084848400848484000000
          0000000000000000000000000000000000009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C
          9C009C9C9C009C9C9C009C9C9C009C9C9C000000000000000000000000000000
          00004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A0000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000007373730052525200525252007373
          7300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006363630063636300636363006363
          6300636363006363630063636300636363006363630063636300636363006363
          6300636363006363630063636300636363000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6C6C600292929003131310000000000000000000000
          0000000000000000000000000000000000009494940094949400949494009494
          94009494940094949400949494009494940063636300CECECE00949494009494
          9400949494009494940094949400636363000000000000000000000000008484
          8400B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
          B500B5B5B500B5B5B50000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CECECE00C6C6C6008484840000000000000000004A4A4A00525252000000
          0000000000000000000000000000000000009494940094949400949494009494
          94009494940094949400949494009494940063636300CECECE00A5A5A5009494
          9400949494009494940094949400636363000000000000000000000000008484
          8400E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B50000000000000000000000000084848400B5B5B500B5B5
          B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
          B500000000000000000000000000000000000000000000000000DEDEDE00D6D6
          D6008484840084848400C6C6C600292929003131310000000000000000005A5A
          5A00636363000000000000000000000000009494940094949400949494009494
          94009494940094949400949494009494940063636300CECECE00A5A5A500A5A5
          A500949494009494940094949400636363000000000000000000000000008484
          8400E7E7E7005252520052525200525252005252520052525200525252005252
          5200C6C6C600B5B5B50000000000000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600000000000000
          000000000000000000000000000000000000000000008484840084848400A5A5
          A500CECECE00C6C6C600C6C6C60029292900313131004A4A4A00525252000000
          0000000000007373730000000000000000000000000000000000000000000000
          000000000000E7E7E700E7E7E700E7E7E70063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000000000000000000000000000008484
          8400E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B50000000000000000000000000084848400E7E7E7005252
          5200525252005252520000000000000000000000000000000000000000005A5A
          5A005A5A5A005A5A5A00000000006363630084848400A5A5A500DEDEDE00D6D6
          D600CECECE00C6C6C600C6C6C60029292900313131004A4A4A00525252005A5A
          5A00636363000000000000000000000000000000000000000000000000000000
          00000000000063636300636363006363630063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000000000000000000000000000008484
          8400E7E7E7006363630063636300636363006363630063636300636363006363
          6300C6C6C600B5B5B50000000000000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C60000000000000000008484840084848400848484006363
          63006363630063636300000000008484840084848400FFFFFF00DEDEDE00D6D6
          D600CECECE00C6C6C600FFFFFF0029292900313131004A4A4A00525252005A5A
          5A00636363007373730084848400000000000000000000000000000000006363
          63000000000084848400848484008484840063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000000000000000000000000000008484
          8400E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B50000000000000000000000000084848400E7E7E7006363
          6300636363006363630000000000949494000000000000000000B5B5B500B5B5
          B5008484840084848400000000009494940084848400FFFFFF00DEDEDE00D6D6
          D600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C6004A4A4A00525252005A5A
          5A00636363007373730084848400000000000000000000000000000000006363
          6300A5A5A50084848400848484008484840063636300CECECE0042424200A5A5
          A500424242000000000000000000000000000000000000000000000000008484
          8400E7E7E7007373730073737300737373007373730073737300737373007373
          7300C6C6C600B5B5B50000000000000000000000000084848400E7E7E700C6C6
          C600E7E7E700C6C6C60000000000C6C6C6009494940000000000C6C6C600C6C6
          C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00D6D6D600CECECE006363630073737300C6C6C600C6C6C600C6C6C6005A5A
          5A00636363007373730084848400000000000000000000000000000000006363
          6300CECECE00A5A5A500848484008484840063636300CECECE00FFFFFF00A5A5
          A500424242000000000000000000000000000000000000000000000000008484
          8400E7E7E700E7E7E700E7E7E700C6C6C600E7E7E700C6C6C600E7E7E700C6C6
          C600E7E7E700B5B5B50000000000000000000000000084848400E7E7E7007373
          730073737300737373007373730000000000C6C6C60094949400000000000000
          00000000000000000000000000000000000084848400FFFFFF00DEDEDE00D6D6
          D600525252004A4A4A00D6D6D600CECECE00CECECE0084848400848484000000
          0000C6C6C600737373008484840000000000A5A5A500A5A5A500A5A5A500A5A5
          A500CECECE00CECECE00A5A5A5008484840063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000000000000000000000000000006363
          6300E7E7E7008484840084848400848484008484840084848400C6C6C600E7E7
          E700E7E7E700B5B5B50000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700C6C6C600E7E7E700C6C6C6000000000000000000949494000000
          000000000000000000000000000000000000000000008484840084848400FFFF
          FF00DEDEDE00C6C6C600D6D6D6008484840084848400C6C6C600C6C6C6000000
          0000DEDEDE00000000000000000000000000CECECE00E7E7E700E7E7E700E7E7
          E700E7E7E700E7E7E700CECECE006363630063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000000000000063636300000000006363
          6300E7E7E70063636300E7E7E700E7E7E700E7E7E700C6C6C600E7E7E7008484
          8400000000000000000000000000000000000000000084848400E7E7E7008484
          840084848400848484008484840084848400C6C6C600E7E7E700E7E7E7009494
          9400000000000000000000000000000000000000000000000000000000008484
          840084848400FFFFFF0084848400C6C6C600C6C6C600C6C6C600D6D6D600CECE
          CE00000000000000000000000000000000006363630063636300636363006363
          6300E7E7E700CECECE00636363008484840063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000000000000000000000636363006363
          630063636300E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E7008484
          8400E7E7E7000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700C6C6C600E7E7E70084848400000000000000
          0000949494000000000000000000000000000000000000000000000000000000
          0000000000008484840084848400C6C6C600CECECE00CECECE00CECECE00D6D6
          D600CECECE000000000000000000000000000000000000000000000000006363
          6300CECECE0063636300848484008484840063636300CECECE00A5A5A500A5A5
          A500424242000000000000000000000000006363630063636300636363008484
          8400636363006363630063636300E7E7E700E7E7E700E7E7E700E7E7E7008484
          8400000000000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70084848400FFFFFF000000
          0000000000009494940000000000000000000000000000000000000000000000
          000000000000000000000000000094949400D6D6D600CECECE00D6D6D600CECE
          CE00F7FFFF00F7FFFF0000000000000000000000000000000000000000006363
          63006363630084848400848484008484840084848400E7E7E700A5A5A500A5A5
          A500424242000000000000000000000000000000000000000000636363006363
          6300636363008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000084848400E7E7E700E7E7
          E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E70084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000094949400D6D6D600F7FFFF00F7FF
          FF00949494009494940000000000000000000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400E7E7E700A5A5
          A500424242000000000000000000000000000000000063636300000000006363
          6300000000006363630000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B5B5B500B5B5B500B5B5
          B500000000000000000000000000000000000000000000000000000000000000
          000000000000848484008484840084848400848484008484840084848400E7E7
          E700424242000000000000000000000000000000000000000000000000006363
          6300000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000525252000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000636363006363630000000000000000000000
          000000000000000000000000000000000000000000004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000000000000000000000000000000000
          0000737373000000000000000000000000008484840084848400848484008484
          8400848484000000000000000000000000000000000000000000000000008484
          8400848484008484840084848400000000000000000000000000525252005252
          5200525252005252520052525200000000000000000000000000000000005252
          5200525252000000000000000000000000000000000000000000000000000000
          0000000000000000000063636300E7E7E700A5A5A50063636300000000000000
          000000000000000000000000000000000000000000004A4A4A004A4A4A000000
          000000000000000000004A4A4A00000000000000000000000000000000007373
          73007373730073737300000000000000000084848400DEDEDE00C6C6C600C6C6
          C600C6C6C600848484008484840084848400848484008484840000000000C6C6
          C600DEDEDE00C6C6C600848484000000000000000000525252005A5A5A005A5A
          5A005A5A5A005A5A5A0052525200000000000000000000000000000000008484
          8400525252000000000000000000000000000000000000000000000000000000
          00000000000063636300E7E7E700A5A5A500E7E7E700A5A5A500636363000000
          00000000000000000000000000000000000000000000000000004A4A4A004A4A
          4A00000000000000000000000000000000000000000000000000000000007373
          73007373730073737300000000000000000084848400D6D6D600C6C6C600C6C6
          C600C6C6C6008484840000000000C6C6C600848484008484840000000000C6C6
          C600DEDEDE00C6C6C60084848400000000005A5A5A0073737300737373007373
          73005A5A5A005252520000000000000000000000000018181800848484008484
          8400848484005252520052525200000000000000000000000000000000000000
          00000000000000848400A5A5A500E7E7E700CECECE00D6D6D600B5B5B5006363
          6300000000000000000000000000000000000000000000000000000000004A4A
          4A004A4A4A000000000000000000000000000000000000000000737373007373
          73007373730073737300737373000000000084848400DEDEDE00C6C6C600C6C6
          C600C6C6C6008484840000000000C6C6C600848484008484840000000000C6C6
          C600DEDEDE00C6C6C60084848400000000005A5A5A00DEDEDE00848484003131
          3100525252000000000000000000000000001818180084848400848484008484
          8400848484008484840063636300525252000000000000000000000000000000
          000063636300B5B5B500E7E7E700CECECE00D6D6D600E7E7E700A5A5A500E7E7
          E700636363000000000000000000000000000000000000000000000000000000
          00004A4A4A004A4A4A0000000000000000000000000000000000737373007373
          73007373730073737300737373000000000084848400D6D6D600C6C6C600C6C6
          C600C6C6C600C6C6C60084848400848484008484840084848400848484008484
          8400C6C6C600C6C6C60084848400000000005A5A5A00DEDEDE00636363005252
          52000000000000000000000000005A5A5A0084848400C6C6C600A5A5A5008484
          8400848484008484840063636300525252000000000000000000000000008484
          840063636300E7E7E700CECECE00D6D6D600E7E7E700A5A5A500E7E7E700A5A5
          A500C6C6C600636363000000000000000000000000004A4A4A00000000000000
          0000000000004A4A4A004A4A4A00000000000000000000000000000000000000
          00007373730000000000000000000000000084848400DEDEDE00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60084848400000000005A5A5A00DEDEDE00737373006363
          630018181800000000000000000084848400EFEFEF00DEDEDE00C6C6C600A5A5
          A500848484008484840063636300525252000000000000000000000000008484
          840063636300CECECE00D6D6D600E7E7E700A5A5A500E7E7E700A5A5A500C6C6
          C600C6C6C600B5B5B5006363630000000000000000004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000000000000000000000000000000000
          00007373730000000000000000000000000084848400D6D6D600C6C6C600C6C6
          C600848484008484840084848400848484008484840084848400848484008484
          8400C6C6C600C6C6C60084848400000000005A5A5A00DEDEDE00949494007373
          73006363630052525200000000000000000084848400EFEFEF00DEDEDE00C6C6
          C600A5A5A5008484840052525200525252000000000000000000000000008484
          84008484840063636300B5B5B500A5A5A500E7E7E700A5A5A500C6C6C600C6C6
          C600B5B5B5000063630021212100000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007373730000000000000000000000000084848400DEDEDE00C6C6C6008484
          8400DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00DEDEDE00C6C6C60084848400000000005A5A5A00DEDEDE00EFEFEF009494
          940073737300636363004A4A4A004A4A4A004A4A4A0084848400EFEFEF00DEDE
          DE00C6C6C600848484006363630052525200000000000000000000000000A5A5
          A500A5A5A5008484840063636300E7E7E700B5B5B500C6C6C600C6C6C600A5A5
          A50063636300393939000000000000000000000000004A4A4A004A4A4A004A4A
          4A00000000004A4A4A004A4A4A004A4A4A000000000000000000000000000000
          00007373730000000000000000000000000084848400D6D6D600C6C6C6008484
          8400DEDEDE00D6D6D600DEDEDE00D6D6D600DEDEDE00D6D6D600DEDEDE00D6D6
          D600DEDEDE00C6C6C60084848400000000005A5A5A00EFEFEF00949494004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A0084848400EFEF
          EF004A4A4A00B5B5B5006363630052525200000000000000000000000000A5A5
          A500B5B5B500B5B5B5008484840063636300B5B5B500319C9C00636363006363
          63000000000000000000000000000000000000000000737373004A4A4A000000
          000000000000000000004A4A4A00737373000000000000000000000000000000
          00007373730000000000000000000000000084848400DEDEDE00C6C6C6008484
          8400DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00DEDEDE00C6C6C60084848400000000005A5A5A00DEDEDE004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A008484
          84004A4A4A004A4A4A006363630052525200000000000000000094949400C6C6
          C600B5B5B500B5B5B50084848400848484006363630063636300000000000000
          00000000000000000000000000000000000000000000000000004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00000000000000000000000000000000000000
          00007373730000000000000000000000000084848400D6D6D600C6C6C6008484
          8400DEDEDE00D6D6D600DEDEDE00D6D6D600DEDEDE00D6D6D600DEDEDE00D6D6
          D600DEDEDE00C6C6C60084848400000000005A5A5A0094949400737373004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A0094949400313131000000000094949400B5B5B5008484
          8400949494000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000737373004A4A
          4A00000000004A4A4A0073737300000000000000000000000000000000000000
          00007373730000000000000000000000000084848400DEDEDE00C6C6C6008484
          8400DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00DEDEDE00C6C6C6008484840000000000000000005A5A5A00949494007373
          73004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A0073737300525252000000000094949400A5A5A500848484009494
          9400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004A4A
          4A004A4A4A004A4A4A0000000000000000000000000000000000000000000000
          00007373730000000000000000000000000084848400D6D6D600C6C6C6008484
          8400DEDEDE00D6D6D600DEDEDE00D6D6D600DEDEDE00D6D6D600DEDEDE00D6D6
          D600DEDEDE0000000000848484000000000000000000000000005A5A5A005A5A
          5A005A5A5A005252520052525200525252005252520052525200525252005252
          5200525252005252520000000000000000008484840084848400949494000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007373
          73004A4A4A007373730000000000000000000000000000000000000000000000
          00007373730000000000000000000000000084848400DEDEDE00C6C6C6008484
          8400DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00DEDEDE00C6C6C60084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A4A4A000000000000000000000000000000000000000000000000000000
          0000737373000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          840084848400848484008484840000000000424D3E000000000000003E000000
          2800000040000000F00000000100010000000000800700000000000000000000
          000000000000000000000000FFFFFF0086010000000000008201000000000000
          C200000000000000E000000000000000F001000000000000F001000000000000
          8001000000000000800100000000000080030000000000008007000000000000
          800700000000000080130000000000008039000000000000807C000000000000
          00FF00000000000001FF000000000000C7E3FFFFFFC7E001C7E3F81FFF81C001
          C7E3C003FE008001C7E38001F8038001C7E38001E0078001C7E3800180078001
          C007800100078001C00F800100078001C007800100078001C7E3800100078001
          C7E3800300078001C7E3C007000F8001C7E3E007001F8001C003F01F003F8001
          C007F83F03FF8003C00FFFFF8FFF8007FFFFFFFFFFFF80008003FE7FFFCF0000
          8003FC3FFFC70000C3FBF003F8030000E1FBE003F8010000F0FFC003F8038000
          F87FC003FFC70000FC3FC003FFCF0000FC3FC003F3FF0000F87F8001E3FF8000
          F0FF8003C03F8000E1FBC007803F8000C3FBE00FC03F80008003F03FE3FF8000
          8003F93FF3FF8000FFFFFFFFFFFF803EFFBFFFFFFFFFFFFF001FFFFFFFFFFE7F
          001FF3FFFFEFFC3F0007E1FFFFC7F9BF0007E0FDBF07F9DF0007C07DBE03E0FF
          0007C03D9C03F1FF000380399C01F3DF000380FBDF01FB8F0001F0FBDF0FFF07
          0004F873CE1FFB070006F837EC1FFD9F0007FC07E03FFD9F0007FE0FF07FFC3F
          C007FF1FF8FFFE3FC007FFFFFFFFFFFFFC03FE01FFFFCE0FFC03FE01FFFFC007
          FC03F801FCFFC007FC03F801F33FC007E003E001F7B7C007E003E001EFE3C807
          E003E001EFCFC807E003E001F41FC807E007E003F5FFC807E00FE007F83FC807
          E01FE00FFBFF8807A01FA01FF3FF9C07C03FC03FF3FF9C0B007F007FF3FF9E13
          C7FFC7FFFFFF8007ABFFABFFFFFFC003FFFFFFFFFFF887FFCFE3FFFFFFF083FF
          C7E3FFE3FFE0C3FEC3E3FFC3FFC1E1FCC1E3FF83FF83F1F9C0E3FF07FF07F8F3
          C063F00FE00FFC67C023E01FC01FFE0FC023C03F803FFF1FC063C03F003FFE0F
          C0E3C03F003FFC67C1E3C03F003FF0F3C3E3E07F003FC1F9C7E3F0FF807F83FC
          CFE3FFFFC0FF07FFFFFFFFFFE1FF0FFFFFFFFFFFFFFFFFFF00FFC7F3FF9FF3FF
          0020C7E3FF1FF1FF0000C7C3FE1FF0FF0000C783FC1FF07F0000C703F81FF03F
          0020C603F01FF01F00E0C403E01FF00F00FFC403E01FF00F00FFC603F01FF01F
          00FFC703F81FF03F01FFC783FC1FF07F03FFC7C3FE1FF0FFFFFFC7E3FF1FF1FF
          FFFFC7F3FF9FF3FFFFFFFFFFFFFFFFFFFE07FE3F0000FFFFFDE3E0070000FFFF
          8001800100000000800100000000000080010000000000008001000000000000
          8001000000000000800300000000000080010000000000008007000080010000
          80070000C003000080070000C003000080070000C0030000800FC001C003FFFF
          801FF80FC007FFFF803FFFFFC00FFFFF8007FFFFC00FFFBF80038001E01F8007
          C0008001E03F8007C0008001E00F800780008001C007800780008001C0078007
          8000800180078007C001800180038003C001800180078003E003800180078001
          F007800180078004F013800180078006C0198001C007800F800C8001C007801F
          000F8001E007803F080FFFFFF00FFFFFFFFFFFFFFFFFF007000FFFFFFFFFE003
          0007E000FE07E0010003C000FDE3C0010001C000FBF180000001800080718000
          0001800080518000000100008041C001000100008041C001800100008043E003
          C00180008041F007E0018000807FFC1FF1118000807FFC1FF999C07F80FFF80F
          FDDDE0FF81FFF80FFFFFFFFFFFFFF80FFE000000FFBF007F00000000001F007F
          00000000001F8003000000000007C003000000000007C0070000000000078007
          0000000000070007000000000003000300000000000300030000000000010001
          000000000004000300000000000680030000000000078001000000000007C001
          00000000C007FC01FFFF0000C007FE0780010007FF18FFFFFFFF0007FC000000
          80010007F0000000FFFF0007C001000080010007C003000075D60007C0030000
          00000007800300007416000700010000000100078001000055D9000700000000
          000000000000000077760000000000008001000000010000FFFFF80080030000
          8001FC00C0070000FFFFFE00E00FFFFF87FFFFFFFFFFFFFF8003FFFFFFFF8001
          C0020000F00FFFFFC0000000F81FFE7FC0010000FC3FFC3FC0030000FE7FF81F
          C0030000FFFFF00FC00300008001FFFFC0030000FFFFFFFFC00300008001F00F
          C0030000FFFFF81FC0030000FE7FFC3FC0010000FC3FFE7F800C0000F81FFFFF
          001F0000F00F80010FFFFFFFFFFFFFFFFC7F0000E001FFFFF01F0000E0018007
          C0070000E001800780010000E00180008001F807E00180000001F807E0018000
          0000E807E00180000000E007E00180000000E007E001800700000007E0018007
          80010007A0018007E0070007C0038003F803E0070007800BFE00E007C00F801F
          FF03F807ABFF803FFF8FF807EFFFFFFFFFFFFFFFFFFF8001FFF7FE7F81F70000
          C1E7FC3F9DE3000081C7F81FCFE300000381F80FE7C100000700F007F3C10000
          0E00E003B9F700000600E00181F700000300E001FFF700000000E00388F70000
          0000E00F9CF700000000C03FC1F70000000087FFC9F7000080010FFFE3F70000
          C0031FFFE3F70000FFFFFFFFF7F7800100000000000000000000000000000000
          000000000000}
      end
      inherited ilColor: TImageList
        Bitmap = {
          494C01013B007800840010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          000000000000360000002800000040000000F0000000010020000000000000F0
          000000000000000000000000000000000000000000003131CE003131CE000000
          FF0000009C000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003131CE003131CE000063
          FF000000FF0000009C000000000084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000CEFF0000CEFF0000CE
          FF0000CEFF0000CEFF000000000000000000000000000000000000CEFF0000AD
          FF0000B5FF0000BDFF0000BDFF000000000000000000000000000000000000AD
          FF00000000000000000000000000000000000000000000000000000000000000
          000000A5FF0000ADFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003131CE00319C
          FF000063FF000000CE0000000000848484009CFFFF00CE310000CE310000CE31
          0000CE310000C6C6C600000000000000FF000000000000D6FF0000D6FF0000CE
          FF0000C6FF0000000000000000000000000000000000000000000000000000C6
          FF0000C6FF0000CEFF0000CEFF0000000000000000000000000000C6FF0000BD
          FF0000ADFF000000000000A5FF00000000000000000000A5FF000000000000A5
          FF0000ADFF0000ADFF0000B5FF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003131
          CE00319CFF000000FF0000009C0084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00C6C6C6000000FF0000009C000000000000DEFF0008D6FF0000D6
          FF0000CEFF0000CEFF000000000000000000000000000000000000C6FF0000CE
          FF0000D6FF0000D6FF0000DEFF00000000000000000000CEFF0000D6FF0000CE
          FF0000C6FF0000B5FF0000A5FF00000000000000000000ADFF0000BDFF0000BD
          FF0000BDFF0000BDFF0000BDFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000CE000063FF0000009C00848484009CFFFF00FF000000FF000000FF00
          0000FF0000000000FF0000009C00000000000000000000E7FF0010BDFF0000D6
          FF0000CEFF0000CEFF0000CEFF00000000000000000000CEFF0000D6FF0000DE
          FF0000E7FF0000BDFF0000EFFF0000000000000000000000000000D6FF0000D6
          FF0000CEFF0000C6FF0000ADFF00000000000000000000B5FF0000CEFF0000CE
          FF0000CEFF0000CEFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000848484000000CE000000FF0000009C00FFFFFF009CFFFF00FFFFFF009CFF
          FF000000FF0000009C0000000000000000000000000000B5FF00FFCEAD0000BD
          FF0000CEFF0000BDFF000000000000000000000000000000000000C6FF0000EF
          FF0000BDFF000000000000B5FF000000000000000000000000000000000000E7
          FF0000DEFF00CECEBD00D6D6C600FFD6B500FFD6B500EFCEB500E7CEB50000DE
          FF0000DEFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000084848400FFFFFF000000CE000000FF0000009C00FF633100FF6331000000
          FF0000009C00C6C6C60000000000000000000000000000000000FFCEAD000000
          000000B5FF0000000000000000000000000000000000000000000000000000BD
          FF0000000000000000000000000000000000000000000000000000EFFF0000E7
          FF0000DEFF007BA5A50000BDFF00000000000000000000C6FF0084DED60000E7
          FF0000E7FF0000E7FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400C6C6C600C6C6
          C600848484009CFFFF00FF0000000000CE000000FF0000009C000000FF000000
          9C00848484000000000000000000000000000000000000000000FFCEAD000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000ADA59C0000000000000000000000000000000000FFD6B5000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484009CFFFF00CE31
          000084848400FFFFFF009CFFFF00848484000000CE000000FF0000009C00FFFF
          FF00848484000000000000000000000000000000000000000000FFCEBD000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B5B5A50000000000000000000000000000000000FFD6B5000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF009CFF
          FF00848484009CFFFF00FF6331000000CE000000FF0000009C000000CE000000
          9C00848484000000000000000000000000000000000000000000FFDEBD000000
          000000ADFF0000000000000000000000000000000000000000000000000000B5
          FF0000000000000000000000000000000000000000000000000000CEFF0000C6
          FF0000BDFF00ADBDBD0000B5FF00000000000000000000B5FF00BDCECE0000C6
          FF0000C6FF0000D6FF0000D6FF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484009CFFFF00FF00
          000084848400FFFFFF000000CE000000FF0000009C0084848400000000000000
          CE0000009C0000000000000000000000000000000000009CFF00FFCEBD0000AD
          FF0000A5FF0000B5FF000000000000000000000000000000000000BDFF0000BD
          FF0000B5FF0000000000009CFF0000000000000000000000000000C6FF0000BD
          FF0000BDFF007BB5BD00528C9C00848473008C847B007B9494008CC6C60000D6
          FF0000D6FF0000CEFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF009CFF
          FF000000CE000000CE000000FF0000009C00FFFFFF0084848400000000000000
          00000000CE0000009C0000000000000000000000000000BDFF0010B5FF0000BD
          FF0000BDFF0000B5FF0000C6FF00000000000000000000CEFF0000D6FF0000CE
          FF0000C6FF0000B5FF0000B5FF0000000000000000000000000000C6FF0000C6
          FF0000CEFF0000D6FF0000B5FF00000000000000000000ADFF0000DEFF0000D6
          FF0000D6FF0000C6FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000848484000000CE000000
          CE00319CFF000000FF0000009C00848484008484840084848400000000000000
          0000000000000000CE0000009C00000000000000000000CEFF0008CEFF0000CE
          FF0000CEFF0000C6FF000000000000000000000000000000000000CEFF0000D6
          FF0000CEFF0000C6FF0000BDFF00000000000000000000C6FF0000D6FF0000D6
          FF0000DEFF0000E7FF0000B5FF00000000000000000000A5FF0000E7FF0000DE
          FF0000D6FF0000CEFF0000C6FF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE00319CFF000063
          FF000000FF0000009C0084848400000000000000000000000000000000000000
          000000000000000000000000CE0000009C000000000000DEFF0000DEFF0031DE
          EF0039CEEF00FFD6B500FFD6B500FFD6B500FFD6B500FFCEAD00FFCEAD0031CE
          EF0031D6EF0000D6FF0000CEFF00000000000000000000C6FF0000E7FF0000E7
          FF0000BDFF0000B5FF0000B5FF00000000000000000000A5FF0000ADFF0000B5
          FF0000DEFF0000D6FF0000C6FF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000CE00319CFF000063FF000000
          FF0000009C00FFFFFF0084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000EFFF0000EFFF0000EF
          FF0000EFFF0000CEFF000000000000000000000000000000000000D6FF0000F7
          FF0000E7FF0000DEFF0000D6FF0000000000000000000000000000C6FF0000C6
          FF00000000000000000000000000000000000000000000000000000000000000
          000000B5FF0000BDFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000063639C000000CE000000CE006363
          9C00848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006B9C8C006B9C
          8C006B9C94000000000000000000000000000000000000000000000000006B9C
          8C006B9C8C006B9C8C0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004A4A4A000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA594000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA58C0000000000000000000000000000000000000000000000
          0000000000008C7BAD0073529C00523984004A31840063398400846BA5000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000D6F7FF000000
          0000000000004A4A4A004A4A4A00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA594000000000000000000000000000000000000000000000000006BA5
          94006BA58C006BA58C0000000000000000000000000000000000523184004210
          9C004218AD004218B5004218B5004210B5004218B5004218B5005221C6006331
          C6005A29B5007352B50000000000000000000000000000000000000000000000
          000000000000000000000000000000000000D6F7FF00D6F7FF00D6F7FF000000
          0000000000004A4A4A004A4A4A004A4A4A000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400C6C6C600C6C6
          C600C6C6C60000000000000000000000000000000000000000006BA58C006BA5
          8C006BA594000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA58C000000000000000000000000008463CE005A29CE005229
          CE005229C6004A21BD004A18B5004218B5004218BD005221BD004A18BD005229
          C6005229CE005A29CE004218BD00000000000000000000000000000000000000
          00000000000000000000D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF000000
          0000000000004A4A4A00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000008484840084848400C6C6
          C600C6C6C60000000000000000000000000000000000000000006BA58C006BA5
          8C006BA594000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA594000000000000000000000000006331C600734AE7006B42
          DE006B42E7006B42DE006331D6006339D6006B39D6005A31C6005A29C6005221
          BD005221C6006339D6005A29CE00000000000000000000000000000000000000
          0000D6F7FF00D6F7FF00DE4A0000DE4A0000D6F7FF00D6F7FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00848484008484
          8400C6C6C60000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA594000000000000000000000000006B42DE006B42DE007B52
          E700734AE7006B42E7006B42E7007B4AE7007B52E700845AE7006B39CE005A29
          C6004A18BD005229C6005A29CE00000000000000000000000000D6F7FF00D6F7
          FF0000009400D6F7FF00DE4A00009431000094310000D6F7FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF008484
          84008484840000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C006BA58C0063A58C0063A58C0063A58C006BA58C006BA58C006BA5
          8C006BA58C00000000000000000000000000000000006B42E7007B4AE7008452
          EF00734AE7007B52EF00845AE700BDA5E700D6CEDE00DECEE700A57BE700734A
          DE005221BD004A21BD005229AD000000000000000000D6F7FF00D6F7FF000000
          940000009400D6F7FF00D6F7FF00D6F7FF0094310000D6F7FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
          00008484840000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C006BA58C006BA58C006BA58C006BA58C006BA58C006BA58C006BA5
          8C000000000000000000000000000000000000000000734AE7007B4AE7007B52
          EF00946BE700B59CDE00D6C6D600DECED600E7DEDE00DED6D600D6CEE7008C63
          E7005221BD005221BD0042188C000000000000000000D6F7FF0000009400D6F7
          FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00734A0000D6F7FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C0063A594006BA594006BA594006BA594006BA58C006BA58C006BA5
          8C006BA58C00000000000000000000000000000000006339BD006B42A500845A
          94009C849C00AD9CAD00CEC6CE00E7DEE700DED6DE00D6C6CE00EFE7E700AD8C
          C6006339CE005A31C6004A2984000000000000000000D6F7FF000000DE00D6F7
          FF00D6F7FF00D6F7FF00D6F7FF00734A0000734A0000D6F7FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA58C0000000000000000000000000039104A00634284008463
          94007B5A7B006B426B00522952005A315A007B5273008C6B8C008C738C006339
          6300734AAD006339BD008C73A5000000000000000000D6F7FF000000DE00D6F7
          FF00D6F7FF00D6F7FF00734A0000734A0000D6F7FF00D6F7FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA594000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA59400000000000000000000000000421873006331BD006B39
          BD006B39C6006B39BD007B4ABD008452BD008C63B5008463A5007B5A94007352
          840073527B0063397300000000000000000000000000D6F7FF000000DE000000
          FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00FFFFFF00B5E7FF004A4A4A008CD6
          FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA58C0000000000000000000000000000000000522994007342
          C6006B39C6006B39C6006B39BD006331BD006331BD005A29B5005A29B5005A29
          B5004A21840000000000000000000000000000000000D6F7FF000000FF000000
          FF00D6F7FF00D6F7FF004A4A4A008CD6FF008CD6FF008CD6FF008CD6FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C000000000000000000000000000000000000000000000000006BA5
          8C006BA58C006BA58C0000000000000000000000000000000000000000005A31
          9C008C5AD6006B39C6006B39BD006331BD006331B5005A29B5005A29B5005229
          9C007B63940000000000000000000000000000000000D6F7FF00D6F7FF00D6F7
          FF00D6F7FF00B5E7FF004A4A4A008CD6FF008CD6FF008CD6FF00D6F7FF000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C006BA58C006BA594006BA594006BA594006BA58C006BA58C006BA5
          8C006BA58C006BA58C0000000000000000000000000000000000000000000000
          00006B429C006B42C6006339BD004A21A5004A18A5004A18A500633194000000
          00000000000000000000000000000000000000000000D6F7FF00D6F7FF00B5E7
          FF004A4A4A008CD6FF008CD6FF0000000000D6F7FF0000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000000000000000000000000000000000006BA58C006BA5
          8C006BA58C006BA58C006BA58C006BA58C006BA58C006BA58C006BA58C006BA5
          8C006BA58C000000000000000000000000000000000000000000000000000000
          0000000000007B5AA5005221AD004218A5004218940042217300000000000000
          00000000000000000000000000000000000000000000B5E7FF004A4A4A008CD6
          FF008CD6FF000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000000000000000000073A5940073A5
          940073A5940073A5940073A5940073A5940073A5940073A594006BA594006BA5
          9400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000008CD6FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5BDBD00C6CECE00B5B5B500B5BD
          BD00C6C6C600BDC6C600ADADAD00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000094636300A57B7B0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000840000008400
          000000000000000000000000000000000000FFFFFF00B5B5B5009C9C9C009C9C
          9400949C9C00949C9C00949C9C009C9C94002131B5001829D600636B73002931
          A5001029BD001829A5004A637B00F7F7F7000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000008C636300946B6B00BDA59C0094636300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084000000FFCE
          310084000000000000000000000000000000FFFFFF0021730800316310001042
          000010210800081008000810080018311000293921001839A500425AA5001831
          BD001829CE001021C60039526B00F7F7F7000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008C5A6300E7C69C00FFCE94009C737B00FFF7F700F7E7D600A57B6B007B52
          4A00AD8473009463630000000000000000000000000000000000000000000000
          0000000000009C0000008400000084000000840000008400000084000000FFFF
          9C00FFCE3100840000000000000000000000FFFFFF0018630000215A10001042
          000010290000001000000010000008180000102108001829C6001829C6001829
          C6001829C6001021BD00395A6B00F7F7F7000000000000000000000000000000
          00000000000000000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000009C73
          7300D6BDAD00F7D6A500F7C68C009C737B00FFF7EF00F7DED600A57363006B42
          4200D6AD8C00CE946B0000000000000000000000000000000000000000000000
          00000000000084000000FFCE3100FFCE3100FFFF9C00FFFF9C00FFFF9C00FFFF
          9C00FFFF9C00FFCE31008400000000000000FFFFFF00949C9C00637B7300215A
          1000214210000831000021421000184A1000213918001829C6001829C6001829
          C6001829CE001829C600425A6B00F7F7F7000000000000000000000000000000
          0000000000000000000000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BD9C9C00FFF7
          E700FFE7CE00F7CEA500FFC68C00A5848400FFFFFF00F7E7D6009C6B63006342
          4200D6A58400CE94730000000000000000000000000000000000000000000000
          00000000000084000000840000009C0000009C0000009C0000009C000000FFCE
          3100FFCE31009C0000000000000000000000000000002163210031841000215A
          0800295A2100084200002963180039733100214221001021BD002131CE001829
          C6001829C6001829C600425A6B00F7F7F7000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000BDA59C00FFEF
          DE00FFE7CE00FFD6A500EFB584009C7B7B00FFFFFF00FFEFDE00DEBDAD009C6B
          6B00D6A58400CE94730000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009C000000FFCE
          31009C000000000000000000000000000000FFFFFF00317B290031842100105A
          000031732100185A0800296B1800529C5200214A63001829CE001829C6001829
          C6001829CE001829C6004A5A6B00F7F7F7000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000CEB5B500FFDE
          CE00B5ADA500087BCE00009CF7000084D60073849400FFF7E700FFE7CE00F7D6
          AD00F7CE9C00BD8C6B0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000009C0000009C00
          000000000000000000000000000000000000FFFFFF00216B1800297B21002173
          1000428C3900429439003184290063AD63001021390010107B0018189C001821
          BD001029C6001829C60000000800848C8C000000000000000000000000000000
          00000000000000000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C6A59C005284
          A5000873C6000094F70000A5FF0000A5FF00087BCE00F7DECE00FFEFD600F7D6
          AD00F7CE9C00C68C630000000000000000000000000000000000000000000000
          0000840000009C00000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF003184310031944A00106B
          210031844200298C290031843900529C63001010100000000000000000001818
          6B0018188C001821AD0000000800BDC6C6000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000008CD60000A5E700008C
          EF00007BE700007BE700008CEF0000ADFF0000ADFF00217BB500BD9C9400F7CE
          A500B58C73000084D6000884CE00000000000000000000000000000000008400
          0000FFCE31009C00000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000042C6E70008BDF70000B5
          EF0008B5F70000B5EF0000C6F70018C6F7000808080000000000000000000000
          0000080808002121420000000800949494000000000000000000000000000000
          0000FFFFFF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000894DE0000CEFF0000A5
          EF000084E7000073E7000084EF0000A5F70000ADFF00008CEF00397BAD00A584
          7300317BAD000884CE000000000000000000000000000000000084000000FFCE
          3100FFFF9C008400000084000000840000008400000084000000000000000000
          0000000000000000000000000000000000000000000042ADCE0000A5E70000AD
          E70000ADE70008BDF70000BDF700215A73000000000000000000000000000000
          0000000000004A525A007B7B8400B5B5B500000000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF0000000000000000000000000000000000087BC60000C6
          FF0000ADF700007BE7000073DE00008CEF00009CF70000ADFF000094FF001894
          D6001084CE000000000000000000000000000000000084000000FFCE3100FFFF
          9C00FFFF9C00FFFF9C00FFFF9C00FFCE3100FFCE310084000000000000000000
          0000000000000000000000000000000000000000000042ADCE000094D60008A5
          E700009CE70008ADEF0000B5E700181018000000000000000000000000000000
          0000000000000000000000000000C6C6C6000000000000000000FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000A5
          E70000C6FF00008CE7000073DE000084EF000094F700009CEF00088CDE00087B
          C6000000000000000000000000000000000000000000000000009C000000FFCE
          3100FFCE31009C0000009C0000009C0000008400000084000000000000000000
          00000000000000000000000000000000000000000000318CC6000894DE000094
          DE00009CDE0000ADE70000B5E700424242000000000000000000000000000000
          00000000000000000000000000008C8C940000000000FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          00000884CE0000A5E7000884D600087BC6000839CE000863DE00000000000000
          0000000000000000000000000000000000000000000000000000000000009C00
          0000FFCE31009C00000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000399CC600189CD6000894
          E7000094DE00089CE70010B5EF00292929000000000000000000000000000000
          0000000000000000080084848C00B5BDBD000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000087BCE0000A5E70000000000084A8400105A9400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00009C0000009C00000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000319CBD004A6B8400008C
          DE0031ADDE0008ADEF00189CBD00212110000800000000000000000000000808
          0800000000000000000008080800D6D6D6000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000CEF7FF00FFEFF700C6EF
          FF00FFFFFF00C6EFFF00C6F7FF00F7EFEF00CEF7FF00FFFFFF00000000000000
          0000000000000000000000000000FFFFFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000009C00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000009C000000FF0000009C000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000319C39001873210000000000000000000000
          00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60000009C000000FF000000CE0000009C000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CE4A18008C21080000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002184
          3100000000000000000000000000000000000000000000000000000000000000
          00000000000000000000319C3900187B210039A54A0018732100000000000000
          00000000000000000000000000000000000084848400FFFFFF00CE310000CE31
          0000CE310000CE31000000009C00319CFF000000CE00C6C6C6000000CE000000
          9C0000000000000000000000000000000000000000000000000000000000FFAD
          6B00FF4A0000EF4200008C210800000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000218429002994
          310052BD5A000000000000000000000000000000000000000000000000000000
          0000000000004AB55200218C290000000000000000004AB55A00000000000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF00FFFFFF000000CE000000CE009CFFFF00C6C6C6000000CE000000
          9C0000000000000000000000000000000000000000000000000000000000FF73
          2900FF420000FF4A0000F74200008C2108000000000000000000000000000000
          00000000000000000000D67339000000000000000000399C4A00000000000000
          000000000000000000000000000000000000084A1000298C3100299431002194
          310031A542000000000000000000000000000000000000000000000000000000
          000000000000319C390021842900000000000000000000000000319442000000
          00000000000000000000000000000000000084848400FFFFFF00FF000000FF00
          0000FF000000FF000000FF000000FF000000FFFFFF00C6C6C600000000000000
          CE0000009C000000000000000000000000000000000000000000FFAD6B00FF42
          0000FF4A0000FF4A0000FF4A0000FF4A00008C21080000000000000000000000
          00000000000000000000DE6329000000000000000000318C3900000000000000
          0000000000000000000000000000084A10002994310029943100299431002994
          3100299431005AC6630000000000000000000000000000000000000000004AB5
          5200218C29002994310029943100187B29000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00C6C6C600000000000000
          CE0000009C000000000000000000000000000000000000000000FF732900FF42
          0000FF4A0000FF4A0000FF4A0000FF4A0000F74A00008C210800000000000000
          00000000000000000000CE4210000000000000000000187329006BDE7B000000
          000000000000000000000842100029943100299C310029943100299431002994
          31002194310039A5420000000000000000000000000000000000000000000000
          0000319C390029943100218C3100000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00FF633100FF63
          3100FF633100FF633100FF633100FF633100FFFFFF00C6C6C60000000000C6C6
          C6000000CE0000009C00000000000000000000000000FFB57300FF4A0000FF42
          0000FF420000FF4A0000FF4A0000EF420000FF4A0000CE390000000000000000
          000000000000FFAD6300B52900000000000000000000105A18005ACE6B000000
          00000000000000000000217B2900299431002184290029943100299431002994
          310021943100299431005ACE6B00000000000000000000000000000000000000
          00005AC66300218C310000000000000000000000000000000000217329000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00C6C6C60000000000C6C6
          C6000000CE0000009C00000000000000000000000000FF944A00FF390000FF63
          1800FF5A1000FF420000FF4A0000C63100000000000000000000000000000000
          000000000000FF8C4200000000000000000000000000000000004AB552000000
          000000000000000000000000000000000000186B2100299C310029943100319C
          390042AD4A00218C290042B55200000000000000000000000000000000000000
          00000000000029843100000000000000000000000000186B2100299431004AB5
          52000000000000000000000000000000000084848400FFFFFF00000084000000
          84000000840000008400FFFFFF009CFFFF00FFFFFF00C6C6C60000000000C6C6
          C600000000000000CE0000009C00000000000000000000000000000000000000
          0000FF9C5200FF420000FF4A0000FF4A00000000000000000000000000000000
          000000000000F75A180000000000000000000000000000000000298C39000000
          000000000000000000000000000000000000298C310029943100218C310052C6
          6300000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000105A180029943100299431002994
          310063CE730000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CFFFF00C6C6C60000000000C6C6
          C60000000000000000000000CE0000009C000000000000000000000000000000
          000000000000FF632100FF420000FF4A0000C631000000000000000000000000
          0000FFAD6300C631000000000000000000000000000000000000106B21005ACE
          6B00000000000000000000000000105A1800299C31002194310039A542000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003194420000000000000000002184290029943100299431002994
          310042AD4A0000000000000000000000000084848400FFFFFF003100FF003100
          FF0000008400FFFFFF00FFFFFF009CFFFF00FFFFFF00C6C6C60000000000C6C6
          C6000000000000000000000000000000CE000000000000000000000000000000
          000000000000FFB57300FF4A0000FF420000FF4A000094210800000000000000
          0000FF73290000000000000000000000000000000000000000000000000042B5
          52000000000000000000084A1000298C310029943100219431005ACE6B000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000006BDE73000000000000000000217B2900319C39000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF8C4A00FF420000FF4A0000EF420000A5290800E763
          2100D63908000000000000000000000000000000000000000000000000001873
          2100319C4200186B2100218C310029943100218C290042B55200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000042A54A000000000000000000218C29004AB552000000
          0000000000000000000000000000000000008484840084848400848484008484
          840084848400848484008484840084848400848484008484840000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF843900FF420000FF420000FF4A0000F742
          0000000000000000000000000000000000000000000000000000000000000000
          0000218C2900299C390029943100218C31004ABD5A0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000018732100319439002184290029943100000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF9C5A00FF631800EF4200000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002184290031A5420052BD5A000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000018732100319C390052C66300000000000000
          0000000000000000000000000000000000000000000000000000848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
          000000000000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C6000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000CECECE001010
          100000000000000000000000FF006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484009CFFFF00CE310000CE310000CE31
          0000CE310000C6C6C60000000000000000000000000000000000000000000000
          0000000000000000000000000000848484009CFFFF00CE310000CE310000CE31
          0000CE310000C6C6C6000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000CECECE001010
          100000000000000000000000CE006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00C6C6C60000000000000000000000000000000000000000000000
          00000000000084848400C6C6C60084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00C6C6C6000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FFFFFF00FF000000FF000000FFFFFF00FFFFFF00FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000CECECE001010
          100000000000000000000000CE00000000000000000000000000000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484009CFFFF00FF000000FF000000FF00
          0000FF000000C6C6C60000000000000000000000000000000000000000000000
          000000000000848484009CFFFF00848484009CFFFF00FF000000FF000000FF00
          0000FF000000C6C6C6000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00FF000000FF00
          0000FFFFFF00FF000000FF000000FF0000000000000000000000CECECE001010
          100000000000000000000000CE00FFFFFF00FFFFFF00F7FFFF00000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          000084848400C6C6C600C6C6C60084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00C6C6C60000000000000000000000000000000000000000008484
          8400C6C6C60084848400FFFFFF0084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00C6C6C6000000000000000000FF000000FF000000FF000000FFFF
          FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FFFF
          FF00FFFFFF00FFFFFF00FF000000FF0000000000000000000000000000000000
          000000000000000000000000CE000000CE000000CE0000009C00000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000848484009CFFFF00CE310000848484009CFFFF00FF633100FF633100FF63
          31009CFFFF00C6C6C60000000000000000000000000000000000000000008484
          84009CFFFF00848484009CFFFF00848484009CFFFF00FF633100FF633100FF63
          31009CFFFF00C6C6C6000000000000000000FF000000FF000000FF000000FFFF
          FF00FF000000FF000000FF000000FF000000FF000000FF000000FFFFFF00FFFF
          FF00FF000000FF000000FF000000FF0000000000000000000000000000009C9C
          9C000000000000000000DEDEDE00FFFFFF00FFFFFF00F7FFFF00000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          000084848400FFFFFF009CFFFF0084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF00848484000000000000000000000000000000000000000000000000008484
          8400FFFFFF0084848400FFFFFF0084848400FFFFFF009CFFFF00FFFFFF009CFF
          FF0084848400000000000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
          0000FF000000FF000000FF000000FF00000000000000000000009C9C9C004242
          420000000000000000000000CE000000CE000000CE0000009C00000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          0000848484009CFFFF00FF00000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00848484000000000000000000000000000000000000000000000000008484
          84009CFFFF00848484009CFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0084848400000000000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FF000000FFFFFF00FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF00000000000000000000009C9C9C000000
          000000000000000000000000CE00FFFFFF00FFFFFF00F7FFFF00000000000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          000084848400FFFFFF009CFFFF00848484008484840084848400848484008484
          8400848484000000000000000000000000000000000000000000000000008484
          8400FFFFFF0084848400FFFFFF00848484008484840084848400848484008484
          840084848400000000000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF000000FF00
          0000FF000000FF000000FF000000FF00000000000000000000009C9C9C000000
          00000000000000000000000000006300FF000000CE000000CE000000CE000000
          9C000000FF000000000000000000000000000000000000000000000000000000
          000031CEFF009CFFFF00FF633100FF633100FF6331009CFFFF00C6C6C6000000
          00000000000000000000000000000000000000000000000000000000000031CE
          FF009CFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000424242000000
          000000000000000000000000CE006300FF000000CE000000CE000000CE000000
          9C000000FF00000000000000000000000000000000000000000031CEFF000000
          000031CEFF00FFFFFF0031CEFF00FFFFFF009CFFFF0084848400000000000000
          0000000000000000000000000000000000000000000031CEFF000000000031CE
          FF00FFFFFF008484840084848400848484008484840084848400848484000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000424242000000
          000000000000000000000000CE006300FF000000CE000000CE000000CE000000
          9C000000000000000000000000000000000000000000000000000000000031CE
          FF0031CEFF0031CEFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
          000000000000000000000000000000000000000000000000000031CEFF0031CE
          FF0031CEFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000424242000000
          00000000000000000000000000000000CE00000000000000000000009C000000
          9C00000000000000000000000000000000000000000031CEFF0031CEFF0031CE
          FF008484840031CEFF0031CEFF0031CEFF008484840084848400000000000000
          00000000000000000000000000000000000031CEFF0031CEFF0031CEFF008484
          840031CEFF0031CEFF0031CEFF00848484008484840000000000000000000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FFFFFF00FFFFFF00FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000424242000000
          0000000000000000000000000000000000000000FF000000FF00000000000000
          00005252520000000000000000000000000000000000000000000000000031CE
          FF0031CEFF0031CEFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000031CEFF0031CE
          FF0031CEFF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000424242004242
          42000000000000000000C6C6C6000000000000BD0000FFFFFF00000000000000
          000000000000000000000000000000000000000000000000000031CEFF000000
          000031CEFF000000000031CEFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031CEFF000000000031CE
          FF000000000031CEFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000FF000000FF000000FF0000000000000000000000000000009C9C
          9C009C9C9C009C9C9C00DEDEDE009C9C9C0000000000000000009C9C9C009C9C
          9C009C9C9C009C9C9C0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003131CE003131CE000000
          FF0000009C000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000031636300639CCE0000000000000000003131CE003131CE000063
          FF000000FF0000009C0000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF63
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF6300000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000316363009CCECE00C6D6EF000000000000000000000000003131CE00319C
          FF000063FF000000CE0000000000000000000000000000000000000000000000
          00000000000000000000000000000000FF00000000000000000000000000FF63
          0000FF6300000000000000000000000000000000000000000000000000000000
          0000FF6300000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003163
          6300639CCE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003163
          6300639CCE00C6D6EF0000000000000000000000000000000000000000003131
          CE00319CFF000000FF0000009C00000000000000000000000000000000000000
          000000000000000000000000FF0000009C00000000000000000000000000FF63
          0000FF633100FF63000000000000000000000000000000000000000000000000
          0000FF6300000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000316363009CCE
          CE00C6D6EF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000031636300639C
          CE00C6D6EF000000000000000000000000000000000000000000000000000000
          00000000CE000063FF0000009C00000000000000000000000000000000000000
          0000000000000000FF0000009C0000000000000000000000000000000000FF63
          3100FF9C3100FF633100FF630000000000000000000000000000000000000000
          0000FF6331000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031636300639CCE00C6D6
          EF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031636300639CCE009CCE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000CE000000FF0000009C000000000000000000000000000000
          00000000FF0000009C000000000000000000000000000000000000000000FF9C
          3100FF9C3100FF9C3100FF633100FF6300000000000000000000000000000000
          0000FF9C31000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000639CCE00319CCE009CCECE000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000639CCE00319CCE00C6D6EF000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000CE000000FF0000009C0000000000000000000000
          FF0000009C00000000000000000000000000000000000000000000000000FF9C
          3100FF9C3100FFCE3100FFCE3100FF633100FF63310000000000000000000000
          0000FF9C31000000000000000000000000000000000000000000000000000000
          0000CECE3100CECE3100FFFF9C00CECE310000000000319CCE00000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          3100FFFF9C00CECE3100CECE31000000000000000000319CCE00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000CE000000FF0000009C000000FF000000
          9C0000000000000000000000000000000000000000000000000000000000FF9C
          3100FFCE3100FFCE3100FFFF9C00FFFFCE00FF63310000000000000000000000
          0000FF9C3100000000000000000000000000000000000000000000000000CECE
          3100CECE3100FFFF9C00FFFF9C00CECE3100CECE310000000000000000000000
          0000000000000000000000000000000000000000000000000000CECE3100FFFF
          9C00FFFF9C00CECE3100CECE3100CECE31000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000CE000000FF0000009C000000
          000000000000000000000000000000000000000000000000000000000000FFCE
          3100FFCE3100FFFF9C00FFFFCE00FF6331000000000000000000000000000000
          0000FFCE3100000000000000000000000000000000000000000000000000FFFF
          CE00FFFFFF00FFEFCE00FFFF9C00CECE3100CECE310000000000000000000000
          00000000000000000000000000000000000000000000FFFFCE00FFFFFF00FFEF
          CE00FFFF9C00CECE6300CECE3100CECE3100CECE310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000CE000000FF0000009C000000CE000000
          9C0000000000000000000000000000000000000000000000000000000000FFCE
          3100FFFF9C00FFFFCE00FF633100000000000000000000000000000000000000
          0000FFCE3100000000000000000000000000000000000000000000000000FFFF
          9C00FFFF9C00FFFF9C00FFCE6300CE9C3100CE9C310000000000000000000000
          00000000000000000000000000000000000000000000FFFF9C00FFEFCE00FFEF
          CE00FFFF9C00CECE6300CECE3100CECE3100CECE310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000CE000000FF0000009C0000000000000000000000
          CE0000009C00000000000000000000000000000000000000000000000000FFCE
          3100FFFFCE00FF63310000000000000000000000000000000000000000000000
          0000FFCE3100000000000000000000000000000000000000000000000000CECE
          6300CECE6300CECE6300CECE31009C9C31009C9C310000000000000000000000
          00000000000000000000000000000000000000000000FFFF9C00FFFF9C00FFFF
          9C00FFCE6300CECE3100CECE3100CE9C3100CE9C310000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000CE000000CE000000FF0000009C000000000000000000000000000000
          00000000CE0000009C000000000000000000000000000000000000000000FFCE
          3100FF9C63000000000000000000000000000000000000000000000000000000
          0000FFCE31000000000000000000000000000000000000000000000000000000
          0000CECE6300CECE3100CE9C31009C9C31000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFF3100FFCE9C00FFCE
          9C00FFCE6300CECE3100CECE31009C9C3100CE9C310000000000000000000000
          00000000000000000000000000000000000000000000000000000000CE000000
          CE00319CFF000000FF0000009C00000000000000000000000000000000000000
          0000000000000000CE0000009C0000000000000000000000000000000000FFCE
          3100000000000000000000000000000000000000000000000000000000000000
          0000FFCE31000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000CECE6300CECE
          6300CECE3100CECE3100CECE31009C9C31000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE00319CFF000063
          FF000000FF0000009C0000000000000000000000000000000000000000000000
          000000000000000000000000CE0000009C000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000CECE
          3100CECE3100CE9C3100CE9C3100000000000000000000000000000000000000
          0000000000000000000000000000000000000000CE00319CFF000063FF000000
          FF0000009C000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000063639C000000CE000000CE006363
          9C00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00E7E7E700D6D6
          D600D6D6D600D6D6D60084848400000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF63
          0000000000000000000000000000000000000000000000000000000000000000
          0000FF6300000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF630000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF63000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000008484840000000000E7E7
          E700D6D6D600D6D6D600CECECE00C6C6C600C6C6C60000000000000000009C00
          9C009C009C009C009C009C009C009C009C00000000000000000000000000FF63
          000000000000000000000000000000000000000000000000000000000000FF63
          0000FF6300000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF630000FF630000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF630000FF630000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400C6C6C600C6C6C6000000
          0000E7E7E700E7E7E700DEDEDE00DEDEDE00CECECE00CECECE0000000000CE00
          CE00CE00CE00CE00CE00CE00CE00CE00CE00000000000000000000000000FF63
          0000000000000000000000000000000000000000000000000000FF630000FF63
          3100FF6300000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF630000FF633100FF630000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF630000FF633100FF6300000000000000000000000000000000
          000000000000000000000000000000000000848484009CFFFF00CE310000CE31
          000084848400E7E7E700E7E7E700DEDEDE00D6D6D600CECECE0000000000CE00
          CE00CE00CE00CE00CE00CE00CE00CE00CE00000000000000000000000000FF63
          31000000000000000000000000000000000000000000FF630000FF633100FF9C
          3100FF6331000000000000000000000000000000000000000000000000000000
          00000000000000000000FF630000FF633100FF9C3100FF633100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF633100FF9C3100FF633100FF63000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF00848484004242420063636300636363006363630000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF9C
          310000000000000000000000000000000000FF630000FF633100FF9C3100FF9C
          3100FF9C31000000000000000000000000000000000000000000000000000000
          000000000000FF630000FF633100FF9C3100FF9C3100FF9C3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF9C3100FF9C3100FF9C3100FF633100FF630000000000000000
          000000000000000000000000000000000000848484009CFFFF00FF000000FF00
          0000FF000000FF000000C6C6C600000000000000000000000000000000008400
          840084008400840084008400840084008400000000000000000000000000FF9C
          3100000000000000000000000000FF633100FF633100FFCE3100FFCE3100FF9C
          3100FF9C31000000000000000000000000000000000000000000000000000000
          0000FF633100FF633100FFCE3100FFCE3100FF9C3100FF9C3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF9C3100FF9C3100FFCE3100FFCE3100FF633100FF6331000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FF9C
          3100000000000000000000000000FF633100FFFFCE00FFFF9C00FFCE3100FFCE
          3100FF9C31000000000000000000000000000000000000000000000000000000
          0000FF633100FFFFCE00FFFF9C00FFCE3100FFCE3100FF9C3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FF9C3100FFCE3100FFCE3100FFFF9C00FFFFCE00FF6331000000
          000000000000000000000000000000000000848484009CFFFF00FF633100FF63
          3100FF6331009CFFFF00C6C6C600000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFCE
          310000000000000000000000000000000000FF633100FFFFCE00FFFF9C00FFCE
          3100FFCE31000000000000000000000000000000000000000000000000000000
          000000000000FF633100FFFFCE00FFFF9C00FFCE3100FFCE3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFCE3100FFCE3100FFFF9C00FFFFCE00FF633100000000000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF008484840000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFCE
          31000000000000000000000000000000000000000000FF633100FFFFCE00FFFF
          9C00FFCE31000000000000000000000000000000000000000000000000000000
          00000000000000000000FF633100FFFFCE00FFFF9C00FFCE3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFCE3100FFFF9C00FFFFCE00FF63310000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008484840000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFCE
          3100000000000000000000000000000000000000000000000000FF633100FFFF
          CE00FFCE31000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF633100FFFFCE00FFCE3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFCE3100FFFFCE00FF6331000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          8400848484008484840000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFCE
          310000000000000000000000000000000000000000000000000000000000FF9C
          6300FFCE31000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FF9C6300FFCE3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFCE3100FF9C6300000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFCE
          3100000000000000000000000000000000000000000000000000000000000000
          0000FFCE31000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFCE3100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFCE310000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000CE000000CE000000CE000000CE000000
          CE000000CE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000CE00000000000000000000000000000000000000
          CE000000FF000000CE0000000000000000000000000000000000000000000000
          0000000000000084000000840000008400000084000000840000000000000084
          00000000000000000000000000000000000042424200CECECE00CECECE00CECE
          CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600B5B5B500B5B5B500000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000CE0000000000000000000000000000000000000000000000
          00000000CE000000FF000000CE00000000000000000084848400008400000084
          0000008400000084840084848400C6C6C600008400000084000000FFFF000084
          84000084000000000000848484000000000042424200D6D6D600EFEFEF00EFEF
          EF00DEDEDE00D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00C6C6C600C6C6C6009C9C9C0000000000848400005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
          5A005A5A5A005A5A5A005A5A5A00848400000000000084848400CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE000000CE000000FF000000CE00000000000000000000840000848484000084
          84000084000000840000C6C6C600FFFFFF000084000000840000C6C6C6000084
          8400008484000000FF000084000000000000424242005A5A5A00CECECE00DEDE
          DE00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00C6C6C600B5B5B5005A5A5A00000000004A4A4A009C9C9C00EFEFEF00EFEF
          EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600C6C6
          C600C6C6C600B5B5B5009C9C9C004A4A4A000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF000000CE00CECE
          CE000000CE000000FF000000CE00000000000000000000848400848484000084
          0000C6C6C6008484840000840000FFFFFF000084000000840000008484000084
          00000084840000840000008484000000000042424200E7E7E7005A5A5A00C6C6
          C600D6D6D600CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00B5B5B5005A5A5A00B5B5B500000000004A4A4A00EFEFEF009C9C9C00EFEF
          EF00E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
          D600C6C6C6009C9C9C00B5B5B5004A4A4A000000000084848400FFFFFF00CE31
          0000CE310000CE310000CE310000CE310000CE310000CE3100000000CE000000
          CE000000CE000000FF000000CE00000000000000000084848400008400000084
          8400FFFFFF00C6C6C60000FF0000FFFFFF000084000000840000008400000084
          8400C6C6C60000848400008484000000000042424200E7E7E700DEDEDE005A5A
          5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A5A005A5A
          5A005A5A5A00E7E7E700C6C6C600000000004A4A4A00EFEFEF00EFEFEF009C9C
          9C00E7E7E700D6D6D600C6C6C600949494009C9C9C00DEDEDE00DEDEDE00D6D6
          D6009C9C9C00D6D6D600B5B5B5004A4A4A000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF000000CE000000
          FF000000CE000000CE000000CE00000000000000000084848400008400008484
          8400FFFFFF00FFFFFF00FFFFFF00FFFFFF000084000000840000008400000084
          8400C6C6C600C6C6C600008484000000000042424200E7E7E7005A5A5A00C6D6
          EF00C6D6EF00C6D6EF00C6C6C600C6C6C600C6C6C600C6D6EF00C6C6C600C6D6
          EF00C6D6EF005A5A5A00C6C6C600000000004A4A4A00EFEFEF00EFEFEF00E7E7
          E7009C9C9C00C6C6C60094949400D6D6D600D6D6D60094949400DEDEDE009C9C
          9C00D6D6D600D6D6D600B5B5B5004A4A4A000000000084848400FFFFFF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF0000000000CE000000
          FF00847BFF000000CE00000000000000000000000000848484000084000000FF
          0000FFFFFF00C6C6C60000840000FFFFFF000084000000840000008484000084
          000000848400008400000084840000000000424242005A5A5A0000000000CEFF
          FF00C6D6EF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6D6EF00C6D6
          EF00CEFFFF00000000005A5A5A00000000004A4A4A00E7E7E700EFEFEF00D6D6
          D600C6C6C60094949400DEDEDE00DEDEDE00DEDEDE00DEDEDE0094949400DEDE
          DE00CECECE00D6D6D600B5B5B5004A4A4A000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF000000CE000000
          CE000000CE000000CE000000CE00000000000000000084848400848400000084
          0000848484000084000000840000FFFFFF000084000000840000C6C6C6008484
          840000840000C6C6C600008484000000000042424200B5B5B50000000000CEFF
          FF00C6D6EF00C6D6EF00C6C6C600C6D6EF00C6D6EF00C6C6C600C6C6C600C6D6
          EF00CEFFFF0000000000B5B5B500000000004A4A4A00E7E7E700DEDEDE00C6C6
          C60094949400E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE009494
          9400D6D6D600DEDEDE00B5B5B5004A4A4A000000000084848400FFFFFF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF0000009CFFFF00CECE
          CE00000000000000000000000000000000000000000084848400FFFFFF000084
          00000084000000840000FFFFFF00C6C6C6000084000000840000C6C6C600C6C6
          C600C6C6C600C6C6C6000084840000000000000000008484840000000000CEFF
          FF00C6D6EF00C6C6C600C6C6C600C6C6C600C6C6C600C6D6EF00C6C6C600C6D6
          EF00CEFFFF000000000021212100000000004A4A4A00E7E7E700D6D6D6009494
          9400EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7
          E70094949400D6D6D600C6C6C6004A4A4A000000000084848400FFFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE00000000000000000000000000000000000000000000848400FFFFFF00C6C6
          C600008484000084000000840000008400000084000000840000008400000084
          000000FFFF00C6C6C6000000840000000000000000000000000021212100CEFF
          FF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00CEFFFF000000000000000000000000004A4A4A00DEDEDE0094949400F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700EFEFEF0094949400B5B5B5004A4A4A000000000084848400FFFFFF00FF63
          3100FF633100FF633100FF633100FF6331009CFFFF00FFFFFF00FFFFFF00CECE
          CE00000000000000000000000000000000000000000000840000008400000084
          0000008400000084000000848400848484008484840084848400848484000084
          000000840000008400000084000000000000000000000000000000000000CEFF
          FF00C6D6EF00C6C6C600C6C6C600CEFFFF00CEFFFF00CEFFFF00CEFFFF00D6E7
          E700C6D6EF000000000000000000000000004A4A4A0094949400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00F7F7F700949494004A4A4A000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF0084848400000000000000
          0000000000000000000000000000000000000000000000840000008484008484
          8400C6C6C6008484840000840000008400000084000000840000008400008484
          8400C6C6C600848484000084000000000000000000000000000000000000F7FF
          FF00DEDEDE00DEDEDE00C6C6C600F7FFFF00F7FFFF00F7FFFF00C6C6C6004A4A
          4A004A4A4A00000000000000000000000000848400004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
          4A004A4A4A004A4A4A004A4A4A00848400000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000084
          000000848400C6C6C60000840000008484000084000000840000C6C6C6000084
          840000840000008400000000000000000000000000000000000000000000F7FF
          FF00DEDEDE00DEDEDE00C6C6C600F7FFFF00F7FFFF00F7FFFF00848484009CFF
          FF009CCECE000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000840000008484000084000000840000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484009CCE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000003131CE003131CE000000
          FF0000009C000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000031000000
          310000009C00000084000000FF000000CE000000CE0000009C00000084000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000009C00000000000000
          000000000000000000000000000000000000000000003131CE003131CE000063
          FF000000FF0000009C0000848400008484000084840000848400008484000084
          8400008484000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          FF0000009C000000840094949400A5A5A5008484840063636300000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000009C000000FF0000009C000000
          00000000000000000000000000000000000000000000000000003131CE00319C
          FF000063FF000000CE0094ADAD00E7E7E70084840000E7E7E70094ADAD0094AD
          AD0094ADAD0000848400000000000000FF000000000084848400C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
          840094949400C6C6C600B5B5B500A5A5A5008484840000000000000000000000
          0000000000000000000000000000000000000000000084848400CECECE00CECE
          CE00CECECE00CECECE00CECECE0000009C000000FF000000CE0000009C00CECE
          CE00000000000000000000000000000000000000000000000000212121003131
          CE00319CFF000000FF0000009C00848400008484000084840000FFFFFF00C6C6
          C6009CCECE0094ADAD000000FF0000009C000000000084848400F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700C6C6C60000000000000000000000000000000000000000000000
          0000CECECE00C6C6C600B5B5B500A5A5A5008484840000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF0000009C00319CFF000000CE009CFFFF000000CE000000
          9C00000000000000000000000000000000000000000000000000008484009CCE
          CE000000CE000063FF0000009C00FFFFFF0084840000FFFFFF0084840000D6D6
          D6009CCECE000000FF0000009C00000000000000000084848400F7F7F700C6C6
          C600C6C6C600C6C6C6009C313100C6C6C6009C313100C6C6C600C6C6C600C6C6
          C600F7F7F700C6C6C60000000000000000000000000000000000000000001818
          180000000000C6C6C600B5B5B500A5A5A5000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF00CE31
          0000CE310000CE3100000000CE000000CE00CE310000CE3100000000CE000000
          9C00000000000000000000000000000000000000000000000000008484009CCE
          CE009CCECE000000CE000000FF0000009C008484000084840000FFFFFF00F7F7
          F7000000FF0000009C0000848400000000000000000084848400F7F7F7009CFF
          FF00C6C6C6009CFFFF008400000084000000840000009CFFFF00C6C6C6009CFF
          FF00F7F7F700C6C6C60000000000000000000000000000000000181818001818
          18000000000000000000C6C6C600CECECE00CECECE00CECECE00CECECE00C6C6
          C600000000000000000000000000000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF000000
          CE0000009C000000000000000000000000000000000000000000008484009CCE
          CE009CCECE00E7E7E7000000CE000000FF0000009C00FFFFFF00FFFFFF000000
          FF0000009C009CCECE0000848400000000000000000084848400F7F7F700C6C6
          C600C6C6C600840000009C633100C6C6C6009C63310084000000C6C6C600C6C6
          C600F7F7F700C6C6C60000000000000000000000000018181800181818001818
          1800000000000000000000000000DEDEDE00D6D6D600D6D6D600CECECE00C6C6
          C600000000000000000000000000000000000000000084848400FFFFFF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF0000009CFFFF000000
          CE0000009C0000000000000000000000000000000000000000004A4A4A0094AD
          AD009CCECE00E7E7E700848400000000CE000000FF0000009C000000FF000000
          9C009CCECE0094ADAD004A4A4A00000000000000000084848400F7F7F7009CFF
          FF00C6C6C6009CFFFF009C6331009CFFFF009C63310084000000C6C6C6009CFF
          FF00F7F7F700C6C6C60000000000000000000000000021212100181818000000
          00000000000000000000C6C6C600DEDEDE00DEDEDE00D6D6D600CECECE00C6C6
          C600000000000000000000000000000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE000000CE0000009C0000000000000000000000000000000000101010000084
          840094ADAD00C6C6C600EFEFEF00848400000000CE000000FF0000009C00D6D6
          D60094ADAD00009C9C0010101000000000000000000084848400F7F7F700C6C6
          C600C6C6C600C6C6C600840000008400000084000000C6C6C600C6C6C600C6C6
          C600F7F7F700C6C6C60000000000000000000000000018181800181818000000
          000000000000C6C6C600EFEFEF00EFEFEF00DEDEDE00D6D6D600D6D6D600CECE
          CE00C6C6C6000000000000000000000000000000000084848400FFFFFF00FF00
          0000FF000000FF000000FF000000FF000000FF000000FF0000009CFFFF00CECE
          CE000000CE0000009C0000000000000000000000000000000000000000004242
          420094ADAD0094ADAD0094ADAD000000CE000000FF0000009C000000CE000000
          9C0094ADAD004242420000000000000000000000000084848400F7F7F7009CFF
          FF00C6C6C600840000009C6331009CFFFF009C6331009CFFFF00C6C6C6009CFF
          FF00F7F7F700C6C6C60000000000000000000000000018181800181818000000
          00000000000000000000C6C6C600DEDEDE00DEDEDE00DEDEDE00FF000000EFEF
          EF00000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE00000000000000CE0000009C00000000000000000000000000000000000000
          000021212100009C9C000000CE000000FF0000009C00639C9C00639C9C000000
          CE0000009C000000000000000000000000000000000084848400F7F7F700C6C6
          C600C6C6C600840000009C633100C6C6C6009C63310084000000C6C6C600C6C6
          C600F7F7F700C6C6C60000000000000000000000000021212100181818001818
          180000000000000000000000000000000000DEDEDE00DEDEDE00000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF00FF63
          3100FF633100FF633100FF633100FF6331009CFFFF00FFFFFF00FFFFFF00CECE
          CE0000000000000000000000CE0000009C000000000000000000000000000000
          00000000CE000000CE000000FF0000009C000084840000848400313131000000
          00000000CE0000009C0000000000000000000000000084848400F7F7F7009CFF
          FF00C6C6C6009CFFFF008400000084000000840000009CFFFF00C6C6C6009CFF
          FF00F7F7F700C6C6C60000000000000000000000000018181800181818001818
          180000000000000000000000000000000000C6C6C600DEDEDE00DEDEDE00CECE
          CE00000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF0084848400000000000000
          00000000000000000000000000000000CE0000000000000000000000CE000000
          CE00319CFF000000FF0000009C00009C9C0094ADAD00009C9C004A4A4A000000
          0000000000000000CE0000009C00000000000000000084848400F7F7F700C6C6
          C600C6C6C600C6C6C6009C313100C6C6C6009C313100C6C6C600C6C6C600C6C6
          C600F7F7F700C6C6C60000000000000000000000000000000000181818002121
          21001818180000000000000000000000000000000000C6C6C600DEDEDE00CECE
          CE00000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF000000
          000000000000000000000000000000000000000000000000CE00319CFF000063
          FF000000FF0000009C0000CECE009CCECE0094ADAD0094ADAD0000CECE001010
          100000000000000000000000CE0000009C000000000084848400F7F7F700F7F7
          F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700C6C6C60000000000000000000000000000000000181818002121
          2100212121001818180021212100181818000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
          0000000000000000000000000000000000000000CE00319CFF000063FF000000
          FF0000009C00009C9C00009C9C009CCECE009CCECE0094ADAD0000CECE004A4A
          4A00000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000000000001818
          1800181818001818180018181800181818000000000000000000000000000000
          0000181818000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          00000000000000000000000000000000000063639C000000CE000000CE006363
          9C0000000000009C9C0021212100009C9C0042424200009C9C0021212100009C
          9C00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000212121001818180021212100181818001818180018181800181818001818
          1800000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003131
          3100008484000084840000848400008484000084840000848400008484000084
          8400008484000000000000000000000000000000000084848400848484000000
          000000CECE0000CECE0000CECE0000CECE000000000084848400848484000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000CE000000CE000000CE000000CE000000
          CE000000CE000000000000000000000000000000000000000000000000004A4A
          4A0094ADAD0094ADAD0094ADAD00E7E7E70084840000E7E7E70094ADAD0094AD
          AD0094ADAD000084840000000000000000000000000084848400848484000000
          000000CECE0000CECE0000CECE0000CECE000000000084848400848484000000
          0000C6C6C6000000000000000000000000000000000000000000006363009CFF
          FF00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009CCE00009C
          CE00009CCE00009CCE0000000000000000000000000000000000000000000000
          000000000000000000000000CE00000000000000000000000000000000000000
          CE000000FF000000CE00000000000000000000000000000000002121210094AD
          AD009CCECE00E7E7E700EFEFEF00848400008484000084840000FFFFFF00C6C6
          C6009CCECE0094ADAD0021212100000000000000000084848400848484000000
          0000000000000000000000000000000000000000000084848400848484000000
          0000C6C6C600C6C6C60000000000000000000000000000000000006363009CFF
          FF0000CEFF0031CEFF0000CEFF0000CEFF0000CEFF00009CCE0000CEFF00009C
          CE0000CEFF00009CCE0000000000000000000000000000000000000000000000
          0000000000000000CE0000000000000000000000000000000000000000000000
          00000000CE000000FF000000CE00000000000000000000000000008484009CCE
          CE009CCECE00F7F7F70084840000FFFFFF0084840000FFFFFF0084840000D6D6
          D6009CCECE009CCECE0000848400000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484000000
          0000C6C6C600C6C6C600000000000000000000000000006363009CFFFF0000CE
          FF0063FFFF0000CEFF0031CEFF0000CEFF0000CEFF0000CEFF00009CCE0000CE
          FF00009CCE0000000000009CCE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000CE000000FF000000CE00000000000000000000000000008484009CCE
          CE009CCECE00F7FFFF00EFEFEF00FFFFFF008484000084840000FFFFFF00F7F7
          F7009CCECE009CCECE0000848400000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484000000
          0000C6C6C600C6C6C600000000000000000000000000006363009CFFFF009CFF
          FF0000CEFF0063FFFF0000CEFF0031CEFF0000CEFF0000CEFF0000CEFF00009C
          CE0000CEFF0000000000009CCE00000000000000000084848400C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000CE000000
          00000000CE000000FF000000CE00000000000000000000000000008484009CCE
          CE009CCECE00E7E7E700FFFFFF008484000084840000FFFFFF00FFFFFF00EFEF
          EF009CCECE009CCECE0000848400000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484000000
          0000C6C6C600C6C6C6000000000000000000006363009CFFFF00CEFFFF0000CE
          FF009CFFFF0000CEFF0063FFFF0000CEFF0031CEFF0000CEFF0000CEFF0000CE
          FF000000000000CEFF00009CCE000000000000000000848484009CFFFF00CE31
          0000CE310000CE310000CE310000C6C6C60000000000000000000000CE000000
          CE000000CE000000FF000000CE000000000000000000000000004A4A4A0094AD
          AD009CCECE00E7E7E70084840000FFFFFF0084840000FFFFFF0084840000E7E7
          E7009CCECE0094ADAD004A4A4A00000000000000000084848400848484000000
          0000000000008484840084848400000000000000000084848400848484000000
          0000C6C6C600C6C6C6000000000000000000006363009CFFFF009CFFFF009CFF
          FF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFFFF009CFF
          FF0000000000009CCE00009CCE00000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF00C6C6C60000000000000000000000CE000000
          FF000000CE000000CE000000CE00000000000000000000000000101010000084
          840094ADAD00C6C6C600EFEFEF00848400008484000084840000EFEFEF00D6D6
          D60094ADAD00009C9C0010101000000000000000000000000000848484000000
          0000C6C6C600000000008484840000000000C6C6C60000000000848484000000
          0000C6C6C600C6C6C60000000000000000000063630000636300006363000063
          6300006363000063630000636300006363000063630000636300006363000063
          6300009CCE0000CEFF00009CCE000000000000000000848484009CFFFF00FF00
          0000FF000000FF000000FF000000C6C6C60000000000000000000000CE000000
          FF00847BFF000000CE0000000000000000000000000000000000000000004242
          420094ADAD0094ADAD0094ADAD00E7E7E70084840000E7E7E700D6D6D60094AD
          AD0094ADAD004242420000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C6000000000000000000C6C6C600C6C6C600000000000000
          0000C6C6C600C6C6C600000000000000000000000000006363009CFFFF0000CE
          FF009CFFFF0000CEFF0063FFFF0000CEFF0031CEFF0000CEFF0000CEFF0000CE
          FF0000CEFF00009CCE00009CCE00000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF00C6C6C60000000000000000000000CE000000
          CE000000CE000000CE000000CE00000000000000000000000000000000000000
          000021212100009C9C00639C9C00639C9C00639C9C00639C9C00639C9C00009C
          9C00212121000000000000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600C6C6C60000000000C6C6C600C6C6C600C6C6C6000000
          0000C6C6C600C6C6C600000000000000000000000000006363009CFFFF00CEFF
          FF0000CEFF009CFFFF0000CEFF0063FFFF0000CEFF0031CEFF009CFFFF009CFF
          FF009CFFFF009CFFFF009CFFFF000000000000000000848484009CFFFF00FF63
          3100FF633100FF6331009CFFFF00C6C6C6000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000031313100009C9C000084840000848400313131000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C600000000000000000000000000C6C6C600000000000000
          000000000000C6C6C600000000000000000000000000006363009CFFFF0000CE
          FF00CEFFFF0000CEFF009CFFFF0000CEFF009CCECE0000636300006363000063
          6300006363000063630000636300006363000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF0084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004A4A4A00009C9C0094ADAD00009C9C004A4A4A000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000006363009CFF
          FF009CFFFF009CFFFF009CFFFF009CCECE000063630000000000000000000000
          0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001010100000CECE009CCECE0094ADAD0094ADAD0000CECE001010
          1000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000063
          6300006363000063630000636300006363000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000009C9C00009C9C009CCECE009CCECE0094ADAD0000CECE004A4A
          4A00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000009C9C0021212100009C9C0042424200009C9C0021212100009C
          9C00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000CECE9C00CE9C6300CE9C6300CE9C
          6300CE9C6300CE9C6300FFFFFF00CE9C6300CE9C6300CE9C6300CE9C6300FFEF
          CE00CECE9C00CE9C3100CE9C6300CE9C63000000000000000000000000000000
          0000000000000000000000000000000000000000000000009C00000000000000
          0000000000000000000000000000000000008400000084000000840000008400
          0000840000008400000084000000840000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000CE9C63009C6300009C6300009C63
          0000CE630000CE630000F7F7F700CE633100CE630000CE630000CE633100FFFF
          FF00CE6331009C630000CE6300009C6331000000000000000000000000000000
          00000000000000000000000000000000000000009C000000FF0000009C000000
          00000000000000000000000000000000000084000000FF000000FF000000FF00
          000084000000C6C6C60084000000FF0000000000000000000000000000000000
          00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60084848400FFFFFF0000000000000000000000
          00000000000000000000FFFFFF0000000000CE9C63009C6300009C630000CE63
          00009C6300009C630000F7F7F700CE6331009C6300009C630000CE9C9C00F7CE
          A5009C630000CE6300009C630000CE63310084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60000009C000000FF000000CE0000009C000000
          0000000000000000000000000000000000000000000084000000840000008400
          0000C6C6C600B5B5B500A5A5A50000000000000084000000FF000000CE000000
          9C000000840000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600FFFFFF0084848400FFFFFF000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000CE9C63009C6300009C6300009C63
          00009C630000CE630000F7F7F700CE633100CE6300009C630000EFEFEF00CE9C
          31009C630000CE630000CE6300009C63310084848400FFFFFF00CE310000CE31
          0000CE310000CE31000000009C00319CFF000000CE00C6C6C6000000CE000000
          9C0000000000000000000000000000000000000000000000000084848400C6C6
          C600B5B5B500A5A5A50000000000000000000000840000008400C6C6C6000000
          9C000000840000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF0000000000CECE9C00CE9C6300CECE6300CECE
          6300CE6331009C630000F7F7F700CE9C6300CE9C3100CECECE00CECECE009C63
          00009C630000CE6300009C6300009C63310084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF00FFFFFF000000CE000000CE009CFFFF00C6C6C6000000CE000000
          9C00000000000000000000000000000000000000000000000000000000000000
          0000C6C6C60000000000000000000000000000008400C6C6C600B5B5B500A5A5
          A5000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000FFFFFF0000000000EFEFEF00CE9C9C00CE9C6300CE9C
          9C00F7F7F700CECE9C00F7F7F700F7CEA500F7CEA500DEDEDE00CECE9C00CE63
          3100EFEFEF009C6331009C6300009C63310084848400FFFFFF00FF000000FF00
          0000FF000000FF000000FF000000FF000000FFFFFF00C6C6C600000000000000
          CE0000009C000000000000000000000000000000000000000000000000000000
          0000C6C6C600D6D6D600D6D6D600C6C6C60000000000B5B5B500A5A5A5000000
          00000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400FFFFFF000000000000000000FFFF
          FF000000000000000000FFFFFF0000000000CE9C63009C630000CE6300009C63
          0000CE633100FFFFFF00FFFFFF00CE6331009C6300009C630000CE9C6300EFEF
          EF00F7F7F7009C6331009C630000CE63310084848400FFFFFF009CFFFF00FFFF
          FF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00C6C6C600000000000000
          CE0000009C000000000000000000000000000000000000000000000000000000
          0000C6C6C600D6D6D600D6D6D600C6C6C60000000000A5A5A500000000000000
          00000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C60084848400FF00000084848400FFFFFF00FFFFFF00000000000000
          000000000000FFFFFF00FFFFFF0000000000CE9C63009C6300009C6300009C63
          00009C630000FFEFCE00FFFFFF00CE6331009C6300009C6300009C630000FFFF
          FF00F7F7F700CE633100CE6300009C63310084848400FFFFFF00FF633100FF63
          3100FF633100FF633100FF633100FF633100FFFFFF00C6C6C60000000000C6C6
          C6000000CE0000009C0000000000000000000000000000000000000000000000
          0000C6C6C600D6D6D600CECECE00CECECE00C6C6C60000000000D6D6D600D6D6
          D600C6C6C60000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000CE9C63009C6300009C6300009C63
          0000CE633100FFFFFF00FFFFFF00CE6331009C6300009C630000CE633100FFFF
          FF00F7F7F7009C633100CE6300009C63310084848400FFFFFF00FFFFFF00FFFF
          FF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00C6C6C60000000000C6C6
          C6000000CE0000009C0000000000000000000000000000000000000000000000
          000000000000D6D6D600D6D6D600FF00000000000000D6D6D600D6D6D600D6D6
          D600C6C6C60000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF000000000000000000FFFF
          FF000000000000000000FFFFFF0000000000CE9C63009C6300009C630000CE9C
          6300F7F7F700CE9C6300FFFFFF00CE9C6300CE9C6300CE9C9C00E7E7E700F7CE
          A500EFEFEF009C6331009C6300009C63310084848400FFFFFF00000084000000
          84000000840000008400FFFFFF009CFFFF00FFFFFF00C6C6C60000000000C6C6
          C600000000000000CE0000009C00000000000000000000000000000000000000
          000000000000C6C6C600D6D6D600D6D6D60000000000C6C6C600D6D6D600CECE
          CE00CECECE00C6C6C60000000000000000008484840084848400848484008484
          840084848400848484008484840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000CE9C6300CE9C3100E7E7E700FFCE
          CE00CE9C3100CE630000CE9C9C00CECE9C00CECE9C00CE9C9C00CE9C6300CE63
          0000F7F7F7009C6331009C630000CE63310084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009CFFFF00C6C6C60000000000C6C6
          C60000000000000000000000CE00000084000000000000000000000000000000
          0000000000000000000000000000C6C6C600C6C6C60000000000D6D6D600D6D6
          D600FF00000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400848484008484
          840084848400848484008484840000000000CECE9C00F7F7F700CE9C63009C63
          0000CE6300009C6300009C630000CE6300009C630000CE630000CE630000CE63
          0000F7F7F7009C6331009C6300009C63310084848400FFFFFF003100FF003100
          FF0000008400FFFFFF00FFFFFF009CFFFF00FFFFFF00C6C6C60000000000C6C6
          C6000000000000000000000000000000FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C6C6C600D6D6
          D600D6D6D60000000000000000000000000084848400FFFFFF00000000000000
          000000000000000000000000000084848400FFFFFF00FFFFFF00000000000000
          000084848400FFFFFF00C6C6C60000000000FFFFFF00CE9C63009C6300009C63
          00009C630000CE6300009C6300009C6300009C6300009C6300009C6300009C63
          0000F7F7F7009C633100CE6300009C63310084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00CE9C6300CE6300009C63
          00009C630000CE6300009C630000CE6300009C630000CE630000CE6300009C63
          0000F7F7F700CE633100CE6300009C6331008484840084848400848484008484
          840084848400848484008484840084848400848484008484840000000000C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          840084848400848484008484840084848400F7CEA500EFEFEF00CE9C31009C63
          3100CE633100CE6331009C6300009C630000CE630000CECE9C00CECE9C00B5B5
          B500FFFFFF00CECE9C00CECE9C00F7CEA500000000000000000084848400FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
          C600000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000CE9C6300CECE6300F7F7F700D6D6
          D600EFEFEF00CECE6300CE630000CE630000CE630000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00000000000808080000000000080808000000
          0000000000000808080000000000080808000000000000000000080808000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000031313100313131000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400CECECE00CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00080808000000000000000000000000000000000000000000000000000000
          000000000000000000000000000031313100C6C6C600FFFFFF00C6C6C6000000
          00000000000031636300639CCE00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C000000000084848400FFFFFF009CFFFF00FF00
          0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          00000000000031313100C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000316363009CCECE00C6D6EF000000000084848400C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000003131
          3100C6C6C600FFFFFF00FFFFFF00FFFFFF00FFCECE00FF636300000000003163
          6300639CCE00C6D6EF00000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C6000000000000000000FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C000000000084848400FFFFFF00FFFFFF00FF00
          0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00CECE
          CE0000000000000000000000000000000000000000000000000084848400FFFF
          FF00FFFFFF00FFFFFF00FFCECE00FF636300FFCECE000000000031636300639C
          CE00C6D6EF0000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE0000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFCECE00FF636300FFCECE00FF6363000000000031636300639CCE009CCE
          CE000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C6000000000000000000FF9C9C00FF9C9C00FF9C
          9C0000000000FF9C9C0000000000FF9C9C00FF9C9C00FF9C9C0000000000FF9C
          9C0000000000FF9C9C00FF9C9C000000000084848400FFFFFF00FFFFFF00FF63
          3100FF633100FFFFFF00FF633100FF633100FF633100FF633100FFFFFF00CECE
          CE00000000000000000000000000000000000000000031313100DEDEDE000000
          000000000000000000000000000000000000639CCE00319CCE00C6D6EF000000
          0000FFFFFF0031313100000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE000808080000000000000000000000000000000000FFFFFF0000000000CECE
          3100FFFF9C00CECE3100CECE31000000000000000000319CCE0000000000FF63
          6300FFCECE00C6C6C600000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C60084848400FF00000084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C6000000000000000000FF9C9C00FF9C9C00FF9C
          9C0000000000FF9C9C0000000000FF9C9C00FF9C9C00FF9C9C0000000000FF9C
          9C00FF9C9C0000000000000000000000000084848400FFFFFF009CCECE009CCE
          CE009CFFFF00FFFFFF009CFFFF009CCECE00000000009CCECE009CFFFF00CECE
          CE00000000000000000000000000000000000000000000000000CECE3100FFFF
          9C00FFFF9C00CECE3100CECE3100CECE31000000000000000000FFCECE00FF63
          6300FF636300FFFFFF00313131000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00003100000031
          00009CCECE00FFFFFF009CCECE00003100009CCECE00000000009CCECE00CECE
          CE000000000000000000000000000000000000000000FFFFCE00FFFFFF00FFEF
          CE00FFFF9C00CECE6300CECE3100CECE3100CECE310000000000FF636300FFCE
          CE00FF636300FFCECE00C6C6C6000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600FFFFFF00C6C6C600000000000000000000000000FF9C9C000000
          000000000000FF9C9C00FF9C9C0000000000FF9C9C0000000000FF9C9C00FF9C
          9C0000000000FF9C9C00FF9C9C000000000084848400FFFFFF00639C9C00CEFF
          FF00003100009CCECE00003100009CCECE00316363009CCECE00000000000000
          00000808080000000000080808000000000000000000FFFF9C00FFEFCE00FFEF
          CE00FFFF9C00CECE6300CECE3100CECE3100CECE310000000000FFCECE00FFCE
          CE00FFFFFF00FFFFFF00FFFFFF00313131008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          84008484840084848400C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00639C
          9C00CEFFFF00003100009CCECE00316363009CCECE0031636300639C9C00639C
          9C00639C9C0000000000FF633100FF63310000000000FFFF9C00FFFF9C00FFFF
          9C00FFCE6300CECE3100CECE3100CE9C3100CE9C310000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C6003131310084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFF
          FF00FFFFFF00FFFFFF00C6C6C6000000000000000000FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00000000008484840084848400848484008484
          8400639C9C00CEFFFF00003100009CCECE00316363009CCECE009CCECE009CCE
          CE00639C9C00639C9C00FF9C3100FF9C310000000000FFFF3100FFCE9C00FFCE
          9C00FFCE6300CECE3100CECE31009C9C3100CE9C31000000000094949400DEDE
          DE00C6C6C60031313100000000000000000084848400FFFFFF00000000000000
          000000000000000000000000000084848400FFFFFF00FFFFFF00000000000000
          000084848400FFFFFF00C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000639C9C00CEFFFF0000310000CEFFFF00CEFFFF009CCECE009CCE
          CE009CCECE009CCECE00FFCE3100FFCE31000000000000000000CECE6300CECE
          6300CECE3100CECE3100CECE31009C9C310000000000DEDEDE00B5B5B5001818
          18006363630000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00C6C6C6000000000000000000FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C9C00FF9C
          9C00FF9C9C00FF9C9C00FF9C9C00000000000000000000000000000000000000
          00000000000000000000639C9C00FFFFFF00FFFFFF00CEFFFF00CEFFFF00CEFF
          FF00CEFFFF00639C9C00FFFF9C00FFFF9C00000000000000000000000000CECE
          3100CECE3100CE9C3100CE9C3100000000008484840084848400848484003131
          3100000000000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000639C9C00639C9C00639C9C00639C9C00639C
          9C00639C9C00FFFFFF00FF633100FF6331000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000009C000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE000000FF000000
          9C00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE000063FF000000
          FF0000009C00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00CECECE000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE00319CFF000063
          FF0000009C00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFF
          FF00CECECE00000000000000FF000000000084848400FFFFFF0084848400FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000CE00319C
          FF000000CE0000009C00CE310000CE310000CE310000CE310000CE3100009CFF
          FF00CECECE000000FF0000009C000000000084848400C6C6C60084848400C6C6
          C600C6C6C600C6C6C6000000FF000000840000008400000084000000FF00C6C6
          C600C6C6C600C6C6C600FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000848484000000
          CE000063FF0000009C009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFF
          FF000000FF0000009C00000000000000000084848400FFFFFF0084848400FFFF
          FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF000000CE000000FF0000009C00FF000000FF000000FF000000FF0000000000
          FF0000009C0000000000000000000000000084848400C6C6C60084848400C6C6
          C600C6C6C600C6C6C6000000FF000000840000008400000084000000FF00C6C6
          C600C6C6C600C6C6C600FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF009CFFFF000000CE000000FF0000009C009CFFFF00FFFFFF000000FF000000
          9C00CECECE0000000000000000000000000084848400FFFFFF0084848400FFFF
          FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF00FF000000FF0000000000CE000000FF0000009C000000FF0000009C009CFF
          FF00CECECE0000000000000000000000000084848400C6C6C60084848400C6C6
          C600C6C6C600C6C6C6000000FF000000840000008400000084000000FF00C6C6
          C600C6C6C600C6C6C600FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF00FFFFFF00FFFFFF009CFFFF000000CE000000FF0000009C009CFFFF00FFFF
          FF00CECECE0000000000000000000000000084848400FFFFFF0084848400FFFF
          FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF00FF633100FF6331000000CE000000FF0000009C000000CE0000009C00FFFF
          FF00CECECE0000000000000000000000000084848400C6C6C60084848400C6C6
          C600C6C6C600C6C6C6000000FF000000840000008400000084000000FF00C6C6
          C600C6C6C600C6C6C600FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000084848400FFFF
          FF000000CE000000CE000000FF0000009C009CFFFF00FFFFFF000000CE000000
          9C000000000000000000000000000000000084848400FFFFFF0084848400FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000CE000000
          CE000063FF000000FF0000009C00FFFFFF00FFFFFF00FFFFFF00848484000000
          CE0000009C000000000000000000000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE00319CFF000063
          FF000000CE0000009C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484000000
          00000000CE0000009C00000000000000000084848400C6C6C60084848400C6C6
          C600C6C6C600C6C6C60084848400C6C6C600C6C6C600C6C6C60084848400C6C6
          C600C6C6C600C6C6C600C6C6C600848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000CE00319CFF000063FF000000
          CE0000009C008484840084848400848484008484840084848400848484000000
          000000000000000000000000CE00000000008484840084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000CE000000CE000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008400000084000000840000008400
          0000840000008400000084000000840000008400000084000000840000008400
          0000840000008400000084000000840000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6C6C600313131003939390000000000000000000000
          000000000000000000000000000000000000FF633100FF633100FF633100FF63
          3100FF633100FF633100FF633100FF63310084000000FFCE3100FF633100FF63
          3100FF633100FF633100FF633100840000000000000000000000000000008484
          8400CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00CECECE00CECECE0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000CECECE00C6C6C6008484840000000000000000004A4A4A00525252000000
          000000000000000000000000000000000000FF633100FF633100FF633100FF63
          3100FF633100FF633100FF633100FF63310084000000FFCE3100FF9C0000FF63
          3100FF633100FF633100FF633100840000000000000000000000000000008484
          8400FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00CECECE0000000000000000000000000084848400CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00000000000000000000000000000000000000000000000000DEDEDE00D6D6
          D6008484840084848400C6C6C600313131003939390000000000000000005A5A
          5A0063636300000000000000000000000000FF633100FF633100FF633100FF63
          3100FF633100FF633100FF633100FF63310084000000FFCE3100FF9C0000FF9C
          0000FF633100FF633100FF633100840000000000000000000000000000008484
          8400FFFFFF00CE310000CE310000CE310000CE310000CE310000CE310000CE31
          00009CFFFF00CECECE0000000000000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00000000000000
          000000000000000000000000000000000000000000008484840084848400A5A5
          A500CECECE00C6C6C600C6C6C60031313100393939004A4A4A00525252000000
          0000000000007373730000000000000000000000000000000000000000000000
          000000000000FFFF9C00FFFF9C00FFFF9C0084000000FFCE3100FF9C0000FF9C
          0000000000000000000000000000000000000000000000000000000000008484
          8400FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00CECECE0000000000000000000000000084848400FFFFFF00CE31
          0000CE310000CE31000000000000000000000000000000000000000000006363
          9C0063639C0063639C0000000000FF00000084848400A5A5A500DEDEDE00D6D6
          D600CECECE00C6C6C600C6C6C60031313100393939004A4A4A00525252005A5A
          5A00636363000000000000000000000000000000000000000000000000000000
          00000000000084000000840000008400000084000000FFCE3100FF9C0000FF9C
          0000000000000000000000000000000000000000000000000000000000008484
          8400FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
          00009CFFFF00CECECE0000000000000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF00000000000000000094ADAD0094ADAD0094ADAD00639C
          9C00639C9C0094ADAD0000000000FF31310084848400FFFFFF00DEDEDE00D6D6
          D600CECECE00C6C6C600FFFFFF0031313100393939004A4A4A00525252005A5A
          5A00636363007373730084848400000000000000000000000000000000008400
          00000000000084848400848484008484840084000000FFCE3100FF9C0000FF9C
          0000000000000000000000000000000000000000000000000000000000008484
          8400FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00CECECE0000000000000000000000000084848400FFFFFF00FF00
          0000FF000000FF0000000000000000FFFF00000000000000000094ADAD0094AD
          AD0094ADAD0094ADAD0000000000FF63630084848400FFFFFF00DEDEDE00D6D6
          D600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C6004A4A4A00525252005A5A
          5A00636363007373730084848400000000000000000000000000000000008400
          00008484000084848400848484008484840084000000FFCE310000000000FF9C
          0000000000000000000000000000000000000000000000000000000000008484
          8400FFFFFF00FF000000FF000000FF000000FF000000FF000000FF000000FF00
          00009CFFFF00CECECE0000000000000000000000000084848400FFFFFF009CFF
          FF00FFFFFF009CFFFF0000000000C6C6C60000FFFF0000000000C6C6C600C6C6
          C6000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00D6D6D600CECECE003131FF0000000000C6C6C600C6C6C600C6C6C6005A5A
          5A00636363007373730084848400000000000000000000000000000000008400
          0000FFCE310084840000848484008484840084000000FFCE3100FFFFFF00FF9C
          0000000000000000000000000000000000000000000000000000000000008484
          8400FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFF
          FF00FFFFFF00CECECE0000000000000000000000000084848400FFFFFF00FF00
          0000FF000000FF000000FF00000000000000C6C6C60000FFFF00000000000000
          00000000000000000000000000000000000084848400FFFFFF00DEDEDE00D6D6
          D6009CFF9C0000FF0000D6D6D600CECECE00CECECE0084848400848484000000
          0000C6C6C6007373730084848400000000008484000084840000848400008484
          0000FFCE3100FFCE3100848400008484840084000000FFCE3100FF9C0000FF9C
          00000000000000000000000000000000000000000000000000000000000031CE
          FF00FFFFFF00FF633100FF633100FF633100FF633100FF6331009CFFFF00FFFF
          FF00FFFFFF00CECECE0000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00000000000000000000FFFF000000
          000000000000000000000000000000000000000000008484840084848400FFFF
          FF00DEDEDE00C6C6C600D6D6D60084848400848484009CFFFF009CFFFF000000
          0000DEDEDE00000000000000000000000000FFCE3100FFFF9C00FFFF9C00FFFF
          9C00FFFF9C00FFFF9C00FFCE31008400000084000000FFCE3100FF9C0000FF9C
          0000000000000000000000000000000000000000000031CEFF000000000031CE
          FF00FFFFFF0031CEFF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF008484
          8400000000000000000000000000000000000000000084848400FFFFFF00FF63
          3100FF633100FF633100FF633100FF6331009CFFFF00FFFFFF00FFFFFF0000FF
          FF00000000000000000000000000000000000000000000000000000000008484
          840084848400FFFFFF00848484009CFFFF009CFFFF009CFFFF00CEFFFF00CEFF
          FF00000000000000000000000000000000008400000084000000840000008400
          0000FFFF9C00FFCE3100840000008484840084000000FFCE3100FF9C0000FF9C
          000000000000000000000000000000000000000000000000000031CEFF0031CE
          FF0031CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
          8400FFFFFF000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009CFFFF00FFFFFF0084848400000000000000
          000000FFFF000000000000000000000000000000000000000000000000000000
          00000000000084848400848484009CFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00CEFFFF000000000000000000000000000000000000000000000000008400
          0000FFCE310084000000848484008484840084000000FFCE3100FF9C0000FF9C
          00000000000000000000000000000000000031CEFF0031CEFF0031CEFF008484
          840031CEFF0031CEFF0031CEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
          8400000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF000000
          00000000000000FFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000094949400CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00F7FFFF00F7FFFF0000000000000000000000000000000000000000008400
          00008400000084848400848484008484840084848400FFFF9C00FF9C0000FF9C
          000000000000000000000000000000000000000000000000000031CEFF0031CE
          FF0031CEFF008484840084848400848484008484840084848400848484008484
          8400000000000000000000000000000000000000000084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000094949400CEFFFF00F7FFFF00F7FF
          FF00949494009494940000000000000000000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400FFFF9C00FF9C
          0000000000000000000000000000000000000000000031CEFF000000000031CE
          FF000000000031CEFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B5B5B500B5B5B500B5B5
          B500000000000000000000000000000000000000000000000000000000000000
          000000000000848484008484840084848400848484008484840084848400FFFF
          9C000000000000000000000000000000000000000000000000000000000031CE
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002942420000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000840000000000000000000000000000008484840084848400848484008484
          8400848484000000000000000000000000000000000000000000000000008484
          8400848484008484840084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000018180000FFFF0063A5A50031525200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84008400000084848400000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600848484008484840084848400848484008484840000000000C6C6
          C600FFFFFF00C6C6C60084848400000000000000000000000000FF633100FF63
          3100FF633100FF6331000000000000000000000000000000000000000000FF63
          3100000000000000000000000000000000000000000000000000000000000000
          0000000000005A5A5A0000FFFF0000ADAD0000F7F70000A5A500183131000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008400
          00008400000084000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C6008484840000000000C6C6C600848484008484840000000000C6C6
          C600FFFFFF00C6C6C6008484840000000000FF633100FF9C3100FF9C3100FF9C
          3100FF6331000000000000000000000000000000000029292900FF633100FF9C
          3100FF6331000000000000000000000000000000000000000000000000000000
          0000000000000073730000A5A50000FFFF0000DEDE0000D6D600A5BDBD000018
          1800000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000848484008400
          00008400000084000000848484000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C6008484840000000000C6C6C600848484008484840000000000C6C6
          C600FFFFFF00C6C6C6008484840000000000FF633100FFFF9C00FFCE31009C31
          00000000000000000000000000000000000029292900FF633100FF9C3100FF9C
          3100FF9C3100CE6300009C310000000000000000000000000000000000000000
          00003939390000CECE0000F7F70000DEDE0000CECE0000F7F70010B5B50000E7
          E700294A4A000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000840000008400
          00008400000084000000840000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C60084848400848484008484840084848400848484008484
          8400C6C6C600C6C6C6008484840000000000FF633100FFFF9C009C3100000000
          0000000000000000000000000000FF633100FF633100FFCE3100FFCE3100FF9C
          3100FF9C3100CE6300009C310000000000000000000000000000000000000000
          00000031310000EFEF0000CECE0000D6D60000EFEF0000C6C60010FFFF004AC6
          C60063BDBD003152520000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C6008484840000000000FF633100FFFF9C00FF9C31009C31
          0000292929000000000000000000FF633100FFFFCE00FFFF9C00FFCE3100FFCE
          3100FF9C3100CE6300009C31000000000000000000000000000000000000BDA5
          A500005252006BD6D60000DEDE0000FFFF0000BDBD0010FFFF005AB5B50000EF
          EF0000E7E70018CECE0021212100000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
          C600848484008484840084848400848484008484840084848400848484008484
          8400C6C6C600C6C6C6008484840000000000FF633100FFFF9C00FFCE3100FF9C
          31009C310000292929000000000000000000FF633100FFFFCE00FFFF9C00FFCE
          3100FFCE3100CE9C3100CE630000000000000000000000000000000000008C00
          0000A54A0000004242009CCECE000094940000FFFF0052BDBD0000F7F70000F7
          F7007BDEDE00005A5A0021212100000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF00C6C6C6008484840000000000FF633100FFFF9C00FFFFCE00FFCE
          3100FF9C31009C310000000000000000000000000000FF633100FFFFCE00FFFF
          9C00FFCE3100CE9C3100CE630000000000000000000000000000BD9C9C00FFFF
          0000F7F731008C4A4A001042420000FFFF0039CECE0000E7E70018DEDE0010B5
          B500003131003939390000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF00C6C6C6008484840000000000FF633100FFFFCE00FFCE31000000
          0000000000000000000000000000000000000000000000000000FF633100FFFF
          CE0000000000FFCE3100CE630000000000000000000000000000BD9C9C00FFFF
          0000B5B58C00C69473007B310000004A4A0029C6C60031848400004242005252
          5200000000000000000000000000000000000000000084848400000000000000
          0000000000000000000000000000848484000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF00C6C6C6008484840000000000FF633100FFFF9C00000000000000
          000000000000000000000000000000000000000000000000000000000000FF63
          31000000000000000000CE9C31000000000000000000C6BDBD00B5631000FFFF
          F700BDADAD008473000084000000942121002121210021212100000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF00C6C6C6008484840000000000FF633100FFCE3100FF9C31000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFCE31009C31000000000000C6841000FFFFE7008C8C
          2100B5848400C6B5B500C6B5B500000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000848484000000
          0000000000000000000084848400000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF00C6C6C600848484000000000000000000FF633100FFCE3100FF9C
          3100000000000000000000000000000000000000000000000000000000000000
          000000000000FF9C3100CE6300000000000094393900F7F76B009C843900AD84
          7B00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF000000000084848400000000000000000000000000FF633100FF63
          3100FF633100CE630000CE630000CE630000CE630000CE630000CE630000CE63
          0000CE630000CE6300000000000000000000943939007B7B0000AD6B6B000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          8400000000008484840000000000000000000000000000000000000000000000
          00008400000000000000000000000000000084848400FFFFFF00C6C6C6008484
          8400CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFFFF00CEFF
          FF00FFFFFF00C6C6C60084848400000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000840000000000000000000000000000000000000084848400848484008484
          8400848484008484840084848400848484008484840084848400848484008484
          840084848400848484008484840000000000424D3E000000000000003E000000
          2800000040000000F00000000100010000000000800700000000000000000000
          000000000000000000000000FFFFFF008601FFFFFFFF0000820183C1EFF30000
          C20087E1C5A10000E00083C181810000F0018181C1830000F00183C5E0070000
          8001D7EFC18300008001DFFFFBDF00008003DFFFFBDF00008007D7EFC1810000
          800783C5C003000080138181C1830000803983C181810000807C800181810000
          00FF83C1CFF3000001FFFFFFFFFF0000C7E3FFFFFFC7E001C7E3F81FFF81C001
          C7E3C003FE008001C7E38001F8038001C7E38001E0078001C7E3800180078001
          C007800100078001C00F800100078001C007800100078001C7E3800100078001
          C7E3800300078001C7E3C007000F8001C7E3E007001F8001C003F01F003F8001
          C007F83F03FF8003C00FFFFF8FFF8007FFFFFFFFFFFF80008003FE7FFFCF0000
          8003FC3FFFC70000C3FBF003F8030000E1FBE003F8010000F0FFC003F8038000
          F87FC003FFC70000FC3FC003FFCF0000FC3FC003F3FF0000F87F8001E3FF8000
          F0FF8003C03F8000E1FBC007803F8000C3FBE00FC03F80008003F03FE3FF8000
          8003F93FF3FF8000FFFFFFFFFFFF803EFFBFFFFFFFFFFFFF001FFFFFFFFFFE7F
          001FF3FFFFEFFC3F0007E1FFFFC7F9BF0007E0FDBF07F9DF0007C07DBE03E0FF
          0007C03D9C03F1FF000380399C01F3DF000380FBDF01FB8F0001F0FBDF0FFF07
          0004F873CE1FFB070006F837EC1FFD9F0007FC07E03FFD9F0007FE0FF07FFC3F
          C007FF1FF8FFFE3FC007FFFFFFFFFFFFFE01FE010000CE0FFE01FE010000C007
          FE01F8010000C007FE01F8010000C007F001E0010000C007F001E0010000C807
          F001E0010000C807F001E0010000C807F003E0030000C807F007E0070000C807
          F00FE00F00008807D00FA01F00009C07E01FC03F00009C0B803F007F00009E13
          E3FFC7FF00008007D5FFABFF0000C003FFFFFFFFFFF887FFCFE3FFFFFFF083FF
          C7E3FFE3FFE0C3FEC3E3FFC3FFC1E1FCC1E3FF83FF83F1F9C0E3FF07FF07F8F3
          C063F00FE00FFC67C023E01FC01FFE0FC023C03F803FFF1FC063C03F003FFE0F
          C0E3C03F003FFC67C1E3C03F003FF0F3C3E3E07F003FC1F9C7E3F0FF807F83FC
          CFE3FFFFC0FF07FFFFFFFFFFE1FF0FFFFFFFFFFFFFFFFFFF00FFC7F3FF9FF3FF
          0020C7E3FF1FF1FF0000C7C3FE1FF0FF0000C783FC1FF07F0000C703F81FF03F
          0020C603F01FF01F00E0C403E01FF00F00FFC403E01FF00F00FFC603F01FF01F
          00FFC703F81FF03F01FFC783FC1FF07F03FFC7C3FE1FF0FFFFFFC7E3FF1FF1FF
          FFFFC7F3FF9FF3FFFFFFFFFFFFFFFFFFFE07FE3F0000FFFFFDE3E0070000FFFF
          8001800100000000800100000000000080010000000000008001000000000000
          8001000000000000800300000000000080010000000000008007000080010000
          80070000C003000080070000C003000080070000C0030000800FC001C003FFFF
          801FF80FC007FFFF803FFFFFC00FFFFF8007FFFFC00FFFBF80038001E01F8007
          C0008001E03F8007C0008001E00F800780008001C007800780008001C0078007
          8000800180078007C001800180038003C001800180078003E003800180078001
          F007800180078004F013800180078006C0198001C007800F800C8001C007801F
          000F8001E007803F080FFFFFF00FFFFFFFFFFFFFFFFFF007000FFFFFFFFFE003
          0007E000FE07E0010003C000FDE3C0010001C000FBF180000001800080718000
          0001800080518000000100008041C001000100008041C001800100008043E003
          C00180008041F007E0018000807FFC1FF1118000807FFC1FF999C07F80FFF80F
          FDDDE0FF81FFF80FFFFFFFFFFFFFF80FFE000000FFBF007F00000000001F007F
          00000000001F8003000000000007C003000000000007C0070000000000078007
          0000000000070007000000000003000300000000000300030000000000010001
          000000000004000300000000000680030000000000078001000000000007C001
          00000000C007FC01FFFF0000C007FE0780010007FF18FFFFFFFF0007FC000000
          80010007F0000000FFFF0007C001000080010007C003000075D60007C0030000
          00000007800300007416000700010000000100078001000055D9000700000000
          000000000000000077760000000000008001000000010000FFFFF80080030000
          8001FC00C0070000FFFFFE00E00FFFFFDFFFFFFFFFFFFFFF8002FFFFFFFF8001
          80030000F00FFFFF80010000F81FFE7FC0010000FC3FFC3FC0030000FE7FF81F
          C0030000FFFFF00FC00300008001FFFFC0030000FFFFFFFFC00300008001F00F
          C0030000FFFFF81FC0030000FE7FFC3FC0070000FC3FFE7F80030000F81FFFFF
          001D0000F00F80019FFFFFFFFFFFFFFFFC7F0000E001FFFFF01F0000E0018007
          C0070000E001800780010000E00180008001F807E00180000001F807E0018000
          0000E807E00180000000E007E00180000100E007E001800700000007E0018007
          80010007A0018007E0070007C0038003F803E0070007800BFE00E007C00F801F
          FF03F807ABFF803FFF8FF807EFFFFFFFFFFFFFFFFFFF8001FFF7FE7F81F70000
          C1E7FC3F9DE3000081C7F81FCFE300000381F80FE7C100000700F007F3C10000
          0E00F003B9F700000600E00181F700000300E001FFF700000000C00388F70000
          0000C00F9CF700000000803FC1F70000000081FFC9F7000080010FFFE3F70000
          C0031FFFE3F70000FFFFFFFFF7F7800100000000000000000000000000000000
          000000000000}
      end
    end
  end
  inherited fpAbm: TFormPanel [10]
    Left = 144
    Top = 461
    Width = 550
    Height = 410
    BorderStyle = bsDialog
    OnEnter = fpAbmEnter
    ExplicitLeft = 144
    ExplicitTop = 461
    ExplicitWidth = 550
    ExplicitHeight = 410
    DesignSize = (
      550
      410)
    inherited BevelAbm: TBevel
      Top = 374
      Width = 542
      ExplicitTop = 374
      ExplicitWidth = 542
    end
    object Label5: TLabel [1]
      Left = 3
      Top = 137
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Documento'
    end
    object Label6: TLabel [2]
      Left = 3
      Top = 163
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lote'
    end
    object Label7: TLabel [3]
      Left = 3
      Top = 239
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Observaciones'
    end
    object Label9: TLabel [4]
      Left = 10
      Top = 6
      Width = 210
      Height = 13
      AutoSize = False
      Caption = 'Solo ingrese los datos que desea modificar:'
    end
    object lblCodigoDocumento: TLabel [5]
      Left = 206
      Top = 188
      Width = 78
      Height = 13
      AutoSize = False
      Caption = 'Nro. Documento'
    end
    object Label13: TLabel [6]
      Left = 3
      Top = 214
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Nro. Hoja'
    end
    object Label14: TLabel [7]
      Left = 398
      Top = 188
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Legajo'
    end
    object Label15: TLabel [8]
      Left = 177
      Top = 214
      Width = 109
      Height = 13
      AutoSize = False
      Caption = 'Nro. Oper. Giro/Transf.'
    end
    object Label8: TLabel [9]
      Left = 3
      Top = 188
      Width = 73
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Remito'
    end
    object lblSecTrazabilidad: TLabel [10]
      Left = 398
      Top = 214
      Width = 49
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sec. Traz.'
    end
    inherited btnAceptar: TButton
      Left = 392
      Top = 380
      TabOrder = 12
      ExplicitLeft = 392
      ExplicitTop = 380
    end
    inherited btnCancelar: TButton
      Left = 470
      Top = 380
      TabOrder = 13
      ExplicitLeft = 470
      ExplicitTop = 380
    end
    inline fraTipoDocumentoEdic: TfraCodigoDescripcion
      Left = 79
      Top = 133
      Width = 465
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 79
      ExplicitTop = 133
      ExplicitWidth = 465
      DesignSize = (
        465
        23)
      inherited cmbDescripcion: TArtComboBox
        Width = 400
        ExplicitWidth = 400
      end
    end
    object edLoteEdic: TIntEdit
      Left = 80
      Top = 160
      Width = 91
      Height = 21
      TabOrder = 1
      MaxLength = 8
      Options = [ioAllowEmpty, ioAllowNegative]
    end
    object edObservacionesEdic: TMemo
      Left = 80
      Top = 237
      Width = 461
      Height = 97
      Anchors = [akLeft, akTop, akRight]
      Lines.Strings = (
        '')
      MaxLength = 256
      TabOrder = 8
    end
    object edDocumentoEdic: TPatternEdit
      Left = 288
      Top = 185
      Width = 103
      Height = 21
      MaxLength = 13
      TabOrder = 3
      Pattern = '0123456789'
    end
    object edHojaEdic: TIntEdit
      Left = 80
      Top = 211
      Width = 91
      Height = 21
      TabOrder = 5
      MaxLength = 8
      MaxValue = 99999
    end
    object edLegajoEdic: TIntEdit
      Left = 450
      Top = 185
      Width = 91
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 4
      MaxLength = 8
      MaxValue = 99999999
    end
    object edNroOperGT: TPatternEdit
      Left = 288
      Top = 211
      Width = 103
      Height = 21
      MaxLength = 20
      TabOrder = 6
      Pattern = '0123456789'
    end
    object chkAgregarObservEdic: TCheckBox
      Left = 80
      Top = 338
      Width = 213
      Height = 14
      Caption = 'Agregar Observaciones a las Existentes'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object edRemitoEdic: TIntEdit
      Left = 80
      Top = 185
      Width = 91
      Height = 21
      TabOrder = 2
      MaxLength = 8
      Options = [ioAllowEmpty, ioAllowNegative]
    end
    object chkOrigenProblART: TCheckBox
      Left = 80
      Top = 357
      Width = 213
      Height = 14
      Caption = 'Problema Originado en la ART'
      TabOrder = 10
      OnClick = chkOrigenProblARTClick
    end
    object chkValidacionReducida: TCheckBox
      Left = 386
      Top = 357
      Width = 156
      Height = 14
      Caption = 'Aplicar Validaci'#243'n Reducida'
      TabOrder = 11
      OnClick = chkOrigenProblARTClick
    end
    object tbRepos: TToolBar
      Left = 9
      Top = 380
      Width = 23
      Height = 22
      Align = alNone
      AutoSize = True
      HotImages = ilByNRepos
      Images = ilColorRepos
      TabOrder = 14
      object tbMaximizarImagen: TToolButton
        Left = 0
        Top = 0
        Hint = 'Maximizar Imagen'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = tbMaximizarImagenClick
      end
    end
    object edSecuenciaTrazEdic: TIntEdit
      Left = 450
      Top = 211
      Width = 91
      Height = 21
      TabOrder = 7
      MaxLength = 10
      Options = [ioAllowEmpty, ioAllowNegative]
    end
  end
  object fpReCargarDatos: TFormPanel [11]
    Left = 522
    Top = 196
    Width = 350
    Height = 260
    Caption = 'Re-Carga de Archivo Temporal'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    Position = poOwnerFormCenter
    Constraints.MinHeight = 260
    Constraints.MinWidth = 350
    OnEnter = fpReCargarDatosEnter
    DesignSize = (
      350
      260)
    object Bevel1: TBevel
      Left = 4
      Top = 224
      Width = 342
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
      Shape = bsTopLine
    end
    object Label16: TLabel
      Left = 5
      Top = 9
      Width = 161
      Height = 13
      AutoSize = False
      Caption = 'Seleccione el CD a Re-Cargar:'
    end
    object btnAceptarReCargarDatos: TButton
      Left = 192
      Top = 230
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnAceptarReCargarDatosClick
    end
    object btnCancelarReCargarDatos: TButton
      Left = 270
      Top = 230
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object dbgDatosReCarga: TArtDBGrid
      Left = 8
      Top = 27
      Width = 334
      Height = 192
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dsDatosReCarga
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = GridDblClick
      OnKeyDown = GridKeyDown
      IniStorage = FormStorage
      FooterBand = False
      TitleHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'NROMEDIO'
          Title.Alignment = taCenter
          Title.Caption = 'CD'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Title.Caption = 'Usuario'
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CANTIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Cant. Registros'
          Width = 100
          Visible = True
        end>
    end
  end
  inherited sdqConsulta: TSDQuery [12]
    AfterScroll = sdqConsultaAfterScroll
    SQL.Strings = (
      
        'SELECT IR_CODARCHIVO CODARCHIVO, IR_CLAVE CLAVE, IR_CODDOCUMENTO' +
        ' CODDOCUMENTO,'
      
        '       IR_NROMEDIO NROMEDIO, IR_LOTE LOTE, IR_REMITO REMITO, IR_' +
        'CAJAADMIN CAJAADMIN,'
      
        '       IR_PATHARCHIVO PATHARCHIVO, IR_ARCHIVO ARCHIVO, IR_OBSERV' +
        'ACIONES OBSERVACIONES,'
      '       IR_ID IRID, 0 ERROR, 0 WARNING'
      '  FROM TIR_IMPOREPOSITORIOARCHIVO, TIE_IMPOREPOSARCH_ERROR'
      ' WHERE IR_ID = IE_IDIMPOREPOSITORIOARCHIVO(+)'
      '   AND 1 = 2'
      '')
  end
  inherited dsConsulta: TDataSource [13]
  end
  inherited SortDialog: TSortDialog [14]
  end
  inherited ExportDialog: TExportDialog [15]
  end
  inherited QueryPrint: TQueryPrint [16]
    LastColType = lcFill
    PageOrientation = pxLandscape
    PageSize = psLegal
    Zoom = 85
    Options = [qoZoomPrint, qoZoomCalcFontSize]
  end
  inherited Seguridad: TSeguridad [17]
    Claves = <
      item
        Name = 'SuperValidador'
      end>
  end
  inherited FormStorage: TFormStorage [18]
  end
  inherited PrintDialog: TPrintDialog [19]
  end
  inherited ShortCutControl: TShortCutControl [20]
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
        LinkControl = tbSalir2
      end
      item
        Key = 16469
        LinkControl = tbAltaSegErroresUsuarios
      end
      item
        Key = 16464
        LinkControl = tbPrepararLote
      end
      item
        Key = 16466
        LinkControl = tbPrepararRemito
      end
      item
        Key = 16452
        LinkControl = tbDocsArchivo
      end
      item
        Key = 16449
        LinkControl = tbConsultaCarpetas
      end
      item
        Key = 16468
        LinkControl = tbCartasDoc
      end
      item
        Key = 16472
        LinkControl = tbPropiedades
      end
      item
        Key = 16430
        LinkControl = tbEliminar
      end>
    Left = 109
    Top = 200
  end
  object sdqErrores: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT -9999 COD, '#39'[ Todos ]'#39' DESCR'
      '  FROM DUAL'
      ' WHERE 1 = 2'
      '')
    Left = 365
    Top = 50
  end
  object dsErrores: TDataSource
    DataSet = sdqErrores
    Left = 393
    Top = 50
  end
  object sdqWarnings: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT -9999 COD, '#39'[ Todos ]'#39' DESCR'
      '  FROM DUAL'
      ' WHERE 1 = 2'
      '')
    Left = 364
    Top = 10
  end
  object dsWarnings: TDataSource
    DataSet = sdqWarnings
    Left = 392
    Top = 10
  end
  object tmrImagenes: TTimer
    Enabled = False
    Interval = 100
    OnTimer = tmrImagenesTimer
    Left = 144
    Top = 200
  end
  object pmnuSeleccionar: TPopupMenu
    Left = 144
    Top = 228
    object mnuMarcarTodos: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = mnuMarcarTodosClick
    end
    object mnuDesmarcarTodos: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = mnuDesmarcarTodosClick
    end
  end
  object sdqDatosReCarga: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    Left = 115
    Top = 284
  end
  object dsDatosReCarga: TDataSource
    DataSet = sdqDatosReCarga
    Left = 144
    Top = 284
  end
  object fdDialog: TFolderDialog
    Title = 
      'Seleccione la carpeta donde se encuentran todas las im'#225'genes del' +
      ' CD'
    DialogX = 0
    DialogY = 0
    Version = '1.1.0.1'
    Left = 144
    Top = 256
  end
  object sdqLotes: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT DISTINCT IR_LOTE LOTE, TRIM(TO_CHAR(IR_LOTE)) || DECODE(L' +
        'O_ID, NULL, NULL, '#39' ('#39' || LO_USUALTA || '#39' - '#39' || TO_CHAR(TRUNC(L' +
        'O_FECHAALTA), '#39'DD/MM/YYYY'#39') || '#39')'#39') DESCRLOTE'
      '  FROM ARCHIVO.RLO_LOTE, TIR_IMPOREPOSITORIOARCHIVO'
      ' WHERE IR_LOTE = LO_ID(+)'
      '   AND IR_LOTE IS NOT NULL'
      '   AND 1 = 2'
      '')
    Left = 365
    Top = 87
  end
  object dsLotes: TDataSource
    DataSet = sdqLotes
    Left = 393
    Top = 87
  end
  object ilColorRepos: TImageList
    Left = 116
    Top = 312
    Bitmap = {
      494C010101007400800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0000CEFF0000CE
      FF0000CEFF0000CEFF000000000000000000000000000000000000CEFF0000AD
      FF0000B5FF0000BDFF0000BDFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000D6FF0000D6FF0000CE
      FF0000C6FF0000000000000000000000000000000000000000000000000000C6
      FF0000C6FF0000CEFF0000CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000DEFF0008D6FF0000D6
      FF0000CEFF0000CEFF000000000000000000000000000000000000C6FF0000CE
      FF0000D6FF0000D6FF0000DEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000E7FF0010BDFF0000D6
      FF0000CEFF0000CEFF0000CEFF00000000000000000000CEFF0000D6FF0000DE
      FF0000E7FF0000BDFF0000EFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000B5FF00FFCEAD0000BD
      FF0000CEFF0000BDFF000000000000000000000000000000000000C6FF0000EF
      FF0000BDFF000000000000B5FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCEAD000000
      000000B5FF0000000000000000000000000000000000000000000000000000BD
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCEAD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFCEBD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFDEBD000000
      000000ADFF0000000000000000000000000000000000000000000000000000B5
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009CFF00FFCEBD0000AD
      FF0000A5FF0000B5FF000000000000000000000000000000000000BDFF0000BD
      FF0000B5FF0000000000009CFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000BDFF0010B5FF0000BD
      FF0000BDFF0000B5FF0000C6FF00000000000000000000CEFF0000D6FF0000CE
      FF0000C6FF0000B5FF0000B5FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000CEFF0008CEFF0000CE
      FF0000CEFF0000C6FF000000000000000000000000000000000000CEFF0000D6
      FF0000CEFF0000C6FF0000BDFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000DEFF0000DEFF0031DE
      EF0039CEEF00FFD6B500FFD6B500FFD6B500FFD6B500FFCEAD00FFCEAD0031CE
      EF0031D6EF0000D6FF0000CEFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000EFFF0000EFFF0000EF
      FF0000EFFF0000CEFF000000000000000000000000000000000000D6FF0000F7
      FF0000E7FF0000DEFF0000D6FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF00000000000083C1000000000000
      87E100000000000083C1000000000000818100000000000083C5000000000000
      D7EF000000000000DFFF000000000000DFFF000000000000D7EF000000000000
      83C5000000000000818100000000000083C10000000000008001000000000000
      83C1000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ilByNRepos: TImageList
    Left = 144
    Top = 312
    Bitmap = {
      494C010101007400800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600B5B5
      B500B5B5B500BDBDBD00BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CECECE00C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00C6C6C600C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CECECE00CECECE00C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600CECECE00CECECE00CECECE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00D6D6D600BDBDBD00CECE
      CE00C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600CECECE00CECE
      CE00D6D6D600BDBDBD00D6D6D600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00B5B5B500C6C6C600BDBD
      BD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600D6D6
      D600BDBDBD00FFFFFF00B5B5B500FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6C600FFFF
      FF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CECECE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00D6D6D600FFFF
      FF00B5B5B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00A5A5A500CECECE00B5B5
      B500ADADAD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00B5B5B500FFFFFF00ADADAD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDBDBD00B5B5B500BDBD
      BD00BDBDBD00BDBDBD00C6C6C600FFFFFF00FFFFFF00C6C6C600CECECE00C6C6
      C600BDBDBD00B5B5B500B5B5B500FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600CECE
      CE00C6C6C600C6C6C600BDBDBD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CECECE00CECECE00CECE
      CE00C6C6C600D6D6D600D6D6D600D6D6D600CECECE00CECECE00CECECE00C6C6
      C600CECECE00C6C6C600C6C6C600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00D6D6D600D6D6D600D6D6
      D600D6D6D600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE00DEDE
      DE00D6D6D600CECECE00CECECE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object pmnuExportar: TPopupMenu
    Left = 173
    Top = 228
    object mnuExportarGrilla: TMenuItem
      Caption = 'Grilla'
      OnClick = mnuExportarGrillaClick
    end
    object mnuExportarCajaExpo: TMenuItem
      Caption = 'Archivo CajaExpo'
      OnClick = mnuExportarCajaExpoClick
    end
  end
  object pmnuPreparaLote: TPopupMenu
    Left = 202
    Top = 228
    object pmnuPreparaLotePorLote: TMenuItem
      Caption = 'Por Nro. de Lote'
      OnClick = pmnuPreparaLotePorLoteClick
    end
    object pmnuPreparaLotePorSecTrazabil: TMenuItem
      Caption = 'Por Nro. Sec. Trazabilidad'
      OnClick = pmnuPreparaLotePorSecTrazabilClick
    end
  end
  object pmnuEliminar: TPopupMenu
    Left = 232
    Top = 228
    object pmnuBajaRegistros: TMenuItem
      Caption = 'Dar de Baja Registros'
      OnClick = pmnuBajaRegistrosClick
    end
    object pmnuLimpiarCampos: TMenuItem
      Caption = 'Limpiar Campos de Registros'
      OnClick = pmnuLimpiarCamposClick
    end
  end
end
