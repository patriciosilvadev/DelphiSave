inherited frmSolicitudExclusionEmpresa: TfrmSolicitudExclusionEmpresa
  Left = 325
  Top = 232
  Caption = 'Solicitud de exclusi'#243'n de Empresa'
  ClientWidth = 709
  ExplicitWidth = 717
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFiltros: TPanel
    Width = 709
    ExplicitWidth = 709
  end
  inherited CoolBar: TCoolBar
    Width = 709
    Bands = <
      item
        Control = ToolBar
        ImageIndex = -1
        MinHeight = 27
        Width = 703
      end>
    ExplicitWidth = 709
    inherited ToolBar: TToolBar
      Width = 696
      ExplicitWidth = 696
    end
  end
  inherited Grid: TArtDBGrid
    Width = 709
    Columns = <
      item
        Expanded = False
        FieldName = 'EM_CUIT'
        Title.Caption = 'CUIT'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EM_NOMBRE'
        Title.Caption = 'Raz'#243'n Social'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MS_CODIGO'
        Title.Caption = 'Motivo'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MS_DESCRIPCION'
        Title.Caption = 'Motivo Descripci'#243'n'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SE_TIPO'
        Title.Caption = 'Tipo'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SE_OPERATIVO'
        Title.Caption = 'Operativo'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SE_OBSERVACIONES'
        Title.Caption = 'Observaciones'
        Width = 172
        Visible = True
      end>
  end
  inherited fpAbm: TFormPanel
    Left = 120
    Width = 538
    Height = 193
    ExplicitLeft = 120
    ExplicitWidth = 538
    ExplicitHeight = 193
    inherited BevelAbm: TBevel
      Top = 157
      Width = 530
      ExplicitTop = 157
      ExplicitWidth = 530
    end
    object lbCUIT: TLabel [1]
      Left = 5
      Top = 10
      Width = 25
      Height = 13
      Caption = 'CUIT'
    end
    object lbTipo: TLabel [2]
      Left = 5
      Top = 38
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    object lbOperativo: TLabel [3]
      Left = 272
      Top = 38
      Width = 46
      Height = 13
      Caption = 'Operativo'
    end
    object lbObservaciones: TLabel [4]
      Left = 5
      Top = 90
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object lbMotivo: TLabel [5]
      Left = 6
      Top = 65
      Width = 32
      Height = 13
      Caption = 'Motivo'
      WordWrap = True
    end
    inherited btnAceptar: TButton
      Left = 380
      Top = 163
      TabOrder = 5
      ExplicitLeft = 380
      ExplicitTop = 163
    end
    inherited btnCancelar: TButton
      Left = 458
      Top = 163
      TabOrder = 6
      ExplicitLeft = 458
      ExplicitTop = 163
    end
    inline fraEmpresa: TfraEmpresa
      Left = 85
      Top = 6
      Width = 445
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 85
      ExplicitTop = 6
      ExplicitWidth = 445
      ExplicitHeight = 21
      DesignSize = (
        445
        21)
      inherited lbContrato: TLabel
        Left = 341
        ExplicitLeft = 341
      end
      inherited edContrato: TIntEdit
        Left = 388
        ExplicitLeft = 388
      end
      inherited cmbRSocial: TArtComboBox
        Left = 128
        Width = 206
        ExplicitLeft = 128
        ExplicitWidth = 206
      end
    end
    inline fraTipo: TfraCtbTablas
      Left = 84
      Top = 33
      Width = 182
      Height = 23
      TabOrder = 1
      ExplicitLeft = 84
      ExplicitTop = 33
      ExplicitWidth = 182
      inherited cmbDescripcion: TArtComboBox
        Left = 27
        Width = 152
        ExplicitLeft = 27
        ExplicitWidth = 152
      end
      inherited edCodigo: TPatternEdit
        Width = 24
        ExplicitWidth = 24
      end
    end
    inline fraOperativo: TfraCodigoDescripcion
      Left = 332
      Top = 32
      Width = 201
      Height = 23
      TabOrder = 2
      ExplicitLeft = 332
      ExplicitTop = 32
      ExplicitWidth = 201
      DesignSize = (
        201
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 45
        Width = 154
        ExplicitLeft = 45
        ExplicitWidth = 154
      end
      inherited edCodigo: TPatternEdit
        Width = 42
        ExplicitWidth = 42
      end
    end
    object edObservacion: TMemo
      Left = 85
      Top = 87
      Width = 444
      Height = 65
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 4
    end
    inline fraMotivo: TfraCodigoDescripcion
      Left = 84
      Top = 60
      Width = 447
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      ExplicitLeft = 84
      ExplicitTop = 60
      ExplicitWidth = 447
      DesignSize = (
        447
        23)
      inherited cmbDescripcion: TArtComboBox
        Width = 382
        CharCase = ecUpperCase
        ExplicitWidth = 382
      end
      inherited edCodigo: TPatternEdit
        Width = 59
        CharCase = ecNormal
        ExplicitWidth = 59
      end
    end
  end
  inherited sdqConsulta: TSDQuery
    SQL.Strings = (
      'SELECT *'
      '  FROM hys.hse_solicitudexclusionempresa,'
      '       hys.hms_motivosolicitudexclusion,'
      '       afi.aem_empresa'
      ' WHERE se_cuit = em_cuit AND ms_id = se_idmotivosolicitud')
  end
end
