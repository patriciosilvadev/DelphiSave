inherited frmPresupuestoRRHH: TfrmPresupuestoRRHH
  Left = 45
  Top = 48
  Width = 730
  Height = 470
  Caption = 'Presupuesto RRHH'
  Constraints.MinHeight = 470
  Constraints.MinWidth = 730
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFiltros: TPanel
    Width = 722
    Height = 54
    Visible = True
    DesignSize = (
      722
      54)
    object Label1: TLabel
      Left = 27
      Top = 7
      Width = 22
      Height = 13
      AutoSize = False
      Caption = 'A'#241'o'
    end
    object Label2: TLabel
      Left = 112
      Top = 7
      Width = 38
      Height = 13
      AutoSize = False
      Caption = 'Versi'#243'n'
    end
    object Label3: TLabel
      Left = 214
      Top = 7
      Width = 23
      Height = 13
      AutoSize = False
      Caption = 'Mes'
    end
    object Label4: TLabel
      Left = 302
      Top = 7
      Width = 34
      Height = 13
      AutoSize = False
      Caption = 'Sector'
    end
    object Label5: TLabel
      Left = 2
      Top = 32
      Width = 47
      Height = 13
      AutoSize = False
      Caption = 'Indicador'
    end
    object edAnio: TIntEdit
      Left = 50
      Top = 3
      Width = 57
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = edAnioExit
      MaxLength = 4
    end
    object edVersion: TIntEdit
      Left = 152
      Top = 3
      Width = 57
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      MaxLength = 4
    end
    object edMes: TIntEdit
      Left = 239
      Top = 3
      Width = 57
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      MaxLength = 0
      MaxValue = 12
    end
    object chkNoMostrarBajas: TCheckBox
      Left = 618
      Top = 5
      Width = 103
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'No Mostrar Bajas'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    inline fraSector: TfraCodigoDescripcion
      Left = 339
      Top = 2
      Width = 276
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      DesignSize = (
        276
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 51
        Width = 223
      end
      inherited edCodigo: TPatternEdit
        Width = 48
      end
    end
    inline fraIndicador: TfraCodigoDescripcion
      Left = 49
      Top = 28
      Width = 567
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      DesignSize = (
        567
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 51
        Width = 513
      end
      inherited edCodigo: TPatternEdit
        Width = 48
      end
    end
  end
  inherited CoolBar: TCoolBar
    Top = 54
    Width = 722
    Bands = <
      item
        Control = ToolBar
        ImageIndex = -1
        MinHeight = 27
        Width = 718
      end>
    inherited ToolBar: TToolBar
      Width = 705
      inherited tbLimpiar: TToolButton
        Visible = True
      end
    end
  end
  inherited Grid: TArtDBGrid
    Top = 83
    Width = 722
    Height = 360
    Columns = <
      item
        Expanded = False
        FieldName = 'A'#209'O'
        Title.Alignment = taCenter
        Title.Caption = 'A'#241'o'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSION'
        Title.Alignment = taCenter
        Title.Caption = 'Versi'#243'n'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INDICADOR'
        Title.Caption = 'Indicador'
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES'
        Title.Alignment = taCenter
        Title.Caption = 'Mes'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PRESUPUESTADO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Pres.'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_REAL'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Real'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECTOR'
        Title.Caption = 'Sector'
        Width = 162
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FECHA_CONGELADO'
        Title.Alignment = taCenter
        Title.Caption = 'F. Congelado'
        Width = 73
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FECHA_BAJA'
        Title.Alignment = taCenter
        Title.Caption = 'F. Baja'
        Width = 67
        Visible = True
      end>
  end
  inherited fpAbm: TFormPanel
    Left = 145
    Top = 148
    Width = 467
    Height = 176
    BorderStyle = bsDialog
    DesignSize = (
      467
      176)
    inherited BevelAbm: TBevel
      Top = 140
      Width = 459
    end
    object Label6: TLabel [1]
      Left = 9
      Top = 12
      Width = 64
      Height = 13
      AutoSize = False
      Caption = 'Presupuesto'
    end
    object Label7: TLabel [2]
      Left = 9
      Top = 37
      Width = 64
      Height = 13
      AutoSize = False
      Caption = 'Indicador'
    end
    object Label8: TLabel [3]
      Left = 9
      Top = 65
      Width = 64
      Height = 13
      AutoSize = False
      Caption = 'Mes'
    end
    object Label9: TLabel [4]
      Left = 9
      Top = 91
      Width = 64
      Height = 13
      AutoSize = False
      Caption = 'Valor Pres.'
    end
    object Label10: TLabel [5]
      Left = 9
      Top = 117
      Width = 64
      Height = 13
      AutoSize = False
      Caption = 'Valor Real'
    end
    inherited btnAceptar: TButton
      Left = 228
      Top = 146
      TabOrder = 5
    end
    inherited btnCancelar: TButton
      Left = 387
      Top = 146
      ModalResult = 0
      TabOrder = 7
      OnClick = btnCancelarClick
    end
    inline fraPH_IDPRESUPUESTO: TfraCodigoDescripcion
      Left = 75
      Top = 8
      Width = 384
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      DesignSize = (
        384
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 51
        Width = 331
      end
      inherited edCodigo: TPatternEdit
        Width = 48
      end
    end
    inline fraPH_IDINDICADOR: TfraCodigoDescripcion
      Left = 75
      Top = 34
      Width = 384
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      DesignSize = (
        384
        23)
      inherited cmbDescripcion: TArtComboBox
        Left = 51
        Width = 331
      end
      inherited edCodigo: TPatternEdit
        Width = 48
      end
    end
    object edPH_MES: TIntEdit
      Left = 76
      Top = 61
      Width = 57
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = edAnioExit
      MaxLength = 0
      MaxValue = 12
    end
    object edPH_VALORPRESUP: TCurrencyEdit
      Left = 76
      Top = 87
      Width = 100
      Height = 21
      AutoSize = False
      TabOrder = 3
    end
    object btnContinuar: TButton
      Left = 305
      Top = 146
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'C&ontinuar'
      TabOrder = 6
      OnClick = btnAceptarClick
    end
    object edPH_VALORREAL: TCurrencyEdit
      Left = 76
      Top = 113
      Width = 100
      Height = 21
      AutoSize = False
      TabOrder = 4
    end
  end
  inherited sdqConsulta: TSDQuery
    SQL.Strings = (
      
        'SELECT PR_A'#209'O A'#209'O, PR_VERSION VERSION, PN_DESCRIPCION INDICADOR,' +
        ' PH_MES MES, '
      
        '       PH_VALORPRESUP VALOR_PRESUPUESTADO, PH_VALORREAL VALOR_RE' +
        'AL, PH_ID ID,'
      
        '       SC_DESCRIPCION SECTOR, PR_FECHACONGELADO FECHA_CONGELADO,' +
        ' PH_FECHABAJA FECHA_BAJA,'
      
        '       PH_IDPRESUPUESTO IDPRESUPUESTO, PH_IDINDICADOR IDINDICADO' +
        'R'
      
        '  FROM USC_SECTORES, OPN_PRESUPUESTOCONCINDICADOR, OPR_PRESUPUES' +
        'TO, OPH_PRESUPUESTORRHH'
      ' WHERE SC_CODIGO = PN_SECTOR'
      '   AND PR_ID = PH_IDPRESUPUESTO'
      '   AND PN_ID = PH_IDINDICADOR'
      '   AND PR_FECHABAJA IS NULL'
      '   AND 1 = 2')
    Left = 18
    Top = 168
  end
  inherited dsConsulta: TDataSource
    Left = 46
    Top = 168
  end
  inherited SortDialog: TSortDialog
    Left = 18
    Top = 196
  end
  inherited ExportDialog: TExportDialog
    Left = 46
    Top = 196
  end
  inherited QueryPrint: TQueryPrint
    LastColType = lcFill
    PageOrientation = pxLandscape
    PageSize = psLetter
    Left = 46
    Top = 224
  end
  inherited Seguridad: TSeguridad
    Left = 18
    Top = 140
  end
  inherited FormStorage: TFormStorage
    Left = 46
    Top = 140
  end
  inherited PrintDialog: TPrintDialog
    Left = 18
    Top = 224
  end
  inherited ShortCutControl: TShortCutControl
    Left = 74
    Top = 140
  end
  inherited FieldHider: TFieldHider
    Left = 74
    Top = 168
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
    Left = 102
    Top = 141
  end
end
