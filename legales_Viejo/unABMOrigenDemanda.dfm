object frmAbmOrigenDemanda: TfrmAbmOrigenDemanda
  Left = 222
  Top = 158
  ActiveControl = fraReclamante.edCodigo
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Origen de la Demanda'
  ClientHeight = 596
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bvSeparador: TBevel
    Left = 5
    Top = 555
    Width = 617
    Height = 5
    Shape = bsTopLine
  end
  object btnAceptarOrigenDemanda: TButton
    Left = 460
    Top = 564
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    TabOrder = 4
    OnClick = btnAceptarOrigenDemandaClick
  end
  object btnCancelarOrigenDemanda: TButton
    Left = 538
    Top = 564
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 5
  end
  object nbOrigenDemanda: TNotebook
    Left = 9
    Top = 189
    Width = 606
    Height = 282
    PageIndex = 1
    TabOrder = 3
    object TPage
      Left = 0
      Top = 0
      Caption = 'Trabajador'
      object pnTrabajador: TPanel
        Left = 0
        Top = 0
        Width = 606
        Height = 290
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object chkOrigenDemanda: TCheckPanel
          Left = 0
          Top = 71
          Width = 606
          Height = 206
          Align = alTop
          Caption = ' Dentro del R'#233'gimen '
          TabOrder = 1
          DesignSize = (
            606
            206)
          object lblPorcentajeIncapacidad: TLabel
            Left = 411
            Top = 181
            Width = 116
            Height = 13
            Caption = 'Porcentaje Incapacidad:'
          end
          object CoolBar1: TCoolBar
            Left = 6
            Top = 19
            Width = 591
            Height = 29
            Align = alNone
            Anchors = [akLeft, akRight, akBottom]
            Bands = <
              item
                Control = tbOrigenDemandaSiniestro
                ImageIndex = -1
                MinHeight = 27
                Width = 585
              end>
            object tbOrigenDemandaSiniestro: TToolBar
              Left = 9
              Top = 0
              Width = 578
              Height = 27
              Align = alBottom
              BorderWidth = 1
              Caption = 'ToolBar'
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
              object ToolButton8: TToolButton
                Left = 46
                Top = 0
                Width = 8
                Caption = 'ToolButton8'
                ImageIndex = 2
                Style = tbsSeparator
              end
              object tbLimpiarTodo: TToolButton
                Left = 54
                Top = 0
                Hint = 'Limpiar'
                Caption = 'tbLimpiarTodo'
                ImageIndex = 1
              end
              object chkBoxCumpleHS: TCheckBox
                Left = 77
                Top = 0
                Width = 136
                Height = 22
                Alignment = taLeftJustify
                Caption = '       Cumple Normas H&S'
                TabOrder = 0
              end
            end
          end
          object dbgSiniestros: TDBGrid
            Left = 6
            Top = 53
            Width = 589
            Height = 120
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataSource = dsSiniestrosOrigenDemanda
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
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
                FieldName = 'nroexp'
                Title.Caption = 'Exp.Incapacidad'
                Width = 130
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
                Title.Caption = 'Descripci'#243'n'
                Visible = True
              end>
          end
          object edPorcentajeIncapacidad: TCurrencyEdit
            Left = 530
            Top = 178
            Width = 46
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = clGradientInactiveCaption
            DisplayFormat = ' ,0.00;- ,0.00'
            TabOrder = 2
          end
        end
        object grpTrabajador: TGroupBox
          Left = 0
          Top = 0
          Width = 606
          Height = 71
          Align = alTop
          Caption = 'Trabajador'
          TabOrder = 0
          DesignSize = (
            606
            71)
          object Label2: TLabel
            Left = 22
            Top = 46
            Width = 196
            Height = 13
            Caption = 'Fecha Hecho Generador de la Demanda:'
          end
          object lbSalarioDemandado: TLabel
            Left = 373
            Top = 46
            Width = 87
            Height = 13
            Caption = 'Salario Declarado:'
          end
          inline fraTrabajadorOrigenDemanda: TfraTrabajador
            Left = 16
            Top = 16
            Width = 577
            Height = 23
            TabOrder = 0
            ExplicitLeft = 16
            ExplicitTop = 16
            ExplicitWidth = 577
            ExplicitHeight = 23
            DesignSize = (
              577
              23)
            inherited cmbNombre: TArtComboBox
              Width = 409
              ExplicitWidth = 409
            end
          end
          object edHechoGeneradorDemanda: TDateComboBox
            Left = 224
            Top = 42
            Width = 88
            Height = 21
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edSalarioDeclarado: TCurrencyEdit
            Left = 465
            Top = 42
            Width = 92
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '$,0.00;-$,0.00'
            TabOrder = 2
          end
          object ToolBar1: TToolBar
            Left = 565
            Top = 39
            Width = 28
            Height = 26
            Align = alNone
            Anchors = [akTop, akRight]
            BorderWidth = 1
            Caption = 'EdicionMotivos'
            HotImages = frmPrincipal.ilColor
            Images = frmPrincipal.ilByN
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            object tbSalario: TToolButton
              Left = 0
              Top = 0
              Hint = 'Traer de Afiliaciones'
              ImageIndex = 18
              OnClick = tbSalarioClick
            end
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Empresa Afiliada'
      object pnEmpresaAfiliada: TPanel
        Left = 0
        Top = 0
        Width = 606
        Height = 211
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          606
          211)
        object GroupBox1: TGroupBox
          Left = 144
          Top = 67
          Width = 459
          Height = 109
          Anchors = [akLeft, akTop, akRight]
          Caption = '  Detalle Contrato '
          Enabled = False
          TabOrder = 0
          DesignSize = (
            459
            109)
          object Label3: TLabel
            Left = 9
            Top = 23
            Width = 36
            Height = 13
            Caption = 'Estado:'
          end
          object lblFechaBajaContrato: TLabel
            Left = 10
            Top = 47
            Width = 54
            Height = 13
            Caption = 'Fecha Baja'
          end
          object lblMotivoBajaContrato: TLabel
            Left = 181
            Top = 47
            Width = 35
            Height = 13
            Caption = 'Motivo:'
          end
          inline fraCO_ESTADO: TfraStaticCTB_TABLAS
            Left = 85
            Top = 16
            Width = 366
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            ExplicitLeft = 85
            ExplicitTop = 16
            ExplicitWidth = 366
            DesignSize = (
              366
              23)
            inherited edCodigo: TPatternEdit
              Left = 2
              Width = 39
              ExplicitLeft = 2
              ExplicitWidth = 39
            end
            inherited cmbDescripcion: TComboGrid
              Left = 46
              Width = 301
              ExplicitLeft = 46
              ExplicitWidth = 301
              Cells = (
                'C'#243'digo'
                'Descripci'#243'n'
                'Id'
                'Fecha de Baja'
                'TB_CLAVE'
                'TB_ESPECIAL1')
              ColWidths = (
                40
                300
                -1
                -1
                -1
                -1)
            end
          end
          object cmbCO_FECHABAJA: TDateComboBox
            Left = 86
            Top = 42
            Width = 88
            Height = 21
            TabOrder = 1
          end
          inline fraCO_MOTIVOBAJA: TfraStaticCTB_TABLAS
            Left = 223
            Top = 43
            Width = 232
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            ExplicitLeft = 223
            ExplicitTop = 43
            ExplicitWidth = 232
            DesignSize = (
              232
              23)
            inherited edCodigo: TPatternEdit
              Width = 36
              ExplicitWidth = 36
            end
            inherited cmbDescripcion: TComboGrid
              Left = 39
              Width = 170
              ExplicitLeft = 39
              ExplicitWidth = 170
              Cells = (
                'C'#243'digo'
                'Descripci'#243'n'
                'Id'
                'Fecha de Baja'
                'TB_CLAVE'
                'TB_ESPECIAL1')
              ColWidths = (
                40
                300
                -1
                -1
                -1
                -1)
            end
          end
          object btnMasDatosEmpresa: TBitBtn
            Left = 354
            Top = 77
            Width = 74
            Height = 23
            Caption = 'Mas Datos'
            TabOrder = 3
            Visible = False
          end
        end
        object grbVigenciaContrato: TGroupBox
          Left = 3
          Top = 67
          Width = 138
          Height = 108
          Caption = 'Vigencia del Contrato'
          Enabled = False
          TabOrder = 1
          object Label7: TLabel
            Left = 8
            Top = 21
            Width = 34
            Height = 13
            Caption = 'Desde:'
          end
          object Label9: TLabel
            Left = 9
            Top = 46
            Width = 31
            Height = 13
            Caption = 'Hasta:'
          end
          object cmbCO_VIGENCIADESDE: TDateComboBox
            Left = 43
            Top = 17
            Width = 88
            Height = 21
            TabOrder = 0
          end
          object cmbCO_VIGENCIAHASTA: TDateComboBox
            Left = 43
            Top = 42
            Width = 88
            Height = 21
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 4
          Top = -1
          Width = 599
          Height = 66
          Anchors = [akLeft, akTop, akRight]
          Caption = ' Contrato '
          TabOrder = 2
          object lblCuitEmpresa: TLabel
            Left = 11
            Top = 18
            Width = 21
            Height = 13
            Caption = 'Cuit:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          inline fraEmpresaDemandante: TfraEmpresa
            Left = 50
            Top = 15
            Width = 538
            Height = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnExit = fraEmpresaDemandanteExit
            ExplicitLeft = 50
            ExplicitTop = 15
            ExplicitWidth = 538
            ExplicitHeight = 25
            DesignSize = (
              538
              25)
            inherited lbContrato: TLabel
              Left = 436
              ExplicitLeft = 436
            end
            inherited edContrato: TIntEdit
              Left = 481
              ExplicitLeft = 481
            end
            inherited cmbRSocial: TArtComboBox
              Width = 299
              ExplicitWidth = 299
            end
          end
          object chkCumpleNormasHySContrato: TCheckBox
            Left = 50
            Top = 39
            Width = 136
            Height = 22
            Caption = '       Cumple Normas H&&S'
            TabOrder = 1
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Empresa'
      DesignSize = (
        606
        282)
      object gbOrigenEmpresa: TGroupBox
        Left = 3
        Top = 2
        Width = 597
        Height = 245
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Datos de la Empresa'
        TabOrder = 0
        object lbCUIT: TLabel
          Left = 18
          Top = 26
          Width = 28
          Height = 13
          Caption = 'CUIT:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbRSocial: TLabel
          Left = 18
          Top = 49
          Width = 43
          Height = 13
          Caption = 'R.Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 18
          Top = 96
          Width = 45
          Height = 13
          Caption = 'Tel'#233'fono:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 18
          Top = 121
          Width = 45
          Height = 13
          Caption = 'Domicilio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblRepresentanteLegal: TLabel
          Left = 18
          Top = 73
          Width = 50
          Height = 13
          Caption = 'Rep. Leg.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object edCuitEmpresa: TMaskEdit
          Left = 73
          Top = 22
          Width = 89
          Height = 21
          EditMask = '99-99999999-c;0;'
          MaxLength = 13
          TabOrder = 0
        end
        object edtRazonSocialEmpresa: TEdit
          Left = 73
          Top = 46
          Width = 500
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 250
          TabOrder = 1
        end
        object edtTelefonoEmpresa: TEdit
          Left = 73
          Top = 93
          Width = 146
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 3
        end
        object mDomicilioEmpresa: TMemo
          Left = 72
          Top = 118
          Width = 500
          Height = 113
          MaxLength = 250
          TabOrder = 4
        end
        object edtRepresentanteLegalEmpresa: TEdit
          Left = 73
          Top = 70
          Width = 500
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 100
          TabOrder = 2
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Persona'
      object gbPersona: TGroupBox
        Left = 7
        Top = 7
        Width = 592
        Height = 253
        Caption = ' Datos de la Persona '
        TabOrder = 0
        object lblNombre: TLabel
          Left = 7
          Top = 50
          Width = 40
          Height = 13
          Caption = 'Nombre:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblTelefono: TLabel
          Left = 7
          Top = 75
          Width = 45
          Height = 13
          Caption = 'Tel'#233'fono:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDomicilioPersona: TLabel
          Left = 7
          Top = 156
          Width = 45
          Height = 13
          Caption = 'Domicilio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblCuil: TLabel
          Left = 431
          Top = 26
          Width = 27
          Height = 13
          Caption = 'CUIL:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblTipoDocumento: TLabel
          Left = 170
          Top = 26
          Width = 21
          Height = 13
          Caption = 'Tipo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblDNI: TLabel
          Left = 7
          Top = 24
          Width = 58
          Height = 13
          Caption = 'Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 11
          Top = 127
          Width = 21
          Height = 13
          Caption = 'Cuit:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbSexo: TLabel
          Left = 232
          Top = 75
          Width = 27
          Height = 13
          Caption = 'Sexo:'
        end
        object Label6: TLabel
          Left = 415
          Top = 75
          Width = 68
          Height = 13
          Caption = 'F. Nacimiento:'
        end
        object Label8: TLabel
          Left = 9
          Top = 96
          Width = 48
          Height = 26
          Caption = 'Fecha '#13#10'Accidente'
        end
        object edCuilPersona: TMaskEdit
          Left = 476
          Top = 21
          Width = 103
          Height = 21
          EditMask = '99-99999999-c;0;'
          MaxLength = 13
          TabOrder = 2
        end
        object edNombrePersona: TEdit
          Left = 66
          Top = 47
          Width = 511
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 250
          TabOrder = 3
        end
        object edTelefonoPersona: TEdit
          Left = 66
          Top = 72
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 20
          TabOrder = 4
        end
        object mDomicilioPersona: TMemo
          Left = 65
          Top = 151
          Width = 511
          Height = 95
          MaxLength = 250
          TabOrder = 8
        end
        object edNroDocumentoPersona: TPatternEdit
          Left = 66
          Top = 21
          Width = 97
          Height = 21
          MaxLength = 8
          TabOrder = 0
        end
        inline fraTipoDocumento: TfraCtbTablas
          Left = 197
          Top = 21
          Width = 227
          Height = 23
          TabOrder = 1
          ExplicitLeft = 197
          ExplicitTop = 21
          ExplicitWidth = 227
          inherited cmbDescripcion: TArtComboBox
            Width = 174
            ExplicitWidth = 174
          end
        end
        object cbMasculino: TCheckBox
          Left = 267
          Top = 74
          Width = 70
          Height = 17
          Caption = 'Masculino'
          TabOrder = 5
          OnClick = cbMasculinoClick
        end
        object cbFemenino: TCheckBox
          Left = 340
          Top = 74
          Width = 68
          Height = 17
          Caption = 'Femenino'
          TabOrder = 6
          OnClick = cbFemeninoClick
        end
        inline fraEmpresaPersonaFisica: TfraEmpresa
          Left = 65
          Top = 124
          Width = 511
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          ExplicitLeft = 65
          ExplicitTop = 124
          ExplicitWidth = 511
          ExplicitHeight = 21
          inherited lbContrato: TLabel
            Left = 407
            ExplicitLeft = 407
          end
          inherited edContrato: TIntEdit
            Left = 454
            ExplicitLeft = 454
          end
          inherited cmbRSocial: TArtComboBox
            Width = 271
            ExplicitWidth = 271
          end
        end
        object edFechaNacimiento: TDateComboBox
          Left = 489
          Top = 72
          Width = 88
          Height = 21
          ErrorMessage = 
            'La fecha debe ser mayor o igual que la fecha de inicio del juici' +
            'o'
          DialogTitle = 'Seleccione una fecha'
          Weekends = [Sun, Sat]
          TabOrder = 9
        end
        object edFechaAccidente: TDateComboBox
          Left = 66
          Top = 97
          Width = 88
          Height = 21
          ErrorMessage = 
            'La fecha debe ser mayor o igual que la fecha de inicio del juici' +
            'o'
          DialogTitle = 'Seleccione una fecha'
          Weekends = [Sun, Sat]
          TabOrder = 10
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Prestador'
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 606
        Height = 241
        Align = alTop
        Caption = ' Prestador '
        TabOrder = 0
        DesignSize = (
          606
          241)
        object gbContratoOrigenDemandaPrestador: TGroupBox
          Left = 5
          Top = 17
          Width = 597
          Height = 84
          Anchors = [akLeft, akTop, akRight]
          Caption = ' Contrato '
          TabOrder = 0
          inline fraEmpresaPrestador: TfraCPR_PRESTADOR
            Left = 8
            Top = 16
            Width = 585
            Height = 63
            VertScrollBar.Range = 49
            TabOrder = 0
            ExplicitLeft = 8
            ExplicitTop = 16
            ExplicitWidth = 585
            ExplicitHeight = 63
            DesignSize = (
              585
              63)
            inherited lbCUIT: TLabel
              Width = 25
              ExplicitWidth = 25
            end
            inherited lbSec: TLabel
              Width = 22
              ExplicitWidth = 22
            end
            inherited lbIdentif: TLabel
              Width = 35
              ExplicitWidth = 35
            end
            inherited lbRSocial: TLabel
              Width = 40
              ExplicitWidth = 40
            end
            inherited lbDomicilio: TLabel
              Width = 42
              ExplicitWidth = 42
            end
            inherited lbLocalidad: TLabel
              Width = 46
              ExplicitWidth = 46
            end
            inherited lbCPostal: TLabel
              Left = 506
              Width = 20
              ExplicitLeft = 506
              ExplicitWidth = 20
            end
            inherited cmbCA_DESCRIPCION: TArtComboBox
              Width = 255
              ExplicitWidth = 255
            end
            inherited edCA_LOCALIDAD: TEdit
              Width = 131
              ExplicitWidth = 131
            end
            inherited edCA_CODPOSTAL: TEdit
              Left = 530
              ExplicitLeft = 530
            end
            inherited sdqDatos: TSDQuery
              Left = 288
              Top = 8
            end
            inherited dsDatos: TDataSource
              Left = 316
              Top = 8
            end
          end
        end
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Proveedor'
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 606
        Height = 232
        Align = alTop
        Caption = ' Proveedor '
        TabOrder = 0
        DesignSize = (
          606
          232)
        object gbContratoOrigenDemandaProveedor: TGroupBox
          Left = 6
          Top = 16
          Width = 592
          Height = 85
          Anchors = [akLeft, akTop, akRight]
          Caption = ' Contrato '
          TabOrder = 0
          inline fraEmpresaProveedor: TfraCPR_PRESTADOR
            Left = 7
            Top = 16
            Width = 576
            Height = 63
            VertScrollBar.Range = 49
            TabOrder = 0
            ExplicitLeft = 7
            ExplicitTop = 16
            ExplicitWidth = 576
            ExplicitHeight = 63
            DesignSize = (
              576
              63)
            inherited lbCUIT: TLabel
              Width = 25
              ExplicitWidth = 25
            end
            inherited lbSec: TLabel
              Width = 22
              ExplicitWidth = 22
            end
            inherited lbIdentif: TLabel
              Width = 35
              ExplicitWidth = 35
            end
            inherited lbRSocial: TLabel
              Width = 40
              ExplicitWidth = 40
            end
            inherited lbDomicilio: TLabel
              Width = 42
              ExplicitWidth = 42
            end
            inherited lbLocalidad: TLabel
              Width = 46
              ExplicitWidth = 46
            end
            inherited lbCPostal: TLabel
              Left = 497
              Width = 20
              ExplicitLeft = 497
              ExplicitWidth = 20
            end
            inherited cmbCA_DESCRIPCION: TArtComboBox
              Width = 246
              ExplicitWidth = 246
            end
            inherited edCA_LOCALIDAD: TEdit
              Width = 122
              ExplicitWidth = 122
            end
            inherited edCA_CODPOSTAL: TEdit
              Left = 521
              ExplicitLeft = 521
            end
            inherited sdqDatos: TSDQuery
              Left = 288
              Top = 8
            end
            inherited dsDatos: TDataSource
              Left = 316
              Top = 8
            end
          end
        end
      end
    end
  end
  object gbReclamanteOrigenDemanda: TGroupBox
    Left = 8
    Top = 2
    Width = 609
    Height = 45
    Caption = ' Origen de la Demanda  '
    TabOrder = 0
    DesignSize = (
      609
      45)
    object lblReclamante: TLabel
      Left = 7
      Top = 19
      Width = 60
      Height = 13
      Caption = 'Reclamante:'
    end
    inline fraReclamante: TfraCodigoDescripcion
      Left = 71
      Top = 15
      Width = 529
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 71
      ExplicitTop = 15
      ExplicitWidth = 529
      ExplicitHeight = 28
      DesignSize = (
        529
        28)
      inherited cmbDescripcion: TArtComboBox
        Width = 464
        ExplicitWidth = 464
      end
      inherited edCodigo: TPatternEdit
        Pattern = '0123456789'
      end
      inherited dsDatos: TDataSource
        Left = 76
      end
    end
    object GroupBox4: TGroupBox
      Left = 0
      Top = 48
      Width = 57
      Height = 1
      Caption = 'GroupBox4'
      TabOrder = 1
    end
  end
  object gbLetradoReclamante: TGroupBox
    Left = 8
    Top = 47
    Width = 607
    Height = 38
    Caption = ' Letrado '
    TabOrder = 1
    DesignSize = (
      607
      38)
    object lblAbogadoOrigenDemanda: TLabel
      Left = 8
      Top = 17
      Width = 46
      Height = 13
      Caption = 'Abogado:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 363
      Top = 15
      Width = 43
      Height = 13
      Caption = 'Caracter:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    inline fraAbogadosParteActora: TfraAbogadosLegales
      Left = 71
      Top = 12
      Width = 259
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 71
      ExplicitTop = 12
      ExplicitWidth = 259
      DesignSize = (
        259
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 63
        Top = -1
        Width = 193
        ExplicitLeft = 63
        ExplicitTop = -1
        ExplicitWidth = 193
      end
      inherited edCodigo: TPatternEdit
        Left = -1
        Top = -1
        Width = 60
        Pattern = '0123456789'
        ExplicitLeft = -1
        ExplicitTop = -1
        ExplicitWidth = 60
      end
    end
    object tbEdicionAbogadosOpositores: TToolBar
      Left = 327
      Top = 9
      Width = 31
      Height = 26
      Align = alNone
      Anchors = [akTop, akRight]
      BorderWidth = 1
      ButtonWidth = 24
      Caption = 'EdicionMotivos'
      HotImages = frmPrincipal.ilColor
      Images = frmPrincipal.ilByN
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object tbEdicionAbogados: TToolButton
        Left = 0
        Top = 0
        Hint = 'Nuevo'
        ImageIndex = 6
        OnClick = tbEdicionAbogadosClick
      end
    end
    inline fraCaracter: TfraCodigoDescripcion
      Left = 411
      Top = 10
      Width = 189
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 411
      ExplicitTop = 10
      ExplicitWidth = 189
      ExplicitHeight = 24
      DesignSize = (
        189
        24)
      inherited cmbDescripcion: TArtComboBox
        Width = 124
        ExplicitWidth = 124
      end
      inherited edCodigo: TPatternEdit
        Pattern = '0123456789'
      end
    end
  end
  object gbMedico: TGroupBox
    Left = 8
    Top = 512
    Width = 607
    Height = 39
    Caption = ' M'#233'dico '
    TabOrder = 6
    DesignSize = (
      607
      39)
    object Label4: TLabel
      Left = 8
      Top = 17
      Width = 38
      Height = 13
      Caption = 'M'#233'dico:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ToolBar2: TToolBar
      Left = 427
      Top = 9
      Width = 30
      Height = 26
      Align = alNone
      Anchors = [akTop, akRight]
      BorderWidth = 1
      Caption = 'EdicionMotivos'
      HotImages = frmPrincipal.ilColor
      Images = frmPrincipal.ilByN
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object tbNuevoMedico: TToolButton
        Left = 0
        Top = 0
        Hint = 'Nuevo M'#233'dico'
        ImageIndex = 6
        OnClick = tbNuevoMedicoClick
      end
    end
    inline fraMedico: TfraCodigoDescripcion
      Left = 71
      Top = 10
      Width = 346
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 71
      ExplicitTop = 10
      ExplicitWidth = 346
      DesignSize = (
        346
        23)
      inherited cmbDescripcion: TArtComboBox
        Width = 281
        ExplicitWidth = 281
      end
      inherited edCodigo: TPatternEdit
        Pattern = '0123456789'
      end
    end
  end
  object gbPresentacion: TGroupBox
    Left = 8
    Top = 472
    Width = 607
    Height = 39
    TabOrder = 7
    object cbEstudiosMedicos: TCheckBox
      Left = 24
      Top = 14
      Width = 169
      Height = 17
      Caption = 'Presentaron Estudios M'#233'dicos'
      TabOrder = 0
    end
    object cbCertificadosMedicos: TCheckBox
      Left = 344
      Top = 14
      Width = 185
      Height = 17
      Caption = 'Presentaron Certificados Medicos'
      TabOrder = 1
    end
  end
  object gbDomicilioLetrado: TGroupBox
    Left = 8
    Top = 88
    Width = 607
    Height = 94
    Caption = ' Domicilio Legal  '
    TabOrder = 2
    inline fraDomicilioLetrado: TfraDomicilio
      Left = 7
      Top = 24
      Width = 589
      Height = 51
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitLeft = 7
      ExplicitTop = 24
    end
  end
  object sdqDatosContrato: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT ahm.hm_nombre, ahm.hm_cuit, ahc.hc_contrato, ahc.hc_estad' +
        'o, estado.tb_descripcion AS estado, ahc.hc_vigenciadesde,'
      
        '       ahc.hc_vigenciahasta, ahc.hc_fechaimpresion, ahc.hc_recep' +
        'contrato, afo.fo_formulario, ahc.hc_origen,'
      
        '       origen.tb_descripcion AS origen, ahc.hc_fecharecepcion, a' +
        'hm.hm_feinicactiv, ahc.hc_fechaafiliacion, ahm.hm_formaj,'
      
        '       formaj.tb_descripcion AS formaj, ahm.hm_sector, sector.tb' +
        '_descripcion AS sector, ahm.hm_holding,'
      
        '       age.ge_descripcion AS holding, ahm.hm_suss, ahc.hc_idejec' +
        'utivo, ecuenta.ec_nombre AS ejcuenta, ahc.hc_idgestor,'
      
        '       gestor.gc_nombre AS gestor, ahc.hc_motivoalta, ahc.hc_add' +
        'enda, hc_idestudiocontable,'
      
        '       mot_alta.tb_descripcion AS motivo_alta, ahc.hc_idartanter' +
        'ior, ahc.hc_fechabaja, ahc.hc_motivobaja,'
      
        '       mot_baj.tb_descripcion AS motivo_baja, ahc.hc_idartfutura' +
        ', ahc.hc_nivel, ahc.hc_totempleados, ahc.hc_masatotal,'
      
        '       ahc.hc_observaciones, ahc.hc_diasfranquicia, ahc.hc_vigen' +
        'ciafranquicia, ahc.hc_clausulaespecial, ahc.hc_idactividad,'
      
        '       ahc.hc_idactividad2, ahc.hc_idactividad3, clau.tb_descrip' +
        'cion AS clausula, ahc.hc_vigenciaclausula, ahc.hc_idempresa,'
      '       afo.fo_id, ahc.hc_direlectronica, ahc.hc_paginaweb'
      
        '  FROM ahc_historicocontrato ahc, ahm_historicoempresa ahm, ctb_' +
        'tablas estado, afo_formulario afo, ctb_tablas origen,'
      
        '       ctb_tablas formaj, ctb_tablas sector, age_grupoeconomico ' +
        'age, ctb_tablas clau, ctb_tablas mot_alta,'
      
        '       afi.aec_ejecutivocuenta ecuenta, afi.agc_gestorcuenta ges' +
        'tor, ctb_tablas mot_baj, aen_endoso aen'
      ' WHERE estado.tb_codigo = ahc.hc_estado'
      '   AND estado.tb_clave = '#39'AFEST'#39
      '   AND afo.fo_id = ahc.hc_idformulario'
      '   AND origen.tb_codigo = ahc.hc_origen'
      '   AND origen.tb_clave = '#39'ORSOL'#39
      '   AND formaj.tb_codigo(+) = ahm.hm_formaj'
      '   AND formaj.tb_clave(+) = '#39'FJURI'#39
      '   AND sector.tb_codigo = ahm.hm_sector'
      '   AND sector.tb_clave = '#39'SECT'#39
      '   AND age.ge_id(+) = ahm.hm_idgrupoeconomico'
      '   AND ecuenta.ec_id(+) = ahc.hc_idejecutivo'
      '   AND gestor.gc_id(+) = ahc.hc_idgestor'
      '   AND mot_baj.tb_codigo(+) = ahc.hc_motivobaja'
      '   AND mot_baj.tb_clave(+) = '#39'MOTIB'#39
      '   AND mot_alta.tb_codigo(+) = ahc.hc_motivoalta'
      '   AND mot_alta.tb_clave(+) = '#39'MOTIA'#39
      '   AND clau.tb_codigo(+) = ahc.hc_clausulaespecial'
      '   AND aen.en_idhistoricocontrato = ahc.hc_id'
      '   AND aen.en_idhistoricoempresa = ahm.hm_id'
      '   AND clau.tb_clave(+) = '#39'CLAUS'#39
      '   AND aen.en_endoso = afiliacion.get_ultnroendoso(:contrato)'
      '   AND aen.en_contrato = :contrato'
      '')
    Left = 185
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CONTRATO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'contrato'
        ParamType = ptInput
      end>
  end
  object sdqSiniestroJuicioEnTramite: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT EX_SINIESTRO, EX_ORDEN, EX_RECAIDA,'
      
        '       EX_SINIESTRO || '#39'/'#39' || EX_ORDEN || '#39'/'#39' || EX_RECAIDA CODS' +
        'INI,'
      '       EX_SINIESTRORED,'
      '       MP_CONTRATO, MP_CUIT, MP_NOMBRE, TJ_CUIL, TJ_NOMBRE,'
      
        '       EX_DIAGNOSTICO, EX_FECHAACCIDENTE, EX_BAJAMEDICA, EX_FECH' +
        'ARECAIDA, EX_ALTAMEDICA, TB_DESCRIPCION, SINJT.*,'
      '       art.inca.get_expedienteincapacidad(ex_id) nroexp'
      
        'FROM CTB_TABLAS, CTJ_TRABAJADORES, CMP_EMPRESAS, SEX_EXPEDIENTES' +
        ' EXPE, LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE SINJT'
      'WHERE NVL(EX_TIPO, '#39'1'#39') = TB_CODIGO(+)'
      'AND TB_CLAVE(+) = '#39'STIPO'#39
      'AND MP_CUIT = EX_CUIT'
      'AND TJ_CUIL = EX_CUIL'
      'AND EX_SINIESTRO = SINJT.sj_siniestro '
      'AND EXPE.ex_orden = SINJT.sj_orden '
      'AND EXPE.ex_recaida = SINJT.sj_recaida'
      'AND SINJT.SJ_IDORIGENDEMANDA = :ID'
      'AND SJ_FECHABAJA IS NULL')
    Left = 372
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object dsSiniestrosOrigenDemanda: TDataSource
    DataSet = sdqSiniestroJuicioEnTramite
    Left = 336
    Top = 280
  end
  object sdqBusqueda: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT EX_SINIESTRO, EX_ORDEN, EX_RECAIDA,'
      
        '       EX_SINIESTRO || '#39'/'#39' || EX_ORDEN || '#39'/'#39' || EX_RECAIDA CODS' +
        'INI,'
      '       EX_SINIESTRORED,'
      '       MP_CONTRATO, MP_CUIT, MP_NOMBRE, TJ_CUIL, TJ_NOMBRE,'
      
        '       EX_DIAGNOSTICO, EX_FECHAACCIDENTE, EX_BAJAMEDICA, EX_FECH' +
        'ARECAIDA, '
      '       EX_ALTAMEDICA, TB_DESCRIPCION'
      'FROM CTB_TABLAS, CTJ_TRABAJADORES, CMP_EMPRESAS, SEX_EXPEDIENTES'
      'WHERE NVL(EX_TIPO, '#39'1'#39') = TB_CODIGO(+)'
      'AND TB_CLAVE(+) = '#39'STIPO'#39
      'AND MP_CUIT = EX_CUIT'
      'AND TJ_CUIL = EX_CUIL'
      'AND EX_SINIESTRO =  :Siniestro '
      'AND EX_ORDEN = :Orden '
      'AND EX_RECAIDA = :Recaida')
    Left = 220
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Siniestro'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Orden'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'Recaida'
        ParamType = ptInput
      end>
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
  object sdqDomicilioLetrado: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'select * from ('
      'SELECT   dm_id,'
      '         dm_idorigendemanda,'
      '         dm_idubicacion,'
      '         dm_numero,'
      '         dm_departamento,'
      '         dm_cpostala,'
      '         dm_piso,'
      '         dm_fechalalta,'
      '         dm_usualta,'
      '         dm_fechamodif,'
      '         dm_usumodif,'
      '         dm_fechabaja,'
      '         dm_usubaja'
      '  FROM   legales.ldm_domiciliolegal'
      '   WHERE   dm_idorigendemanda = :dm_idorigendemanda'
      '       AND dm_fechabaja IS NULL'
      'ORDER BY   dm_fechalalta '
      ')where  ROWNUM = 1')
    Left = 140
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'dm_idorigendemanda'
        ParamType = ptInput
      end>
  end
  object sdqConsulta: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    Left = 196
    Top = 88
  end
end
