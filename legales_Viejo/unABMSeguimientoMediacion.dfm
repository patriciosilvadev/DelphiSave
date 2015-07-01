object frmABMSeguimientoMediacion: TfrmABMSeguimientoMediacion
  Left = 361
  Top = 61
  VertScrollBar.Visible = False
  ActiveControl = edNroCarpeta
  Caption = 'Mediaci'#243'n'
  ClientHeight = 663
  ClientWidth = 800
  Color = clBtnFace
  Constraints.MinHeight = 590
  Constraints.MinWidth = 800
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
  object gbDatosMediador: TGroupBox
    Left = 0
    Top = 217
    Width = 800
    Height = 93
    Align = alTop
    Caption = 'Datos Mediador'
    TabOrder = 1
    DesignSize = (
      800
      93)
    object lblMediador: TLabel
      Left = 7
      Top = 20
      Width = 40
      Height = 13
      Caption = 'Nombre:'
    end
    inline fraDomicilioMediador: TfraDomicilio
      Left = 6
      Top = 40
      Width = 789
      Height = 51
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitLeft = 6
      ExplicitTop = 40
      ExplicitWidth = 789
      DesignSize = (
        789
        51)
      inherited lbCalle: TLabel
        Left = 1
        ExplicitLeft = 1
      end
      inherited lbNro: TLabel
        Left = 574
        ExplicitLeft = 568
      end
      inherited lbPiso: TLabel
        Left = 646
        Width = 20
        ExplicitLeft = 640
        ExplicitWidth = 20
      end
      inherited lbDto: TLabel
        Left = 722
        Width = 20
        ExplicitLeft = 716
        ExplicitWidth = 20
      end
      inherited lbCPostal: TLabel
        Left = 1
        Top = 28
        Width = 39
        ExplicitLeft = 1
        ExplicitTop = 28
        ExplicitWidth = 39
      end
      inherited lbCPA: TLabel
        Top = 28
        Width = 21
        ExplicitTop = 28
        ExplicitWidth = 21
      end
      inherited lbLocalidad: TLabel
        Top = 28
        Width = 46
        ExplicitTop = 28
        ExplicitWidth = 46
      end
      inherited lbProvincia: TLabel
        Left = 627
        Top = 28
        Width = 44
        ExplicitLeft = 621
        ExplicitTop = 28
        ExplicitWidth = 44
      end
      inherited cmbCalle: TArtComboBox
        Width = 489
        DataSource = nil
        ExplicitWidth = 489
      end
      inherited edNumero: TEdit
        Left = 596
        ExplicitLeft = 596
      end
      inherited edPiso: TEdit
        Left = 672
        ExplicitLeft = 672
      end
      inherited edDto: TEdit
        Left = 744
        ExplicitLeft = 744
      end
      inherited edCPostal: TIntEdit
        Top = 24
        ExplicitTop = 24
      end
      inherited cmbLocalidad: TArtComboBox
        Top = 24
        Width = 357
        DataSource = nil
        ExplicitTop = 24
        ExplicitWidth = 357
      end
      inherited edProvincia: TEdit
        Left = 676
        Top = 24
        ExplicitLeft = 676
        ExplicitTop = 24
      end
      inherited edCPA: TPatternEdit
        Top = 24
        ExplicitTop = 24
      end
      inherited btnBuscar: TButton
        Left = 539
        ExplicitLeft = 539
      end
    end
    object ToolBar1: TToolBar
      Left = 435
      Top = 14
      Width = 31
      Height = 26
      Align = alNone
      Anchors = [akTop, akRight]
      BorderWidth = 1
      ButtonWidth = 25
      Caption = 'ToolBar de Hist'#243'rico de Estado'
      HotImages = dmLegales.ilByN
      Images = dmLegales.ilColor
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object tbSeleccionMediador: TToolButton
        Left = 0
        Top = 0
        Hint = 'Selecci'#243'n y Modificaci'#243'n Mediador'
        ImageIndex = 14
        OnClick = tbSeleccionMediadorClick
      end
    end
    inline fraNombreMediador: TfraCodigoDescripcion
      Left = 53
      Top = 14
      Width = 381
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 53
      ExplicitTop = 14
      ExplicitWidth = 381
      ExplicitHeight = 24
      DesignSize = (
        381
        24)
      inherited cmbDescripcion: TArtComboBox
        Left = 53
        Width = 326
        DataSource = nil
        ExplicitLeft = 53
        ExplicitWidth = 326
      end
      inherited edCodigo: TPatternEdit
        Width = 50
        MaxLength = 8
        Pattern = '0123456789'
        ExplicitWidth = 50
      end
    end
  end
  object gbReclamo: TGroupBox
    Left = 0
    Top = 310
    Width = 800
    Height = 101
    Align = alTop
    Caption = 'Reclamo'
    TabOrder = 2
    DesignSize = (
      800
      101)
    object lblMotivo: TLabel
      Left = 7
      Top = 19
      Width = 35
      Height = 13
      Caption = 'Motivo:'
    end
    object lblDiagnostico: TLabel
      Left = 389
      Top = 19
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Diagn'#243'stico:'
      ExplicitLeft = 383
    end
    object Label3: TLabel
      Left = 7
      Top = 44
      Width = 34
      Height = 13
      Caption = 'Objeto:'
    end
    object lblHecho: TLabel
      Left = 4
      Top = 64
      Width = 50
      Height = 26
      Caption = 'Mec'#225'nica '#13#10'del hecho:'
    end
    object lblPorcentajeIncapacidadDemanda: TLabel
      Left = 514
      Top = 42
      Width = 79
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Incap.Demanda:'
      ExplicitLeft = 508
    end
    object Label2: TLabel
      Left = 648
      Top = 42
      Width = 97
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Incap.seg'#250'n Peritos:'
      ExplicitLeft = 642
    end
    inline fraMotivoReclamo: TfraCodigoDescripcion
      Left = 47
      Top = 14
      Width = 340
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 47
      ExplicitTop = 14
      ExplicitWidth = 340
      DesignSize = (
        340
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 63
        Width = 275
        DataSource = nil
        ExplicitLeft = 63
        ExplicitWidth = 275
      end
      inherited edCodigo: TPatternEdit
        Pattern = '0123456789'
      end
    end
    inline fraDiagnostico: TfraCodigoDescripcion
      Left = 451
      Top = 14
      Width = 345
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 451
      ExplicitTop = 14
      ExplicitWidth = 345
      DesignSize = (
        345
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 63
        Width = 280
        DataSource = nil
        ExplicitLeft = 63
        ExplicitWidth = 280
      end
      inherited edCodigo: TPatternEdit
        Pattern = '0123456789'
      end
    end
    inline fraObjetoReclamo: TfraCodigoDescripcion
      Left = 47
      Top = 39
      Width = 340
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 47
      ExplicitTop = 39
      ExplicitWidth = 340
      DesignSize = (
        340
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 63
        Width = 275
        DataSource = nil
        ExplicitLeft = 63
        ExplicitWidth = 275
      end
      inherited edCodigo: TPatternEdit
        Pattern = '0123456789'
      end
    end
    object edHecho: TMemo
      Left = 57
      Top = 65
      Width = 739
      Height = 26
      Anchors = [akLeft, akTop, akRight]
      MaxLength = 2048
      TabOrder = 6
    end
    object chkIncapacidadIndeterminada: TCheckBox
      Left = 389
      Top = 42
      Width = 118
      Height = 15
      Alignment = taLeftJustify
      Anchors = [akTop, akRight]
      Caption = 'Incap. Indeterminada '
      TabOrder = 3
      OnClick = chkIncapacidadIndeterminadaClick
    end
    object edPorcentajeIncapacidadDemanda: TCurrencyEdit
      Left = 595
      Top = 39
      Width = 46
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      Anchors = [akTop, akRight]
      MaxValue = 100.000000000000000000
      TabOrder = 4
    end
    object edPorcentajeIncapacidadSegunPerito: TCurrencyEdit
      Left = 747
      Top = 39
      Width = 46
      Height = 21
      Margins.Left = 1
      Margins.Top = 1
      AutoSize = False
      DisplayFormat = ' ,0.00;- ,0.00'
      Anchors = [akTop, akRight]
      MaxValue = 100.000000000000000000
      TabOrder = 5
    end
  end
  object pnDetalle: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 414
    Width = 794
    Height = 286
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Constraints.MinHeight = 189
    Constraints.MinWidth = 794
    TabOrder = 3
    object pgDetalles: TPageControl
      Left = 0
      Top = 0
      Width = 794
      Height = 286
      ActivePage = tsPagos
      Align = alClient
      TabOrder = 0
      OnChange = pgDetallesChange
      object tbOrigenSiniestro: TTabSheet
        Caption = 'Origen Demanda'
        ImageIndex = 3
        DesignSize = (
          786
          258)
        object chkAseguradoProvinciaART: TCheckBox
          Left = 0
          Top = 4
          Width = 141
          Height = 15
          Alignment = taLeftJustify
          Caption = 'Asegurado Provincia ART'
          TabOrder = 0
        end
        object pcOrigenDemanda: TPageControl
          Left = 0
          Top = 22
          Width = 786
          Height = 234
          ActivePage = tbAsegurado
          Anchors = [akLeft, akTop, akRight, akBottom]
          MultiLine = True
          TabOrder = 1
          TabPosition = tpRight
          object tbAsegurado: TTabSheet
            Caption = 'Asegurado'
            DesignSize = (
              759
              226)
            object lblFechaAccidente: TLabel
              Left = 4
              Top = 32
              Width = 60
              Height = 13
              Caption = 'F.Accidente:'
            end
            object lblFechaIngreso: TLabel
              Left = 163
              Top = 32
              Width = 47
              Height = 13
              Caption = 'F.Ingreso:'
            end
            object Label4: TLabel
              Left = 315
              Top = 32
              Width = 45
              Height = 13
              Caption = 'F.Egreso:'
            end
            object lblFechaNacimiento: TLabel
              Left = 459
              Top = 32
              Width = 65
              Height = 13
              Caption = 'F.Nacimiento:'
            end
            object lbSalario: TLabel
              Left = 620
              Top = 32
              Width = 35
              Height = 13
              Caption = 'Salario:'
            end
            object lblCuit: TLabel
              Left = 4
              Top = 81
              Width = 21
              Height = 13
              Caption = 'Cuit:'
            end
            object lblTarea: TLabel
              Left = 162
              Top = 57
              Width = 31
              Height = 13
              Caption = 'Tarea:'
            end
            object lblAbogadoActora: TLabel
              Left = 4
              Top = 102
              Width = 46
              Height = 26
              Caption = 'Abogado '#13#10'Actora:'
            end
            object lblAbogadoEmpresa: TLabel
              Left = 340
              Top = 102
              Width = 46
              Height = 26
              Caption = 'Abogado '#13#10'Empresa:'
            end
            object lbFRevMedica: TLabel
              Left = 553
              Top = 57
              Width = 103
              Height = 13
              Caption = 'F.Revisaci'#243'n Medica:'
              Visible = False
            end
            object CUIL: TLabel
              Left = 4
              Top = 7
              Width = 24
              Height = 13
              Caption = 'CUIL'
            end
            object ToolBar2: TToolBar
              Left = 718
              Top = 2
              Width = 31
              Height = 26
              Align = alNone
              Anchors = [akTop, akRight]
              BorderWidth = 1
              ButtonWidth = 25
              Caption = 'ToolBar de Hist'#243'rico de Estado'
              HotImages = dmLegales.ilByN
              Images = dmLegales.ilColor
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              object tbSiniestro: TToolButton
                Left = 0
                Top = 0
                Hint = 'Seleccionar Siniestro'
                ImageIndex = 14
                OnClick = tbSiniestroClick
              end
            end
            object edFechaAccidente: TDateComboBox
              Left = 67
              Top = 29
              Width = 88
              Height = 21
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object edFechaIngreso: TDateComboBox
              Left = 213
              Top = 29
              Width = 88
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edFechaEgreso: TDateComboBox
              Left = 363
              Top = 29
              Width = 88
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edFechaNacimiento: TDateComboBox
              Left = 526
              Top = 29
              Width = 88
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edSalario: TCurrencyEdit
              Left = 657
              Top = 29
              Width = 79
              Height = 21
              Margins.Left = 1
              Margins.Top = 1
              AutoSize = False
              DisplayFormat = '$,0.00;-$,0.00'
              TabOrder = 6
            end
            inline fraEmpresaTrabajador: TfraEmpresa
              Left = 55
              Top = 78
              Width = 508
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 11
              ExplicitLeft = 55
              ExplicitTop = 78
              ExplicitWidth = 508
              ExplicitHeight = 21
              DesignSize = (
                508
                21)
              inherited lbContrato: TLabel
                Left = 404
                ExplicitLeft = 404
              end
              inherited edContrato: TIntEdit
                Left = 451
                ExplicitLeft = 451
              end
              inherited cmbRSocial: TArtComboBox
                Width = 269
                DataSource = nil
                ExplicitWidth = 269
              end
            end
            object edTarea: TEdit
              Left = 198
              Top = 54
              Width = 170
              Height = 21
              TabOrder = 8
            end
            object chkDemandaEmpleador: TCheckBox
              Left = 576
              Top = 80
              Width = 148
              Height = 15
              Alignment = taLeftJustify
              Caption = 'Demanda el Empleador'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
            end
            object chkComisionMedica: TCheckBox
              Left = 4
              Top = 56
              Width = 151
              Height = 15
              Alignment = taLeftJustify
              Caption = 'Fue a Comisi'#243'n M'#233'dica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
            object ToolBar3: TToolBar
              Left = 309
              Top = 100
              Width = 32
              Height = 27
              Align = alNone
              BorderWidth = 1
              ButtonWidth = 25
              Caption = 'ToolBar'
              HotImages = dmLegales.ilByN
              Images = dmLegales.ilColor
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              object tbAbogadoActora: TToolButton
                Left = 0
                Top = 0
                Hint = 'Modificar'
                ImageIndex = 14
                OnClick = tbAbogadoActoraClick
              end
            end
            inline fraAbogadoActora: TfraAbogadosLegales
              Left = 54
              Top = 103
              Width = 256
              Height = 23
              TabOrder = 13
              ExplicitLeft = 54
              ExplicitTop = 103
              ExplicitWidth = 256
              inherited cmbDescripcion: TArtComboBox
                Left = 53
                Width = 204
                DataSource = nil
                ExplicitLeft = 53
                ExplicitWidth = 204
              end
              inherited edCodigo: TPatternEdit
                Width = 50
                Pattern = '0123456789'
                ExplicitWidth = 50
              end
              inherited dsDatos: TDataSource
                Left = 15
              end
            end
            inline fraAbogadoEmpresa: TfraAbogadosLegales
              Left = 387
              Top = 102
              Width = 272
              Height = 23
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 15
              ExplicitLeft = 387
              ExplicitTop = 102
              ExplicitWidth = 272
              DesignSize = (
                272
                23)
              inherited cmbDescripcion: TArtComboBox
                Left = 53
                Width = 216
                DataSource = nil
                ExplicitLeft = 53
                ExplicitWidth = 216
              end
              inherited edCodigo: TPatternEdit
                Width = 50
                Pattern = '0123456789'
                ExplicitWidth = 50
              end
              inherited dsDatos: TDataSource
                Left = 15
              end
            end
            object ToolBar4: TToolBar
              Left = 658
              Top = 101
              Width = 31
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
              TabOrder = 16
              object tbAbogadoEmpresa: TToolButton
                Left = 0
                Top = 0
                Hint = 'Modificar'
                ImageIndex = 14
                OnClick = tbAbogadoEmpresaClick
              end
            end
            object chkAceptaRevisacionMedica: TCheckBox
              Left = 378
              Top = 57
              Width = 171
              Height = 15
              Alignment = taLeftJustify
              Caption = 'Acepta Revisaci'#243'n M'#233'dica'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              OnClick = chkAceptaRevisacionMedicaClick
            end
            object edFechaRevisacionMed: TDateComboBox
              Left = 658
              Top = 54
              Width = 80
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              Visible = False
            end
            inline fraTrabajador: TfraTrabajadorSiniestro
              Left = 38
              Top = 4
              Width = 677
              Height = 22
              Anchors = [akLeft, akTop, akRight]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TabStop = True
              ExplicitLeft = 38
              ExplicitTop = 4
              ExplicitWidth = 677
              ExplicitHeight = 22
              DesignSize = (
                677
                22)
              inherited lbSiniestro: TLabel
                Left = 511
                ExplicitLeft = 511
              end
              inherited cmbNombre: TArtComboBox
                Width = 424
                ExplicitWidth = 424
              end
              inherited edSiniestro: TSinEdit
                Left = 576
                Hint = 'C'#243'digo de Siniestro'
                ExplicitLeft = 576
              end
              inherited ToolBar: TToolBar
                Left = 553
                Top = 0
                ExplicitLeft = 553
                ExplicitTop = 0
              end
              inherited ImageList: TImageList
                Bitmap = {
                  494C010101002400280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
                  0000000000003600000028000000400000001000000001002000000000000010
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000808080008080800000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000080808000F0FBFF00A0C8DF0080808000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000080808000F0FBFF00A0C8DF00F0FBFF00A0C8DF00808080000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000808000A0C8DF00F0FBFF00C0C0C000A0A0A000C0C0C0008080
                  8000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000080808000C0C0C000F0FBFF00C0C0C000A0A0A000F0FBFF00A0C8DF00F0FB
                  FF00808080000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000008080
                  800080808000F0FBFF00C0C0C000A0A0A000F0FBFF00A0C8DF00F0FBFF00A0C8
                  DF00C0C0C0008080800000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000008080
                  800080808000C0C0C000A0A0A000F0FBFF00A0C8DF00F0FBFF00A0C8DF00C0C0
                  C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000008080
                  80008080800080808000C0C0C000A0C8DF00F0FBFF00A0C8DF00C0C0C000C0C0
                  C000C0C0C0000080800000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000A0C8
                  DF00A0C8DF008080800080808000F0FBFF00C0C0C000C0C0C000C0C0C000A0C8
                  DF00808080000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000A0C8
                  DF00C0C0C000C0C0C0008080800080808000C0C0C00000808000808080008080
                  8000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000A0C8DF00C0C0
                  C000C0C0C000C0C0C00080808000808080008080800080808000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000A0C8DF00C0C0C0008080
                  8000A0C8DF000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000A0C8DF00A0C8DF0080808000A0C8
                  DF00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000008080800080808000A0C8DF000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
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
                  000000000000000000000000FFFFFF00FFFF000000000000FE7F000000000000
                  FC3F000000000000F81F000000000000F80F000000000000F007000000000000
                  E003000000000000E001000000000000E001000000000000E003000000000000
                  E00F000000000000C03F00000000000087FF0000000000000FFF000000000000
                  1FFF000000000000FFFF00000000000000000000000000000000000000000000
                  000000000000}
              end
            end
          end
          object tbOtro: TTabSheet
            Caption = 'Otro'
            ImageIndex = 1
            object CoolBar1: TCoolBar
              Left = 0
              Top = 0
              Width = 759
              Height = 29
              Bands = <
                item
                  Control = ToolBar5
                  ImageIndex = -1
                  MinHeight = 27
                  Width = 753
                end>
              object ToolBar5: TToolBar
                Left = 9
                Top = 0
                Width = 746
                Height = 27
                BorderWidth = 1
                Caption = 'ToolBar'
                HotImages = dmLegales.ilByN
                Images = dmLegales.ilColor
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
                object tbNuevoOrigen: TToolButton
                  Left = 0
                  Top = 0
                  Hint = 'Nuevo'
                  ImageIndex = 6
                  OnClick = tbNuevoOrigenClick
                end
                object tbModificarOrigenDemanda: TToolButton
                  Left = 23
                  Top = 0
                  Hint = 'Modificar'
                  ImageIndex = 7
                  OnClick = tbModificarOrigenDemandaClick
                end
                object tbEliminarOrigenDemanda: TToolButton
                  Left = 46
                  Top = 0
                  Caption = 'Do&wn'
                  ImageIndex = 8
                  OnClick = tbEliminarOrigenDemandaClick
                end
              end
            end
            object dbgRelcamante: TRxDBGrid
              Left = 0
              Top = 29
              Width = 759
              Height = 197
              Align = alClient
              DataSource = dsOrigenDemanda
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDblClick = dbgRelcamanteDblClick
              RowColor2 = 16776176
              OnGetCellParams = dbgRelcamanteGetCellParams
              Columns = <
                item
                  Expanded = False
                  FieldName = 'OM_DNI'
                  Title.Caption = 'DNI'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OM_NOMBRE'
                  Title.Caption = 'Nombre'
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DOMICILIO'
                  Title.Caption = 'Domicilio'
                  Width = 300
                  Visible = True
                end>
            end
            object fpOrigenDemanda: TFormPanel
              Left = 123
              Top = 77
              Width = 558
              Height = 163
              HelpContext = 7
              Caption = 'Origen de Demanda'
              FormWidth = 0
              FormHeigth = 0
              FormLeft = 0
              FormTop = 0
              BorderStyle = bsDialog
              Position = poScreenCenter
              DesignSize = (
                558
                163)
              object Bevel1: TBevel
                Left = 4
                Top = 130
                Width = 551
                Height = 4
                Anchors = [akLeft, akRight, akBottom]
                Shape = bsTopLine
              end
              object lbDNI: TLabel
                Left = 8
                Top = 10
                Width = 22
                Height = 13
                Caption = 'DNI:'
              end
              object lbNombre: TLabel
                Left = 8
                Top = 34
                Width = 40
                Height = 13
                Caption = 'Nombre:'
              end
              object btnAceptarOrigenDemanda: TButton
                Left = 396
                Top = 134
                Width = 75
                Height = 25
                Anchors = [akRight, akBottom]
                Caption = '&Aceptar'
                TabOrder = 3
                OnClick = btnAceptarOrigenDemandaClick
              end
              object btnCancelarOrigenDemanda: TButton
                Left = 474
                Top = 134
                Width = 75
                Height = 25
                Anchors = [akRight, akBottom]
                Cancel = True
                Caption = '&Cancelar'
                ModalResult = 2
                TabOrder = 4
              end
              object edNroDocumentoOrigenDemanda: TPatternEdit
                Left = 56
                Top = 5
                Width = 97
                Height = 21
                MaxLength = 8
                TabOrder = 0
              end
              object edNombreOrigenDemanda: TEdit
                Left = 56
                Top = 30
                Width = 495
                Height = 21
                CharCase = ecUpperCase
                MaxLength = 250
                TabOrder = 1
              end
              object GroupBox1: TGroupBox
                Left = 4
                Top = 55
                Width = 550
                Height = 71
                Caption = 'Domicilio'
                TabOrder = 2
                DesignSize = (
                  550
                  71)
                inline fraDomicilioOrigenDemanda: TfraDomicilio
                  Left = 8
                  Top = 18
                  Width = 537
                  Height = 51
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  ExplicitLeft = 8
                  ExplicitTop = 18
                  ExplicitWidth = 537
                  DesignSize = (
                    537
                    51)
                  inherited lbCalle: TLabel
                    Left = 1
                    ExplicitLeft = 1
                  end
                  inherited lbNro: TLabel
                    Left = 322
                    ExplicitLeft = 322
                  end
                  inherited lbPiso: TLabel
                    Left = 394
                    Width = 20
                    ExplicitLeft = 394
                    ExplicitWidth = 20
                  end
                  inherited lbDto: TLabel
                    Left = 470
                    Width = 20
                    ExplicitLeft = 470
                    ExplicitWidth = 20
                  end
                  inherited lbCPostal: TLabel
                    Left = 1
                    Top = 28
                    Width = 39
                    ExplicitLeft = 1
                    ExplicitTop = 28
                    ExplicitWidth = 39
                  end
                  inherited lbCPA: TLabel
                    Top = 28
                    Width = 21
                    ExplicitTop = 28
                    ExplicitWidth = 21
                  end
                  inherited lbLocalidad: TLabel
                    Top = 28
                    Width = 46
                    ExplicitTop = 28
                    ExplicitWidth = 46
                  end
                  inherited lbProvincia: TLabel
                    Left = 375
                    Top = 28
                    Width = 44
                    ExplicitLeft = 375
                    ExplicitTop = 28
                    ExplicitWidth = 44
                  end
                  inherited cmbCalle: TArtComboBox
                    Width = 237
                    DataSource = nil
                    ExplicitWidth = 237
                  end
                  inherited edNumero: TEdit
                    Left = 344
                    ExplicitLeft = 344
                  end
                  inherited edPiso: TEdit
                    Left = 420
                    ExplicitLeft = 420
                  end
                  inherited edDto: TEdit
                    Left = 492
                    ExplicitLeft = 492
                  end
                  inherited edCPostal: TIntEdit
                    Top = 24
                    ExplicitTop = 24
                  end
                  inherited cmbLocalidad: TArtComboBox
                    Top = 24
                    Width = 105
                    DataSource = nil
                    ExplicitTop = 24
                    ExplicitWidth = 105
                  end
                  inherited edProvincia: TEdit
                    Left = 424
                    Top = 24
                    ExplicitLeft = 424
                    ExplicitTop = 24
                  end
                  inherited edCPA: TPatternEdit
                    Top = 24
                    ExplicitTop = 24
                  end
                  inherited btnBuscar: TButton
                    Left = 287
                    ExplicitLeft = 287
                  end
                end
              end
            end
          end
        end
        object chkNoSiniestro: TCheckBox
          Left = 152
          Top = 4
          Width = 97
          Height = 17
          Alignment = taLeftJustify
          Caption = 'No Siniestro'
          TabOrder = 2
          OnClick = chkNoSiniestroClick
        end
        inline fraNoSiniestro: TfraCodigoDescripcion
          Left = 267
          Top = 0
          Width = 266
          Height = 23
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 3
          ExplicitLeft = 267
          ExplicitWidth = 266
          DesignSize = (
            266
            23)
          inherited cmbDescripcion: TArtComboBox
            Left = 63
            Width = 201
            DataSource = nil
            ExplicitLeft = 63
            ExplicitWidth = 201
          end
        end
      end
      object tbEventosSeguimiento: TTabSheet
        Caption = 'Eventos de Seguimiento'
        ImageIndex = 2
        object dbgEventosJuicioEnTramite: TRxDBGrid
          Left = 0
          Top = 29
          Width = 786
          Height = 229
          Align = alClient
          DataSource = dsEventoMediacion
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = dbgEventosJuicioEnTramiteDblClick
          RowColor2 = 16776176
          OnGetCellParams = dbgEventosJuicioEnTramiteGetCellParams
          Columns = <
            item
              Expanded = False
              FieldName = 'TE_DESCRIPCION'
              Title.Caption = 'Evento'
              Width = 279
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EM_FECHA'
              Title.Caption = 'Fecha Audiencia'
              Width = 146
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EM_OBSERVACIONES'
              Title.Caption = 'Observaciones'
              Width = 229
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BO_NOMBRE'
              Title.Caption = 'Abogado'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SE_NOMBRE'
              Title.Caption = 'Usuario'
              Width = 68
              Visible = True
            end>
        end
        object cbEventos: TCoolBar
          Left = 0
          Top = 0
          Width = 786
          Height = 29
          Bands = <
            item
              Control = tbrEventos
              ImageIndex = -1
              MinHeight = 27
              Width = 780
            end>
          object tbrEventos: TToolBar
            Left = 9
            Top = 0
            Width = 773
            Height = 27
            BorderWidth = 1
            Caption = 'ToolBar'
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
            object tbOrdenarEventos: TToolButton
              Left = 69
              Top = 0
              Hint = 'Ordenar'
              Caption = 'Ordenar'
              ImageIndex = 2
              OnClick = tbOrdenarEventosClick
            end
          end
        end
        object fpEventoSeguimiento: TFormPanel
          Left = 284
          Top = 146
          Width = 416
          Height = 235
          HelpContext = 7
          Caption = 'Datos de Audiencia'
          FormWidth = 0
          FormHeigth = 0
          FormLeft = 0
          FormTop = 0
          BorderStyle = bsDialog
          Position = poScreenCenter
          DesignSize = (
            416
            235)
          object lbAccion: TLabel
            Left = 9
            Top = 34
            Width = 37
            Height = 13
            Caption = 'Evento:'
          end
          object bvSeparadorBotonesEventos: TBevel
            Left = 4
            Top = 202
            Width = 409
            Height = 4
            Anchors = [akLeft, akRight, akBottom]
            Shape = bsTopLine
          end
          object lblFechaEvento: TLabel
            Left = 8
            Top = 10
            Width = 83
            Height = 13
            Caption = 'Fecha Audiencia:'
          end
          object lblVencimientoEvento: TLabel
            Left = 211
            Top = 10
            Width = 76
            Height = 13
            Caption = 'Hora Audiencia:'
          end
          object lblObservacuinesEvento: TLabel
            Left = 8
            Top = 59
            Width = 74
            Height = 13
            Caption = 'Observaciones:'
          end
          object Label5: TLabel
            Left = 9
            Top = 123
            Width = 46
            Height = 13
            Caption = 'Abogado:'
          end
          object Label7: TLabel
            Left = 8
            Top = 150
            Width = 79
            Height = 13
            Caption = 'Usuario Legales:'
          end
          object lblArchivosAsociados: TLabel
            Left = 9
            Top = 177
            Width = 64
            Height = 13
            Caption = 'Asociar Doc.:'
          end
          inline fraTipoEvento: TfraCodigoDescripcion
            Left = 103
            Top = 30
            Width = 309
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            ExplicitLeft = 103
            ExplicitTop = 30
            ExplicitWidth = 309
            DesignSize = (
              309
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 242
              DataSource = nil
              ExplicitWidth = 242
            end
            inherited edCodigo: TPatternEdit
              Pattern = '0123456789'
            end
          end
          object btnAccAceptar: TButton
            Left = 254
            Top = 206
            Width = 75
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = '&Aceptar'
            TabOrder = 4
            OnClick = btnAccAceptarClick
          end
          object btnAccCancelar: TButton
            Left = 332
            Top = 206
            Width = 75
            Height = 25
            Anchors = [akRight, akBottom]
            Cancel = True
            Caption = '&Cancelar'
            ModalResult = 2
            TabOrder = 5
          end
          object mObservacionesEvento: TRichEdit
            Left = 104
            Top = 56
            Width = 304
            Height = 60
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            PlainText = True
            TabOrder = 3
          end
          inline fraAbogadoEventos: TfraAbogadosLegales
            Left = 102
            Top = 120
            Width = 307
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 6
            ExplicitLeft = 102
            ExplicitTop = 120
            ExplicitWidth = 307
            DesignSize = (
              307
              23)
            inherited cmbDescripcion: TArtComboBox
              Left = 53
              Width = 255
              DataSource = nil
              ExplicitLeft = 53
              ExplicitWidth = 255
            end
            inherited edCodigo: TPatternEdit
              Width = 50
              Pattern = '0123456789'
              ExplicitWidth = 50
            end
            inherited dsDatos: TDataSource
              Left = 15
            end
          end
          inline fraUsuarioLegalesEvento: TfraCodigoDescripcion
            Left = 102
            Top = 145
            Width = 309
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 7
            ExplicitLeft = 102
            ExplicitTop = 145
            ExplicitWidth = 309
            DesignSize = (
              309
              23)
            inherited cmbDescripcion: TArtComboBox
              Left = 63
              Width = 244
              DataSource = nil
              ExplicitLeft = 63
              ExplicitWidth = 244
            end
          end
          object edHora: TDateTimePicker
            Left = 290
            Top = 6
            Width = 88
            Height = 21
            Date = 39785.958333333340000000
            Time = 39785.958333333340000000
            Kind = dtkTime
            TabOrder = 1
          end
          object edFechaEventoDesde: TDateComboBox
            Left = 104
            Top = 6
            Width = 88
            Height = 21
            Date = 39785.000000000000000000
            Text = '03/12/2008'
            TabOrder = 0
          end
          object edtArchivosAsociados: TEdit
            Left = 103
            Top = 174
            Width = 244
            Height = 21
            Color = 16776176
            ReadOnly = True
            TabOrder = 8
          end
          object tbrVerArchivosAsociados: TToolBar
            Left = 353
            Top = 173
            Width = 56
            Height = 27
            Align = alNone
            Anchors = [akTop, akRight]
            BorderWidth = 1
            ButtonWidth = 25
            HotImages = dmLegales.ilColor
            Images = dmLegales.ilByN
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            object tbSeleccionArchivosAsociar: TToolButton
              Left = 0
              Top = 0
              Hint = 'Seleccionar Archivos'
              ImageIndex = 26
              OnClick = tbSeleccionArchivosAsociarClick
            end
            object tbAsignarDoc: TToolButton
              Left = 25
              Top = 0
              Hint = 'Asignar Doc.'
              Caption = 'tbAsignarDoc'
              ImageIndex = 23
              OnClick = tbAsignarDocClick
            end
          end
        end
      end
      object tbImportes: TTabSheet
        Caption = 'Importes'
        ImageIndex = 6
        DesignSize = (
          786
          258)
        object lblMontoOfrecido: TLabel
          Left = 6
          Top = 9
          Width = 76
          Height = 13
          Caption = 'Monto Ofrecido:'
        end
        object lblFechaOfrecimiento: TLabel
          Left = 162
          Top = 9
          Width = 95
          Height = 13
          Caption = 'Fecha Ofrecimiento:'
        end
        object lblHonorarioActora: TLabel
          Left = 184
          Top = 35
          Width = 88
          Height = 13
          Caption = 'Honorarios Actora:'
        end
        object lblMontoAcordado: TLabel
          Left = 6
          Top = 35
          Width = 82
          Height = 13
          Caption = 'Monto Acordado:'
        end
        object lblHonorarioMediador: TLabel
          Left = 361
          Top = 35
          Width = 101
          Height = 13
          Caption = 'Honorarios Mediador:'
        end
        object lblMulta: TLabel
          Left = 555
          Top = 35
          Width = 29
          Height = 13
          Caption = 'Multa:'
        end
        object Label8: TLabel
          Left = 387
          Top = 9
          Width = 90
          Height = 13
          Caption = 'Monto Reclamado:'
        end
        object edMontoOfrecido: TCurrencyEdit
          Left = 92
          Top = 6
          Width = 63
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '$,0.00;-$,0.00'
          TabOrder = 0
        end
        object edFechaOfrecimiento: TDateComboBox
          Left = 260
          Top = 6
          Width = 88
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object ToolBar6: TToolBar
          Left = 354
          Top = 4
          Width = 32
          Height = 26
          Align = alNone
          BorderWidth = 1
          ButtonWidth = 25
          Caption = 'ToolBar de Hist'#243'rico de Estado'
          HotImages = dmLegales.ilByN
          Images = dmLegales.ilColor
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          object tbHistoricosImportes: TToolButton
            Left = 0
            Top = 0
            Hint = 'Hist'#243'rico Importes'
            ImageIndex = 16
            OnClick = tbHistoricosImportesClick
          end
        end
        object edHonorarioActora: TCurrencyEdit
          Left = 274
          Top = 31
          Width = 82
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 16776176
          DisplayFormat = '$,0.00;-$,0.00'
          Enabled = False
          TabOrder = 3
        end
        object edMontoAcordado: TCurrencyEdit
          Left = 92
          Top = 31
          Width = 85
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 16776176
          DisplayFormat = '$,0.00;-$,0.00'
          Enabled = False
          TabOrder = 2
        end
        object edHonorarioMediador: TCurrencyEdit
          Left = 464
          Top = 31
          Width = 88
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 16776176
          DisplayFormat = '$,0.00;-$,0.00'
          Enabled = False
          TabOrder = 4
        end
        object edMulta: TCurrencyEdit
          Left = 586
          Top = 31
          Width = 82
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          Color = 16776176
          DisplayFormat = '$,0.00;-$,0.00'
          Enabled = False
          TabOrder = 5
        end
        object pnlImportes: TPanel
          Left = 0
          Top = 55
          Width = 786
          Height = 204
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 6
          object cbEdicionImportesRegulados: TCoolBar
            Left = 1
            Top = 1
            Width = 784
            Height = 29
            Bands = <
              item
                Control = tbImportesRegulados
                ImageIndex = -1
                MinHeight = 27
                Width = 778
              end>
            object tbImportesRegulados: TToolBar
              Left = 9
              Top = 0
              Width = 771
              Height = 27
              BorderWidth = 1
              Caption = 'ToolBar'
              HotImages = dmLegales.ilColor
              Images = dmLegales.ilByN
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              object tbIngresoValor: TToolButton
                Left = 0
                Top = 0
                Hint = 'Nuevo Importe'
                ImageIndex = 6
                OnClick = tbIngresoValorClick
              end
              object tbEdicionValor: TToolButton
                Left = 23
                Top = 0
                Hint = 'Modificar Importe'
                ImageIndex = 7
                OnClick = tbEdicionValorClick
              end
              object tbEliminarValor: TToolButton
                Left = 46
                Top = 0
                Hint = 'Eliminar Importe'
                ImageIndex = 8
                OnClick = tbEliminarValorClick
              end
            end
          end
          object dbgImportesRegulados: TRxDBGrid
            Left = 1
            Top = 30
            Width = 784
            Height = 173
            Align = alClient
            DataSource = dsImportes
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDblClick = dbgImportesReguladosDblClick
            RowColor2 = 16776176
            OnGetCellParams = dbgImportesReguladosGetCellParams
            Columns = <
              item
                Expanded = False
                FieldName = 'IM_ID'
                Title.Alignment = taCenter
                Title.Caption = 'Nro.'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IM_DETALLE'
                Title.Alignment = taCenter
                Title.Caption = 'Detalle'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IM_IMPORTE'
                Title.Alignment = taCenter
                Title.Caption = 'Importe c/Ret'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IM_IMPORTESINRET'
                Title.Alignment = taCenter
                Title.Caption = 'Importe s/Ret'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'APLICACION'
                Title.Alignment = taCenter
                Title.Caption = 'Aplicado a'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IM_NROPAGO'
                Title.Alignment = taCenter
                Title.Caption = 'N'#186' de pago'
                Visible = True
              end>
          end
          object fpImportes: TFormPanel
            Left = 155
            Top = 73
            Width = 446
            Height = 163
            HelpContext = 7
            Caption = 'Importes'
            FormWidth = 0
            FormHeigth = 0
            FormLeft = 0
            FormTop = 0
            BorderStyle = bsDialog
            Position = poScreenCenter
            DesignSize = (
              446
              163)
            object Bevel2: TBevel
              Left = 4
              Top = 130
              Width = 439
              Height = 4
              Anchors = [akLeft, akRight, akBottom]
              Shape = bsTopLine
            end
            object lblDetalle: TLabel
              Left = 8
              Top = 9
              Width = 36
              Height = 13
              Caption = 'Detalle:'
              FocusControl = edDetalleImportes
            end
            object lblAplicacion: TLabel
              Left = 8
              Top = 36
              Width = 53
              Height = 13
              Caption = 'Aplicado a:'
            end
            object btAceptaraImportes: TButton
              Left = 284
              Top = 134
              Width = 75
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = '&Aceptar'
              TabOrder = 3
              OnClick = btAceptaraImportesClick
            end
            object btCancelarImportes: TButton
              Left = 362
              Top = 134
              Width = 75
              Height = 25
              Anchors = [akRight, akBottom]
              Cancel = True
              Caption = '&Cancelar'
              ModalResult = 2
              TabOrder = 4
            end
            object edDetalleImportes: TEdit
              Left = 84
              Top = 6
              Width = 349
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              MaxLength = 249
              TabOrder = 0
            end
            object gbLiquidacion: TGroupBox
              Left = 6
              Top = 59
              Width = 433
              Height = 49
              Caption = ' Valores para Liquidaci'#243'n '
              TabOrder = 2
              object lblImporteSRet: TLabel
                Left = 9
                Top = 21
                Width = 107
                Height = 13
                Caption = 'Importe sin Ret.Gcias.:'
                FocusControl = edImporteSinRet
              end
              object lblImporteSinRet: TLabel
                Left = 228
                Top = 21
                Width = 109
                Height = 13
                Caption = 'Importe con Ret.Gcias:'
              end
              object edImporteSinRet: TCurrencyEdit
                Left = 120
                Top = 16
                Width = 85
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                AutoSize = False
                DisplayFormat = '$,0.00;-$,0.00'
                MaxValue = 99999999.990000000000000000
                TabOrder = 0
              end
              object edImporteConRet: TCurrencyEdit
                Left = 339
                Top = 16
                Width = 85
                Height = 21
                Margins.Left = 1
                Margins.Top = 1
                AutoSize = False
                DisplayFormat = '$,0.00;-$,0.00'
                MaxValue = 99999999.990000000000000000
                TabOrder = 1
              end
            end
            object cbAplicacionImportes: TExComboBox
              Left = 84
              Top = 33
              Width = 262
              Height = 22
              Style = csOwnerDrawFixed
              TabOrder = 1
              Items.Strings = (
                'A=Monto Acordado'
                'H=Honorarios Parte Actora'
                'M=Honorarios Mediador'
                'U=Multa')
              ItemIndex = -1
              Options = [coShowValues, coGridLines]
              ValueWidth = 64
            end
          end
        end
        object edMontoReclamado: TCurrencyEdit
          Left = 482
          Top = 6
          Width = 70
          Height = 21
          Margins.Left = 1
          Margins.Top = 1
          AutoSize = False
          DisplayFormat = '$,0.00;-$,0.00'
          TabOrder = 8
          OnChange = edMontoReclamadoChange
        end
      end
      object tbReserva: TTabSheet
        Caption = 'Reserva'
        ImageIndex = 6
        object GroupBox2: TGroupBox
          Left = 0
          Top = 0
          Width = 786
          Height = 78
          Align = alTop
          Caption = ' Reservas Asignadas'
          TabOrder = 0
          DesignSize = (
            786
            78)
          object Label10: TLabel
            Left = 11
            Top = 20
            Width = 78
            Height = 13
            Caption = 'Reserva Capital:'
          end
          object Label11: TLabel
            Left = 202
            Top = 20
            Width = 97
            Height = 13
            Caption = 'Reserva Honorarios:'
          end
          object Label12: TLabel
            Left = 11
            Top = 51
            Width = 56
            Height = 13
            Caption = 'RSPL ILP:  '
          end
          object Label13: TLabel
            Left = 261
            Top = 51
            Width = 78
            Height = 13
            Caption = 'RSPL Muertes:  '
          end
          object Label14: TLabel
            Left = 475
            Top = 51
            Width = 75
            Height = 13
            Caption = 'Total Reservas:'
          end
          object ToolBar7: TToolBar
            Left = 836
            Top = 15
            Width = 53
            Height = 26
            Align = alNone
            Anchors = [akTop, akRight]
            BorderWidth = 1
            Caption = 'ToolBar'
            HotImages = dmLegales.ilByN
            Images = dmLegales.ilColor
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object ToolButton1: TToolButton
              Left = 0
              Top = 0
              Hint = 'Aprobar Reservas'
              Caption = 'Aprobar Reservas'
              ImageIndex = 19
            end
            object ToolButton2: TToolButton
              Left = 23
              Top = 0
              Caption = 'Hist'#243'rico de Reservas'
              ImageIndex = 14
            end
          end
          object ToolBar8: TToolBar
            Left = 422
            Top = 13
            Width = 29
            Height = 26
            Align = alNone
            Anchors = [akTop, akRight]
            BorderWidth = 1
            Caption = 'ToolBar'
            HotImages = dmLegales.ilByN
            Images = dmLegales.ilColor
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            object tbHistoricoReserva: TToolButton
              Left = 0
              Top = 0
              Hint = 'Historico Reserva'
              ImageIndex = 14
            end
          end
          object edReservaCapital: TCurrencyEdit
            Left = 102
            Top = 16
            Width = 91
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '$,0.00;-$,0.00'
            TabOrder = 2
          end
          object edReservaHonorarios: TCurrencyEdit
            Left = 306
            Top = 16
            Width = 91
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            DisplayFormat = '$,0.00;-$,0.00'
            TabOrder = 3
          end
          object edRSPLILP: TCurrencyEdit
            Left = 119
            Top = 47
            Width = 92
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = 16776176
            DisplayFormat = '$,0.00;-$,0.00'
            Enabled = False
            ReadOnly = True
            TabOrder = 4
          end
          object edRSPLMuertes: TCurrencyEdit
            Left = 356
            Top = 47
            Width = 93
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = 16776176
            DisplayFormat = '$,0.00;-$,0.00'
            Enabled = False
            ReadOnly = True
            TabOrder = 5
          end
          object edTotalReservas: TCurrencyEdit
            Left = 564
            Top = 47
            Width = 93
            Height = 21
            Margins.Left = 1
            Margins.Top = 1
            AutoSize = False
            Color = 16776176
            DisplayFormat = '$,0.00;-$,0.00'
            Enabled = False
            ReadOnly = True
            TabOrder = 6
          end
        end
      end
      object tsPagos: TTabSheet
        Caption = 'Pagos'
        ImageIndex = 3
        object dbgPagosEfectuados: TRxDBGrid
          Left = 0
          Top = 29
          Width = 786
          Height = 170
          Align = alClient
          DataSource = dsPagos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = dbgPagosEfectuadosDrawColumnCell
          OnDblClick = tbEdicionPagoClick
          RowColor2 = 16776176
          OnGetCellParams = dbgPagosEfectuadosGetCellParams
          Columns = <
            item
              Expanded = False
              FieldName = 'PM_IDLIQUIDACION'
              Title.Caption = 'Nro Liquidaci'#243'n'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ESTADO'
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
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PM_DETALLEBENEFICIARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Descripci'#243'n'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PM_IMPORTECONRETENCION'
              Title.Alignment = taCenter
              Title.Caption = 'Importe c/Ret.'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PM_IMPORTEPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Importe s/Ret.'
              Width = 85
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NROFACTURA'
              Title.Alignment = taCenter
              Title.Caption = 'Factura'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PM_FECHAFACTURA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Factura'
              Width = 80
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
              Alignment = taCenter
              Expanded = False
              FieldName = 'ORDENFECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Orden'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHEQUENRO'
              Title.Alignment = taCenter
              Title.Caption = 'Nro.Cheque'
              Width = 107
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CHEQUEFECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Cheque'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PM_COMENTARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Observaciones'
              Width = 313
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TO_DESCRIPCION'
              Title.Alignment = taCenter
              Title.Caption = 'Operaci'#243'n'
              Width = 75
              Visible = True
            end>
        end
        object cbEdicionPagosEfectudos: TCoolBar
          Left = 0
          Top = 0
          Width = 786
          Height = 29
          Bands = <
            item
              Control = tbPagos
              ImageIndex = -1
              MinHeight = 27
              Width = 780
            end>
          Visible = False
          object tbPagos: TToolBar
            Left = 9
            Top = 0
            Width = 773
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
            object tbObtenerEstadoPago: TToolButton
              Left = 100
              Top = 0
              Hint = 'Obtener Estado Pago'
              Caption = 'Obtener Estado Pago'
              ImageIndex = 30
              OnClick = tbObtenerEstadoPagoClick
            end
            object tbAprobacionConceptosDuplicados: TToolButton
              Left = 123
              Top = 0
              Hint = 'Aprobaci'#243'n Conceptos Duplicados'
              Caption = 'tbAprobacionConceptosDuplicados'
              ImageIndex = 23
              OnClick = tbAprobacionConceptosDuplicadosClick
            end
            object tbseparator4: TToolButton
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
        object plTotalesPago: TPanel
          Left = 0
          Top = 229
          Width = 786
          Height = 29
          Align = alBottom
          TabOrder = 2
        end
        object Panel2: TPanel
          Left = 0
          Top = 199
          Width = 786
          Height = 30
          HelpType = htKeyword
          HelpKeyword = '|'
          Align = alBottom
          Enabled = False
          TabOrder = 3
          object lbSumatoria: TLabel
            Left = 8
            Top = 8
            Width = 3
            Height = 13
          end
          object lblSumatoriaPagosConRet: TEdit
            Left = 538
            Top = 4
            Width = 121
            Height = 21
            Alignment = taRightJustify
            Color = clBtnFace
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            Text = '0'
          end
          object lblSumatoriaPagosSinRet: TEdit
            Left = 665
            Top = 4
            Width = 121
            Height = 21
            Alignment = taRightJustify
            Color = clBtnFace
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            Text = '0'
          end
        end
      end
    end
  end
  object tbGestionDeuda: TToolBar
    Left = 0
    Top = 0
    Width = 800
    Height = 27
    Caption = 'tbGestionDeuda'
    EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
    HotImages = dmLegales.ilByN
    Images = dmLegales.ilColor
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
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
      Hint = 'Guardar (Ctrl-G)'
      Caption = 'tbGuardar'
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbGuardarClick
    end
    object tbVerImagenes: TToolButton
      Left = 31
      Top = 0
      Hint = 'Ver Im'#225'genes Digitalizadas'
      Caption = 'tbVerImagenes'
      ImageIndex = 31
      OnClick = tbVerImagenesClick
    end
    object tbBloquearPagosSiniestros: TToolButton
      Left = 54
      Top = 0
      Hint = 'Bloquear pagos siniestros'
      Caption = 'Bloquear pagos siniestros'
      ImageIndex = 32
      OnClick = tbBloquearPagosSiniestrosClick
    end
    object tbSeparador: TToolButton
      Left = 77
      Top = 0
      Width = 13
      Caption = 'tbSeparador'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object tbSalir: TToolButton
      Left = 90
      Top = 0
      Hint = 'Salir'
      Caption = 'tbSalir'
      ImageIndex = 5
      ParentShowHint = False
      ShowHint = True
      OnClick = tbSalirClick
    end
    object lblAviso: TLabel
      Left = 113
      Top = 0
      Width = 310
      Height = 22
      Caption = '     Guardar para habilitar las solapas y los botones.    '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 800
    Height = 190
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object gbDetalleJuicio: TGroupBox
      Left = 371
      Top = 0
      Width = 429
      Height = 190
      Align = alRight
      Caption = '  Detalle'
      TabOrder = 1
      DesignSize = (
        429
        190)
      object lblEstadoJuicio: TLabel
        Left = 9
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Estado:'
      end
      object Label1: TLabel
        Left = 9
        Top = 80
        Width = 50
        Height = 13
        Caption = 'Fecha Fin:'
      end
      object lblExpediente: TLabel
        Left = 9
        Top = 40
        Width = 39
        Height = 13
        Caption = 'N'#186' Exp.:'
      end
      object lblNroCaja: TLabel
        Left = 9
        Top = 102
        Width = 44
        Height = 13
        Caption = 'Nro.Caja:'
      end
      object lblSemestre: TLabel
        Left = 150
        Top = 103
        Width = 47
        Height = 13
        Caption = 'Semestre:'
      end
      inline fraEstado: TfraCodigoDescripcion
        Left = 61
        Top = 12
        Width = 329
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        ExplicitLeft = 61
        ExplicitTop = 12
        ExplicitWidth = 329
        DesignSize = (
          329
          23)
        inherited cmbDescripcion: TArtComboBox
          Left = 63
          Width = 264
          DataSource = nil
          ExplicitLeft = 63
          ExplicitWidth = 264
        end
        inherited edCodigo: TPatternEdit
          Pattern = '0123456789'
        end
      end
      object tbExplorarHistoricoEstado: TToolBar
        Left = 392
        Top = 10
        Width = 31
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
        TabOrder = 1
        object tbHistoricoEstados: TToolButton
          Left = 0
          Top = 0
          Hint = 'Hist'#243'rico Estado'
          ImageIndex = 16
          OnClick = tbHistoricoEstadosClick
        end
      end
      object edFECHAFINJUICIO: TDateComboBox
        Left = 62
        Top = 76
        Width = 88
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object chkGPBA: TCheckBox
        Left = 8
        Top = 61
        Width = 67
        Height = 12
        Alignment = taLeftJustify
        Caption = 'GPBA'
        TabOrder = 3
        OnClick = chkGPBAClick
      end
      object edExpediente: TPatternEdit
        Left = 62
        Top = 37
        Width = 81
        Height = 21
        MaxLength = 10
        TabOrder = 2
      end
      object edNroCaja: TPatternEdit
        Left = 62
        Top = 100
        Width = 81
        Height = 21
        MaxLength = 10
        TabOrder = 5
      end
      object edSemestre: TPeriodoPicker
        Left = 200
        Top = 99
        Width = 53
        Height = 21
        TabOrder = 6
        Color = clWindow
        Periodo.AllowNull = True
        Periodo.Orden = poAnoMes
        Periodo.Separador = #0
        Periodo.Mes = 0
        Periodo.Ano = 0
        Periodo.MaxPeriodo = '205808'
        Periodo.MinPeriodo = '195809'
        WidthMes = 19
        Separation = 0
        ShowButton = False
        ShowOrder = poAnoMes
        ReadOnly = False
        Enabled = True
        Fuente.Charset = DEFAULT_CHARSET
        Fuente.Color = clWindowText
        Fuente.Height = -11
        Fuente.Name = 'MS Sans Serif'
        Fuente.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NullDropDown = SetMax
      end
    end
    object gbJuicio: TGroupBox
      Left = 0
      Top = 0
      Width = 363
      Height = 190
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'Mediaci'#243'n'
      TabOrder = 0
      DesignSize = (
        363
        190)
      object lblTipoMediacion: TLabel
        Left = 5
        Top = 40
        Width = 76
        Height = 13
        Caption = 'Tipo Mediaci'#243'n:'
      end
      object lbFechaInicio: TLabel
        Left = 184
        Top = 16
        Width = 68
        Height = 13
        Caption = 'F.Notificaci'#243'n:'
      end
      object lbAbogado: TLabel
        Left = 5
        Top = 84
        Width = 46
        Height = 26
        Caption = 'Estudio/'#13#10'Abogado:'
      end
      object lblCaratula: TLabel
        Left = 5
        Top = 63
        Width = 45
        Height = 13
        Caption = 'Car'#225'tula: '
      end
      object lblFechaAsignacion: TLabel
        Left = 7
        Top = 136
        Width = 53
        Height = 13
        Caption = 'F. Asignac.'
      end
      object lblFolio: TLabel
        Left = 6
        Top = 15
        Width = 25
        Height = 13
        Caption = 'Folio:'
      end
      object lblContra: TLabel
        Left = 195
        Top = 63
        Width = 12
        Height = 13
        Caption = 'C/'
      end
      object Label6: TLabel
        Left = 5
        Top = 112
        Width = 79
        Height = 13
        Caption = 'Usuario Legales:'
      end
      object Label9: TLabel
        Left = 8
        Top = 160
        Width = 58
        Height = 13
        Caption = 'Jurisdicci'#243'n:'
      end
      inline fraTipoMediacion: TfraCodigoDescripcion
        Left = 83
        Top = 35
        Width = 273
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        ExplicitLeft = 83
        ExplicitTop = 35
        ExplicitWidth = 273
        DesignSize = (
          273
          23)
        inherited cmbDescripcion: TArtComboBox
          Left = 53
          Width = 208
          DataSource = nil
          ExplicitLeft = 53
          ExplicitWidth = 208
        end
        inherited edCodigo: TPatternEdit
          Width = 50
          MaxLength = 8
          Pattern = '0123456789'
          ExplicitWidth = 50
        end
      end
      object edFechaInicio: TDateComboBox
        Left = 256
        Top = 12
        Width = 88
        Height = 21
        Weekends = [Sun, Sat]
        TabOrder = 1
      end
      inline fraAbogadosPropios: TfraAbogadosLegales
        Left = 83
        Top = 86
        Width = 247
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        ExplicitLeft = 83
        ExplicitTop = 86
        ExplicitWidth = 247
        DesignSize = (
          247
          23)
        inherited cmbDescripcion: TArtComboBox
          Left = 53
          Width = 191
          DataSource = nil
          ExplicitLeft = 53
          ExplicitWidth = 191
        end
        inherited edCodigo: TPatternEdit
          Width = 50
          Pattern = '0123456789'
          ExplicitWidth = 50
        end
        inherited dsDatos: TDataSource
          Left = 15
        end
      end
      object tbEdicionAbogado: TToolBar
        Left = 329
        Top = 82
        Width = 31
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
        object tbNuevoAbogado: TToolButton
          Left = 0
          Top = 0
          Hint = 'Selecci'#243'n y Modificaci'#243'n Abogado'
          ImageIndex = 14
          OnClick = tbNuevoAbogadoClick
        end
      end
      object edFECHAASIGNADO: TDateComboBox
        Left = 84
        Top = 132
        Width = 88
        Height = 21
        ErrorMessage = 
          'La fecha debe ser mayor o igual que la fecha de inicio del juici' +
          'o'
        DialogTitle = 'Seleccione una fecha'
        Weekends = [Sun, Sat]
        TabOrder = 8
      end
      object edNroCarpeta: TIntEdit
        Left = 84
        Top = 12
        Width = 78
        Height = 21
        Color = 16776176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Alignment = taRightJustify
        MaxLength = 8
      end
      object edDemandante: TEdit
        Left = 84
        Top = 60
        Width = 108
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 200
        TabOrder = 3
      end
      object edDemandado: TEdit
        Left = 213
        Top = 60
        Width = 130
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Color = clWhite
        MaxLength = 200
        TabOrder = 4
      end
      inline fraUsuarioLegal: TfraCodigoDescripcion
        Left = 83
        Top = 108
        Width = 272
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 7
        ExplicitLeft = 83
        ExplicitTop = 108
        ExplicitWidth = 272
        DesignSize = (
          272
          23)
        inherited cmbDescripcion: TArtComboBox
          Left = 63
          Width = 207
          DataSource = nil
          ExplicitLeft = 63
          ExplicitWidth = 207
        end
      end
      inline fraJurisdiccion: TfraCodigoDescripcion
        Left = 83
        Top = 156
        Width = 272
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 9
        ExplicitLeft = 83
        ExplicitTop = 156
        ExplicitWidth = 272
        DesignSize = (
          272
          23)
        inherited cmbDescripcion: TArtComboBox
          Left = 63
          Width = 207
          DataSource = nil
          ExplicitLeft = 63
          ExplicitWidth = 207
        end
      end
    end
  end
  object pnAprobacionConDup: TFormPanel
    Left = 684
    Top = 414
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
  object sdqEventoMediacion: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT em_id, em_fecha, em_observaciones, em_idtipoevento,'
      
        '       lte_tipoevento.te_descripcion, em_fechabaja, em_fechavenc' +
        'imiento,'
      '       em_idabogado, bo_nombre, em_idusuariolegal, se_nombre'
      '  FROM legales.lem_eventomediacion,'
      '       legales.lte_tipoevento,'
      '       legales.lbo_abogado,'
      '       art.use_usuarios'
      ' WHERE (em_idtipoevento = lte_tipoevento.te_id)'
      '   AND em_idmediacion = :idmediacion'
      '   AND em_idabogado = bo_id(+)'
      '   AND em_idusuariolegal = se_id(+)')
    Left = 38
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idMediacion'
        ParamType = ptInput
      end>
  end
  object sdqOrigenDemanda: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT a.*, pv_descripcion,'
      '       art.utiles.armar_domicilio (om_calle,'
      '                                   om_numero,'
      '                                   om_piso,'
      '                                   om_departamento,'
      '                                   om_localidad'
      '                                  ) AS domicilio'
      '  FROM legales.lom_origenmediacion a, art.cpv_provincias b'
      
        ' WHERE om_provincia = pv_codigo(+) AND om_idmediacion = :idmedia' +
        'cion')
    Left = 66
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idmediacion'
        ParamType = ptInput
      end>
  end
  object sdqImportes: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT im_id, im_idmediacion, im_importe, im_detalle, im_fechaba' +
        'ja,'
      '       im_nropago, im_importesinret, im_aplicacion,'
      '       DECODE (im_aplicacion,'
      '               '#39'A'#39', '#39'Monto Acordado'#39','
      '               '#39'H'#39', '#39'Honorarios Parte Actora'#39','
      '               '#39'M'#39', '#39'Honorarios Mediador'#39','
      '               '#39'U'#39', '#39'Multa'#39
      '              ) aplicacion'
      '  FROM legales.lim_importemediacion'
      ' WHERE im_idmediacion = :idmediacion')
    Left = 94
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idmediacion'
        ParamType = ptInput
      end>
  end
  object dsOrigenDemanda: TDataSource
    DataSet = sdqOrigenDemanda
    Left = 66
    Top = 486
  end
  object dsEventoMediacion: TDataSource
    DataSet = sdqEventoMediacion
    Left = 38
    Top = 486
  end
  object dsImportes: TDataSource
    DataSet = sdqImportes
    Left = 94
    Top = 486
  end
  object sdqPagos: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT lbp.bp_descripcion, lpm.pm_detallebeneficiario, lpm.pm_id' +
        ','
      '       lpm.pm_numpago, lpm.pm_cuitcuil, lpm.pm_fechafactura,'
      '       lpm.pm_importepago, lpm.pm_comentario, lpm.pm_estado,'
      
        '       lpm.pm_importeconretencion, lpm.pm_idmediacion,lpm.pm_idb' +
        'eneficiariopago,'
      '       lpm.pm_conpago, scp.cp_denpago, lto.to_descripcion,'
      
        '       ce_ordenpago ordennro, ce_fechaop ordenfecha, ce_numero c' +
        'hequenro,'
      '       ce_fechacheque chequefecha,'
      '       lpm.pm_letrafactura || '#39'-'#39' || lpm.pm_situacionfactura'
      '       || '#39'-'#39' || lpm.pm_numerofactura nrofactura,'
      '       DECODE(lpm.pm_estado,'
      '             '#39'C'#39', '#39'Cargado'#39','
      '             '#39'A'#39', '#39'Anulado'#39','
      '             '#39'X'#39', '#39'Cancelado'#39','
      '             '#39'E'#39', '#39'Aprobado'#39','
      '             '#39#39') estado,'
      
        '       lpm.pm_letrafactura, lpm.pm_situacionfactura, lpm.pm_nume' +
        'rofactura,'
      
        '       lpm.pm_fecharecepfactura, lpm.pm_fechavencimientopago, lp' +
        'm.pm_pagoexclusivo,'
      '       lpm.pm_idliquidacion,'
      ''
      '       llm.lm_fechaaprobado pm_fechaaprobacion,'
      '       llm.lm_usuarioaprobado pm_usuaprobacion,'
      ''
      
        '       pm_duplicado, pm_estadoduplicidad, pm_motivoaprobacion,DE' +
        'CODE(PM_ESTADODUPLICIDAD, '#39'A'#39', '#39'Aprobado'#39', '#39'R'#39', '#39'Rechazado'#39', '#39#39')' +
        ' AS estadoduplicado'
      ''
      
        '  FROM rce_chequeemitido, legales.lpm_pagomediacion lpm, legales' +
        '.lbp_beneficiariopago lbp,'
      '       art.scp_conpago scp, legales.lto_tipooperacion lto,'
      '       legales.llm_liquidacionmediacion llm'
      ''
      ' WHERE lpm.pm_idbeneficiariopago = lbp.bp_id(+)'
      '   AND lpm.pm_conpago = scp.cp_conpago'
      '   AND lpm.pm_idtipooperacion = lto.to_id(+)'
      '   AND llm.lm_id = lpm.pm_idliquidacion'
      '   AND lpm.pm_idmediacion = :idMediacion'
      '   AND pm_idchequeemitido = ce_id(+)'
      '   ORDER BY llm.lm_fechaaprobado'
      ''
      '                             '
      ''
      '')
    UpdateObject = sduPago
    Left = 122
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idmediacion'
        ParamType = ptInput
      end>
  end
  object dsPagos: TDataSource
    DataSet = sdqPagos
    Left = 122
    Top = 486
  end
  object sduPago: TSDUpdateSQL
    Left = 123
    Top = 513
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
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 95
    Top = 514
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
      'SELECT ae_descripcion, ae_patharchivo, ae_id'
      '  FROM legales.lae_archivoeventomediacion'
      ' WHERE ae_ideventomediacion = :ideventomediacion'
      '   AND ae_fechabaja IS NULL'
      '')
    Left = 59
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ideventomediacion'
        ParamType = ptInput
      end>
  end
  object SortDialogEvento: TSortDialog
    Caption = 'Orden'
    DataSet = sdqEventoMediacion
    SortFields = <>
    IniStorage = FormStorage
    FixedRows = 0
    Left = 157
    Top = 461
  end
  object FormStorage: TFormStorage
    UseRegistry = True
    StoredProps.Strings = (
      'SortDialogEvento.SortFields')
    StoredValues = <>
    Left = 445
  end
end
