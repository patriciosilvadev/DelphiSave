object frmInstanciasJuicio: TfrmInstanciasJuicio
  Left = 208
  Top = 108
  Caption = 'Instancias'
  ClientHeight = 293
  ClientWidth = 753
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    753
    293)
  PixelsPerInch = 96
  TextHeight = 13
  object cbInstancias: TCoolBar
    Left = 0
    Top = 0
    Width = 753
    Height = 29
    Bands = <
      item
        Control = tbrInstancias
        ImageIndex = -1
        MinHeight = 27
        Width = 747
      end>
    object tbrInstancias: TToolBar
      Left = 9
      Top = 0
      Width = 740
      Height = 27
      BorderWidth = 1
      ButtonWidth = 26
      Caption = 'ToolBar'
      HotImages = dmLegales.ilByN
      Images = dmLegales.ilColor
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object tbCambioInstancia: TToolButton
        Tag = 1
        Left = 0
        Top = 0
        Hint = 'Cambio Juzgado'
        ImageIndex = 24
        OnClick = tbCambioInstanciaClick
      end
      object tbReasignarPrimeraInstancia: TToolButton
        Left = 26
        Top = 0
        Hint = 'Reasignar al Juzgado de Primera Instancia'
        Caption = 'Reasignar Primera Instancia'
        ImageIndex = 25
        OnClick = tbReasignarPrimeraInstanciaClick
      end
      object tbEditarInstancia: TToolButton
        Left = 52
        Top = 0
        Caption = 'tbEditarInstancia'
        ImageIndex = 7
        OnClick = tbEditarInstanciaClick
      end
      object tbEliminarCambioJuzgado: TToolButton
        Left = 78
        Top = 0
        Hint = 'Eliminar Cambio de Instancia'
        Caption = 'Eliminar Instancia'
        ImageIndex = 8
        OnClick = tbEliminarCambioJuzgadoClick
      end
      object tbFijarSentenciaCambioInstancia: TToolButton
        Left = 104
        Top = 0
        Hint = 'Fijar Sentencia de la Instancia'
        Caption = 'Fijar Sentencia de la Instancia'
        ImageIndex = 20
        OnClick = tbFijarSentenciaCambioInstanciaClick
      end
      object tbSeparador2: TToolButton
        Left = 130
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object tbImprimirInstanciasJuicio: TToolButton
        Left = 138
        Top = 0
        Hint = 'Imprimir Instancias de Juicio'
        ImageIndex = 4
        Visible = False
      end
      object tbSeparador3: TToolButton
        Left = 164
        Top = 0
        Width = 7
        Caption = 'tbSeparador3'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object tbSalirInstanciaJuicios: TToolButton
        Left = 171
        Top = 0
        Caption = 'tbSalirInstanciaJuicios'
        ImageIndex = 5
        OnClick = tbSalirInstanciaJuiciosClick
      end
    end
  end
  object dbGridInstanciasJuicio: TDBGrid
    Left = 6
    Top = 33
    Width = 737
    Height = 257
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsInstanciaJuicioEnTramite
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IJ_ORDEN'
        Title.Caption = 'Orden'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IN_DESCRIPCION'
        Title.Caption = 'Instancia'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IJ_EXPEDIENTE'
        Title.Caption = 'Expediente'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JU_DESCRIPCION'
        Title.Caption = 'Jurisdicci'#243'n'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FU_DESCRIPCION'
        Title.Caption = 'Fuero'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JZ_DESCRIPCION'
        Title.Caption = 'Juzgado'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SC_DESCRIPCION'
        Title.Caption = 'Secretar'#237'a'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MC_DESCRIPCION'
        Title.Caption = 'Motivo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TipoSentencia'
        Title.Caption = 'Tipo Sentencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IJ_IMPORTESENTENCIA'
        Title.Caption = 'Total Sentencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ij_importecapital'
        Title.Caption = 'Sentencia Capital'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IJ_IMPORTEHONORARIOS'
        Title.Caption = 'Honorarios'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ij_interesessentencia'
        Title.Caption = 'Intereses'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ij_importetasajusticia'
        Title.Caption = 'T. Justicia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ij_fechasentencia'
        Title.Caption = 'F. Sentencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IJ_ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDJUICIOENTRAMITE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDJURISDICCION'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDFUERO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDJUZGADO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDSECRETARIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDINSTANCIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_FECHATRASPASO'
        Title.Caption = 'F.Ingreso'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IJ_FECHAEGRESO'
        Title.Caption = 'F.Egreso'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_IDMOTIVOCAMBIOJUZGADO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IJ_OBSERVACIONES'
        Title.Caption = 'Observaciones'
        Visible = True
      end>
  end
  object fpCambioInstanciaJuicio: TFormPanel
    Left = 4
    Top = 25
    Width = 745
    Height = 232
    HelpContext = 7
    Caption = 'Instancias de la Causa'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderStyle = bsDialog
    Position = poScreenCenter
    DesignSize = (
      745
      232)
    object bvSeparadorBotonesInstancias: TBevel
      Left = 7
      Top = 195
      Width = 730
      Height = 5
      Anchors = [akLeft, akRight, akBottom]
      Shape = bsTopLine
    end
    object btnAceptar: TButton
      Left = 572
      Top = 201
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 1
      OnClick = btnAceptarClick
    end
    object gbMotivo: TGroupBox
      Left = 8
      Top = 103
      Width = 674
      Height = 87
      Caption = ' Motivo '
      TabOrder = 0
      object lblDetalle: TLabel
        Left = 13
        Top = 46
        Width = 36
        Height = 13
        Caption = 'Detalle:'
      end
      object lblMotivo: TLabel
        Left = 10
        Top = 18
        Width = 35
        Height = 13
        Caption = 'Motivo:'
      end
      object mDetalleCambioJuzgado: TMemo
        Left = 82
        Top = 43
        Width = 582
        Height = 33
        MaxLength = 2048
        TabOrder = 1
      end
      inline fraMotivoCambioJuzgado: TfraCodigoDescripcionExt
        Left = 81
        Top = 13
        Width = 214
        Height = 23
        TabOrder = 0
        ExplicitLeft = 81
        ExplicitTop = 13
        ExplicitWidth = 214
        inherited cmbDescripcion: TArtComboBox
          Width = 149
          ExplicitWidth = 149
        end
      end
    end
    object btnCancelar: TButton
      Left = 654
      Top = 201
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 2
    end
    inline fraJuzgadosInstancia: TfraJuzgados
      Left = 1
      Top = 8
      Width = 743
      Height = 97
      TabOrder = 3
      ExplicitLeft = 1
      ExplicitTop = 8
      ExplicitWidth = 743
      ExplicitHeight = 97
      DesignSize = (
        743
        97)
      inherited gbJuzgados: TGroupBox
        Left = 8
        Top = 2
        Width = 733
        Height = 87
        ExplicitLeft = 8
        ExplicitTop = 2
        ExplicitWidth = 733
        ExplicitHeight = 87
        DesignSize = (
          733
          87)
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
          Left = 509
          Width = 47
          ExplicitLeft = 509
          ExplicitWidth = 47
        end
        inherited Label1: TLabel
          Width = 5
          ExplicitWidth = 5
        end
        inherited fraFuero: TfraCodigoDescripcionExt
          Width = 360
          ExplicitWidth = 360
          inherited cmbDescripcion: TArtComboBox
            Width = 295
            ExplicitWidth = 295
          end
        end
        inherited fraSecretaria: TfraCodigoDescripcionExt
          Left = 351
          Width = 360
          ExplicitLeft = 351
          ExplicitWidth = 360
          inherited cmbDescripcion: TArtComboBox
            Width = 295
            ExplicitWidth = 295
          end
          inherited edCodigo: TPatternEdit
            Left = 0
            ExplicitLeft = 0
          end
        end
        inherited btnMasDatosJuzgado: TBitBtn
          Left = 648
          Width = 79
          ExplicitLeft = 648
          ExplicitWidth = 79
        end
        inherited fpMasDatosJuzgado: TFormPanel
          inherited pgMasDatosJuzgado: TPageControl
            inherited tsSede: TTabSheet
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
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
        inherited btnInstanciasAnteriores: TBitBtn
          OnClick = fraJuzgadosInstanciabtnInstanciasAnterioresClick
        end
        inherited dteFechaIngreso: TDateComboBox
          Left = 558
          ExplicitLeft = 558
        end
        inherited cbSinExpediente: TCheckBox
          Left = 466
          OnClick = fraJuzgadosInstanciacbSinExpedienteClick
          ExplicitLeft = 466
        end
      end
      inherited sdqJuzgado: TSDQuery
        DataSource = fraJuzgadosInstancia.fraJuzgado.dsDatos
      end
    end
  end
  object dsInstanciaJuicioEnTramite: TDataSource
    DataSet = sdqInstanciaJuicioEnTramite
    Left = 63
    Top = 216
  end
  object sdqInstanciaJuicioEnTramite: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    AfterScroll = sdqInstanciaJuicioEnTramiteAfterScroll
    SQL.Strings = (
      
        'SELECT   lju_jurisdiccion.ju_descripcion, lfu_fuero.fu_descripci' +
        'on,'
      
        '         ljz_juzgado.jz_descripcion, lsc_secretaria.sc_descripci' +
        'on,'
      
        '         lin_instancia.in_descripcion, lmc_motivocambiojuzgado.m' +
        'c_descripcion,'
      
        '         a.ij_id, a.ij_idjuicioentramite, a.ij_orden, a.ij_idjur' +
        'isdiccion,'
      
        '         a.ij_idfuero, a.ij_idjuzgado, a.ij_idsecretaria, a.ij_i' +
        'dinstancia,'
      '         a.ij_expediente, a.ij_fechatraspaso, a.ij_fechaegreso,'
      '         a.ij_idmotivocambiojuzgado, a.ij_observaciones,'
      '         lmc_motivocambiojuzgado.mc_relacionnuevojuzgado,'
      '         NVL'
      '            ((SELECT SUM (ir_importesentencia)'
      '                FROM legales.lir_importesreguladosjuicio'
      
        '               WHERE ir_idjuicioentramite = a.ij_idjuicioentrami' +
        'te'
      '                 AND ir_idinstancia = a.ij_id'
      '                 AND ir_aplicacion = '#39'I'#39
      '                 AND ir_fechabaja IS NULL),'
      '             0'
      '            ) ij_interesessentencia,'
      '         NVL ((SELECT SUM (ir_importesentencia)'
      '                 FROM legales.lir_importesreguladosjuicio'
      
        '                WHERE ir_idjuicioentramite = a.ij_idjuicioentram' +
        'ite'
      '                  AND ir_idinstancia = a.ij_id'
      '                  AND ir_aplicacion = '#39'C'#39
      '                  AND ir_fechabaja IS NULL),'
      '              0'
      '             ) ij_importecapital,'
      '         NVL'
      '            ((SELECT SUM (ir_importesentencia)'
      '                FROM legales.lir_importesreguladosjuicio'
      
        '               WHERE ir_idjuicioentramite = a.ij_idjuicioentrami' +
        'te'
      '                 AND ir_idinstancia = a.ij_id'
      '                 AND ir_aplicacion = '#39'T'#39
      '                 AND ir_fechabaja IS NULL),'
      '             0'
      '            ) ij_importetasajusticia,'
      '         a.ij_fechasentencia,'
      '         NVL'
      '            ((SELECT SUM (ir_importesentencia)'
      '                FROM legales.lir_importesreguladosjuicio'
      
        '               WHERE ir_idjuicioentramite = a.ij_idjuicioentrami' +
        'te'
      '                 AND ir_idinstancia = a.ij_id'
      '                 AND ir_aplicacion = '#39'H'#39
      '                 AND ir_fechabaja IS NULL),'
      '             0'
      '            ) ij_importehonorarios,'
      '         NVL ((SELECT SUM (ir_importesentencia)'
      '                 FROM legales.lir_importesreguladosjuicio'
      
        '                WHERE ir_idjuicioentramite = a.ij_idjuicioentram' +
        'ite'
      '                  AND ir_idinstancia = a.ij_id'
      '                  AND ir_fechabaja IS NULL),'
      '              0'
      
        '             ) ij_importesentencia,IJ_ANIOEXPEDIENTE,IJ_NROEXPED' +
        'IENTE,'
      '         lrt.tr_descripcion tiposentencia'
      '    FROM legales.lij_instanciajuicioentramite a,'
      '         legales.lmc_motivocambiojuzgado,'
      '         legales.lju_jurisdiccion,'
      '         legales.ljz_juzgado,'
      '         legales.lfu_fuero,'
      '         legales.lin_instancia,'
      '         legales.lsc_secretaria,'
      '         legales.ltr_tiporesultadosentencia lrt'
      
        '   WHERE (    (lmc_motivocambiojuzgado.mc_id = a.ij_idmotivocamb' +
        'iojuzgado)'
      '          AND (lju_jurisdiccion.ju_id = a.ij_idjurisdiccion)'
      '          AND (ljz_juzgado.jz_id = a.ij_idjuzgado)'
      '          AND (lfu_fuero.fu_id = a.ij_idfuero)'
      '          AND (lin_instancia.in_id = a.ij_idinstancia)'
      '          AND (lsc_secretaria.sc_id = a.ij_idsecretaria)'
      '          AND (lrt.tr_id(+) = a.ij_idtiporesultadosentencia)'
      '         )'
      '     AND a.ij_idjuicioentramite = :idjuicioentramite'
      'ORDER BY a.ij_id DESC'
      '')
    Left = 35
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idjuicioentramite'
        ParamType = ptInput
      end>
  end
  object sdqValidacion: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT'
      
        '       lij.ij_id, lmc.mc_relacionnuevojuzgado, lij.ij_idinstanci' +
        'a,'
      '       lij.ij_idmotivocambiojuzgado'
      '  FROM legales.lij_instanciajuicioentramite lij,'
      '       legales.lmc_motivocambiojuzgado lmc'
      ' WHERE ((lmc.mc_id = lij.ij_idmotivocambiojuzgado))'
      
        '   AND ij_id = (select max(ij_id) FROM legales.lij_instanciajuic' +
        'ioentramite'
      
        '                where  ij_idjuicioentramite = :idjuicioentramite' +
        ')')
    Left = 91
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idjuicioentramite'
        ParamType = ptInput
        Value = '0'
      end>
  end
  object sdqPrimeraInstancia: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT *'
      
        '  FROM legales.lij_instanciajuicioentramite lij, legales.lmc_mot' +
        'ivocambiojuzgado lmc'
      ' WHERE lmc.mc_id = lij.ij_idmotivocambiojuzgado'
      
        '   AND ij_id = (select max(ij_id) FROM legales.lij_instanciajuic' +
        'ioentramite'
      '                where  ij_idjuicioentramite = :idjuicioentramite'
      '                  AND  ij_idinstancia = 1)'
      '')
    Left = 138
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idjuicioentramite'
        ParamType = ptInput
      end>
  end
  object sdqDatosMediacion: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT jt_idfuero, jt_idjuzgado, jt_idjurisdiccion, jt_idsecreta' +
        'ria, jt_idtipomediacion'
      'FROM legales.ljt_juicioentramite '
      'WHERE  jt_id = :idjuicioentramite'
      '')
    Left = 194
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idjuicioentramite'
        ParamType = ptInput
      end>
  end
end
