inherited frmAdminstracionJuicioParteDemandanda: TfrmAdminstracionJuicioParteDemandanda
  Left = 509
  Top = 113
  ActiveControl = edNroCarpeta
  ClientHeight = 811
  ClientWidth = 1190
  OldCreateOrder = True
  ExplicitWidth = 1206
  ExplicitHeight = 849
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnCabecera: TPanel
    Width = 1190
    ExplicitWidth = 1190
    inherited fraDatosJuzgado: TfraJuzgados
      Width = 1189
      ExplicitWidth = 1189
      inherited gbJuzgados: TGroupBox
        Width = 1189
        ExplicitWidth = 1189
        inherited lblFechaIngreso: TLabel
          Left = 944
          ExplicitLeft = 757
        end
        inherited fraFuero: TfraCodigoDescripcionExt
          Width = 829
          ExplicitWidth = 829
          inherited cmbDescripcion: TArtComboBox
            Width = 764
            ExplicitWidth = 764
          end
        end
        inherited fraSecretaria: TfraCodigoDescripcionExt
          Width = 828
          ExplicitWidth = 828
          inherited cmbDescripcion: TArtComboBox
            Width = 763
            ExplicitWidth = 763
          end
        end
        inherited btnMasDatosJuzgado: TBitBtn
          Left = 1085
          ExplicitLeft = 1085
        end
        inherited dteFechaIngreso: TDateComboBox
          Left = 993
          MinDateCombo = edFECHANOTIFICACION
          ExplicitLeft = 993
        end
        inherited cbSinExpediente: TCheckBox
          Left = 902
          Visible = True
          ExplicitLeft = 902
        end
      end
      inherited sdqJuzgado: TSDQuery
        DataSource = fraDatosJuzgado.fraJuzgado.dsDatos
      end
    end
    inherited edtDescripcion: TMemo
      Width = 741
      ExplicitWidth = 741
    end
    inherited gbJuicio: TGroupBox
      inherited lblTipoJuicio: TLabel
        Left = 14
        ExplicitLeft = 14
      end
      inherited lblCaratula: TLabel
        Left = 14
        ExplicitLeft = 14
      end
      inherited lblFechaAsignacion: TLabel
        Left = 14
        ExplicitLeft = 14
      end
      inherited lblCarpeta: TLabel
        Left = 14
        ExplicitLeft = 14
      end
      object lblFechaRegistracionRAJ: TLabel [7]
        Left = 183
        Top = 161
        Width = 71
        Height = 13
        Caption = 'F.Registraci'#243'n:'
      end
      object lblExpediente: TLabel [8]
        Left = 14
        Top = 161
        Width = 70
        Height = 13
        Caption = 'N'#186' Orden RAJ:'
      end
      object lbl_JT_FECHAALTA: TLabel [9]
        Left = 14
        Top = 138
        Width = 30
        Height = 13
        Caption = 'F.Alta:'
        Visible = False
      end
      inherited fraTipoJuicio: TfraCodigoDescripcion
        TabOrder = 2
        inherited cmbDescripcion: TArtComboBox
          Width = 192
          ExplicitWidth = 192
        end
      end
      inherited edFECHANOTIFICACION: TDateComboBox
        MaxDateCombo = fraDatosJuzgado.dteFechaIngreso
        TabOrder = 1
      end
      inherited fraAbogadosPropios: TfraAbogadosLegales
        TabOrder = 6
        inherited cmbDescripcion: TArtComboBox
          Width = 149
          ExplicitWidth = 149
        end
      end
      inherited edCARATULA: TEdit
        TabOrder = 5
      end
      inherited tbEdicionAbogado: TToolBar
        TabOrder = 7
      end
      inherited edFECHAASIGNADO: TDateComboBox
        TabOrder = 8
      end
      inherited edNroCarpeta: TIntEdit
        TabOrder = 0
      end
      inherited edDemandante: TEdit
        TabOrder = 3
      end
      inherited edDemandado: TEdit
        TabOrder = 4
      end
      object chkCondicionNoSeguro: TCheckBox
        Left = 196
        Top = 135
        Width = 152
        Height = 17
        Caption = 'Condiciones de No Seguro'
        TabOrder = 9
      end
      object edFECHAINGRESORAJ: TDateComboBox
        Left = 260
        Top = 157
        Width = 88
        Height = 21
        MinDateCombo = edFECHANOTIFICACION
        Weekends = [Sun, Sat]
        TabOrder = 11
      end
      object edNroOrdenRAJ: TPatternEdit
        Left = 91
        Top = 157
        Width = 75
        Height = 21
        MaxLength = 20
        TabOrder = 10
        Pattern = '0123456789'
      end
      object chkJuicioNoSiniestro: TCheckBox
        Left = 14
        Top = 184
        Width = 109
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Juicio No Siniestro'
        TabOrder = 12
        OnClick = chkJuicioNoSiniestroClick
      end
      object chkFederal: TCheckBox
        Left = 136
        Top = 184
        Width = 106
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Federal sist'#233'mico'
        TabOrder = 13
      end
      object chkGPBA: TCheckBox
        Left = 304
        Top = 184
        Width = 52
        Height = 17
        Alignment = taLeftJustify
        Caption = 'GPBA'
        TabOrder = 14
      end
      object chkARecuperar: TCheckBox
        Left = 14
        Top = 200
        Width = 109
        Height = 17
        Alignment = taLeftJustify
        Caption = 'A Recuperar'
        TabOrder = 15
      end
      object chkRebeldia: TCheckBox
        Left = 136
        Top = 200
        Width = 106
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Rebeld'#237'a'
        TabOrder = 16
      end
      object chkGPBAMalaPraxis: TCheckBox
        Left = 248
        Top = 200
        Width = 107
        Height = 17
        Alignment = taLeftJustify
        Caption = 'GPBA Mala Praxis'
        TabOrder = 17
      end
      object ed_JT_FECHAALTA: TDateComboBox
        Left = 92
        Top = 134
        Width = 88
        Height = 21
        Color = clGradientInactiveCaption
        Enabled = False
        ReadOnly = True
        Weekends = [Sun, Sat]
        TabOrder = 18
        Visible = False
      end
    end
    inherited gbDetalleJuicio: TGroupBox
      Width = 821
      ExplicitWidth = 821
      object lblResultadoProbable: TLabel [3]
        Left = 18
        Top = 37
        Width = 53
        Height = 13
        Caption = 'Res. Prob.:'
      end
      object Label2: TLabel [4]
        Left = 7
        Top = 69
        Width = 75
        Height = 13
        Caption = 'C. Intervenci'#243'n:'
      end
      inherited fraEstado: TfraCodigoDescripcion
        Width = 630
        ExplicitWidth = 630
        DesignSize = (
          630
          23)
        inherited cmbDescripcion: TArtComboBox
          Width = 563
          ExplicitWidth = 563
        end
      end
      inherited tbEdicionMotivo: TToolBar
        Left = 739
        TabOrder = 5
        ExplicitLeft = 739
      end
      inherited tbExplorarHistoricoEstado: TToolBar
        Left = 721
        ExplicitLeft = 721
      end
      inherited psSentenciaMediacion: TPageControl
        Width = 802
        TabOrder = 4
        ExplicitWidth = 802
        inherited Sentencia: TTabSheet
          ExplicitWidth = 794
          DesignSize = (
            794
            107)
          inherited lbFechaFinJuicio: TLabel
            Left = 659
            ExplicitLeft = 259
          end
          inherited fraTipoResultadoJuicio: TfraCodigoDescripcion
            Width = 571
            ExplicitWidth = 571
            DesignSize = (
              571
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 538
              ExplicitWidth = 538
            end
          end
          inherited edFECHASENTENCIA: TDateComboBox
            Left = 697
            ExplicitLeft = 697
          end
          inherited mSentencia: TRxRichEdit
            Width = 710
            ExplicitWidth = 710
          end
        end
        inherited Mediacion: TTabSheet
          ExplicitWidth = 794
          inherited pnSentencia: TPanel
            Width = 794
            ExplicitWidth = 794
            inherited fraMediador: TfraAbogadosLegales
              Left = 78
              Width = 267
              ExplicitLeft = 78
              ExplicitWidth = 267
              DesignSize = (
                267
                23)
            end
            inherited fraTipoMediacion: TfraCodigoDescripcion
              Left = 78
              ExplicitLeft = 78
            end
            inherited edNroExpedienteMediacion: TPatternEdit
              Left = 79
              ExplicitLeft = 79
            end
            inherited fraOrganismoMediacion: TfraCodigoDescripcionExt
              Left = 78
              Width = 278
              ExplicitLeft = 78
              ExplicitWidth = 278
              DesignSize = (
                278
                23)
              inherited cmbDescripcion: TArtComboBox
                Left = 53
                ExplicitLeft = 53
              end
              inherited edCodigo: TPatternEdit
                Width = 50
                ExplicitWidth = 50
              end
            end
          end
        end
      end
      inherited edFECHAFINJUICIO: TDateComboBox
        TabOrder = 3
      end
      inline fraCaracterIntervencion: TfraCodigoDescripcion
        Left = 84
        Top = 65
        Width = 654
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        ExplicitLeft = 84
        ExplicitTop = 65
        ExplicitWidth = 654
        DesignSize = (
          654
          23)
        inherited cmbDescripcion: TArtComboBox
          Width = 589
          ExplicitWidth = 589
        end
        inherited edCodigo: TPatternEdit
          Pattern = '0123456789'
        end
      end
      object mResultadoProbable: TMemo
        Left = 85
        Top = 35
        Width = 720
        Height = 30
        Anchors = [akLeft, akTop, akRight]
        MaxLength = 2048
        TabOrder = 6
      end
    end
  end
  inherited tbGestionDeuda: TToolBar
    Width = 1190
    ExplicitWidth = 1190
    inherited tbImprimir: TToolButton
      DropdownMenu = fraPuntosRevisionJuicioEnTramite.pmPuntosRevision
    end
    object tbBorrarSentencia: TToolButton
      Left = 626
      Top = 0
      Hint = 'Borrar Sentencia'
      Caption = 'tbBorrarSentencia'
      ImageIndex = 1
      OnClick = tbBorrarSentenciaClick
    end
    object tbEnvioMail: TToolButton
      Left = 649
      Top = 0
      Caption = 'Envio Mail'
      ImageIndex = 34
      OnClick = tbEnvioMailClick
    end
    object tbMarcarComoAlta: TToolButton
      Left = 672
      Top = 0
      Hint = 'Marcar como Alta'
      Caption = 'tbMarcarComoAlta'
      ImageIndex = 25
      OnClick = tbMarcarComoAltaClick
    end
    object tbFormularioAltaJuicio: TToolButton
      Left = 695
      Top = 0
      Hint = 'Formulario de ALTA de JUICIO DEMANDADA'
      Caption = 'tbFormularioAltaJuicio'
      ImageIndex = 15
      OnClick = tbFormularioAltaJuicioClick
    end
    object tbReporteGestionInterna: TToolButton
      Left = 718
      Top = 0
      Hint = 'Reporte Gestion Interna'
      Caption = 'tbReporteGestionInterna'
      ImageIndex = 16
      OnClick = tbReporteGestionInternaClick
    end
  end
  inherited pnDetalle: TPanel
    Width = 1190
    Height = 424
    ExplicitWidth = 1190
    ExplicitHeight = 424
    inherited pgDetallesJuicio: TPageControl
      Width = 1190
      Height = 424
      ActivePage = tbEventosSeguimiento
      ExplicitWidth = 1190
      ExplicitHeight = 424
      inherited tbOrigenSiniestro: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited cbOrigenDemanda: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = tbOrigenDemanda
              ImageIndex = -1
              MinHeight = 27
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited tbOrigenDemanda: TToolBar
            Width = 1169
            ExplicitWidth = 1169
          end
        end
        inherited dbgOrigenDemanda: TRxDBGrid
          Width = 1182
          Height = 367
        end
      end
      inherited tsReclamos: TTabSheet
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited fraReclamoSentenciaReclamo: TfraReclamoSentencia
          Width = 1182
          Height = 396
          ExplicitWidth = 1182
          ExplicitHeight = 396
          inherited dbReclamos: TArtDBGrid
            Width = 1182
            Height = 367
          end
          inherited cbReclamoSentencia: TCoolBar
            Width = 1182
            Bands = <
              item
                Control = fraReclamoSentenciaReclamo.tbrReclamo
                ImageIndex = -1
                MinHeight = 27
                Width = 1176
              end>
            ExplicitWidth = 1182
            inherited tbrReclamo: TToolBar
              Left = 9
              Width = 1169
              ExplicitLeft = 9
              ExplicitWidth = 1169
            end
          end
          inherited fpReclamo: TFormPanel
            inherited ScrollBox1: TScrollBox
              inherited pnImporteReclamo: TPanel
                inherited pnReclamoIncapacidad: TPanel
                  inherited edPorcentajeIncapacidadDemanda: TCurrencyEdit
                    Margins.Left = 1
                    Margins.Top = 1
                  end
                  inherited edPorcentajeIncapacidadSegunPerito: TCurrencyEdit
                    Margins.Left = 1
                    Margins.Top = 1
                  end
                end
                inherited edtImporteDemandadoReclamo: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
              end
              inherited pnImporteSentencia: TPanel
                inherited ceImporteSentencia: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
                inherited cePorcentajeSolidario: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
                inherited ceImporteAPagar: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
              end
              inherited pnl2: TPanel
                inherited edImporteNominal: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
                inherited edIntereses: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
                inherited edMontoDemanda: TCurrencyEdit
                  Margins.Left = 1
                  Margins.Top = 1
                end
              end
            end
          end
        end
      end
      inherited tbEventosSeguimiento: TTabSheet
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited dbgEventosJuicioEnTramite: TRxDBGrid
          Width = 1182
          Height = 367
        end
        inherited cbEventos: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = tbrEventos
              ImageIndex = -1
              MinHeight = 27
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited tbrEventos: TToolBar
            Width = 1169
            ExplicitWidth = 1169
          end
        end
        inherited fpEventoSeguimiento: TFormPanel
          Left = 59
          Width = 618
          Height = 417
          ExplicitLeft = 59
          ExplicitWidth = 618
          ExplicitHeight = 417
          DesignSize = (
            618
            417)
          inherited bvSeparadorBotonesEventos: TBevel
            Top = 380
            Width = 611
            ExplicitTop = 380
            ExplicitWidth = 611
          end
          inherited lblArchivosAsociados: TLabel
            Top = 325
            ExplicitTop = 325
          end
          object lbNroAudiencia: TLabel [6]
            Left = 10
            Top = 350
            Width = 70
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'Nro Audiencia:'
            Visible = False
          end
          object lbRespuesta: TLabel [7]
            Left = 238
            Top = 352
            Width = 84
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'Ver Respuesta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            OnClick = lbRespuestaClick
          end
          object lbAgregarRespuesta: TLabel [8]
            Left = 445
            Top = 352
            Width = 109
            Height = 13
            Anchors = [akRight, akBottom]
            Caption = 'Agregar Respuesta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            OnClick = lbRespuestaClick
          end
          inherited fraTipoEvento: TfraCodigoDescripcion
            Width = 428
            ExplicitWidth = 428
            DesignSize = (
              428
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 361
              ExplicitWidth = 361
            end
          end
          inherited btnAccAceptar: TButton
            Left = 456
            Top = 388
            ExplicitLeft = 456
            ExplicitTop = 388
          end
          inherited btnAccCancelar: TButton
            Left = 534
            Top = 388
            TabOrder = 10
            ExplicitLeft = 534
            ExplicitTop = 388
          end
          inherited tbEdicionTiposEventos: TToolBar
            Left = 558
            ExplicitLeft = 558
          end
          inherited edtArchivosAsociados: TEdit
            Top = 322
            Width = 452
            TabOrder = 9
            ExplicitTop = 322
            ExplicitWidth = 452
          end
          inherited tbrVerArchivosAsociados: TToolBar
            Left = 560
            Top = 322
            Width = 57
            Anchors = []
            ExplicitLeft = 560
            ExplicitTop = 322
            ExplicitWidth = 57
          end
          inherited mObservacionesEvento: TRxRichEdit
            Width = 452
            Height = 263
            ExplicitWidth = 452
            ExplicitHeight = 263
          end
          object ToolBar4: TToolBar
            Left = 194
            Top = 346
            Width = 32
            Height = 27
            Align = alNone
            Anchors = [akTop, akRight]
            BorderWidth = 1
            ButtonWidth = 25
            HotImages = dmLegales.ilColor
            Images = dmLegales.ilByN
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            object tbVerAudiencia: TToolButton
              Left = 0
              Top = 0
              Hint = 'Ver Audiencia'
              ImageIndex = 16
              Visible = False
              OnClick = tbVerAudienciaClick
            end
          end
          object edNroAudiencia: TIntEdit
            Left = 104
            Top = 348
            Width = 78
            Height = 21
            Anchors = [akLeft, akBottom]
            Color = 16776176
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
            Visible = False
            Alignment = taRightJustify
            MaxLength = 8
          end
        end
      end
      inherited tbTareas: TTabSheet
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited jvnsSeparador: TJvNetscapeSplitter
          Left = 827
          Height = 365
          ExplicitLeft = 640
          ExplicitHeight = 399
        end
        inherited psTareas: TPageControl
          Width = 827
          Height = 365
          ExplicitWidth = 827
          ExplicitHeight = 365
          inherited Dia: TTabSheet
            ExplicitWidth = 819
            ExplicitHeight = 355
            inherited ProgramacionSemanal: TJvTFWeeks
              Width = 819
              Height = 355
              Cells = <
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end>
              ExplicitWidth = 819
              ExplicitHeight = 355
            end
            inherited ProgramacionMensual: TJvTFMonths
              Width = 819
              Height = 355
              Cells = <
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end>
              ExplicitWidth = 819
              ExplicitHeight = 355
            end
            inherited ProgramacionDiaria: TJvTFDays
              Width = 819
              Height = 355
              Cols = <
                item
                  SchedDate = 37987.000000000000000000
                  SchedName = 'Tareas Programadas'
                  Title = 'Tareas Programadas - 01/01/2004'
                  Width = 765
                end>
              ExplicitWidth = 819
              ExplicitHeight = 355
            end
          end
          inherited Semana: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 6
            ExplicitWidth = 819
            ExplicitHeight = 355
            inherited jvwTareasSemanales: TJvTFWeeks
              Width = 819
              Height = 466
              Cells = <
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end>
              ExplicitWidth = 819
              ExplicitHeight = 466
            end
          end
          inherited Mes: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 6
            ExplicitWidth = 819
            ExplicitHeight = 355
            inherited jvmTareasMensuales: TJvTFMonths
              Width = 819
              Cells = <
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end
                item
                  Color = clBlack
                  CellPics = <>
                  CanSelect = True
                end>
              ExplicitWidth = 819
            end
          end
          inherited PuntosRevision: TTabSheet
            ExplicitLeft = 4
            ExplicitTop = 6
            ExplicitWidth = 819
            ExplicitHeight = 355
          end
        end
        inherited cbTareas: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = tbrAgenda
              ImageIndex = -1
              MinHeight = 27
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited tbrAgenda: TToolBar
            Width = 1169
            ExplicitWidth = 1169
          end
        end
        inherited pnCalendario: TPanel
          Left = 836
          Height = 365
          ExplicitLeft = 836
          ExplicitHeight = 365
        end
      end
      inherited tsPeritajes: TTabSheet
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited cbPeritaje: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = tbPeritajes
              ImageIndex = -1
              MinHeight = 27
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited tbPeritajes: TToolBar
            Width = 1169
            ExplicitWidth = 1169
          end
        end
        inherited dbgPeritajes: TRxDBGrid
          Width = 1182
          Height = 367
        end
        inherited fpPeritajes: TFormPanel
          Left = 675
          ExplicitLeft = 675
          inherited pnPorcentajeIncapacidad: TPanel
            inherited edPorcentajeIncPeritoMedico: TCurrencyEdit
              Margins.Left = 1
              Margins.Top = 1
            end
          end
          inherited pnIBM: TPanel
            inherited edIBMArt: TCurrencyEdit
              Margins.Left = 1
              Margins.Top = 1
            end
            inherited edIBMPericial: TCurrencyEdit
              Margins.Left = 1
              Margins.Top = 1
            end
          end
        end
      end
      inherited tsImportes: TTabSheet
        TabVisible = True
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited gbImportes: TGroupBox
          Top = 78
          Width = 1182
          Height = 46
          ExplicitTop = 78
          ExplicitWidth = 1182
          ExplicitHeight = 46
        end
        inherited gbReservasAsigandas: TGroupBox
          Width = 1182
          Height = 78
          ExplicitWidth = 1182
          ExplicitHeight = 78
          DesignSize = (
            1182
            78)
          object Label4: TLabel [0]
            Left = 518
            Top = 51
            Width = 75
            Height = 13
            Caption = 'Total Reservas:'
          end
          object Label6: TLabel [1]
            Left = 304
            Top = 51
            Width = 78
            Height = 13
            Caption = 'RSPL Muertes:  '
          end
          object Label7: TLabel [2]
            Left = 54
            Top = 51
            Width = 56
            Height = 13
            Caption = 'RSPL ILP:  '
          end
          inherited tbAprobacionDeReservas: TToolBar
            Left = 1232
            ExplicitLeft = 1232
          end
          inherited ToolBar3: TToolBar
            Left = 1093
            Width = 75
            ExplicitLeft = 1093
            ExplicitWidth = 75
            inherited tbCalculaReservaGestion: TToolButton
              OnClick = tbCalculaReservaGestionClick
            end
            object tbCalcularReserva: TToolButton
              Left = 46
              Top = 0
              Hint = 'Calcular Reservas'
              Caption = 'tbCalcularReserva'
              ImageIndex = 33
              OnClick = tbCalcularReservaClick
            end
          end
          object edTotalReservas: TCurrencyEdit
            Left = 607
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
            TabOrder = 8
          end
          object edRSPLMuertes: TCurrencyEdit
            Left = 399
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
            TabOrder = 9
          end
          object edRSPLILP: TCurrencyEdit
            Left = 162
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
            TabOrder = 10
          end
        end
      end
      inherited tsPagos: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited dbgPagosEfectuados: TRxDBGrid
          Width = 1182
          Height = 338
          OnDrawColumnCell = dbgPagosEfectuadosDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'PL_IDLIQUIDACION'
              Title.Caption = 'Nro Liquidaci'#243'n'
              Width = 88
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
              FieldName = 'PL_DETALLEBENEFICIARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Descripci'#243'n'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PL_CUITCUIL'
              Title.Alignment = taCenter
              Title.Caption = 'CUIL/CUIT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PL_IMPORTECONRETENCION'
              Title.Alignment = taCenter
              Title.Caption = 'Importe c/Ret.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PL_IMPORTEPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Importe s/Ret.'
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
              FieldName = 'PL_FECHAFACTURA'
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
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'CHEQUEFECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Cheque'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DEBITADO'
              Title.Caption = 'Debitado'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PL_COMENTARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Observaciones'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TO_DESCRIPCION'
              Title.Alignment = taCenter
              Title.Caption = 'Operaci'#243'n'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ESTADODUPLICADO'
              Title.Caption = 'Estado Duplicado'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PL_FECHAAPROBACION'
              Title.Caption = 'Fecha Aprobaci'#243'n'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PL_MOTIVOAPROBACION'
              Title.Caption = 'Motivo Aprobaci'#243'n'
              Width = 108
              Visible = True
            end>
        end
        inherited cbEdicionPagosEfectudos: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = tbPagos
              ImageIndex = -1
              MinHeight = 782
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited tbPagos: TToolBar
            Width = 1169
            ButtonHeight = 22
            ExplicitWidth = 1169
            inherited tbIngresoPago: TToolButton
              OnClick = tbIngresoPagoClick
              ExplicitHeight = 22
            end
            inherited tbEdicionPago: TToolButton
              ExplicitHeight = 22
            end
            inherited tbEliminarPago: TToolButton
              ExplicitHeight = 22
            end
            inherited tbSeparadorPagos: TToolButton
              ExplicitHeight = 22
            end
            inherited tbImprimirPagos: TToolButton
              ExplicitHeight = 22
            end
            inherited tbObtenerEstadoPago: TToolButton
              ExplicitHeight = 22
            end
            inherited tbAprobacionConceptosDuplicados: TToolButton
              ExplicitHeight = 22
            end
            inherited tbseparator4: TToolButton
              ExplicitHeight = 22
            end
            inherited pnConceptoDuplicado: TPanel
              Height = 22
              ExplicitHeight = 22
            end
          end
        end
        inherited plTotalesPago: TPanel
          Top = 367
          Width = 1182
          Enabled = False
          ExplicitTop = 367
          ExplicitWidth = 1182
          object lbSumatoria: TLabel
            Left = 8
            Top = 8
            Width = 3
            Height = 13
          end
          object lblSumatoriaPagosConRet: TEdit
            Left = 542
            Top = 4
            Width = 139
            Height = 21
            TabStop = False
            Alignment = taRightJustify
            AutoSelect = False
            Color = clBtnFace
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            Text = '0'
          end
          object lblSumatoriaPagosSinRet: TEdit
            Left = 400
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
            ReadOnly = True
            TabOrder = 1
            Text = '0'
          end
        end
      end
      inherited tsPuntosRevision: TTabSheet
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited fraPuntosRevisionJuicioEnTramite: TfraPuntosRevision
          Width = 1182
          Height = 396
          ExplicitWidth = 1182
          ExplicitHeight = 396
          inherited nsSplitter: TJvNetscapeSplitter
            Height = 367
            ExplicitHeight = 401
          end
          inherited tlPuntosRevision: TJvTimeLine
            Height = 367
            Items = <
              item
                Left = 0
                Top = 0
                Caption = 'Revisi'#243'n de Progreso'
                Color = clMoneyGreen
                Date = 38417.000000000000000000
                Hint = 'Revisi'#243'n de Progreso'
                ImageIndex = 1
              end
              item
                Left = 0
                Top = 0
                Caption = 'Revision de Prueba'
                Date = 38421.000000000000000000
                Hint = 'Revision de Prueba'
                ImageIndex = 2
                Level = 1
              end
              item
                Left = 0
                Top = 0
                Caption = 'Revisi'#243'n de Comprobantes de Contestaci'#243'n de Prueba'
                Date = 38462.000000000000000000
                Hint = 'Revisi'#243'n de Comprobantes de Contestaci'#243'n de Prueba'
                ImageIndex = 2
                Level = 2
              end>
            ExplicitHeight = 367
          end
          inherited dbgPuntosRevision: TDBGrid
            Width = 671
            Height = 367
          end
          inherited cbPuntosRevision: TCoolBar
            Width = 1182
            Bands = <
              item
                Control = fraPuntosRevisionJuicioEnTramite.tbPuntosRevisio
                ImageIndex = -1
                MinHeight = 27
                Width = 1176
              end>
            ExplicitWidth = 1182
            inherited tbPuntosRevisio: TToolBar
              Width = 1169
              ExplicitWidth = 1169
            end
          end
          inherited fpEventoSeguimiento: TFormPanel
            inherited fraEditEtapaProcesal: TfraCtbTablas
              inherited cmbDescripcion: TArtComboBox
                Width = 216
                ExplicitWidth = 216
              end
            end
          end
          inherited il16: TImageList
            Bitmap = {
              494C01010800840094000E001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
              000000000000360000002800000038000000360000000100200000000000402F
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FF000000FF000000FF000000FF000000FF000000
              00000000000000000000000000000000000000000000000000000000FF000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF000000000000000000000000000000000000000000000000000000
              0000000000000000FF000000FF000000FF00FFFFFF000000FF000000FF000000
              FF000000000000000000000000000000000000000000000000000000FF000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
              0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00000000000000
              0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
              FF000000FF00000000000000000000000000000000000000FF000000FF00FFFF
              FF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000
              FF0000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF000084
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
              0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000FF000000
              FF000000FF000000FF000000000000000000000000000000FF000000FF000000
              FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000FF000000FF000000
              FF0000000000000000000000000084848400FFFFFF00FFFFFF00008400000084
              000000840000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF000000FF000000000000000000000000000000FF000000FF000000
              FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              FF0000000000000000000000000084848400FFFFFF00FFFFFF0000840000FFFF
              FF000084000000840000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
              00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
              0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              FF000000FF000000FF000000FF000000FF00FFFFFF000000FF000000FF000000
              FF000000FF000000FF000000000000000000000000000000FF000000FF000000
              FF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF000000FF000000FF000000
              FF0000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF000084000000840000FFFFFF00FFFFFF0000000000000000000000
              00000000000084848400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
              000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
              FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
              FF000000FF000000FF000000000000000000000000000000FF000000FF00FFFF
              FF00FFFFFF000000FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000
              FF0000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000840000FFFFFF00FFFFFF0000000000000000000000
              00000000000084848400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
              000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
              FF000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
              FF000000FF000000FF00000000000000000000000000000000000000FF000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
              0000000000000000000084848400FFFFFF00FFFFFF0000000000000000000000
              0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFFFF000000FF000000
              FF000000FF0000000000000000000000000000000000000000000000FF000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF000000000000000000000000000000000000000000000000000000
              0000000000000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF00000000000000000000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
              0000000000000000000000000000000000000000000000000000848484008484
              8400848484008484840084848400000000000000000000000000000000000000
              0000000000000000000000000000000000008484840084848400848484008484
              8400848484000000000000000000000000000000000000000000000000000000
              000000000000000000000000FF000000FF000000FF000000FF000000FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FF000000FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000FF000000FF000000FF000000FF0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FF000000
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FF000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF000000FF000000
              FF000000FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF000000FF000000
              FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              FF000000FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF000000FF000000FF000000
              FF000000FF000000FF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF000000FF000000FF000000
              FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              FF000000FF000000FF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000FF000000FF000000FF00FFFFFF00FFFF
              FF000000FF000000FF000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF000000FF000000
              FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              FF000000FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FF000000FF000000FF000000FF000000FF000000
              FF000000FF000000FF000000FF000000FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FF000000
              FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
              FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              FF000000FF000000FF00FFFFFF00FFFFFF000000FF000000FF000000FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
              FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF000000FF000000
              00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
              FF000000FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000FF000000FF000000FF000000FF000000FF00FFFFFF00FFFF
              FF000000FF000000FF000000FF000000FF000000FF0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF000000FF000000FF000000
              FF00000000000000FF000000FF000000FF000000FF00000000000000FF000000
              FF000000FF000000FF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FF000000FF000000FF000000FF00FFFFFF00FFFF
              FF000000FF000000FF000000FF000000FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF000000FF000000
              FF000000FF00000000000000FF000000FF00000000000000FF000000FF000000
              FF000000FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000FF000000FF000000FF00FFFFFF00FFFF
              FF000000FF000000FF000000FF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FF000000
              FF000000FF000000FF0000000000000000000000FF000000FF000000FF000000
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FF000000FF000000FF000000
              FF000000FF000000FF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000FF000000FF000000
              FF000000FF000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FF000000
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000FF000000FF000000FF000000FF0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FF000000FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000424D3E000000000000003E000000
              2800000038000000360000000100010000000000B00100000000000000000000
              000000000000000000000000FFFFFF0000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00
              F07FC1FF07FC1F00C01F80FE03F80F00C01F007C01F00700800E003800E00300
              800E003800E00300800E003800E00300800E003800E00300800E003800E00300
              C01F007C01F00700C01F80FE03F80F00F07FC1FF07FC1F00FFFFFFFFFFFFFF00
              FFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FCFFF3FFFFFFFF00F87FE1FFFFFFFF00
              F03FC0FFFFFFFF00E01F807FCFFFFF00C00F003F87FFFF008006001F03FF7F00
              0000000E01FE3F008006001C00FC1F00C00F003800780F00E01F807000300700
              9026409800780F000840210C00FC1F008486121E01FE3F00C30F0C3F03FF7F00
              E01F807F87FFFF00F03FC0FFCFFFFF00F87FE1FFFFFFFF00FCFFF3FFFFFFFF00
              00000000000000000000000000000000000000000000}
          end
          inherited ilPuntosRevision: TImageList
            Bitmap = {
              494C010109008400940018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
              000000000000360000002800000060000000480000000100200000000000006C
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C6C6
              C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000C6C6C600848484008484
              8400848484000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600848484008484
              8400848484008484840000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600C6C6C600848484008484
              8400848484008484840084848400848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400C6C6C600C6C6C6008484
              84008484840084848400C6C6C600C6C6C60084848400FFFFFF00C6C6C6008484
              8400848484008484840084848400848484008484840084848400848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
              C600848484008484840084848400848484008484840084848400848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400C6C6C600C6C6C600C6C6
              C600C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00C6C6C6008484840084848400848484008484840084848400848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400C6C6C60084848400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF00FFFF
              FF00FFFFFF00C6C6C60084848400848484008484840000000000848484008484
              8400848484008484840084848400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF0084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C60084848400848484008484840084848400C6C6
              C600C6C6C600C6C6C60084848400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0084848400C6C6C60084848400C6C6C600FFFFFF00C6C6C600FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840084848400C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000084848400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600FFFFFF0084848400FFFFFF008484
              8400C6C6C600FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00C6C6
              C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              8400FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF00C6C6C600FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840084848400C6C6C600FFFF
              FF00FFFFFF00FFFFFF0084848400848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
              84000000000084848400FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              8400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00000000008484
              8400C6C6C600C6C6C600FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008484840000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              84008484840084848400848484008484840084848400FFFFFF00000000008484
              8400C6C6C600C6C6C60084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              8400FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF0084848400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000FFFFFF00FFFFFF00FFFFFF00C6C6C6008484840084848400C6C6C600FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008484840084848400848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000848484008484840084848400848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C6C6
              C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C6C6
              C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000084848400C6C6C600FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000084848400C6C6C600FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C60000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000084840000000000008484
              0000848400008484000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C600C6C6C60000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C6000000000084848400848484008484
              8400848484008484840084848400848484008484840084848400848484008484
              84008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C600C6C6C60000000000FFFFFF00FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C6000000000000000000848400000000
              0000848400000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000848484008484
              8400848484008484840084848400848484008484840084848400848484008484
              84008484840084848400848484000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008484840000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF0000000000FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FFFFFF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
              FF0000000000FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
              FF0000000000FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF0000FF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00C6C6C600000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C60084848400FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C6000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00C6C6C600C6C6
              C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C600848484000084840000FFFF00FFFF
              FF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF0084848400000000000000
              0000000000008400840084008400000000008400840084008400840084000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000848484008484840084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000008484
              84008484840084848400FFFFFF00FFFFFF00C6C6C60000008400000084000000
              8400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              000084848400848484008484840000FFFF00C6C6C6000084840084848400C6C6
              C60000FFFF0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000FFFF000000000000000000000000000000000000000000000000008484
              84008484840084848400C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0084848400C6C6C600C6C6C600840084000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
              C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C6000000840000008400000084000000
              840000008400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              0000FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C6000084
              8400C6C6C600FFFFFF0000FFFF00C6C6C600FFFFFF00FFFFFF0000FFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              00000000000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00848484000000
              000000000000C6C6C600C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
              C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00000084000000840000008400000084000000
              840000008400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              000000FFFF00FFFFFF0000FFFF0000848400FFFFFF0000FFFF0000FFFF00C6C6
              C6000084840000FFFF00C6C6C6000084840000FFFF00FFFFFF00FFFFFF00FFFF
              FF0000FFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
              000084848400C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000000000C6C6C60084848400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF000000840000008400FFFFFF00FFFFFF00C6C6
              C6000000840000008400C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
              FF008484840000000000000000000000000000000000000000000000000000FF
              FF0000FFFF00FFFFFF0000FFFF0000FFFF00C6C6C6008484840000FFFF00C6C6
              C60000FFFF0000FFFF00C6C6C60000FFFF00FFFFFF00C6C6C60000848400FFFF
              FF00FFFFFF0000FFFF0084848400000000000000000000000000000000000000
              0000C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
              C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00C6C6C6000000840084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000C6C6C600FFFF
              FF00FFFFFF0000FFFF00FFFFFF00C6C6C60000FFFF00C6C6C600C6C6C6000084
              8400C6C6C600FFFFFF0000FFFF00C6C6C600C6C6C60000848400FFFFFF00C6C6
              C600FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
              0000C6C6C600FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
              8400C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
              C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000FFFFFF0000FF
              FF0000FFFF00C6C6C60000FFFF0000FFFF00FFFFFF000084840000848400C6C6
              C60084848400C6C6C600FFFFFF0000FFFF0000FFFF00FFFFFF000084840000FF
              FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
              0000FFFFFF00FFFFFF00C6C6C6000000000084848400FFFFFF00FFFFFF000000
              0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000840000008400C6C6
              C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600C6C6C600FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000FFFF00FFFFFF0000FF
              FF0000848400C6C6C60000FFFF0084848400C6C6C60000FFFF0000FFFF00FFFF
              FF0000FFFF00008484008484840084848400C6C6C600FFFFFF0000FFFF0000FF
              FF00FFFFFF008484840000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF0000008400C6C6C600FFFFFF000000
              8400FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400C6C6C600C6C6C600FFFF
              FF008484840000000000000000000000000000000000FFFFFF0000FFFF00FFFF
              FF00FFFFFF0000FFFF00C6C6C600C6C6C60000848400C6C6C600FFFFFF0000FF
              FF00FFFFFF00FFFFFF0000FFFF00C6C6C600C6C6C60000FFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              000000000000C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6C600FFFF
              FF00FFFFFF00C6C6C600FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF000000
              8400FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000840000008400C6C6C600FFFF
              FF00848484000000000000000000000000000000000000FFFF00FFFFFF0000FF
              FF0000FFFF00FFFFFF0000FFFF0000FFFF00C6C6C6000084840000FFFF00C6C6
              C60000FFFF0000FFFF00FFFFFF0000FFFF0000848400FFFFFF0000FFFF0000FF
              FF00848484000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00000000008484
              840084848400C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000840000008400C6C6
              C600C6C6C600C6C6C600C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400FFFF
              FF00848484000000000000000000000000000000000000000000848484008484
              840000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF0000FFFF0000848400FFFF
              FF0000FFFF0084848400C6C6C60000FFFF0000FFFF00FFFFFF0000FFFF008484
              8400000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
              C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              00008484840000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF000084
              8400C6C6C6008484840084848400C6C6C600FFFFFF0000FFFF00FFFFFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00C6C6C600C6C6
              C600C6C6C6008484840084848400848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
              C600C6C6C600C6C6C600FFFFFF00FFFFFF00C6C6C600FFFFFF00FFFFFF00C6C6
              C600FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              000000000000848484008484840000FFFF00FFFFFF0000FFFF0000FFFF00FFFF
              FF0000FFFF0000FFFF00C6C6C6000084840000FFFF00FFFFFF0000FFFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00C6C6
              C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000848484008484840084848400848484008484840084848400848484008484
              8400848484008484840084848400848484008484840084848400848484008484
              8400848484008484840084848400000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
              84008484840084848400848484008484840000000000C6C6C600FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000848484008484840000FFFF00FFFF
              FF0000FFFF0000FFFF00FFFFFF0000FFFF0000FFFF00FFFFFF00848484000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000848484008484
              8400000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000848484008400000084000000840000008400000084000000840000008400
              0000840000008400000084848400848484008484840084848400848484008484
              8400848484008484840084848400000000000000000000000000000000000000
              0000000000008484840084848400848484008484840084848400848484008484
              8400848484008484840084848400848484000000000084848400848484008484
              8400000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000008484840000FF
              FF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0084848400000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000848484008400000084000000840000008400000084000000840000008400
              0000840000008400000084848400848484008484840084848400848484008484
              8400848484008484840084848400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000084848400C6C6C600C6C6
              C600C6C6C600C6C6C600C6C6C600848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              84008484840000FFFF00FFFFFF0000FFFF0000FFFF0084848400000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000848484008484
              8400848484008484840084848400848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000084848400848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C6C6
              C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C6C6
              C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C6C6
              C600C6C6C600C6C6C60000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00848400008484
              0000848400008484000084840000848400008484000084840000848400008484
              00008484000084840000000000000000000000000000C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C6C6C600FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000008484840000000000000000000000
              000000000000000000000000000084848400000000008484840000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00000000000000
              00000000000000000000FFFFFF008484840000000000C6C6C60084848400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00C6C6C6000000000084848400848484008484
              8400848484008484840084848400848484008484840084848400848484008484
              84008484840084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400000000008484840000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484008484840084848400848484008484
              8400848484008484840084848400848484008484840084848400848484008484
              84008484840084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF0000FFFF00FFFFFF00FFFF
              FF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF008484840000000000C6C6C60084848400FFFF
              FF00FFFFFF008400000084000000840000008400000084000000840000008400
              0000FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084008400000000008400
              8400840084008400840000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0084848400000000000000000000000000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF0000FFFF00FFFF
              FF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000FF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008484
              84008484840084848400840084008400840000000000FFFFFF00840084000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000008484
              840084848400848484000000000084848400FFFFFF00FFFFFF00848484000000
              000084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF008484
              84008484840084848400FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
              FF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00C6C6
              C600FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400000000008484840000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              000000000000000000008400840000000000FFFFFF00FFFFFF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF0000848400C6C6C6000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF0000FF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFF
              FF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF0000FFFF00FFFF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF008484840000000000C6C6C60084848400FFFF
              FF00FFFFFF008400000084000000840000008400000084000000840000008400
              0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000000000000FFFFFF00FFFFFF00C6C6C600000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF0000848400FFFFFF000000
              000084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00C6C6C600FFFFFF00FFFFFF0000FFFF00FFFFFF00FFFFFF00C6C6C600C6C6
              C600C6C6C60000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF00C6C6C60000FF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000848484000084840000FFFF00000000008484
              840084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF0000FFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60084848400FFFFFF00FFFF
              FF00FFFFFF0084848400C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF0000FF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400000000008484840000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00848484000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000008484000084840000FFFF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000FFFF00C6C6C6008484840000FFFF0000FFFF00FFFF
              FF0000FFFF00FFFFFF0084848400C6C6C600FFFFFF00FFFFFF0000FFFF00FFFF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF008484840000000000C6C6C60084848400FFFF
              FF00FFFFFF008400000084000000840000008400000084000000840000008400
              0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              00000000000084848400C6C6C600FFFFFF00FFFFFF00FFFFFF00848484000000
              0000000000008484840000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000084840000FFFF00FFFFFF00848484008484
              840084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0000FFFF00FFFFFF008484840000FFFF00FFFFFF00FFFFFF0000FF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00000000000000000084848400FFFFFF0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000FFFF00FFFFFF0000000000848484008484
              840084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400C6C6C600FFFFFF0000FF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0084848400000000008484840000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000084840000FFFF0000FFFF0000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00C6C6C60084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF0084848400C6C6C600FFFF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF008484840000000000C6C6C60084848400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
              000000000000FFFFFF0000000000000000000000000000000000000000000000
              0000C6C6C600FFFFFF00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
              84000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000848400FFFFFF0000000000FFFFFF00848484008484
              840084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFFFF008484840000FF
              FF00FFFFFF0084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000C6C6C600C6C6
              C600C6C6C6000000000000000000000000000000000000000000000000000000
              0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000084840000FFFF0000000000FFFFFF00FFFFFF00848484008484
              840084848400848484008484840084848400848484008484840084848400FFFF
              FF00FFFFFF008484840000000000000000000000000084848400C6C6C6008484
              8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484
              8400C6C6C60084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00848484000000000084848400848484008484
              840084848400848484008484840084848400C6C6C600FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00C6C6C60000000000000000000000000000000000000000000000
              000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
              C6000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              000084848400000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00848484000000000000000000000000008484840084848400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00FFFF
              FF008484840084848400000000000000000084848400FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              000000008400000084000000840084848400FFFFFF00FFFFFF00848484008484
              8400848484008484840084848400848484008484840084848400FFFFFF00FFFF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FF
              FF00FFFFFF008484840000000000000000000000000084848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF000000
              00000000000000000000C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
              0000000084000000840000000000848484008400000084000000840000008400
              0000840000008400000084000000840000008400000084000000840000008400
              0000840000008484840000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00C6C6C600000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000000000000848484008400000084000000840000008400
              0000840000008400000084000000840000008400000084000000840000008400
              0000840000008484840000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
              0000000000000000000000000000848484000000000084848400848484000000
              0000848484008484840000000000848484008484840000000000848484008484
              8400000000008484840000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000848484008484
              840084848400000000000000000000000000424D3E000000000000003E000000
              2800000060000000480000000100010000000000600300000000000000000000
              000000000000000000000000FFFFFF00E3FFFF00000000000000000081FFFF00
              000000000000000080FFFF000000000000000000007FFF000000000000000000
              001FFF0000000000000000000003FF0000000000000000008000FF0000000000
              0000000080007F00000000000000000000000F00000000000000000000000700
              0000000000000000000003000000000000000000000000000000000000000000
              000000000000000000000000800000000000000000000000C000000000000000
              00000000E00000000000000000000000F00000000000000000000000F0000300
              0000000000000000E00003000000000000000000E00007000000000000000000
              E0001F000000000000000000F0007F000000000000000000F000FF0000000000
              00000000FE1FFF000000000000000000F1FFFFE3FFFFF1FFFFE3FFFFC0FFFF81
              FFFFC0FFFF81FFFF807FFF80FFFF803FFF807FFF803FFF000007800FFF0003FF
              803FFF0000038007FF0003FF8000000000038000FF000FFF8000008000038000
              3F801FFF80000080000380001F80001FF00000E00003F00003E0007FF00000F0
              0003E00000F000FFF00000F00003E00000F000FFF00000F00003C00001F000FF
              F00000F00003800001F000FFF00000F00003800003F000FFF00000F000038000
              03F0003FF00000F00003000007F0007FF00000F00003000007F800FFF00000F0
              0003C0000FFE00FFF00000F00003F0001FFF007FF00000F00003F8001FFF007F
              F00000F00003FF001FFFC3FFF00000F8000FFFC03FFFFFFFF00000FF807FFFE0
              3FFFFFFFFFFFFFFFC0FFFFFCFFFFFFFFE3FFFFE3FFFFE3FFFFFF800181FFFF81
              FFFF81FFFFFF000180FFFF80FFFF80FFFF3C0001007FFF007FFF007FFF000001
              007FFF007FFF007FFF000001007FFF00000300000300000180FFFF8000038000
              030000018083FF800003800003000001E007FFE20003800003000001F00FFFFE
              0003800003000001F81FFFFE0003800003000001FC07FFFE0003800003000001
              F807FFFE0003800003000001F008FFFE0003800003000001F0061FFE00038000
              03000001F0071FFC0003800003000001F00F07FC0003800003000001F00C01F8
              0003800003000001F00800F0000380000300FE00F00000F0000380000381FE00
              FE3800F00003FFFFFFFFFE00FFFC01FE0003FFFFFFFFFF01FFFE03FE0003FFFF
              FFFFFF01FFFFFFFFFFFFFFFFFFFFFFC700000000000000000000000000000000
              000000000000}
          end
        end
      end
      inherited tsEmbargos: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited CoolBar1: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = ToolBar1
              ImageIndex = -1
              MinHeight = 27
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited ToolBar1: TToolBar
            Width = 1169
            ExplicitWidth = 1169
          end
        end
        inherited dbgEmbargos: TRxDBGrid
          Width = 1182
          Height = 338
        end
        inherited Panel3: TPanel
          Top = 367
          Width = 1182
          ExplicitTop = 367
          ExplicitWidth = 1182
        end
      end
      inherited tsRecursosExtraordinarios: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1182
        ExplicitHeight = 396
        inherited CoolBar2: TCoolBar
          Width = 1182
          Bands = <
            item
              Control = ToolBar2
              ImageIndex = -1
              MinHeight = 27
              Width = 1176
            end>
          ExplicitWidth = 1182
          inherited ToolBar2: TToolBar
            Width = 1169
            ExplicitWidth = 1169
          end
        end
        inherited dbgRecExtraord: TArtDBGrid
          Width = 1182
          Height = 338
        end
        inherited Panel4: TPanel
          Top = 367
          Width = 1182
          ExplicitTop = 367
          ExplicitWidth = 1182
        end
      end
      object tsGestion: TTabSheet
        Caption = 'Gesti'#243'n'
        ImageIndex = 10
        object chkFaltaDemanda: TCheckBox
          Left = 5
          Top = 3
          Width = 109
          Height = 15
          Caption = 'Falta Demanda'
          TabOrder = 0
        end
        object gbGestionSiniestro: TGroupBox
          Left = 5
          Top = 19
          Width = 246
          Height = 94
          Caption = 'Siniestro'
          TabOrder = 1
          object chkDevolvioSiniestro: TCheckBox
            Left = 16
            Top = 68
            Width = 109
            Height = 15
            Caption = 'Devolvi'#243' Siniestro'
            TabOrder = 1
          end
          object rgEnvioSiniestro: TRadioGroup
            Left = 12
            Top = 16
            Width = 129
            Height = 43
            Caption = 'Se Envi'#243' Siniestro'
            Columns = 2
            Items.Strings = (
              'Si'
              'No')
            TabOrder = 0
          end
          object edFEnvioSiniestro: TDateComboBox
            Left = 146
            Top = 21
            Width = 88
            Height = 21
            TabStop = False
            ErrorMessage = 
              'La fecha debe ser mayor o igual que la fecha de inicio del juici' +
              'o'
            DialogTitle = 'Seleccione una fecha.'
            Weekends = [Sun, Sat]
            TabOrder = 2
          end
          object edFDevolvioSiniestro: TDateComboBox
            Left = 143
            Top = 65
            Width = 88
            Height = 21
            TabStop = False
            ErrorMessage = 
              'La fecha debe ser mayor o igual que la fecha de inicio del juici' +
              'o'
            DialogTitle = 'Seleccione una fecha.'
            Weekends = [Sun, Sat]
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited fpVerAplicaciones: TFormPanel
    Left = 658
    Top = 562
    ExplicitLeft = 658
    ExplicitTop = 562
  end
  inherited fpJuicioRelacionado: TFormPanel
    Left = 650
    Top = 563
    ExplicitLeft = 650
    ExplicitTop = 563
  end
  inherited pnAprobacionConDup: TFormPanel
    Left = 732
    Top = 592
    ExplicitLeft = 732
    ExplicitTop = 592
  end
  object pnRespuesta: TFormPanel [6]
    Left = 71
    Top = 546
    Width = 481
    Height = 178
    Caption = 'Respuesta Evento'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    BorderStyle = bsDialog
    Position = poOwnerFormCenter
    DesignSize = (
      481
      178)
    object Label3: TLabel
      Left = 3
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Respuesta:'
    end
    object btRespuestaAceptar: TButton
      Left = 320
      Top = 148
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btRespuestaAceptarClick
    end
    object Button2: TButton
      Left = 400
      Top = 148
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object edRespuestaEvento: TRxRichEdit
      Left = 67
      Top = 13
      Width = 400
      Height = 129
      DrawEndPage = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PlainText = True
      TabOrder = 2
    end
  end
  inherited Seguridad: TSeguridad
    Left = 662
  end
  inherited FormStorage: TFormStorage
    Left = 701
    Top = 80
  end
  inherited ShortCutControl: TShortCutControl
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
        LinkControl = tbFijarSentencia
      end
      item
        Key = 16455
        LinkControl = tbGuardar
      end
      item
        Key = 16467
        LinkControl = tbSalir
      end
      item
        Key = 16457
        LinkControl = tbImprimir
      end
      item
        Key = 16468
      end>
    Left = 589
  end
  inherited odAbrirArchivo: TOpenDialog
    Left = 714
    Top = 64
  end
  inherited iStates: TImageList
    Bitmap = {
      494C010102008000900010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00A5CE
      DE00C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00A5CEDE00A5CEDE00A5CE
      DE0000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00A5CE
      DE00A5CEDE00C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00A5CEDE008484
      840000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5CEDE00C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00A5CEDE000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5CEDE00C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00A5CEDE000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5CEDE00C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00A5CEDE000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5CEDE00C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00A5CEDE000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6C6C600C6C6C600C6C6C600A5CEDE00A5CEDE00A5CEDE00848484000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000008484840084848400848484000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000848400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008484840084848400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000008484840000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000008484000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000008400000084000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000008400000084000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000008400000084000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000848484008484840000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000008400008484000084840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000084000000840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000000F81F000000000000E00700000000
      0000E007000000000000F00F000000000000F00F000000000000F00F00000000
      0000F00F000000000000F00F000000000000F81F000000000000FC7F00000000
      0000FC7F000000000000FC3F000000000000FC3F000000000000FC3F00000000
      0000FC3F000000000000FC7F0000000000000000000000000000000000000000
      000000000000}
  end
  inherited sdqEventoJuicioEnTramite: TSDQuery
    SQL.Strings = (
      
        'SELECT et_id, et_fechaevento, et_observaciones, et_respuesta,et_' +
        'fechavencimiento, et_idtipoevento,'
      '       lte_tipoevento.te_descripcion, et_fechabaja,'
      '       NVL((SELECT DISTINCT '#39'S'#39
      '                       FROM legales.lea_eventoarchivoasociado'
      '                      WHERE ea_ideventojuicioentramite = et_id'
      
        '                        AND ea_fechabaja IS NULL), '#39'N'#39') tieneadj' +
        'unto, et_idaudiencia, au_nroaudiencia'
      
        '  FROM legales.let_eventojuicioentramite, legales.lte_tipoevento' +
        ', legales.lau_audiencia'
      ' WHERE (et_idtipoevento = lte_tipoevento.te_id)'
      '   AND et_idjuicioentramite = :idjuicioentramite'
      '   AND et_idaudiencia = au_id(+)')
  end
  inherited sdqOrigenDemanda: TSDQuery
    SQL.Strings = (
      
        'SELECT od_id, od_idreclamante, od_dentrodelregimen, (SELECT COUN' +
        'T(*)'
      
        '                                                       FROM lega' +
        'les.lsj_siniestrosjuicioentramite'
      
        '                                                      WHERE sj_i' +
        'dorigendemanda = od_id) tienesiniestros,'
      
        '       lre_reclamante.re_descripcion, lbo_abogado.bo_nombre, leg' +
        'ales.get_descripcionorigendemanda(od_id), od_idabogado,'
      
        '       od_cuitcuil, od_dentrodelregimen, od_cumplenormashys, od_' +
        'nombre, od_representantelegal, od_telefono,'
      
        '       od_domiciliolegalconstituido, od_numerodocumento, od_idti' +
        'podocumento, od_idcaracterabogado, od_fechabaja,'
      
        '       od_fechahechogenerador, od_salariodeclarado, od_idjuicioe' +
        'ntramite, od_contrato, od_idmedico, od_presestudiosmedicos,'
      
        '       od_prescertificadosmedicos,OD_FECHANACIMIENTO,OD_FECHAACC' +
        'IDENTE'
      
        '  FROM legales.lod_origendemanda, legales.lre_reclamante, legale' +
        's.lbo_abogado'
      ' WHERE od_idreclamante = lre_reclamante.re_id'
      '   AND od_idabogado = lbo_abogado.bo_id(+)'
      '   AND od_idjuicioentramite = :idjuicioentramite')
  end
  inherited sdqPagoLegal: TSDQuery
    SQL.Strings = (
      
        'SELECT lbp.bp_descripcion, lpl.pl_detallebeneficiario, lpl.pl_id' +
        ', lpl.pl_numpago, lpl.pl_fechapago, lpl.pl_conpago,'
      
        '       lpl.pl_fechaemision, lpl.pl_cuitcuil, lpl.pl_letrafactura' +
        ', lpl.pl_situacionfactura, lpl.pl_numerofactura,'
      
        '       lpl.pl_fechafactura, lpl.pl_importepago, lpl.pl_formapago' +
        ', lpl.pl_comentario, lpl.pl_estado, lpl.pl_usualta,'
      
        '       lpl.pl_fechaalta, lpl.pl_usumodif, lpl.pl_fechamodif, lpl' +
        '.pl_fechavencimiento, lpl.pl_usuarioaprobado,'
      
        '       lpl.pl_fechaaprobado, lpl.pl_importeconretencion, lpl.pl_' +
        'chequenombre, lpl.pl_fecharecepfactura, lpl.pl_prestadormutual,'
      
        '       lpl.pl_proxdigfactura_fncl, lpl.pl_telegramapago, lpl.pl_' +
        'cai, lpl.pl_idjuicioentramite, lpl.pl_idtipooperacion,'
      
        '       lpl.pl_idbeneficiariopago, lpl.pl_idembargo, lpl.pl_detal' +
        'lebeneficiario, lpl.pl_iddetallebeneficiario,'
      
        '       pl_fechavencimientopago, scp.cp_denpago, scp.cp_ctapago, ' +
        'scp.cp_especie, scp.cp_codigossn, scp.cp_retencion, scp.cp_tipo,'
      
        '       scp.cp_autorizacion, scp.cp_altamedica, scp.cp_fbaja, scp' +
        '.cp_descripcion, scp.cp_tipomonto, scp.cp_telegrama,'
      
        '       scp.cp_nomenclado, scp.cp_legales, scp.cp_grado, scp.cp_c' +
        'aracter, scp.cp_adelanto, scp.cp_espagomensual,'
      
        '       scp.cp_aporycontri, scp.cp_retiva, lto.to_descripcion, lt' +
        'o.to_idmomento, ce_ordenpago ordennro, ce_fechaop ordenfecha,'
      
        '       ce_numero chequenro, ce_fechacheque chequefecha, ce_debit' +
        'ado debitado, lpl.pl_paguesea, lpl.pl_pagoexclusivo,'
      
        '       lpl.pl_letrafactura || '#39'-'#39' || lpl.pl_situacionfactura || ' +
        #39'-'#39' || lpl.pl_numerofactura AS nrofactura,'
      
        '       DECODE(lpl.pl_estado, '#39'C'#39', '#39'Cargado'#39', '#39'A'#39', '#39'Anulado'#39', '#39'X'#39 +
        ', '#39'Cancelado'#39', '#39'E'#39', '#39'Aprobado'#39', '#39#39') estado, pl_idintereses,'
      '       llj.lj_fechaaprobado pl_fechaaprobacion,'
      '       llj.lj_usuarioaprobado pl_usuaprobacion,'
      '       pl_duplicado, pl_estadoduplicidad, pl_motivoaprobacion,'
      
        '       DECODE(pl_estadoduplicidad, '#39'A'#39', '#39'Aprobado'#39', '#39'R'#39', '#39'Rechaz' +
        'ado'#39', '#39#39') AS estadoduplicado, pl_idliquidacion'
      
        '  FROM rce_chequeemitido, legales.lpl_pagolegal lpl, legales.lbp' +
        '_beneficiariopago lbp, art.scp_conpago scp,'
      '       legales.lto_tipooperacion lto,'
      '         legales.llj_liquidacionjuicio llj'
      ' WHERE (    (lpl.pl_idbeneficiariopago = lbp.bp_id(+))'
      '        AND (lpl.pl_conpago = scp.cp_conpago)'
      '        AND (lpl.pl_idtipooperacion = lto.to_id(+)))'
      '   AND lpl.pl_idjuicioentramite = :idjuicioentramite'
      '   AND ce_id(+) = pl_idchequeemitido'
      '   AND  (lpl.pl_idliquidacion = llj.lj_id(+))'
      '   order by llj.LJ_FECHAAPROBADO')
  end
  inherited pmSeguimientoJuicios: TPopupMenu
    Left = 735
    Top = 71
  end
  inherited cdsArchivosAsociados: TClientDataSet
    Top = 585
  end
  inherited QueryPrint: TQueryPrint
    Left = 1156
    Top = 429
  end
  inherited PrintDialog: TPrintDialog
    Left = 1184
    Top = 485
  end
  inherited QueryPrintRecExtraord: TQueryPrint
    Left = 1213
    Top = 429
  end
  inherited cdsArchivosAsociadosPericias: TClientDataSet
    Top = 585
  end
  object sdqBlanqueoSentencia: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT *'
      'FROM ljg_juiciogestion, legales.ljt_juicioentramite'
      'WHERE jt_id = :jt_id'
      '  AND jt_id = jg_idjuicioentramite(+)')
    Left = 192
    Top = 556
    ParamData = <
      item
        DataType = ftInteger
        Name = 'jt_id'
        ParamType = ptInput
      end>
  end
end
