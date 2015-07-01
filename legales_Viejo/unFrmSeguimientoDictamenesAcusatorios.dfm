object frmSeguimientoDictamenesAcusatorios: TfrmSeguimientoDictamenesAcusatorios
  Left = 230
  Top = 158
  ActiveControl = fraArts.edCodigo
  Caption = 'Sumarios'
  ClientHeight = 633
  ClientWidth = 1082
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tbGestionDeuda: TToolBar
    Left = 0
    Top = 0
    Width = 1082
    Height = 27
    Caption = 'Barra de Herramientas de Dictamenes Acusatorios'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    HotImages = dmLegales.ilByN
    Images = dmLegales.ilColor
    TabOrder = 0
    object tbSeparador0: TToolButton
      Left = 0
      Top = 0
      Width = 8
      Caption = 'tbSeparador0'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbGuardar: TToolButton
      Left = 8
      Top = 0
      Hint = 'Guardar Sumario (Ctrl-G)'
      Caption = 'tbGuardar'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbGuardarClick
    end
    object tbSeparador: TToolButton
      Left = 31
      Top = 0
      Width = 13
      Caption = 'tbSeparador'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbCambiarAInstanciaJudicial: TToolButton
      Left = 44
      Top = 0
      Hint = 'Cambiar a Instancia Judicial'
      Caption = 'Cambiar a Instancia Judicial'
      ImageIndex = 27
      ParentShowHint = False
      ShowHint = True
      OnClick = tbCambiarAInstanciaJudicialClick
    end
    object tbFijarSentecia: TToolButton
      Left = 67
      Top = 0
      Hint = 'Fijar Sentencia'
      Caption = 'Fijar Importes de Sentencia'
      ImageIndex = 18
      ParentShowHint = False
      ShowHint = True
      OnClick = tbFijarSenteciaClick
    end
    object tbSumatoria: TToolButton
      Left = 90
      Top = 0
      Caption = 'Sumatoria'
      ImageIndex = 21
      OnClick = tbSumatoriaClick
    end
    object tbSeparador4: TToolButton
      Left = 113
      Top = 0
      Width = 8
      Caption = 'tbSeparador4'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbImprimir: TToolButton
      Left = 121
      Top = 0
      Hint = 'Impresi'#243'n (Ctrl+I)'
      Caption = 'tbImprimir'
      DropdownMenu = pmSeguimientoJuicios
      ImageIndex = 4
      ParentShowHint = False
      ShowHint = True
      Style = tbsDropDown
    end
    object tbVerImagenes: TToolButton
      Left = 159
      Top = 0
      Hint = 'Ver Im'#225'genes Digitalizadas'
      Caption = 'tbVerImagenes'
      ImageIndex = 31
      ParentShowHint = False
      ShowHint = True
      OnClick = tbVerImagenesClick
    end
    object tbSeparador3: TToolButton
      Left = 182
      Top = 0
      Width = 8
      Caption = 'tbSeparador3'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object tbSalir: TToolButton
      Left = 190
      Top = 0
      Hint = 'Salir del Sumario'
      Caption = 'tbSalir'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbSalirClick
    end
  end
  object pgEtapasDictamen: TPageControl
    Left = 0
    Top = 27
    Width = 1082
    Height = 290
    ActivePage = tsAdministrativa
    Align = alClient
    Anchors = [akLeft, akTop, akRight]
    HotTrack = True
    MultiLine = True
    RaggedRight = True
    TabOrder = 1
    TabPosition = tpRight
    object tsAdministrativa: TTabSheet
      Caption = 'Administrativa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object gbGeneral: TGroupBox
        Left = 0
        Top = 0
        Width = 1055
        Height = 140
        Align = alTop
        Caption = 'General '
        TabOrder = 0
        DesignSize = (
          1055
          140)
        object lblNroExpedienteMediacion: TLabel
          Left = 333
          Top = 17
          Width = 56
          Height = 13
          Caption = 'N'#186' Sumario:'
        end
        object lblExpedienteSRT: TLabel
          Left = 480
          Top = 18
          Width = 81
          Height = 13
          Caption = 'Expediente SRT:'
        end
        object lblBarra: TLabel
          Left = 646
          Top = 17
          Width = 5
          Height = 13
          Caption = '/'
        end
        object lbAbogado: TLabel
          Left = 7
          Top = 91
          Width = 46
          Height = 13
          Caption = 'Abogado:'
        end
        object lblEstadoJuicio: TLabel
          Left = 7
          Top = 45
          Width = 36
          Height = 13
          Caption = 'Estado:'
        end
        object lblArea: TLabel
          Left = 750
          Top = 45
          Width = 25
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Area:'
          ExplicitLeft = 456
        end
        object lblFechaAbogadoSumariante: TLabel
          Left = 702
          Top = 68
          Width = 73
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Abogado Sum.:'
          ExplicitLeft = 408
        end
        object lblAreaSRT: TLabel
          Left = 7
          Top = 115
          Width = 50
          Height = 13
          Caption = 'Area SRT:'
        end
        object lblFirmanteSRT: TLabel
          Left = 707
          Top = 91
          Width = 68
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Firmante SRT:'
          ExplicitLeft = 413
        end
        object lbEstudioJuridico: TLabel
          Left = 7
          Top = 68
          Width = 79
          Height = 13
          Caption = 'Estudio Jur'#237'dico:'
        end
        object Label2: TLabel
          Left = 683
          Top = 116
          Width = 94
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Fecha Fin Sumario.:'
          ExplicitLeft = 389
        end
        object lblArts: TLabel
          Left = 7
          Top = 20
          Width = 25
          Height = 13
          Caption = 'ART:'
        end
        object edNroDictamen: TPatternEdit
          Left = 396
          Top = 15
          Width = 75
          Height = 21
          TabStop = False
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        object edExpedienteSRT: TPatternEdit
          Left = 567
          Top = 14
          Width = 75
          Height = 21
          MaxLength = 6
          TabOrder = 2
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        inline fraAbogadosPropios: TfraAbogadosLegales
          Left = 97
          Top = 87
          Width = 577
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 8
          ExplicitLeft = 97
          ExplicitTop = 87
          ExplicitWidth = 577
          DesignSize = (
            577
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Top = 1
            Width = 522
            ExplicitLeft = 56
            ExplicitTop = 1
            ExplicitWidth = 522
          end
          inherited edCodigo: TPatternEdit
            Top = 1
            Width = 50
            Alignment = taRightJustify
            ExplicitTop = 1
            ExplicitWidth = 50
          end
        end
        inline fraEstado: TfraCodigoDescripcion
          Left = 97
          Top = 39
          Width = 586
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 4
          ExplicitLeft = 97
          ExplicitTop = 39
          ExplicitWidth = 586
          DesignSize = (
            586
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Width = 521
            ExplicitLeft = 56
            ExplicitWidth = 521
          end
          inherited edCodigo: TPatternEdit
            Width = 50
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 50
          end
        end
        object tbExplorarHistoricoEstado: TToolBar
          Left = 673
          Top = 36
          Width = 34
          Height = 27
          Align = alNone
          Anchors = [akTop, akRight]
          BorderWidth = 1
          ButtonWidth = 25
          Caption = 'ToolBar de Hist'#243'rico de Estado'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          object tbHistoricoEstados: TToolButton
            Left = 0
            Top = 0
            Hint = 'Nuevo'
            ImageIndex = 14
            OnClick = tbHistoricoEstadosClick
          end
        end
        inline fraAreas: TfraCodigoDescripcion
          Left = 781
          Top = 39
          Width = 260
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 5
          ExplicitLeft = 781
          ExplicitTop = 39
          ExplicitWidth = 260
          DesignSize = (
            260
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Width = 195
            ExplicitLeft = 56
            ExplicitWidth = 195
          end
          inherited edCodigo: TPatternEdit
            Width = 50
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 50
          end
        end
        inline fraAbogadoSumariante: TfraAbogadosLegales
          Left = 781
          Top = 63
          Width = 252
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 7
          ExplicitLeft = 781
          ExplicitTop = 63
          ExplicitWidth = 252
          DesignSize = (
            252
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Top = 1
            Width = 195
            ExplicitLeft = 56
            ExplicitTop = 1
            ExplicitWidth = 195
          end
          inherited edCodigo: TPatternEdit
            Top = 1
            Width = 50
            Alignment = taRightJustify
            ExplicitTop = 1
            ExplicitWidth = 50
          end
        end
        inline fraAreaSRT: TfraCodigoDescripcion
          Left = 97
          Top = 111
          Width = 587
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 10
          ExplicitLeft = 97
          ExplicitTop = 111
          ExplicitWidth = 587
          DesignSize = (
            587
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Width = 522
            ExplicitLeft = 56
            ExplicitWidth = 522
          end
          inherited edCodigo: TPatternEdit
            Width = 50
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 50
          end
        end
        inline fraFirmanteSRT: TfraCodigoDescripcion
          Left = 781
          Top = 87
          Width = 260
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 9
          ExplicitLeft = 781
          ExplicitTop = 87
          ExplicitWidth = 260
          DesignSize = (
            260
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Width = 195
            ExplicitLeft = 56
            ExplicitWidth = 195
          end
          inherited edCodigo: TPatternEdit
            Width = 50
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 50
          end
        end
        object edAnioExpedienteSRT: TPatternEdit
          Left = 656
          Top = 14
          Width = 82
          Height = 21
          MaxLength = 4
          TabOrder = 3
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        inline fraEstudioJuridico: TfraCodigoDescripcionExt
          Left = 97
          Top = 63
          Width = 586
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 6
          ExplicitLeft = 97
          ExplicitTop = 63
          ExplicitWidth = 586
          DesignSize = (
            586
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Width = 521
            ExplicitLeft = 56
            ExplicitWidth = 521
          end
          inherited edCodigo: TPatternEdit
            Width = 50
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 50
          end
        end
        object edFechaFin: TDateComboBox
          Left = 782
          Top = 112
          Width = 98
          Height = 21
          MinDate = 35431.000000000000000000
          Anchors = [akTop, akRight]
          TabOrder = 12
        end
        inline fraArts: TfraCodigoDescripcion
          Left = 97
          Top = 15
          Width = 229
          Height = 23
          TabOrder = 0
          ExplicitLeft = 97
          ExplicitTop = 15
          ExplicitWidth = 229
          DesignSize = (
            229
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 56
            Width = 170
            ExplicitLeft = 56
            ExplicitWidth = 170
          end
          inherited edCodigo: TPatternEdit
            Width = 50
            ExplicitWidth = 50
          end
        end
        object cbResponsabilidadProvart: TCheckBox
          Left = 568
          Top = -4
          Width = 145
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Responsabilidad Provincia'
          TabOrder = 13
          Visible = False
        end
        object cbGPBAIncumplimiento: TCheckBox
          Left = 884
          Top = 115
          Width = 130
          Height = 17
          Alignment = taLeftJustify
          Anchors = [akTop, akRight]
          Caption = 'GPBA Incumplimiento'
          TabOrder = 14
        end
      end
      object gbAdministrativa: TGroupBox
        Left = 0
        Top = 140
        Width = 1055
        Height = 142
        Align = alClient
        Caption = ' Gesti'#243'n SRT  '
        TabOrder = 1
        object lblFechaNotificacion: TLabel
          Left = 380
          Top = 19
          Width = 93
          Height = 13
          Caption = 'F.Notificaci'#243'n DAC:'
        end
        object lblNroDac: TLabel
          Left = 7
          Top = 19
          Width = 45
          Height = 13
          Caption = 'Nro.DAC:'
        end
        object lblFechaDAC: TLabel
          Left = 204
          Top = 20
          Width = 58
          Height = 13
          Caption = 'Fecha.DAC:'
        end
        object lblDispocisionSAL: TLabel
          Left = 7
          Top = 45
          Width = 80
          Height = 13
          Caption = 'Dispocisi'#243'n SAL:'
        end
        object lblFechaSal: TLabel
          Left = 204
          Top = 45
          Width = 56
          Height = 13
          Caption = 'Fecha SAL:'
        end
        object lblNroResolucion: TLabel
          Left = 7
          Top = 96
          Width = 76
          Height = 13
          Caption = 'Nro.Resoluci'#243'n:'
        end
        object lblFechaResolucion: TLabel
          Left = 204
          Top = 96
          Width = 58
          Height = 13
          Caption = 'Fecha.Res.:'
        end
        object lblFechaNotificacionResolucion: TLabel
          Left = 380
          Top = 96
          Width = 93
          Height = 13
          Caption = 'F.Notificaci'#243'n Res.:'
        end
        object lblMultaSRT: TLabel
          Left = 7
          Top = 121
          Width = 54
          Height = 13
          Caption = 'Multa SRT:'
        end
        object lblMopresAdministrativo: TLabel
          Left = 205
          Top = 121
          Width = 38
          Height = 13
          Caption = 'Mopres:'
        end
        object lblFechaAudienciaDescargo: TLabel
          Left = 387
          Top = 44
          Width = 86
          Height = 13
          Caption = 'Fecha.Aud.Desc.:'
        end
        object Label1: TLabel
          Left = 7
          Top = 69
          Width = 53
          Height = 13
          Caption = 'Resoluci'#243'n'
        end
        object spbConfirmarMulta: TSpeedButton
          Left = 378
          Top = 117
          Width = 23
          Height = 22
          Hint = 'Confirmar Multa SRT'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = spbConfirmarMultaClick
        end
        object lblNotaAprobacion: TLabel
          Left = 408
          Top = 120
          Width = 325
          Height = 13
          Caption = 'Debe confirmar para que se recalcule la Tasa de Justicia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 388
          Top = 68
          Width = 85
          Height = 13
          Caption = 'F. Incumplimiento:'
        end
        object lblValorMopresAdministrativo: TLabel
          Left = 584
          Top = 68
          Width = 65
          Height = 13
          Caption = 'Valor Mopres:'
        end
        object edFechaNotificacionDac: TDateComboBox
          Left = 480
          Top = 16
          Width = 98
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 2
        end
        object edNroDAC: TPatternEdit
          Left = 97
          Top = 16
          Width = 94
          Height = 21
          MaxLength = 8
          TabOrder = 0
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        object edFechaDac: TDateComboBox
          Left = 267
          Top = 16
          Width = 96
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 1
        end
        object edDisposicionSAL: TPatternEdit
          Left = 97
          Top = 41
          Width = 94
          Height = 21
          MaxLength = 8
          TabOrder = 3
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        object edFechaSal: TDateComboBox
          Left = 267
          Top = 41
          Width = 96
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 4
        end
        object edNroResolucion: TPatternEdit
          Left = 97
          Top = 92
          Width = 94
          Height = 21
          MaxLength = 8
          TabOrder = 9
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        object edFechaResolucion: TDateComboBox
          Left = 267
          Top = 92
          Width = 96
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 10
        end
        object edFechaNotificacionResolucion: TDateComboBox
          Left = 480
          Top = 92
          Width = 98
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 11
        end
        object edMultaSRT: TCurrencyEdit
          Left = 97
          Top = 117
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '$,0.00;-$,0.00'
          MaxLength = 11
          MaxValue = 99999999.000000000000000000
          TabOrder = 12
          OnChange = edMultaSRTChange
          OnEnter = edMultaSRTEnter
          OnExit = edMultaSRTExit
        end
        object edMopres: TPatternEdit
          Left = 268
          Top = 117
          Width = 93
          Height = 21
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
          Text = '0'
          OnChange = edMopresChange
          OnEnter = edMopresEnter
          OnExit = edMopresExit
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        object edFechaAudienciaDescargo: TDateComboBox
          Left = 480
          Top = 40
          Width = 98
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 5
        end
        inline fraTipoResultadoAdministrativa: TfraCodigoDescripcion
          Left = 96
          Top = 64
          Width = 265
          Height = 23
          TabOrder = 6
          ExplicitLeft = 96
          ExplicitTop = 64
          ExplicitWidth = 265
          DesignSize = (
            265
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 66
            Width = 200
            Color = clWhite
            TabOrder = 0
            ExplicitLeft = 66
            ExplicitWidth = 200
          end
          inherited edCodigo: TPatternEdit
            Width = 61
            Color = clWhite
            TabOrder = 1
            Alignment = taRightJustify
            ExplicitWidth = 61
          end
        end
        object edFechaIncumplimiento: TDateComboBox
          Left = 480
          Top = 65
          Width = 98
          Height = 21
          MinDate = 35431.000000000000000000
          TabOrder = 7
          OnChange = edFechaIncumplimientoChange
        end
        object edValorMopres: TPatternEdit
          Left = 656
          Top = 64
          Width = 93
          Height = 21
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 4
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          Text = '0'
          OnChange = edMopresChange
          OnEnter = edMopresEnter
          OnExit = edMopresExit
          Alignment = taRightJustify
        end
      end
    end
    object tsJudicial: TTabSheet
      Caption = 'Judicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      inline fraDatosJuzgadoAsignado: TfraJuzgados
        Left = 0
        Top = 0
        Width = 1055
        Height = 97
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1055
        ExplicitHeight = 97
        DesignSize = (
          1055
          97)
        inherited gbJuzgados: TGroupBox
          Width = 1048
          Height = 92
          ExplicitWidth = 1048
          ExplicitHeight = 92
          DesignSize = (
            1048
            92)
          inherited lblFuero: TLabel
            Width = 30
            ExplicitWidth = 30
          end
          inherited lblJuzgado: TLabel
            Width = 63
            ExplicitWidth = 63
          end
          inherited lblInstancia: TLabel
            Width = 46
            ExplicitWidth = 46
          end
          inherited lblExpediente: TLabel
            Width = 39
            ExplicitWidth = 39
          end
          inherited lblFechaIngreso: TLabel
            Left = 807
            Width = 47
            ExplicitLeft = 513
            ExplicitWidth = 47
          end
          inherited Label1: TLabel
            Width = 5
            ExplicitWidth = 5
          end
          inherited fraFuero: TfraCodigoDescripcionExt
            Width = 693
            ExplicitWidth = 693
            DesignSize = (
              693
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 628
              ExplicitWidth = 628
            end
          end
          inherited fraSecretaria: TfraCodigoDescripcionExt
            Width = 692
            ExplicitWidth = 692
            DesignSize = (
              692
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 627
              ExplicitWidth = 627
            end
          end
          inherited btnMasDatosJuzgado: TBitBtn
            Left = 947
            ExplicitLeft = 947
          end
          inherited fpMasDatosJuzgado: TFormPanel
            inherited pgMasDatosJuzgado: TPageControl
              inherited tsSede: TTabSheet
                ExplicitLeft = 4
                ExplicitTop = 24
                ExplicitWidth = 445
                ExplicitHeight = 111
                inherited lblDomicilioJuzgado: TLabel
                  Width = 45
                  ExplicitWidth = 45
                end
                inherited lblTelefonoJuzgado: TLabel
                  Width = 50
                  ExplicitWidth = 50
                end
                inherited lblFaxJuzgado: TLabel
                  Width = 20
                  ExplicitWidth = 20
                end
                inherited lblLocJuzgado: TLabel
                  Width = 49
                  ExplicitWidth = 49
                end
              end
            end
          end
          inherited dteFechaIngreso: TDateComboBox
            Left = 855
            ExplicitLeft = 855
          end
          inherited cbSinExpediente: TCheckBox
            Left = 765
            ExplicitLeft = 765
          end
        end
        inherited sdqJuzgado: TSDQuery
          DataSource = fraDatosJuzgadoAsignado.fraJuzgado.dsDatos
        end
      end
      object gbSentencia: TGroupBox
        Left = 0
        Top = 97
        Width = 1055
        Height = 185
        Align = alClient
        Caption = 'Sentencia'
        TabOrder = 1
        DesignSize = (
          1055
          185)
        object lblSentencia: TLabel
          Left = 17
          Top = 20
          Width = 48
          Height = 13
          Caption = 'Sentencia'
        end
        object lblDescripcionSentencia: TLabel
          Left = 17
          Top = 43
          Width = 36
          Height = 13
          Caption = 'Detalle:'
        end
        object lblMulta: TLabel
          Left = 17
          Top = 92
          Width = 29
          Height = 13
          Caption = 'Multa:'
        end
        object lblFechaMulta: TLabel
          Left = 331
          Top = 92
          Width = 84
          Height = 13
          Caption = 'Fecha Sentencia:'
        end
        object lblMopresJuidicial: TLabel
          Left = 184
          Top = 92
          Width = 38
          Height = 13
          Caption = 'Mopres:'
        end
        object lblCostasJudicial: TLabel
          Left = 17
          Top = 117
          Width = 35
          Height = 13
          Caption = 'Costas:'
        end
        object lblGastosJudicial: TLabel
          Left = 184
          Top = 117
          Width = 36
          Height = 13
          Caption = 'Gastos:'
        end
        object lblTasaJusticia: TLabel
          Left = 17
          Top = 141
          Width = 52
          Height = 13
          Caption = 'Tasa Just.:'
        end
        object lblMultaTasaJusticia: TLabel
          Left = 184
          Top = 141
          Width = 44
          Height = 13
          Caption = 'Multa TJ:'
        end
        object lblTotalCostosGastosDemanda: TLabel
          Left = 363
          Top = 117
          Width = 27
          Height = 13
          Caption = 'Total:'
        end
        object lbFechaNotifSentencia: TLabel
          Left = 331
          Top = 140
          Width = 85
          Height = 13
          Caption = 'F.Notif.Sentencia:'
        end
        object Label3: TLabel
          Left = 533
          Top = 92
          Width = 115
          Height = 13
          Caption = 'F.Intimaci'#243'n pago multa:'
          Visible = False
        end
        inline fraTipoResultadoJuicio: TfraCodigoDescripcion
          Left = 83
          Top = 15
          Width = 558
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          ExplicitLeft = 83
          ExplicitTop = 15
          ExplicitWidth = 558
          DesignSize = (
            558
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 66
            Width = 493
            ExplicitLeft = 66
            ExplicitWidth = 493
          end
          inherited edCodigo: TPatternEdit
            Width = 61
            ExplicitWidth = 61
          end
        end
        object mSentencia: TMemo
          Left = 84
          Top = 39
          Width = 957
          Height = 45
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edMultaJudicial: TCurrencyEdit
          Left = 84
          Top = 88
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clGradientInactiveCaption
          DisplayFormat = '$,0.00;-$,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 99999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          OnChange = edMultaJudicialChange
        end
        object edMopresJudicial: TPatternEdit
          Left = 234
          Top = 88
          Width = 93
          Height = 21
          Color = clGradientInactiveCaption
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxLength = 6
          ParentFont = False
          TabOrder = 3
          Text = '0'
          Alignment = taRightJustify
          Pattern = '0123456789'
        end
        object edFechaSentencia: TDateComboBox
          Left = 431
          Top = 88
          Width = 98
          Height = 21
          MinDate = 32874.000000000000000000
          TabOrder = 4
        end
        object edCostasJudicial: TCurrencyEdit
          Left = 84
          Top = 113
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clGradientInactiveCaption
          DisplayFormat = '$,0.00;-$,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 99999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
          OnChange = edCostasJudicialChange
        end
        object edGastosJudicial: TCurrencyEdit
          Left = 234
          Top = 113
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clGradientInactiveCaption
          DisplayFormat = '$,0.00;-$,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 99999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
          OnChange = edCostasJudicialChange
        end
        object edTasaJusticia: TCurrencyEdit
          Left = 84
          Top = 137
          Width = 93
          Height = 20
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clGradientInactiveCaption
          DisplayFormat = '$,0.00;-$,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 99999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
          OnChange = edCostasJudicialChange
        end
        object edMultaTJ: TCurrencyEdit
          Left = 234
          Top = 137
          Width = 93
          Height = 20
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clGradientInactiveCaption
          DisplayFormat = '$,0.00;-$,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 99999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          OnChange = edCostasJudicialChange
        end
        object edTotal: TCurrencyEdit
          Left = 431
          Top = 113
          Width = 97
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = clGradientInactiveCaption
          DisplayFormat = '$,0.00;-$,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 99999999.000000000000000000
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object edFechaNotifSentencia: TDateComboBox
          Left = 431
          Top = 136
          Width = 98
          Height = 21
          MinDate = 32874.000000000000000000
          TabOrder = 11
        end
        object edFechaNotifBudi: TDateComboBox
          Left = 650
          Top = 88
          Width = 98
          Height = 21
          MinDate = 32874.000000000000000000
          TabOrder = 5
          Visible = False
        end
      end
    end
  end
  object pgDetalle: TPageControl
    Left = 0
    Top = 317
    Width = 1082
    Height = 297
    ActivePage = tsPagos
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnChange = pgDetalleChange
    object tsSiniestros: TTabSheet
      Caption = 'Siniestros'
      object cbSiniestros: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 29
        Bands = <
          item
            Control = tbOrigenDemandaSiniestro
            ImageIndex = -1
            MinHeight = 27
            Width = 1068
          end>
        object tbOrigenDemandaSiniestro: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 27
          Align = alBottom
          BorderWidth = 1
          Caption = 'Barra de Herramientas de Siniestros'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbBusquedaSiniestros: TToolButton
            Left = 0
            Top = 0
            Hint = 'Asociar Siniestros'
            ImageIndex = 13
            OnClick = tbBusquedaSiniestrosClick
          end
          object tbEliminarSiniestroSeleccionado: TToolButton
            Left = 23
            Top = 0
            Hint = 'Eliminar Siniestro'
            ImageIndex = 8
            OnClick = tbEliminarSiniestroSeleccionadoClick
          end
          object tbSeparador1Siniestros: TToolButton
            Left = 46
            Top = 0
            Width = 8
            ImageIndex = 2
            Style = tbsSeparator
          end
          object tbLimpiarTodo: TToolButton
            Left = 54
            Top = 0
            Hint = 'Limpiar'
            Caption = 'tbLimpiarTodo'
            ImageIndex = 1
            OnClick = tbLimpiarTodoClick
          end
        end
      end
      object dbgSiniestros: TArtDBGrid
        Left = 0
        Top = 29
        Width = 1074
        Height = 240
        Align = alClient
        DataSource = dsSiniestrosDictamenAcusatorio
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = dbgSiniestrosGetCellParams
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'EX_SINIESTRO'
            Title.Caption = 'Siniestro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_ORDEN'
            Title.Caption = 'Orden'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_RECAIDA'
            Title.Caption = 'Recaida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MP_CONTRATO'
            Title.Caption = 'Contrato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MP_CUIT'
            Title.Caption = 'CUIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MP_NOMBRE'
            Title.Caption = 'Nombre'
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TJ_CUIL'
            Title.Caption = 'CUIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TJ_NOMBRE'
            Title.Caption = 'Trabajador'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_DIAGNOSTICO'
            Title.Caption = 'Diagnostico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_FECHAACCIDENTE'
            Title.Caption = 'Fecha Accidente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_BAJAMEDICA'
            Title.Caption = 'B.Medica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_FECHARECAIDA'
            Title.Caption = 'F.Recaida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EX_ALTAMEDICA'
            Title.Caption = 'Alta M'#233'dica'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TB_DESCRIPCION'
            Visible = True
          end>
      end
    end
    object tsReclamos: TTabSheet
      Caption = ' Reclamos'
      ImageIndex = 6
      object cbReclamos: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 29
        Bands = <
          item
            Control = toolbarReclamos
            ImageIndex = -1
            MinHeight = 27
            Width = 1068
          end>
        object toolbarReclamos: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 27
          BorderWidth = 1
          Caption = 'Barra de Tareas de Eventos'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbNuevoReclamo: TToolButton
            Left = 0
            Top = 0
            Hint = 'Nuevo'
            ImageIndex = 6
            OnClick = tbNuevoReclamoClick
          end
          object tbEditarReclamo: TToolButton
            Left = 23
            Top = 0
            Hint = 'Modificar'
            ImageIndex = 7
            OnClick = tbEditarReclamoClick
          end
          object tbEliminarReclamo: TToolButton
            Left = 46
            Top = 0
            Hint = 'Eliminar'
            ImageIndex = 8
            OnClick = tbEliminarReclamoClick
          end
          object tbSeparadorReclamo: TToolButton
            Left = 69
            Top = 0
            Width = 8
            Caption = 'tbEventosSeparador'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object tbImprimirReclamo: TToolButton
            Left = 77
            Top = 0
            Hint = 'Imprimir Eventos'
            ImageIndex = 4
            Visible = False
            OnClick = tbImprimirReclamoClick
          end
        end
      end
      object dbgReclamos: TArtDBGrid
        Left = 0
        Top = 29
        Width = 1074
        Height = 240
        Align = alClient
        DataSource = dsReclamosSumarios
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgReclamosDblClick
        OnGetCellParams = dbgReclamosGetCellParams
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'TN_DESCRIPCION'
            Title.Caption = 'Norma'
            Width = 286
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_NRO'
            Title.Caption = 'Nro.'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_DESCRIPCION'
            Title.Caption = 'Nombre'
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_DEPENDENCIA'
            Title.Caption = 'Dependencia'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NO_FECHAPUBLICACION'
            Title.Caption = 'Fecha Publicaci'#243'n'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RS_ARTICULO'
            Title.Caption = 'Art'#237'culo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RS_INCISO'
            Title.Caption = 'Inciso'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RS_OBSERVACIONES'
            Title.Caption = 'Observaciones'
            Width = 1000
            Visible = True
          end>
      end
      object fpReclamo: TFormPanel
        Left = 88
        Top = 0
        Width = 592
        Height = 193
        Caption = 'Reclamo'
        FormWidth = 0
        FormHeigth = 0
        FormLeft = 0
        FormTop = 0
        DesignSize = (
          592
          193)
        object bvSeparadorBotonesReclamo: TBevel
          Left = 14
          Top = 154
          Width = 571
          Height = 4
          Anchors = [akLeft, akRight, akBottom]
          Shape = bsTopLine
        end
        object lblObservaciones: TLabel
          Left = 16
          Top = 113
          Width = 52
          Height = 13
          Caption = 'Observac.:'
        end
        object btnAceptarReclamo: TButton
          Left = 417
          Top = 160
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Aceptar'
          TabOrder = 0
          OnClick = btnAceptarReclamoClick
        end
        object btnCancelarReclamo: TButton
          Left = 501
          Top = 160
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = '&Cancelar'
          ModalResult = 2
          TabOrder = 1
          OnClick = btnCancelarReclamoClick
        end
        inline fraNormaLegalImputada: TfraNormaLegal
          Left = 5
          Top = 8
          Width = 585
          Height = 109
          TabOrder = 2
          ExplicitLeft = 5
          ExplicitTop = 8
          ExplicitWidth = 585
          DesignSize = (
            585
            109)
          inherited lblDescripcionSentencia: TLabel
            Width = 34
            ExplicitWidth = 34
          end
          inherited lblNombre: TLabel
            Width = 40
            ExplicitWidth = 40
          end
          inherited lblNro: TLabel
            Left = 335
            Width = 28
            Caption = 'Desc:'
            ExplicitLeft = 335
            ExplicitWidth = 28
          end
          inherited lblInciso: TLabel
            Left = 146
            Width = 31
            Anchors = [akTop]
            ExplicitLeft = 146
            ExplicitWidth = 31
          end
          inherited lblFechaPublicacion: TLabel
            Width = 67
            ExplicitWidth = 67
          end
          inherited lblFechaDerogacion: TLabel
            Left = 361
            Width = 67
            ExplicitLeft = 361
            ExplicitWidth = 67
          end
          inherited Label1: TLabel
            Left = 312
            Width = 46
            Anchors = [akTop]
            ExplicitLeft = 312
            ExplicitWidth = 46
          end
          inherited Label2: TLabel
            Left = 444
            Width = 33
            Anchors = [akTop]
            ExplicitLeft = 444
            ExplicitWidth = 33
          end
          inherited fraNorma: TfraCodigoDescripcionExt
            Width = 498
            ExplicitWidth = 498
            DesignSize = (
              498
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 433
              ExplicitWidth = 433
            end
          end
          inherited fraNombreNorma: TfraCodigoDescripcionExt
            Width = 240
            Anchors = [akLeft, akTop, akRight]
            ExplicitWidth = 240
            DesignSize = (
              240
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 175
              ExplicitWidth = 175
            end
          end
          inherited edInciso: TPatternEdit
            Left = 179
            Width = 115
            Anchors = [akLeft, akTop, akRight]
            ExplicitLeft = 179
            ExplicitWidth = 115
          end
          inherited edDescripcion: TPatternEdit
            Width = 203
            Color = clGradientInactiveCaption
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 203
          end
          inherited tbExporarTextoNorma: TToolBar
            Left = 549
            Top = 77
            Width = 32
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 9
            ExplicitLeft = 549
            ExplicitTop = 77
            ExplicitWidth = 32
          end
          inherited edFechaNorma: TDateComboBox
            Color = clGradientInactiveCaption
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          inherited edFechaPublicacion: TDateComboBox
            Color = clGradientInactiveCaption
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          inherited edFechaDerogacion: TDateComboBox
            Left = 481
            Color = clGradientInactiveCaption
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            ExplicitLeft = 481
          end
          inherited edApartado: TPatternEdit
            Left = 362
            Width = 60
            Anchors = [akLeft, akTop, akRight]
            ExplicitLeft = 362
            ExplicitWidth = 60
          end
          inherited edanexo: TPatternEdit
            Left = 480
            Width = 67
            Anchors = [akLeft, akTop, akRight]
            ExplicitLeft = 480
            ExplicitWidth = 67
          end
        end
        object mObservacionesReclamo: TMemo
          Left = 79
          Top = 112
          Width = 442
          Height = 33
          TabOrder = 3
        end
      end
    end
    object tsEventos: TTabSheet
      Caption = 'Eventos'
      ImageIndex = 1
      object dbgEventosDictamenAcusatorio: TArtDBGrid
        Left = 0
        Top = 30
        Width = 1074
        Height = 220
        Align = alClient
        DataSource = dsEventoSumario
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = dbgEventosDictamenAcusatorioDblClick
        OnGetCellParams = dbgEventosDictamenAcusatorioGetCellParams
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ES_ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ES_FECHA'
            Title.Caption = 'Fecha Evento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ES_OBSERVACIONES'
            Title.Caption = 'Observaci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ES_IDTIPOEVENTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TE_DESCRIPCION'
            Title.Caption = 'Tipo Evento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ES_FECHABAJA'
            Visible = False
          end>
      end
      object cbEventos: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 30
        Bands = <
          item
            Control = tbrEventos
            ImageIndex = -1
            MinHeight = 24
            Width = 1068
          end>
        object tbrEventos: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 24
          BorderWidth = 1
          Caption = 'Barra de Tareas de Eventos'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbNuevoEvento: TToolButton
            Left = 0
            Top = 0
            Hint = 'Nuevo'
            ImageIndex = 6
            OnClick = tbNuevoEventoClick
          end
          object tbModificarEvento: TToolButton
            Left = 23
            Top = 0
            Hint = 'Modificar'
            ImageIndex = 7
            OnClick = tbModificarEventoClick
          end
          object tbEliminarEvento: TToolButton
            Left = 46
            Top = 0
            Hint = 'Eliminar'
            ImageIndex = 8
            OnClick = tbEliminarEventoClick
          end
          object tbAccImprimir: TToolButton
            Left = 69
            Top = 0
            Hint = 'Imprimir Eventos'
            ImageIndex = 4
            Visible = False
            OnClick = tbAccImprimirClick
          end
          object lblEstadoSeguimiento: TStaticText
            Left = 92
            Top = 0
            Width = 472
            Height = 22
            Align = alClient
            Alignment = taCenter
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkFlat
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object sbEstado: TStatusBar
        Left = 0
        Top = 250
        Width = 1074
        Height = 19
        Panels = <
          item
            Width = 50
          end
          item
            Width = 50
          end>
      end
      object fpEventoSeguimiento: TFormPanel
        Left = 76
        Top = -24
        Width = 469
        Height = 196
        HelpContext = 7
        Caption = 'Evento'
        FormWidth = 0
        FormHeigth = 0
        FormLeft = 0
        FormTop = 0
        BorderStyle = bsDialog
        Position = poScreenCenter
        DesignSize = (
          469
          196)
        object lbAccion: TLabel
          Left = 9
          Top = 34
          Width = 37
          Height = 13
          Caption = 'Evento:'
        end
        object bvSeparadorBotonesEventos: TBevel
          Left = 4
          Top = 159
          Width = 462
          Height = 4
          Anchors = [akLeft, akRight, akBottom]
          Shape = bsTopLine
        end
        object lblFechaEvento: TLabel
          Left = 8
          Top = 10
          Width = 33
          Height = 13
          Caption = 'Fecha:'
        end
        object lblArchivosAsociados: TLabel
          Left = 10
          Top = 135
          Width = 64
          Height = 13
          Caption = 'Asociar Doc.:'
        end
        inline fraTipoEvento: TfraCodigoDescripcion
          Left = 103
          Top = 30
          Width = 305
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          ExplicitLeft = 103
          ExplicitTop = 30
          ExplicitWidth = 305
          DesignSize = (
            305
            23)
          inherited cmbDescripcion: TArtComboBox
            Width = 240
            ExplicitWidth = 240
          end
          inherited edCodigo: TPatternEdit
            Pattern = '0123456789'
          end
        end
        object btnAccAceptar: TButton
          Left = 307
          Top = 167
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Aceptar'
          TabOrder = 4
          OnClick = btnAccAceptarClick
        end
        object btnAccCancelar: TButton
          Left = 385
          Top = 167
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = '&Cancelar'
          ModalResult = 2
          TabOrder = 5
          OnClick = btnAccCancelarClick
        end
        object tbEdicionTiposEventos: TToolBar
          Left = 409
          Top = 29
          Width = 55
          Height = 27
          Align = alNone
          Anchors = [akTop, akRight]
          BorderWidth = 1
          ButtonWidth = 25
          Caption = 'ToolBar'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          object tbEdicionTipoEvento: TToolButton
            Left = 0
            Top = 0
            Hint = 'Editar'
            ImageIndex = 6
            Visible = False
          end
          object tbDetallesEvento: TToolButton
            Left = 25
            Top = 0
            Hint = 'Mas Datos'
            ImageIndex = 14
          end
        end
        object edFechaEventoDesde: TDateComboBox
          Left = 104
          Top = 6
          Width = 101
          Height = 21
          MinDate = 32874.000000000000000000
          ErrorMessage = 
            'La fecha debe ser mayor o igual que la fecha de inicio del juici' +
            'o'
          TabOrder = 0
        end
        object edtArchivosAsociados: TEdit
          Left = 103
          Top = 132
          Width = 279
          Height = 21
          Color = clGradientInactiveCaption
          ReadOnly = True
          TabOrder = 3
        end
        object tbrVerArchivosAsociados: TToolBar
          Left = 384
          Top = 130
          Width = 76
          Height = 27
          Align = alNone
          Anchors = [akTop, akRight]
          BorderWidth = 1
          HotImages = dmLegales.ilColor
          Images = dmLegales.ilByN
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object tbSeleccionArchivosAsociar: TToolButton
            Left = 0
            Top = 0
            Hint = 'Seleccionar Archivos'
            ImageIndex = 26
            OnClick = tbSeleccionArchivosAsociarClick
          end
          object tbGenerarArchivo: TToolButton
            Left = 23
            Top = 0
            Hint = 'Generar Archivo'
            ImageIndex = 6
            OnClick = tbGenerarArchivoClick
          end
          object tbAsociarDoc: TToolButton
            Left = 46
            Top = 0
            Hint = 'Asociar Doc.'
            ImageIndex = 23
            OnClick = tbAsociarDocClick
          end
        end
        object nbObservacionesMesa: TNotebook
          Left = 0
          Top = 53
          Width = 414
          Height = 77
          TabOrder = 2
          object TPage
            Left = 0
            Top = 0
            Caption = 'Observaciones'
            object lblObservacuinesEvento: TLabel
              Left = 8
              Top = 3
              Width = 74
              Height = 13
              Caption = 'Observaciones:'
            end
            object mObservacionesEvento: TMemo
              Left = 104
              Top = 2
              Width = 303
              Height = 60
              MaxLength = 2048
              TabOrder = 0
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Mesa de Entrada'
            DesignSize = (
              414
              77)
            object lblNroMGES: TLabel
              Left = 8
              Top = 6
              Width = 54
              Height = 13
              Caption = 'Nro MGES:'
            end
            object lblFechaMGES: TLabel
              Left = 214
              Top = 7
              Width = 67
              Height = 13
              Caption = 'Fecha MGES:'
            end
            object lblUsuarioDestinatario: TLabel
              Left = 8
              Top = 32
              Width = 55
              Height = 13
              Caption = 'Recepci'#243'n:'
            end
            object lblMaterial: TLabel
              Left = 8
              Top = 55
              Width = 40
              Height = 13
              Caption = 'Material:'
            end
            object edNroMGES: TEdit
              Left = 104
              Top = 3
              Width = 87
              Height = 21
              Color = 16776176
              Enabled = False
              ReadOnly = True
              TabOrder = 0
            end
            inline fraUsuarioDestinatario: TfraCodigoDescripcion
              Left = 103
              Top = 25
              Width = 305
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              ExplicitLeft = 103
              ExplicitTop = 25
              ExplicitWidth = 305
              DesignSize = (
                305
                23)
              inherited cmbDescripcion: TArtComboBox
                Width = 240
                Color = 16776176
                Enabled = False
                ReadOnly = True
                ExplicitWidth = 240
              end
              inherited edCodigo: TPatternEdit
                Color = 16776176
                Enabled = False
                ReadOnly = True
                Pattern = '0123456789'
              end
            end
            inline fraMaterial: TfraCodigoDescripcion
              Left = 103
              Top = 48
              Width = 305
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 3
              ExplicitLeft = 103
              ExplicitTop = 48
              ExplicitWidth = 305
              DesignSize = (
                305
                23)
              inherited cmbDescripcion: TArtComboBox
                Width = 240
                Color = 16776176
                Enabled = False
                ReadOnly = True
                ExplicitWidth = 240
              end
              inherited edCodigo: TPatternEdit
                Color = 16776176
                Enabled = False
                ReadOnly = True
                Pattern = '0123456789'
              end
            end
            object edFechaMGES: TDateEdit
              Left = 285
              Top = 3
              Width = 121
              Height = 21
              Color = 16776176
              Enabled = False
              NumGlyphs = 2
              ReadOnly = True
              TabOrder = 1
            end
          end
        end
      end
    end
    object tsPagos: TTabSheet
      Caption = 'Pagos '
      ImageIndex = 4
      object cbEdicionPagosEfectudos: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 29
        Bands = <
          item
            Control = tbPagos
            ImageIndex = -1
            MinHeight = 27
            Width = 1068
          end>
        Visible = False
        object tbPagos: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 27
          BorderWidth = 1
          ButtonHeight = 173
          Caption = 'ToolBar'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbIngresoPago: TToolButton
            Left = 0
            Top = 0
            Hint = 'Nuevo Pago'
            ImageIndex = 6
            OnClick = tbIngresoPagoClick
          end
          object tbEdicionPago: TToolButton
            Left = 23
            Top = 0
            Hint = 'Modificar Pago'
            ImageIndex = 7
            OnClick = tbEdicionPagoClick
          end
          object tbEliminarPago: TToolButton
            Left = 46
            Top = 0
            Hint = 'Eliminar Pago'
            ImageIndex = 8
            OnClick = tbEliminarPagoClick
          end
          object tbSeparadorPagos: TToolButton
            Left = 69
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object tbImprimirPagos: TToolButton
            Left = 77
            Top = 0
            Hint = 'Imprimir Liquidaci'#243'n de Pago'
            ImageIndex = 4
            Visible = False
            OnClick = tbImprimirPagosClick
          end
          object tbImprimirConcepto: TToolButton
            Left = 100
            Top = 0
            Hint = 'Informar Estado Pago'
            Caption = 'Informar Estado Pago'
            ImageIndex = 30
            OnClick = tbImprimirConceptoClick
          end
          object tbAprobacionConceptosDuplicados: TToolButton
            Left = 123
            Top = 0
            Hint = 'Aprobaci'#243'n Conceptos Duplicados'
            Caption = 'tbAprobacionConceptosDuplicados'
            ImageIndex = 23
            OnClick = tbAprobacionConceptosDuplicadosClick
          end
          object TToolButton
            Left = 146
            Top = 0
            Width = 8
            ImageIndex = 5
            Style = tbsSeparator
          end
          object pnConceptoDuplicado: TPanel
            Left = 154
            Top = 0
            Width = 127
            Height = 173
            BevelOuter = bvNone
            TabOrder = 0
            object lbConceptoDuplicado: TLabel
              Left = 24
              Top = 5
              Width = 97
              Height = 13
              Alignment = taRightJustify
              Caption = 'Concepto Duplicado'
            end
            object lbColorConceptoDuplicado: TLabel
              Left = 5
              Top = 4
              Width = 15
              Height = 15
              AutoSize = False
              Color = clGreen
              ParentColor = False
            end
          end
        end
      end
      object dbgPagosEfectuados: TArtDBGrid
        Left = 0
        Top = 29
        Width = 1074
        Height = 211
        Align = alClient
        DataSource = dsPagoSumario
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = dbgPagosEfectuadosGetCellParams
        FooterBand = False
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'PS_IDLIQUIDACION'
            Title.Caption = 'Nro Liquidaci'#243'n'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_ESTADO'
            Title.Alignment = taCenter
            Title.Caption = 'Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CP_DENPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Concepto'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BP_DESCRIPCION'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Acreedor'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_DETALLEBENEFICIARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Descripci'#243'n'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_CUITCUIL'
            Title.Alignment = taCenter
            Title.Caption = 'CUIL/CUIT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_IMPORTEPAGO'
            Title.Alignment = taCenter
            Title.Caption = 'Importe sin Ret.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_IMPORTECONRETENCION'
            Title.Caption = 'Importe con Ret.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NROFACTURA'
            Title.Alignment = taCenter
            Title.Caption = 'Factura'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_FECHAFACTURA'
            Title.Alignment = taCenter
            Title.Caption = 'F.Factura'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_COMENTARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Observaciones'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHEQUENRO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Cheque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHEQUEFECHA'
            Title.Alignment = taCenter
            Title.Caption = 'F.Cheque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDENNRO'
            Title.Alignment = taCenter
            Title.Caption = 'Nro.Orden'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORDENFECHA'
            Title.Alignment = taCenter
            Title.Caption = 'F.Orden'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estadoduplicado'
            Title.Caption = 'Estado Duplicado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_FECHAAPROBACION'
            Title.Caption = 'Fecha Aprobaci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PS_MOTIVOAPROBACION'
            Title.Caption = 'Motivo Aprobaci'#243'n'
            Visible = True
          end>
      end
      object plTotalesPago: TPanel
        Left = 0
        Top = 240
        Width = 1074
        Height = 29
        Align = alBottom
        TabOrder = 2
        object lbSumatoria: TLabel
          Left = 8
          Top = 8
          Width = 3
          Height = 13
        end
      end
    end
    object tsAntecedentes: TTabSheet
      Caption = 'Antecedentes'
      ImageIndex = 2
      TabVisible = False
      object dbgAntecedentes: TArtDBGrid
        Left = 0
        Top = 29
        Width = 1074
        Height = 240
        Align = alClient
        DataSource = dsAntecedentes
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = dbgAntecedentesGetCellParams
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'nroreq'
            Title.Caption = 'Nro.Requerimiento'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'aceptado'
            Title.Caption = 'Aceptado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'areasrt'
            Title.Caption = 'Area SRT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cantidadhojas'
            Title.Caption = 'Cant.Hojas'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'delegacion'
            Title.Caption = 'Delegaci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descripcionrechazo'
            Title.Caption = 'Desc.Rechazo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estadorevision'
            Title.Caption = 'Estado Revision'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expnoespecificado'
            Title.Caption = 'Expediente No Especificado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaAceptado'
            Title.Caption = 'Fecha Aceptado'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaDescargo'
            Title.Caption = 'Fecha Descargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaGenerado'
            Title.Caption = 'Fecha Generado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fechaprorroga'
            Title.Caption = 'Fecha Prorroga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fecharecep'
            Title.Caption = 'Fecha Recepcion'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fecharespuestatotal'
            Title.Caption = 'Fecha Respuesta Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fechasrt'
            Title.Caption = 'Fecha SRT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FechaVto'
            Title.Caption = 'Fecha Vencimiento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'firmantedescargo'
            Title.Caption = 'Firmante Descargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'firmasrt'
            Title.Caption = 'Firma SRT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'Identificador de WF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idestado'
            Title.Caption = 'Estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idestadodescargo'
            Title.Caption = 'Estado Descargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idsectorresponsable'
            Title.Caption = 'Sector Responsable'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imagenrecepcion'
            Title.Caption = 'Imagen Recepci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imgform'
            Title.Caption = 'Imagen Formulario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'motivorechazo'
            Title.Caption = 'Motivo Rechazo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'motivorespuestaparci'
            Title.Caption = 'Motivo Respuesta Parcial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'motivosolicitudprorr'
            Title.Caption = 'Motivos Solicitud Prorroga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'notanoespec'
            Title.Caption = 'Nota No Especificada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nronota'
            Title.Caption = 'Nro.Nota'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nroreq'
            Title.Caption = 'Nro.Requerimiento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nrosrt'
            Title.Caption = 'Nro.Srt'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'observa'
            Title.Caption = 'Observaci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'observacionsector'
            Title.Caption = 'Observaciones Sector'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pedidoformalprorroga'
            Title.Caption = 'Pedido Formal Pr'#243'rroga'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'plazodeentrega'
            Title.Caption = 'Plazo Entrega'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recibosrt'
            Title.Caption = 'Recibo SRT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referencia'
            Title.Caption = 'Referencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'referente'
            Title.Caption = 'Referente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'refnoespecif'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'respuestadescargo'
            Title.Caption = 'Respuesta Descargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'respuestaparcial'
            Title.Caption = 'Respuesta Parcial'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'restpuestaword'
            Title.Caption = 'Respuesta Word'
            Visible = True
          end>
      end
      object cbAntecedentes: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 29
        Bands = <
          item
            Control = tbBarraAntecedentes
            ImageIndex = -1
            MinHeight = 27
            Width = 1068
          end>
        object tbBarraAntecedentes: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 27
          BorderWidth = 1
          Caption = 'Barra de Tarea Antecedentes'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object btnVerAntecedente: TToolButton
            Left = 0
            Top = 0
            Hint = 'Ver Antecedente'
            Caption = 'Ver Antecedente'
            ImageIndex = 23
            OnClick = btnVerAntecedenteClick
          end
          object btnEliminarAntecedente: TToolButton
            Left = 23
            Top = 0
            Hint = 'Eliminar Antecedente'
            Caption = 'Eliminar Antecedente'
            ImageIndex = 8
            OnClick = btnEliminarAntecedenteClick
          end
          object ToolButton2: TToolButton
            Left = 46
            Top = 0
            Width = 8
            Caption = 'ToolButton2'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object btnVerEliminados: TToolButton
            Left = 54
            Top = 0
            Hint = 'Ver Eliminados'
            Caption = 'Ver Eliminados'
            ImageIndex = 24
            Style = tbsCheck
            OnClick = btnVerEliminadosClick
          end
          object btnReactivarEliminado: TToolButton
            Left = 77
            Top = 0
            Hint = 'Reactivar Eliminado'
            Caption = 'Reactivar Eliminado'
            ImageIndex = 13
            OnClick = btnReactivarEliminadoClick
          end
          object ToolButton3: TToolButton
            Left = 100
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object tbRefrescarAntecedentes: TToolButton
            Left = 108
            Top = 0
            Hint = 'Refrescar'
            Caption = 'Refrescar'
            ImageIndex = 0
            OnClick = tbRefrescarAntecedentesClick
          end
          object tbPatronesBusqueda: TToolButton
            Left = 131
            Top = 0
            Hint = 'Cambiar Patrones de B'#250'squeda'
            Caption = 'Cambiar Patrones de B'#250'squeda'
            ImageIndex = 14
            OnClick = tbPatronesBusquedaClick
          end
          object ToolButton1: TToolButton
            Left = 154
            Top = 0
            Width = 8
            Caption = 'ToolButton1'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object tbImprimirAntecedentes: TToolButton
            Left = 162
            Top = 0
            Hint = 'Imprimir Eventos'
            Caption = 'Impresi'#243'n de Antecedentes'
            ImageIndex = 4
            Visible = False
          end
        end
      end
      object pnAvisoEspera: TPanel
        Left = 404
        Top = 59
        Width = 249
        Height = 73
        BevelInner = bvLowered
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
        object lblAdvertencia: TLabel
          Left = 8
          Top = 8
          Width = 233
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Aguarde Unos Instantes'
          WordWrap = True
        end
        object lblReferencia: TLabel
          Left = 8
          Top = 32
          Width = 233
          Height = 17
          Alignment = taCenter
          AutoSize = False
          WordWrap = True
        end
      end
    end
    object tsJuiciosRelacionados: TTabSheet
      Caption = 'Juicios Relacionados'
      ImageIndex = 3
      object cbJuiciosRelacionados: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 29
        Bands = <
          item
            Control = toolbarJuiciosRelacionados
            ImageIndex = -1
            MinHeight = 27
            Width = 1068
          end>
        object toolbarJuiciosRelacionados: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 27
          BorderWidth = 1
          Caption = 'Barra de Tareas de Eventos'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbNuevoJuicioRelacionado: TToolButton
            Left = 0
            Top = 0
            Hint = 'Nuevo Juicio Relacionado'
            Caption = 'Nuevo Juicio Relacionado'
            ImageIndex = 6
            OnClick = tbNuevoJuicioRelacionadoClick
          end
          object tbEditarJuicioRelacionado: TToolButton
            Left = 23
            Top = 0
            Hint = 'Editar Juicio Relacionado'
            Caption = 'Editar Juicio Relacionado'
            ImageIndex = 7
            OnClick = tbEditarJuicioRelacionadoClick
          end
          object tbEliminarJuicioRelacionado: TToolButton
            Left = 46
            Top = 0
            Hint = 'Eliminar Juicio Relacionado'
            Caption = 'Eliminar Juicio Relacionado'
            ImageIndex = 8
            OnClick = tbEliminarJuicioRelacionadoClick
          end
          object tbSeparatorRelacionados1: TToolButton
            Left = 69
            Top = 0
            Width = 8
            Caption = 'tbEventosSeparador'
            ImageIndex = 5
            Style = tbsSeparator
          end
        end
      end
      object dbgJuiciosRelacionados: TArtDBGrid
        Left = 0
        Top = 29
        Width = 1074
        Height = 240
        Align = alClient
        DataSource = dsJuiciosRelacionados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = dbgJuiciosRelacionadosGetCellParams
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'JT_NUMEROCARPETA'
            Title.Caption = 'Carpeta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_CARATULA'
            Title.Caption = 'Car'#225'tula'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JU_DESCRIPCION'
            Title.Caption = 'Juris.'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FU_DESCRIPCION'
            Title.Caption = 'Fuero'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JZ_DESCRIPCION'
            Title.Caption = 'Juzgado'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SC_DESCRIPCION'
            Title.Caption = 'Sec.'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_DESCRIPCION'
            Title.Caption = 'Juzgado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_EXPEDIENTE'
            Title.Caption = 'Nro.Exp'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_RESULTADO'
            Title.Caption = 'Resultado Probable'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_FECHAINIJUICIO'
            Title.Caption = 'F.Inicio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_FECHAFINJUICIO'
            Title.Caption = 'F.Fin'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JT_FECHAINGRESO'
            Title.Caption = 'F.Ingreso'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BO_NOMBRE'
            Title.Caption = 'Abogado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EJ_DESCRIPCION'
            Title.Caption = 'Estado'
            Visible = True
          end>
      end
      object fpJuicioRelacionado: TFormPanel
        Left = 116
        Top = 52
        Width = 521
        Height = 71
        Caption = 'Juicio Relacionado'
        FormWidth = 0
        FormHeigth = 0
        FormLeft = 0
        FormTop = 0
        BorderIcons = []
        BorderStyle = bsDialog
        Position = poScreenCenter
        DesignSize = (
          521
          71)
        object Label6: TLabel
          Left = 6
          Top = 17
          Width = 30
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Juicio:'
        end
        inline fraJuicioRelacionado: TfraCodigoDescripcion
          Left = 40
          Top = 12
          Width = 477
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          ExplicitLeft = 40
          ExplicitTop = 12
          ExplicitWidth = 477
          DesignSize = (
            477
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 60
            Width = 415
            CharCase = ecUpperCase
            ExplicitLeft = 60
            ExplicitWidth = 415
          end
          inherited edCodigo: TPatternEdit
            Width = 56
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 56
          end
        end
        object btnAceptarJuicioRelacionado: TButton
          Left = 362
          Top = 42
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Aceptar'
          ModalResult = 1
          TabOrder = 1
        end
        object btnCancelarJuicioRelacionado: TButton
          Left = 442
          Top = 42
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = '&Cancelar'
          ModalResult = 2
          TabOrder = 2
        end
      end
    end
    object tsReservas: TTabSheet
      Caption = 'Reservas'
      ImageIndex = 6
      object gbReservas: TGroupBox
        Left = 0
        Top = 0
        Width = 1074
        Height = 269
        Align = alClient
        Caption = 'Importes de Reservas'
        TabOrder = 0
        DesignSize = (
          1074
          269)
        object lblReservaCapital: TLabel
          Left = 9
          Top = 20
          Width = 78
          Height = 13
          Caption = 'Reserva Capital:'
        end
        object lblReservaHonorarios: TLabel
          Left = 217
          Top = 20
          Width = 97
          Height = 13
          Caption = 'Reserva Honorarios:'
          Visible = False
        end
        object lblEmbargos: TLabel
          Left = 17
          Top = 80
          Width = 50
          Height = 13
          Caption = 'Embargos:'
        end
        object lblFechaEmbargo: TLabel
          Left = 243
          Top = 73
          Width = 75
          Height = 13
          Caption = 'Fecha Embargo'
        end
        object bvSeparadorEmbargo: TBevel
          Left = 15
          Top = 63
          Width = 1028
          Height = 3
          Anchors = [akLeft, akTop, akRight]
          Shape = bsTopLine
          ExplicitWidth = 734
        end
        object edReservaCapital: TCurrencyEdit
          Left = 113
          Top = 16
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '$,0.00;-$,0.00'
          MaxLength = 11
          MaxValue = 99999999.000000000000000000
          TabOrder = 0
        end
        object edReservaHonorarios: TCurrencyEdit
          Left = 343
          Top = 16
          Width = 96
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '$,0.00;-$,0.00'
          MaxLength = 11
          MaxValue = 99999999.000000000000000000
          TabOrder = 1
          Visible = False
        end
        object tbAprobacionDeReservas: TToolBar
          Left = 982
          Top = 35
          Width = 83
          Height = 26
          Align = alNone
          Anchors = [akTop, akRight]
          BorderWidth = 1
          Caption = 'ToolBar'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          object tbHistoricoReservas: TToolButton
            Left = 0
            Top = 0
            Caption = 'Hist'#243'rico de Reservas'
            ImageIndex = 14
            OnClick = tbHistoricoReservasClick
          end
          object tbCalcularReserva: TToolButton
            Left = 23
            Top = 0
            Hint = 'Calcular Reservas'
            Caption = 'tbCalcularReserva'
            ImageIndex = 33
            OnClick = tbCalcularReservaClick
          end
        end
        object edEmbargos: TCurrencyEdit
          Left = 84
          Top = 69
          Width = 93
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '$,0.00;-$,0.00'
          MaxLength = 11
          MaxValue = 99999999.000000000000000000
          TabOrder = 3
        end
        object edFechaEmbargo: TDateComboBox
          Left = 343
          Top = 69
          Width = 98
          Height = 21
          MinDate = 37257.000000000000000000
          TabOrder = 4
        end
        object tbUtilidadesReservas: TToolBar
          Left = 984
          Top = 9
          Width = 57
          Height = 26
          Align = alNone
          Anchors = [akTop, akRight]
          BorderWidth = 1
          Caption = 'ToolBar'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          object tbRecalcularReservas: TToolButton
            Left = 0
            Top = 0
            Hint = 'Recalcular Reservas'
            Caption = 'Recalcular Reservas'
            ImageIndex = 21
            OnClick = tbRecalcularReservasClick
          end
          object tbCopiarCalculo: TToolButton
            Left = 23
            Top = 0
            Hint = 'Copiar Reservas'
            Caption = 'Copiar Reservas'
            ImageIndex = 27
            OnClick = tbCopiarCalculoClick
          end
        end
        object cbReservaCapital: TCheckBox
          Left = 7
          Top = 42
          Width = 131
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Reserva Capital Manual'
          TabOrder = 6
          OnClick = cbReservaCapitalClick
        end
        object cbReservaHonorarios: TCheckBox
          Left = 216
          Top = 43
          Width = 153
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Reserva Honorarios Manual'
          TabOrder = 7
          Visible = False
          OnClick = cbReservaHonorariosClick
        end
      end
    end
    object tsIncumplimientoEspecifico: TTabSheet
      Caption = ' Incumplimiento Espec'#237'fico'
      ImageIndex = 7
      object cbIncumplimientoEspecifico: TCoolBar
        Left = 0
        Top = 0
        Width = 1074
        Height = 29
        Bands = <
          item
            Control = ToolBar1
            ImageIndex = -1
            MinHeight = 27
            Width = 1068
          end>
        object ToolBar1: TToolBar
          Left = 9
          Top = 0
          Width = 1061
          Height = 27
          BorderWidth = 1
          Caption = 'Barra de Tareas de Eventos'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object tbNuevoIncumplimientoEspecifico: TToolButton
            Left = 0
            Top = 0
            Hint = 'Nuevo Juicio Relacionado'
            Caption = 'Nuevo Juicio Relacionado'
            ImageIndex = 6
            OnClick = tbNuevoIncumplimientoEspecificoClick
          end
          object tbModificarIncumplimientoEspecifico: TToolButton
            Left = 23
            Top = 0
            Hint = 'Editar Juicio Relacionado'
            Caption = 'Editar Juicio Relacionado'
            ImageIndex = 7
            OnClick = tbModificarIncumplimientoEspecificoClick
          end
          object tbBajaIncumplimientoEspecifico: TToolButton
            Left = 46
            Top = 0
            Hint = 'Eliminar Juicio Relacionado'
            Caption = 'Eliminar Juicio Relacionado'
            ImageIndex = 8
            OnClick = tbBajaIncumplimientoEspecificoClick
          end
          object ToolButton7: TToolButton
            Left = 69
            Top = 0
            Width = 8
            Caption = 'tbEventosSeparador'
            ImageIndex = 5
            Style = tbsSeparator
          end
        end
      end
      object dbgIncumplimientoEspecifico: TArtDBGrid
        Left = 0
        Top = 29
        Width = 1074
        Height = 240
        Align = alClient
        DataSource = dsIncumplimientoEspecifico
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnGetCellParams = dbgIncumplimientoEspecificoGetCellParams
        TitleHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'TI_DESCRIPCION'
            Title.Caption = 'Incumplimiento'
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE_USUALTA'
            Title.Caption = 'Usuario de Alta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IE_FECHAALTA'
            Title.Caption = 'Fecha de Alta'
            Visible = True
          end>
      end
      object fpIncumplimientoEspecifico: TFormPanel
        Left = 116
        Top = 52
        Width = 521
        Height = 71
        Caption = 'Incumplimiento Espec'#237'fico'
        FormWidth = 0
        FormHeigth = 0
        FormLeft = 0
        FormTop = 0
        BorderIcons = []
        BorderStyle = bsDialog
        Position = poScreenCenter
        DesignSize = (
          521
          71)
        object Label7: TLabel
          Left = 6
          Top = 17
          Width = 73
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Incumplimiento:'
        end
        inline fraIncumplimiento: TfraCodigoDescripcion
          Left = 86
          Top = 12
          Width = 431
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          ExplicitLeft = 86
          ExplicitTop = 12
          ExplicitWidth = 431
          DesignSize = (
            431
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 60
            Width = 366
            CharCase = ecUpperCase
            ExplicitLeft = 60
            ExplicitWidth = 366
          end
          inherited edCodigo: TPatternEdit
            Width = 56
            MaxLength = 8
            Alignment = taRightJustify
            ExplicitWidth = 56
          end
        end
        object btnAceptarIncumpEspecifico: TButton
          Left = 362
          Top = 42
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = '&Aceptar'
          ModalResult = 1
          TabOrder = 1
        end
        object btnCancelIncumpEspecifico: TButton
          Left = 442
          Top = 42
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Cancel = True
          Caption = '&Cancelar'
          ModalResult = 2
          TabOrder = 2
        end
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 614
    Width = 1082
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 50
      end>
  end
  object pnAprobacionConDup: TFormPanel
    Left = 595
    Top = 334
    Width = 423
    Height = 141
    Caption = 'Aprobaci'#243'n de Conceptos Duplicados'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    Position = poOwnerFormCenter
    DesignSize = (
      423
      141)
    object lbMotivo: TLabel
      Left = 10
      Top = 55
      Width = 32
      Height = 13
      Caption = 'Motivo'
    end
    object btnAceptarAprobConDup: TButton
      Left = 266
      Top = 111
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnAceptarAprobConDupClick
    end
    object btnCancelarAprobConDup: TButton
      Left = 344
      Top = 111
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
        OnClick = cbAprobadoConDupClick
      end
      object cbRechazadoConDup: TCheckBox
        Left = 96
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Rechazado'
        TabOrder = 1
        OnClick = cbRechazadoConDupClick
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
  object pnGenerarDocumento: TFormPanel
    Left = 205
    Top = 400
    Width = 749
    Height = 419
    Caption = 'Aprobaci'#243'n de Conceptos Duplicados'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    Position = poOwnerFormCenter
    Constraints.MinHeight = 242
    Constraints.MinWidth = 656
    DesignSize = (
      749
      419)
    object Label4: TLabel
      Left = 9
      Top = 7
      Width = 133
      Height = 13
      Caption = 'Texto dentro del documento'
    end
    object btnAceptarGenerarDocumento: TButton
      Left = 592
      Top = 389
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnAceptarGenerarDocumentoClick
    end
    object btnCancelGenerarDocumento: TButton
      Left = 670
      Top = 389
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object pnlInferior: TPanel
      Left = 0
      Top = 29
      Width = 746
      Height = 355
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelOuter = bvNone
      Constraints.MinHeight = 130
      TabOrder = 2
      DesignSize = (
        746
        355)
      inline fraToolbarRTF: TfraToolbarRTF
        Left = 0
        Top = 0
        Width = 746
        Height = 31
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 746
        inherited tBarRTF: TToolBar
          Width = 746
          ExplicitWidth = 746
          inherited tbImprimir: TToolButton
            Visible = False
          end
          inherited ToolButton3: TToolButton
            Visible = False
          end
        end
        inherited ToolbarImages: TImageList
          Bitmap = {
            494C010111001300200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
            0000000000003600000028000000400000005000000001002000000000000050
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000800000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000008000000080000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000080000000800000008000000080000000800000008000
            0000800000008000000080000000800000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000800000000000000000000000800000000000000000000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000800000008000000080000000800000008000
            0000800000008000000080000000800000000000000000000000000000000000
            0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000800000000000000000000000800000000000000080000000000000000000
            0000800000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00800000000000000080808000008080008080
            8000008080008080800080000000FFFFFF000000000000000000000000000000
            00000000000000000000FFFFFF00800000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000800000000000000000000000800000000000000080000000000000000000
            0000800000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000080000000FFFFFF0000000000000000000000
            00000000000000000000FFFFFF00800000000000000000808000808080000080
            8000808080000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00800000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000800000000000000000000000000000000000000000000000000000000000
            0000000000008000000080000000800000000000000080000000000000000000
            0000800000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00800000000000000080808000008080008080
            8000008080008080800080000000FFFFFF00000000000000000000000000FFFF
            FF00800000008000000080000000800000000000000000000000800000008000
            0000800000008000000080000000000000000000000000000000000000000000
            0000800000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000800000000000000080000000800000008000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF0000000000000000000000
            00000000000000000000FFFFFF00800000000000000000808000808080000080
            8000808080000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080000000FFFFFF0080000000000000000000000000000000800000008000
            0000800000008000000000000000000000000000000000000000000000000000
            0000000000008000000000000000000000000000000000000000000000000000
            0000000000000000000000000000800000000000000080000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF000000
            000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00800000000000000080808000008080008080
            8000008080008080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00800000008000000000000000000000000000000000000000800000008000
            0000800000000000000000000000000000000000000000000000000000000000
            0000000000008000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFF
            FF00800000008000000080000000800000000000000000808000808080000080
            8000808080000080800080000000800000008000000080000000800000008000
            0000800000000000000000000000000000000000000000000000800000008000
            0000000000008000000000000000000000000000000000000000000000000000
            0000000000008000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF000000
            000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0080000000FFFFFF0080000000000000000000000080808000008080008080
            8000008080008080800000808000808080000080800080808000008080008080
            8000008080000000000000000000000000000000000000000000800000000000
            0000000000000000000080000000800000000000000000000000000000000000
            0000800000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00800000008000000000000000000000000000000000808000808080000000
            0000000000000000000000000000000000000000000000000000000000008080
            8000808080000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000008000000080000000800000008000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF000000
            000000000000FFFFFF0000000000800000008000000080000000800000008000
            0000800000000000000000000000000000000000000080808000808080000000
            0000000000000000000000000000000000000000000000000000000000008080
            8000008080000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000808000808080000080
            80000000000000FFFF00000000000000000000FFFF0000000000808080000080
            8000808080000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000FFFF0000FFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000C0C0C000303030003F3F3F000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008080000080
            8000000000000000000000000000000000000000000000000000000000000000
            000000000000008080000000000000000000000000000000000000000000CFCF
            CF00C0C0C0008080800000000000000000004F4F4F0050505000000000000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000000000000000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000000
            0000000000000000000000000000000000000000000000000000008080000080
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000808000000000000000000000000000DFDFDF00D0D0D0008080
            800080808000C0C0C000303030003F3F3F0000000000000000005F5F5F006060
            600000000000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000000000000000000000000000000000000000FFFF00000000000080
            8000008080000080800000808000008080000080800000808000008080000080
            8000000000000000000000000000000000000000000000000000008080000080
            8000000000000000000000000000000000000000000000000000000000000000
            0000000000000080800000000000000000008080800080808000A0A0A000CFCF
            CF00C0C0C000C0C0C000303030003F3F3F004F4F4F0050505000000000000000
            000070707000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000000000000000000000000000000000000000FFFFFF0000FFFF000000
            0000008080000080800000808000008080000080800000808000008080000080
            8000008080000000000000000000000000000000000000000000008080000080
            8000000000000000000000000000000000000000000000000000000000000000
            000000000000008080000000000000000000A0A0A000DFDFDF00D0D0D000CFCF
            CF00C0C0C000C0C0C000303030003F3F3F004F4F4F00505050005F5F5F006060
            600000000000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
            FF00000000000080800000808000008080000080800000808000008080000080
            8000008080000080800000000000000000000000000000000000008080000080
            8000008080000080800000808000008080000080800000808000008080000080
            800000808000008080000000000000000000FFFFFF00DFDFDF00D0D0D000CFCF
            CF00C0C0C000FFFFFF00303030003F3F3F004F4F4F00505050005F5F5F006060
            600070707000808080000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
            FF0000FFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008080000080
            8000000000000000000000000000000000000000000000000000000000000000
            000000808000008080000000000000000000FFFFFF00DFDFDF00D0D0D000FFFF
            FF00FFFFFF00C0C0C000C0C0C000C0C0C0004F4F4F00505050005F5F5F006060
            600070707000808080000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
            FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
            0000000000000000000000000000000000000000000000000000008080000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000008080000000000000000000FFFFFF00FFFFFF00FFFFFF00D0D0
            D000CFCFCF003030FF00FF00FF00C0C0C000C0C0C000C0C0C0005F5F5F006060
            600070707000808080000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000000000000000000000000000000000000000FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
            0000000000000000000000000000000000000000000000000000008080000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000008080000000000000000000FFFFFF00DFDFDF00D0D0D0009FFF
            9F0000FF0000D0D0D000CFCFCF00CFCFCF00808080008080800000000000C0C0
            C00070707000808080000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000000000000000000000000000000000000000FFFF00FFFFFF0000FF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008080000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000080800000000000000000008080800080808000FFFFFF00DFDF
            DF00C0C0C000D0D0D00080808000808080009FFFFF009FFFFF0000000000DFDF
            DF0000000000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008080000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000080800000000000000000000000000000000000808080008080
            8000FFFFFF00808080009FFFFF009FFFFF009FFFFF00CFFFFF00CFFFFF000000
            000000000000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008080000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000080808000808080009FFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFF
            FF0000000000000000000000000000000000000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008080000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000090909000CFFFFF00CFFFFF00CFFFFF00CFFFFF00F0FF
            FF00F0FFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000090909000CFFFFF00F0FFFF00F0FFFF009090
            9000909090000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B0B0B000B0B0B000B0B0B0000000
            000000000000000000000000000000000000424D3E000000000000003E000000
            2800000040000000500000000100010000000000800200000000000000000000
            000000000000000000000000FFFFFF00FFFF0000000000009FFF000000000000
            EFFF000000000000DC010000000000008FFF000000000000FFFF000000000000
            8FFF000000000000DFFF000000000000EC010000000000009FFF000000000000
            FFFF0000000000008FFF000000000000DFFF0000000000009C01000000000000
            DFFF000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF8FFFC007C00700038C03FFFFFFFFFFFF8FFFF83FF8070003FFFF
            FFFFFFFFFFFFFFFFC007C00700038FFFFFFFFFFFFFFF8C03F01FF80700038FFF
            FFFFFFFFFFFFFFFFC007C0070003FFFFFFFFFFFFFFFF8FFFF83FF80700038C03
            FFFFFFFFFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFE00FFFFFFFFFFFFFFFFFC007F00F81FFF83FFFFFF8C7E3FFF39FC03F
            F8C7F1FFF39FFFFFF8C7F8FFF39FC007F80FFC7FF39FFFFFF8C7FE3FF39FC03F
            F8C7FF1FF39FFFFFF8C7FF8FF39FC007F00FFF03E10FFFFFFFFFFFFFFFFFC03F
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FFFFFFFC00
            FFFFF6CFFE008000FFFFF6B7FE000000FFFFF6B7FE000000FFF7F8B780000000
            C1F7FE8F80000001C3FBFE3F80000003C7FBFF7F80000003CBFBFE3F80010003
            DCF7FEBF80030003FF0FFC9F80070FC3FFFFFDDF807F0003FFFFFDDF80FF8007
            FFFFFDDF81FFF87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFC001E03F
            C007001F8031800FC007000F80310003C007000780310003C007000380010003
            C007000180010000C007000080010000C007001F8FF10000C007001F8FF10000
            C007001F8FF10003C0078FF18FF1C00FC00FFFF98FF1F007C01FFF758FF5FC00
            C03FFF8F8001FE07FFFFFFFFFFFFFF1F00000000000000000000000000000000
            000000000000}
        end
      end
      object edTextoDocumento: TRxRichEdit
        Left = 3
        Top = 30
        Width = 740
        Height = 318
        DrawEndPage = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Constraints.MinHeight = 49
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object EnterAsTab: TJvEnterAsTab
    Left = 647
    Top = 87
  end
  object FormStorage: TFormStorage
    Options = [fpState, fpPosition, fpActiveControl]
    UseRegistry = True
    Version = 1
    StoredValues = <>
    Left = 372
    Top = 514
  end
  object Seguridad: TSeguridad
    AutoEjecutar = False
    Claves = <>
    DBLogin = frmPrincipal.DBLogin
    PermitirEdicion = False
    Left = 402
    Top = 484
  end
  object ShortCutControl: TShortCutControl
    ShortCuts = <
      item
        Key = 16462
        LinkControl = tbGuardar
      end
      item
        Key = 16460
      end
      item
        Key = 16453
      end
      item
        Key = 16455
        LinkControl = tbGuardar
      end
      item
        Key = 16467
      end
      item
        Key = 16457
        LinkControl = tbImprimir
      end
      item
        Key = 16468
      end>
    Left = 312
    Top = 514
  end
  object odAbrirArchivo: TOpenDialog
    Title = 'x'
    Left = 402
    Top = 514
  end
  object pmSeguimientoJuicios: TPopupMenu
    Left = 342
    Top = 514
    object ImprimirExpediente1: TMenuItem
      Caption = '&Expediente'
    end
    object mnuLiquidacion: TMenuItem
      Caption = '&Liquidaci'#243'n'
    end
    object EvolucindeInstancias1: TMenuItem
      Caption = 'Instancias'
    end
    object mnuEventos: TMenuItem
      Caption = 'Eventos'
    end
    object mnuAgenda: TMenuItem
      Caption = 'Agenda'
    end
  end
  object dsSiniestrosDictamenAcusatorio: TDataSource
    DataSet = sdqSiniestroDictamenAcusatorio
    Left = 12
    Top = 514
  end
  object sdqSiniestroDictamenAcusatorio: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT LSS.* , EX_SINIESTRO, EX_ORDEN, EX_RECAIDA,'
      
        '       EX_SINIESTRO || '#39'/'#39' || EX_ORDEN || '#39'/'#39' || EX_RECAIDA CODS' +
        'INI,'
      '       EX_SINIESTRORED,'
      '       MP_CONTRATO, MP_CUIT, MP_NOMBRE, TJ_CUIL, TJ_NOMBRE,'
      
        '       EX_DIAGNOSTICO, EX_FECHAACCIDENTE, EX_BAJAMEDICA, EX_FECH' +
        'ARECAIDA, EX_ALTAMEDICA, TB_DESCRIPCION'
      
        'FROM CTB_TABLAS, CTJ_TRABAJADORES, CMP_EMPRESAS, SEX_EXPEDIENTES' +
        ' EXPE, '
      '     legales.lss_siniestrosumario lss'
      'WHERE NVL(EX_TIPO, '#39'1'#39') = TB_CODIGO(+)'
      'AND TB_CLAVE = '#39'STIPO'#39
      'AND MP_CUIT = EX_CUIT'
      'AND TJ_CUIL = EX_CUIL'
      'AND EX_SINIESTRO = lss.ss_siniestro '
      'AND EXPE.ex_orden = lSs.ss_orden '
      'AND EXPE.ex_recaida = lSs.ss_recaida'
      'AND lss.ss_idsumario = :IdSumario'
      '')
    UpdateObject = sduSiniestros
    Left = 12
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IdSumario'
        ParamType = ptInput
        Value = 0
      end>
  end
  object sdqEventoSumario: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT es_id, es_fecha, es_observaciones, es_idtipoevento,'
      '       lte_tipoevento.te_descripcion, es_fechabaja'
      '  FROM legales.les_eventosumario, legales.lte_tipoevento'
      
        ' WHERE (es_idtipoevento = lte_tipoevento.te_id) AND es_idsumario' +
        ' = :idsumario'
      '')
    Left = 42
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idsumario'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object dsEventoSumario: TDataSource
    DataSet = sdqEventoSumario
    Left = 42
    Top = 514
  end
  object dsAntecedentes: TDataSource
    DataSet = sdqAntecedentesWF
    Left = 132
    Top = 514
  end
  object SortDialog: TSortDialog
    Caption = 'Orden'
    SortFields = <
      item
        Title = 'Siniestro'
        DataField = 'EX_SINIESTRO'
        FieldIndex = 0
      end
      item
        Title = 'Orden'
        DataField = 'EX_ORDEN'
        FieldIndex = 1
      end
      item
        Title = 'Recaida'
        DataField = 'EX_RECAIDA'
        FieldIndex = 2
      end
      item
        Title = 'Contrato'
        DataField = 'MP_CONTRATO'
        FieldIndex = 3
      end
      item
        Title = 'CUIT'
        DataField = 'MP_CUIT'
        FieldIndex = 4
      end
      item
        Title = 'Nombre'
        DataField = 'MP_NOMBRE'
        FieldIndex = 5
      end
      item
        Title = 'CUIL'
        DataField = 'TJ_CUIL'
        FieldIndex = 6
      end
      item
        Title = 'Trabajador'
        DataField = 'TJ_NOMBRE'
        FieldIndex = 7
      end
      item
        Title = 'Diagnostico'
        DataField = 'EX_DIAGNOSTICO'
        FieldIndex = 8
      end
      item
        Title = 'Fecha Accidente'
        DataField = 'EX_FECHAACCIDENTE'
        FieldIndex = 9
      end
      item
        Title = 'B.Medica'
        DataField = 'EX_BAJAMEDICA'
        FieldIndex = 10
      end
      item
        Title = 'F.Recaida'
        DataField = 'EX_FECHARECAIDA'
        FieldIndex = 11
      end
      item
        Title = 'Alta M'#233'dica'
        DataField = 'EX_ALTAMEDICA'
        FieldIndex = 12
      end
      item
        Title = 'TB_DESCRIPCION'
        DataField = 'TB_DESCRIPCION'
        FieldIndex = 13
      end>
    IniStorage = FormStorage
    FixedRows = 0
    Left = 312
    Top = 484
  end
  object QueryPrint: TQueryPrint
    Border.Lines = [blTop, blLeft, blRight, blBottom]
    Fields = <
      item
        Title = 'NroRequerimiento'
        DataField = 'InstanciaID'
        Width = 669
        MaxLength = 0
      end
      item
        Title = 'aceptado'
        DataField = 'aceptado'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'areasrt'
        DataField = 'areasrt'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'cantidadhojas'
        DataField = 'cantidadhojas'
        Width = 525
        MaxLength = 0
      end
      item
        Title = 'delegacion'
        DataField = 'delegacion'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'descripcionrechazo'
        DataField = 'descripcionrechazo'
        Width = 7994
        MaxLength = 0
      end
      item
        Title = 'estadorevision'
        DataField = 'estadorevision'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'expnoespecificado'
        DataField = 'expnoespecificado'
        Width = 681
        MaxLength = 0
      end
      item
        Title = 'FechaAceptado'
        DataField = 'FechaAceptado'
        Width = 569
        MaxLength = 0
      end
      item
        Title = 'FechaDescargo'
        DataField = 'FechaDescargo'
        Width = 562
        MaxLength = 0
      end
      item
        Title = 'FechaGenerado'
        DataField = 'FechaGenerado'
        Width = 575
        MaxLength = 0
      end
      item
        Title = 'fechaprorroga'
        DataField = 'fechaprorroga'
        Width = 531
        MaxLength = 0
      end
      item
        Title = 'fecharecep'
        DataField = 'fecharecep'
        Width = 419
        MaxLength = 0
      end
      item
        Title = 'fecharespuestatotal'
        DataField = 'fecharespuestatotal'
        Width = 744
        MaxLength = 0
      end
      item
        Title = 'fechasrt'
        DataField = 'fechasrt'
        Width = 338
        MaxLength = 0
      end
      item
        Title = 'FechaVto'
        DataField = 'FechaVto'
        Width = 350
        MaxLength = 0
      end
      item
        Title = 'firmantedescargo'
        DataField = 'firmantedescargo'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'firmasrt'
        DataField = 'firmasrt'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'id'
        DataField = 'id'
        Width = 338
        MaxLength = 0
      end
      item
        Title = 'idestado'
        DataField = 'idestado'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'idestadodescargo'
        DataField = 'idestadodescargo'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'idsectorresponsable'
        DataField = 'idsectorresponsable'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'imagenrecepcion'
        DataField = 'imagenrecepcion'
        Width = 7994
        MaxLength = 0
      end
      item
        Title = 'imgform'
        DataField = 'imgform'
        Width = 6275
        MaxLength = 0
      end
      item
        Title = 'motivorechazo'
        DataField = 'motivorechazo'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'motivorespuestaparci'
        DataField = 'motivorespuestaparci'
        Width = 7994
        MaxLength = 0
      end
      item
        Title = 'motivosolicitudprorr'
        DataField = 'motivosolicitudprorr'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'notanoespec'
        DataField = 'notanoespec'
        Width = 481
        MaxLength = 0
      end
      item
        Title = 'nronota'
        DataField = 'nronota'
        Width = 650
        MaxLength = 0
      end
      item
        Title = 'nroreq'
        DataField = 'nroreq'
        Width = 650
        MaxLength = 0
      end
      item
        Title = 'nrosrt'
        DataField = 'nrosrt'
        Width = 494
        MaxLength = 0
      end
      item
        Title = 'observa'
        DataField = 'observa'
        Width = 6275
        MaxLength = 0
      end
      item
        Title = 'observacionsector'
        DataField = 'observacionsector'
        Width = 7994
        MaxLength = 0
      end
      item
        Title = 'pedidoformalprorroga'
        DataField = 'pedidoformalprorroga'
        Width = 6275
        MaxLength = 0
      end
      item
        Title = 'plazodeentrega'
        DataField = 'plazodeentrega'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'recibosrt'
        DataField = 'recibosrt'
        Width = 344
        MaxLength = 0
      end
      item
        Title = 'referencia'
        DataField = 'referencia'
        Width = 7994
        MaxLength = 0
      end
      item
        Title = 'referente'
        DataField = 'referente'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'refnoespecif'
        DataField = 'refnoespecif'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'respuestadescargo'
        DataField = 'respuestadescargo'
        Width = 6275
        MaxLength = 0
      end
      item
        Title = 'respuestaparcial'
        DataField = 'respuestaparcial'
        Width = 3150
        MaxLength = 0
      end
      item
        Title = 'restpuestaword'
        DataField = 'restpuestaword'
        Width = 3150
        MaxLength = 0
      end>
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clWindowText
    Title.Font.Height = -19
    Title.Font.Name = 'Tahoma'
    Title.Font.Style = [fsBold]
    Title.Text = 'Reporte de Juicios'
    Title.Logo.Alignment = taLeftJustify
    SubTitle.Font.Charset = DEFAULT_CHARSET
    SubTitle.Font.Color = clWindowText
    SubTitle.Font.Height = -13
    SubTitle.Font.Name = 'Tahoma'
    SubTitle.Font.Style = [fsBold]
    Headers.Color = 11184810
    Headers.Font.Charset = DEFAULT_CHARSET
    Headers.Font.Color = clWhite
    Headers.Font.Height = -11
    Headers.Font.Name = 'Tahoma'
    Headers.Font.Style = [fsBold]
    Detail.Color = clWhite
    Detail.Font.Charset = DEFAULT_CHARSET
    Detail.Font.Color = clWindowText
    Detail.Font.Height = -8
    Detail.Font.Name = 'Tahoma'
    Detail.Font.Style = []
    Detail.GridLines = [glHorizontal, glVertical]
    Detail.GridLinesWidth = 0
    Detail.MultiLine = mlAuto
    Footer.Font.Charset = DEFAULT_CHARSET
    Footer.Font.Color = clWindowText
    Footer.Font.Height = -8
    Footer.Font.Name = 'Tahoma'
    Footer.Font.Style = []
    Totals.Color = 14079702
    Totals.Font.Charset = DEFAULT_CHARSET
    Totals.Font.Color = clWindowText
    Totals.Font.Height = -8
    Totals.Font.Name = 'Tahoma'
    Totals.Font.Style = []
    SubTotals.Color = 12961221
    SubTotals.Font.Charset = DEFAULT_CHARSET
    SubTotals.Font.Color = clWindowText
    SubTotals.Font.Height = -8
    SubTotals.Font.Name = 'Tahoma'
    SubTotals.Font.Style = []
    SubTotals.TotalsStyle = tsFillOnlyData
    PageOrientation = pxLandscape
    PageSize = psLegal
    Margins.Left = 10
    Margins.Right = 10
    Left = 192
    Top = 514
  end
  object FieldHider: TFieldHider
    IniStorage = FormStorage
    SortDialog = SortDialog
    QueryPrint = QueryPrint
    RetriveFrom = rfQueryPrint
    Left = 372
    Top = 484
  end
  object sdqJuiciosRelacionados: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT DECODE(jt_estadomediacion, '#39'M'#39', '#39'Mediaci'#243'n'#39', '#39'JM'#39', '#39'Media' +
        'ci'#243'n-Juicio'#39', '#39'Juicio'#39') mediacionjuicio,'
      
        '                lju_jurisdiccion.ju_descripcion, lfu_fuero.fu_de' +
        'scripcion, ljz_juzgado.jz_descripcion,'
      
        '                lin_instancia.in_descripcion, lsc_secretaria.sc_' +
        'descripcion,'
      
        '                NVL(jt_demandante, '#39#39') || '#39' C/  '#39' || NVL(jt_dema' +
        'ndado, '#39#39') || '#39' '#39' || jt_caratula jt_caratula,'
      
        '                ljt_juicioentramite.jt_idfuero, ljt_juicioentram' +
        'ite.jt_idjuzgado, ljt_juicioentramite.jt_idsecretaria,'
      
        '                ljt_juicioentramite.jt_idjurisdiccion, ljt_juici' +
        'oentramite.jt_id, ljt_juicioentramite.jt_usubaja,'
      
        '                ljt_juicioentramite.jt_usumodif, ljt_juicioentra' +
        'mite.jt_fechamodif, ljt_juicioentramite.jt_usualta,'
      
        '                ljt_juicioentramite.jt_fechaalta, ljt_juicioentr' +
        'amite.jt_descripcion, ljt_juicioentramite.jt_importereserva,'
      
        '                ljt_juicioentramite.jt_importereservahonorarios,' +
        ' ljt_juicioentramite.jt_fechaasign,'
      
        '                ljt_juicioentramite.jt_expediente, ljt_juicioent' +
        'ramite.jt_resultado, ljt_juicioentramite.jt_fechafinjuicio,'
      
        '                ljt_juicioentramite.jt_idtipo, ljt_juicioentrami' +
        'te.jt_fechainijuicio, ljt_juicioentramite.jt_idestado,'
      
        '                ljt_juicioentramite.jt_idabogado, ljt_juicioentr' +
        'amite.jt_registracion, ljt_juicioentramite.jt_importedemandado,'
      
        '                ljt_juicioentramite.jt_importesentencia, ljt_jui' +
        'cioentramite.jt_fechaingreso, ljt_juicioentramite.jt_bloqueado,'
      
        '                ljt_juicioentramite.jt_usuariobloquea, lbo_aboga' +
        'do.bo_nombre, lej_estadojuicio.ej_descripcion,'
      
        '                ljt_juicioentramite.jt_reservahonorariocalculada' +
        ', ljt_juicioentramite.jt_reservacapitalcalculada,'
      
        '                ljt_juicioentramite.jt_fechaaprobacionreservas, ' +
        'ljt_juicioentramite.jt_numerocarpeta,'
      '                jr_id, ljr.jt_fechabaja'
      
        '           FROM legales.ljr_juiciorelacionado ljr, legales.ljt_j' +
        'uicioentramite, legales.lju_jurisdiccion, legales.lfu_fuero,'
      
        '                legales.ljz_juzgado, legales.lin_instancia, lega' +
        'les.lsc_secretaria, legales.lbo_abogado,'
      '                legales.lej_estadojuicio'
      
        '          WHERE (    (ljt_juicioentramite.jt_idjurisdiccion = lj' +
        'u_jurisdiccion.ju_id(+))'
      
        '                 AND (ljt_juicioentramite.jt_idfuero = lfu_fuero' +
        '.fu_id(+))'
      
        '                 AND (ljt_juicioentramite.jt_idjuzgado = ljz_juz' +
        'gado.jz_id(+))'
      
        '                 AND (lin_instancia.in_id(+) = ljz_juzgado.jz_id' +
        'instancia)'
      
        '                 AND (ljt_juicioentramite.jt_idsecretaria = lsc_' +
        'secretaria.sc_id(+))'
      
        '                 AND (ljt_juicioentramite.jt_idabogado = lbo_abo' +
        'gado.bo_id(+))'
      
        '                 AND (ljt_juicioentramite.jt_idestado = lej_esta' +
        'dojuicio.ej_id(+)))'
      '            AND jt_idjuicioentramite = jt_id'
      '            AND jr_idsumario = :idsumario'
      '       ORDER BY jt_id DESC')
    Left = 102
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idsumario'
        ParamType = ptInput
      end>
  end
  object dsJuiciosRelacionados: TDataSource
    DataSet = sdqJuiciosRelacionados
    Left = 102
    Top = 514
  end
  object sdqPagoSumario: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    AfterScroll = sdqPagoSumarioAfterScroll
    SQL.Strings = (
      
        'SELECT lps.*, lbp.bp_descripcion, scp.cp_denpago, scp.cp_ctapago' +
        ','
      
        '       scp.cp_especie, scp.cp_codigossn, scp.cp_retencion, scp.c' +
        'p_tipo,'
      '       scp.cp_autorizacion, scp.cp_altamedica, scp.cp_fbaja,'
      '       scp.cp_descripcion, scp.cp_tipomonto, scp.cp_telegrama,'
      
        '       scp.cp_nomenclado, scp.cp_legales, scp.cp_grado, scp.cp_c' +
        'aracter,'
      
        '       scp.cp_adelanto, scp.cp_espagomensual, scp.cp_aporycontri' +
        ','
      
        '       scp.cp_retiva, ce_ordenpago ordennro, ce_fechaop ordenfec' +
        'ha, '
      
        '       ce_numero chequenro, ce_fechacheque chequefecha, lps.ps_l' +
        'etrafactura'
      '       || '#39'-'#39
      '       || lps.ps_situacionfactura'
      '       || '#39'-'#39
      '       || lps.ps_numerofactura AS nrofactura,'
      '       ps_idsector,ps_idliquidacion,'
      '       ps_idintereses, ps_fechaaprobacion, ps_usuaprobacion,'
      '       ps_duplicado, ps_estadoduplicidad, ps_motivoaprobacion,'
      
        '       DECODE(PS_ESTADODUPLICIDAD, '#39'A'#39', '#39'Aprobado'#39', '#39'R'#39', '#39'Rechaz' +
        'ado'#39', '#39#39') AS estadoduplicado       '
      '  FROM rce_chequeemitido, legales.lps_pagosumario lps,'
      '       legales.lbp_beneficiariopago lbp,'
      '       scp_conpago scp'
      ' WHERE lbp.bp_id(+) = lps.ps_idbeneficiariopago'
      '   AND scp.cp_conpago = lps.ps_conpago'
      '   AND lps.ps_idsumario = :idsumario'
      '   AND ps_idchequeemitido = ce_id(+)'
      ''
      ''
      '')
    Left = 72
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idsumario'
        ParamType = ptInput
      end>
  end
  object dsPagoSumario: TDataSource
    DataSet = sdqPagoSumario
    Left = 72
    Top = 514
  end
  object sduPagoLegal: TSDUpdateSQL
    Left = 252
    Top = 514
  end
  object JvShellHook1: TJvShellHook
    Active = False
    Left = 342
    Top = 484
  end
  object sdqReclamosSumarios: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'select lrs.rs_id,tn_descripcion, lno.no_nro, lno.no_descripcion,' +
        ' lno.no_dependencia, lno.no_fechapublicacion,'
      
        '       lrs.rs_articulo, lrs.rs_inciso, lrs.rs_observaciones, lrs' +
        '.rs_fechabaja'
      
        'from legales.lrs_reclamosumario lrs, legales.lno_norma lno, lega' +
        'les.ltn_tiponorma ltn'
      'where lrs.rs_idnorma = lno.no_id '
      '  and lno.no_idtiponorma = ltn.tn_id'
      '  and lrs.rs_idsumario = :idSumario'
      '')
    Left = 162
    Top = 484
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idSumario'
        ParamType = ptInput
        Value = 0
      end>
  end
  object dsReclamosSumarios: TDataSource
    DataSet = sdqReclamosSumarios
    Left = 162
    Top = 514
  end
  object sduSiniestros: TSDUpdateSQL
    ModifySQL.Strings = (
      'update legales.lss_siniestrosumario'
      'set'
      '  SS_USUBAJA = :SS_USUBAJA,'
      '  SS_FECHABAJA = SYSDATE'
      'where'
      '  SS_ID = :OLD_SS_ID')
    InsertSQL.Strings = (
      'insert into legales.lss_siniestrosumario'
      
        '  (SS_ID, SS_IDSUMARIO, SS_SINIESTRO, SS_ORDEN, SS_RECAIDA, SS_U' +
        'SUALTA, SS_FECHAALTA)'
      'values'
      
        '  (legales.seq_lss_id.nextval, :SS_IDSUMARIO, :EX_SINIESTRO, :EX' +
        '_ORDEN, :EX_RECAIDA, :SS_USUALTA, SysDate)')
    Left = 222
    Top = 514
  end
  object cdsArchivosAsociados: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DESCRIPCION'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'PATHARCHIVO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'STATE'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'idxPath'
      end>
    Params = <>
    StoreDefs = True
    Left = 192
    Top = 484
    Data = {
      7F0000009619E0BD0100000018000000040000000000030000007F000B444553
      4352495043494F4E01004900000001000557494454480200020064000B504154
      484152434849564F010049000000010005574944544802000200640002494404
      0001000000000005535441544501004900000001000557494454480200020001
      000000}
  end
  object sdqArchivosAsociados: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT'
      '  ae_descripcion, ae_patharchivo, ae_id'
      '  FROM legales.LAE_ARCHIVOEVENTOSUMARIO'
      ' WHERE ae_ideventosumario = :IdEventoSumario'
      ' and ae_fechabaja is null'
      '')
    Left = 282
    Top = 514
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IdEventoSumario'
        ParamType = ptInput
      end>
  end
  object sdqPatronesBusqueda: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT CA_CONSULTABUSQUEDA, PA_VALORBUSQUEDA'
      
        'FROM legales.LCA_CAMPOSBUSQUEDA LCA, legales.lpa_patronesanteced' +
        'ente LPA'
      'WHERE LCA.ca_id = LPA.pa_idcampobusqueda'
      'AND PA_FECHABAJA IS NULL'
      'AND LPA.pa_idsumario = :idsumario'
      ''
      '')
    Left = 252
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idsumario'
        ParamType = ptInput
      end>
  end
  object sdqAntecedentesWF: TSDQuery
    DatabaseName = 'workflow'
    Options = []
    Left = 132
    Top = 484
  end
  object sdqAntecedentes: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT AN_IDINSTANCIA, AN_FECHABAJA'
      'FROM LEGALES.LAN_ANTECEDENTESUMARIO '
      'WHERE AN_IDSUMARIO = :IDSUMARIO')
    Left = 222
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'IDSUMARIO'
        ParamType = ptInput
      end>
  end
  object sdqIncumplimientoEspecifico: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT   ie_id, ie_idsumario, ie_idtipoincumplimiento, ie_usualt' +
        'a, ie_fechaalta, ie_usumodif, ie_fechamodif, ie_usubaja,'
      
        '         ie_fechabaja, ti_id, ti_descripcion, ti_usualta, ti_fec' +
        'haalta, ti_usumodif, ti_fechamodif, ti_usubaja, ti_fechabaja'
      
        '    FROM legales.lie_incumplimientoespecifico, legales.lti_tipoi' +
        'ncumplimiento'
      '   WHERE ie_idsumario = :idsumario'
      '     AND ie_idtipoincumplimiento = ti_id'
      'ORDER BY ie_id DESC')
    Left = 433
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idsumario'
        ParamType = ptInput
      end>
  end
  object dsIncumplimientoEspecifico: TDataSource
    DataSet = sdqIncumplimientoEspecifico
    Left = 433
    Top = 514
  end
end
