inherited frmExpediente: TfrmExpediente
  Left = 433
  Top = 44
  BorderStyle = bsNone
  ClientHeight = 650
  ClientWidth = 793
  Constraints.MinHeight = 266
  Constraints.MinWidth = 640
  OldCreateOrder = True
  OnCreate = FSFormCreate
  OnShow = CambioTamanio
  ExplicitWidth = 793
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  object gbDatos1: TJvgGroupBox [0]
    Left = 0
    Top = 0
    Width = 793
    Height = 245
    Align = alTop
    Caption = ' Datos del accidente '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Border.Inner = bvNone
    Border.Outer = bvNone
    Border.Bold = False
    CaptionAlignment = fcaWidth
    CaptionBorder.Inner = bvRaised
    CaptionBorder.Outer = bvNone
    CaptionBorder.Bold = False
    CaptionGradient.FromColor = 10461087
    CaptionGradient.ToColor = clSilver
    CaptionGradient.Active = True
    CaptionGradient.Orientation = fgdHorizontal
    CaptionShift.X = 8
    CaptionShift.Y = 0
    Colors.Text = clHighlightText
    Colors.TextActive = clHighlightText
    Colors.Caption = clBtnShadow
    Colors.CaptionActive = clBtnShadow
    Colors.Client = clBtnFace
    Colors.ClientActive = clBtnFace
    Gradient.FromColor = clBlack
    Gradient.ToColor = clGray
    Gradient.Active = False
    Gradient.Orientation = fgdHorizontal
    Options = [fgoCanCollapse, fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
    GlyphCollapsed.Data = {
      DE000000424DDE0000000000000076000000280000000F0000000D0000000100
      0400000000006800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF77777777
      7770FFFF7FFFFFFFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FF
      FF70FFFF7F0000000F70FFFF7FFFF0FFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FF
      FF70FFFF7FFFFFFFFF70FFFF777777777770FFFFFFFFFFFFFFF0FFFFFFFFFFFF
      FFF0}
    GlyphExpanded.Data = {
      DE000000424DDE0000000000000076000000280000000F0000000D0000000100
      0400000000006800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF77777777
      7770FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFF
      FF70FFFF7F0000000F70FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFF
      FF70FFFF7FFFFFFFFF70FFFF777777777770FFFFFFFFFFFFFFF0FFFFFFFFFFFF
      FFF0}
    OnCollapsed = CambioTamanio
    OnExpanded = CambioTamanio
    DesignSize = (
      793
      245)
    FullHeight = 217
    object Shape1: TShape
      Left = 2
      Top = 16
      Width = 789
      Height = 1
      Align = alTop
      Brush.Style = bsClear
      Pen.Color = clBtnShadow
      ExplicitWidth = 860
    end
    object Label23: TLabel
      Left = 8
      Top = 20
      Width = 66
      Height = 13
      AutoSize = False
      Caption = 'Tipo Siniestro'
    end
    object Label2: TLabel
      Left = 354
      Top = 21
      Width = 95
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Fecha del accidente'
      ExplicitLeft = 425
    end
    object Label4: TLabel
      Left = 511
      Top = 21
      Width = 82
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Fecha de reca'#237'da'
      ExplicitLeft = 582
    end
    object Label3: TLabel
      Left = 694
      Top = 21
      Width = 77
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Expuesto desde'
      ExplicitLeft = 765
    end
    object Label5: TLabel
      Left = 602
      Top = 21
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '1'#186' Manifestaci'#243'n'
      ExplicitLeft = 673
    end
    object Label6: TLabel
      Left = 156
      Top = 62
      Width = 84
      Height = 13
      Caption = 'Breve descripci'#243'n'
    end
    object Label7: TLabel
      Left = 156
      Top = 164
      Width = 71
      Height = 13
      Caption = 'Observaciones'
    end
    object Bevel2: TBevel
      Left = 8
      Top = 163
      Width = 126
      Height = 3
      Shape = bsTopLine
    end
    object btnMinFecha: TSpeedButton
      Left = 443
      Top = 36
      Width = 25
      Height = 22
      Hint = 'Ver m'#237'nima fecha de accidente en el historial'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnMinFechaClick
      ExplicitLeft = 514
    end
    object btnObservErrCarga: TSpeedButton
      Left = 751
      Top = 196
      Width = 22
      Height = 22
      Hint = 'Observaciones del Siniestro con Error de Carga'
      Anchors = [akTop, akRight]
      Enabled = False
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnObservErrCargaClick
      ExplicitLeft = 822
    end
    inline fraEX_TIPO: TfraTipoSiniestro
      Left = 8
      Top = 36
      Width = 343
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      OnEnter = fraEX_TIPOEnter
      ExplicitLeft = 8
      ExplicitTop = 36
      ExplicitWidth = 343
      DesignSize = (
        343
        23)
      inherited edCodigo: TPatternEdit
        Width = 36
        ExplicitWidth = 36
      end
      inherited cmbDescripcion: TComboGrid
        Left = 40
        Width = 303
        OnEnter = fraEX_TIPOEnter
        OnDropDown = nil
        ExplicitLeft = 40
        ExplicitWidth = 303
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
      inherited Propiedades: TPropiedadesFrame
        DataField = sdqDatosEX_TIPO
        DataSource = dsDatos
        OnChange = fraEX_TIPOOnChange
      end
    end
    object edEX_FECHAACCIDENTE: TDBDateEdit
      Left = 354
      Top = 37
      Width = 88
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'EX_FECHAACCIDENTE'
      DataSource = dsDatos
      DialogTitle = 'Seleccione una Fecha.'
      Anchors = [akTop, akRight]
      NumGlyphs = 2
      TabOrder = 1
      StartOfWeek = Sun
    end
    object edEX_FECHAMANIFESTACION: TDBDateEdit
      Left = 602
      Top = 37
      Width = 88
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'EX_FECHAMANIFESTACION'
      DataSource = dsDatos
      DialogTitle = 'Seleccione una Fecha.'
      Anchors = [akTop, akRight]
      NumGlyphs = 2
      TabOrder = 3
      StartOfWeek = Sun
    end
    object edEX_FECHAEXPUESTO: TDBDateEdit
      Left = 694
      Top = 37
      Width = 88
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'EX_FECHAEXPUESTO'
      DataSource = dsDatos
      DialogTitle = 'Seleccione una Fecha.'
      Anchors = [akTop, akRight]
      NumGlyphs = 2
      TabOrder = 4
      StartOfWeek = Sun
    end
    object edEX_FECHARECAIDA: TDBDateEdit
      Left = 511
      Top = 37
      Width = 88
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'EX_FECHARECAIDA'
      DataSource = dsDatos
      DialogTitle = 'Seleccione una Fecha.'
      Anchors = [akTop, akRight]
      NumGlyphs = 2
      TabOrder = 5
      StartOfWeek = Sun
    end
    object chkEX_ADDENDA: TDBCheckBox
      Left = 8
      Top = 64
      Width = 130
      Height = 17
      TabStop = False
      Caption = 'Addenda'
      Color = clBtnFace
      DataField = 'EX_ADDENDA'
      DataSource = dsDatos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_ACCIDENTETRANSITO: TDBCheckBox
      Left = 8
      Top = 80
      Width = 126
      Height = 17
      Caption = 'Accidente de tr'#225'nsito'
      Color = clBtnFace
      DataField = 'EX_ACCIDENTETRANSITO'
      DataSource = dsDatos
      ParentColor = False
      TabOrder = 7
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_SINIESTROMULTIPLE: TDBCheckBox
      Left = 8
      Top = 96
      Width = 126
      Height = 17
      TabStop = False
      Caption = 'Siniestro m'#250'ltiple'
      DataField = 'EX_SINIESTROMULTIPLE'
      DataSource = dsDatos
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_SUSPENSIONPLAZO: TDBCheckBox
      Left = 8
      Top = 165
      Width = 126
      Height = 17
      Caption = 'Suspensi'#243'n de plazo'
      DataField = 'EX_SUSPENSIONPLAZO'
      DataSource = dsDatos
      TabOrder = 10
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_POSIBLERECHAZO: TDBCheckBox
      Left = 8
      Top = 181
      Width = 126
      Height = 17
      Caption = 'Posible rechazo'
      DataField = 'EX_POSIBLERECHAZO'
      DataSource = dsDatos
      TabOrder = 11
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object edEX_BREVEDESCRIPCION: TDBMemo
      Left = 155
      Top = 75
      Width = 593
      Height = 64
      Anchors = [akLeft, akTop, akRight]
      DataField = 'EX_BREVEDESCRIPCION'
      DataSource = dsDatos
      ScrollBars = ssVertical
      TabOrder = 12
    end
    object edEX_OBSERVACIONES: TDBMemo
      Left = 155
      Top = 177
      Width = 594
      Height = 65
      Anchors = [akLeft, akTop, akRight]
      DataField = 'EX_OBSERVACIONES'
      DataSource = dsDatos
      ScrollBars = ssVertical
      TabOrder = 13
    end
    object edEX_HORAACCIDENTE: TTimeEditor
      Left = 469
      Top = 37
      Width = 37
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 2
      CustomFormat = 'hh:mm'
    end
    object chkEX_INTERCURRENCIA: TDBCheckBox
      Left = 8
      Top = 144
      Width = 126
      Height = 17
      Caption = 'Intercurrencia'
      Color = clBtnFace
      DataField = 'EX_INTERCURRENCIA'
      DataSource = dsDatos
      ParentColor = False
      TabOrder = 9
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = chkEX_INTERCURRENCIAClick
    end
    object chkEX_PLURIEMPLEO: TDBCheckBox
      Left = 8
      Top = 112
      Width = 126
      Height = 17
      Caption = 'Pluriempleo'
      Color = clBtnFace
      DataField = 'EX_PLURIEMPLEO'
      DataSource = dsDatos
      ParentColor = False
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = chkEX_PLURIEMPLEOClick
    end
    object chkEX_EXAMENPERIODICO: TDBCheckBox
      Left = 8
      Top = 128
      Width = 126
      Height = 17
      Caption = 'Ex'#225'menes Peri'#243'dicos'
      Color = clBtnFace
      DataField = 'EX_EXAMENPERIODICO'
      DataSource = dsDatos
      ParentColor = False
      TabOrder = 15
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_POSIBLEFRAUDE: TDBCheckBox
      Left = 8
      Top = 197
      Width = 126
      Height = 17
      Caption = 'Posible fraude'
      DataField = 'EX_POSIBLEFRAUDE'
      DataSource = dsDatos
      TabOrder = 16
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_EMPLEADOPCP: TDBCheckBox
      Left = 8
      Top = 213
      Width = 126
      Height = 17
      Caption = 'Empleado PCP'
      DataField = 'EX_EMPLEADOPCP'
      DataSource = dsDatos
      TabOrder = 17
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object chkEX_ABIERTOPORJUICIO: TDBCheckBox
      Left = 8
      Top = 229
      Width = 126
      Height = 17
      Caption = 'Abierto por juicio'
      DataField = 'EX_ABIERTOPORJUICIO'
      DataSource = dsDatos
      TabOrder = 18
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
    object edSiniestroIntercurrencia: TSinEdit
      Left = 156
      Top = 142
      Width = 100
      Height = 20
      Hint = 'C'#243'digo de Siniestro'
      TabOrder = 19
    end
    object btnRelacionarSinInterc: TBitBtn
      Left = 259
      Top = 141
      Width = 97
      Height = 19
      Caption = 'Relacionar Siniestro'
      NumGlyphs = 2
      TabOrder = 20
      OnClick = btnRelacionarSinIntercClick
    end
  end
  object gbAdicionales: TJvgGroupBox [1]
    Left = 0
    Top = 245
    Width = 793
    Height = 349
    Align = alTop
    Caption = ' Datos adicionales '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Border.Inner = bvNone
    Border.Outer = bvNone
    Border.Bold = False
    CaptionAlignment = fcaWidth
    CaptionBorder.Inner = bvRaised
    CaptionBorder.Outer = bvNone
    CaptionBorder.Bold = False
    CaptionGradient.FromColor = 10461087
    CaptionGradient.ToColor = clSilver
    CaptionGradient.Active = True
    CaptionGradient.Orientation = fgdHorizontal
    CaptionShift.X = 8
    CaptionShift.Y = 0
    Colors.Text = clHighlightText
    Colors.TextActive = clHighlightText
    Colors.Caption = clBtnShadow
    Colors.CaptionActive = clBtnShadow
    Colors.Client = clBtnFace
    Colors.ClientActive = clBtnFace
    Gradient.FromColor = clBlack
    Gradient.ToColor = clGray
    Gradient.Active = False
    Gradient.Orientation = fgdHorizontal
    Options = [fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
    OnCollapsed = CambioTamanio
    OnExpanded = CambioTamanio
    DesignSize = (
      793
      349)
    FullHeight = 351
    object Label1: TLabel
      Left = 8
      Top = 192
      Width = 60
      Height = 13
      AutoSize = False
      Caption = 'Diagn'#243'stico'
    end
    object Label19: TLabel
      Left = 8
      Top = 236
      Width = 60
      Height = 13
      AutoSize = False
      Caption = 'CIE-10'
    end
    object Label20: TLabel
      Left = 564
      Top = 236
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Gravedad CIE10'
      ExplicitLeft = 635
    end
    object Label22: TLabel
      Left = 7
      Top = 292
      Width = 63
      Height = 26
      Alignment = taCenter
      Caption = #191'Presupone'#13#10'Incapacidad?'
    end
    object Label8: TLabel
      Left = 8
      Top = 19
      Width = 53
      Height = 13
      Caption = 'Trabajador'
    end
    object Label13: TLabel
      Left = 593
      Top = 280
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Carga'
      ExplicitLeft = 664
    end
    object Label16: TLabel
      Left = 204
      Top = 280
      Width = 72
      Height = 13
      Caption = 'Usuario de alta'
    end
    object Label17: TLabel
      Left = 685
      Top = 280
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Recibido'
      ExplicitLeft = 756
    end
    object Label35: TLabel
      Left = 562
      Top = 192
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Gravedad'
      ExplicitLeft = 633
    end
    object Label15: TLabel
      Left = 3
      Top = 329
      Width = 70
      Height = 13
      Alignment = taCenter
      Caption = 'Estado cr'#243'nico'
    end
    object Label26: TLabel
      Left = 458
      Top = 19
      Width = 121
      Height = 13
      Hint = 'Otras ART a las cuales est'#225' asociado el trabajador'
      Caption = 'Otras ART del trabajador'
      ParentShowHint = False
      ShowHint = True
    end
    object Bevel1: TBevel
      Left = 338
      Top = 321
      Width = 2
      Height = 26
    end
    object btnObservacionesIncapacidades: TSpeedButton
      Left = 348
      Top = 324
      Width = 184
      Height = 22
      Caption = 'Observaciones Incapacidades'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      OnClick = btnObservacionesIncapacidadesClick
    end
    inline fraEX_DIAGNOSTICOOMS: TfraCDG_DIAGNOSTICO
      Left = 5
      Top = 252
      Width = 549
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
      ExplicitLeft = 5
      ExplicitTop = 252
      ExplicitWidth = 549
      DesignSize = (
        549
        23)
      inherited cmbDescripcion: TComboGrid
        Width = 486
        ExplicitWidth = 486
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
      inherited Propiedades: TPropiedadesFrame
        DataField = sdqDatosEX_IDDIAGNOSTICO
        DataSource = dsDatos
      end
    end
    inline fraPI_IDGRAVEDAD_CIE10: TfraSTC_TIPOGRAVEDAD_CIE10
      Left = 560
      Top = 252
      Width = 211
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 7
      ExplicitLeft = 560
      ExplicitTop = 252
      ExplicitWidth = 211
      DesignSize = (
        211
        23)
      inherited cmbDescripcion: TComboGrid
        Width = 148
        ExplicitWidth = 148
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
      inherited Propiedades: TPropiedadesFrame
        DataField = sdqDatosEX_GRAVEDADCIE10
        DataSource = dsDatos
      end
    end
    object edEX_DIAGNOSTICO: TDBMemo
      Left = 6
      Top = 209
      Width = 550
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BevelWidth = 0
      DataField = 'EX_DIAGNOSTICO'
      DataSource = dsDatos
      ScrollBars = ssVertical
      TabOrder = 4
    end
    object rpEX_PRESUPINCAPACIDAD: TJvDBRadioPanel
      Left = 76
      Top = 297
      Width = 114
      Height = 17
      BevelOuter = bvNone
      Columns = 3
      DataField = 'EX_PRESUPINCAPACIDAD'
      DataSource = dsDatos
      Items.Strings = (
        'Si'
        'No'
        'S/D')
      ParentColor = True
      TabOrder = 8
      Values.Strings = (
        'S'
        'N'
        '?')
    end
    inline fraEX_IDTRABAJADOR: TfraTrabajador
      Left = 8
      Top = 35
      Width = 445
      Height = 22
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 35
    end
    object gbDestinatario: TGroupBox
      Left = 88
      Top = 59
      Width = 364
      Height = 126
      Caption = ' Destinatario '
      TabOrder = 2
      DesignSize = (
        364
        126)
      object Label10: TLabel
        Left = 8
        Top = 15
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object Label9: TLabel
        Left = 210
        Top = 15
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label11: TLabel
        Left = 8
        Top = 55
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      inline fraRS_TDESTINATARIO: TfraCtbTablas
        Left = 7
        Top = 30
        Width = 196
        Height = 23
        TabOrder = 0
        ExplicitLeft = 7
        ExplicitTop = 30
        ExplicitWidth = 196
        DesignSize = (
          196
          23)
        inherited cmbDescripcion: TArtComboBox
          Width = 143
          ExplicitWidth = 143
        end
        inherited edCodigo: TPatternEdit
          OnChange = fraRS_TDESTINATARIOedCodigoChange
        end
      end
      object edRS_OBSERVACIONES: TMemo
        Left = 208
        Top = 32
        Width = 149
        Height = 88
        Anchors = [akLeft, akTop, akRight]
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object edRS_DESTINATARIO: TEdit
        Left = 8
        Top = 71
        Width = 194
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        CharCase = ecUpperCase
        TabOrder = 1
      end
      inline fraDestinatario: TfraCodigoDescripcion
        Left = 7
        Top = 96
        Width = 196
        Height = 23
        TabOrder = 3
        ExplicitLeft = 7
        ExplicitTop = 96
        ExplicitWidth = 196
        inherited cmbDescripcion: TArtComboBox
          Left = 52
          Width = 144
          ExplicitLeft = 52
          ExplicitWidth = 144
        end
        inherited edCodigo: TPatternEdit
          Width = 48
          ExplicitWidth = 48
        end
      end
    end
    object chkEX_RECHAZADO: TCheckBox
      Left = 8
      Top = 167
      Width = 77
      Height = 17
      Caption = 'Rechazado'
      TabOrder = 3
      OnClick = chkEX_POSIBLERECUPEROClick
    end
    inline fraEX_USUALTA: TfraUsuarios
      Left = 201
      Top = 295
      Width = 388
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 9
      ExplicitLeft = 201
      ExplicitTop = 295
      ExplicitWidth = 388
      DesignSize = (
        388
        23)
      inherited cmbDescripcion: TArtComboBox
        Width = 295
        ExplicitWidth = 295
      end
    end
    object cmbEX_FECHACARGA: TDBDateEdit
      Left = 592
      Top = 296
      Width = 89
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'EX_FECHACARGA'
      DataSource = dsDatos
      DialogTitle = 'Seleccione una Fecha.'
      Anchors = [akTop, akRight]
      NumGlyphs = 2
      TabOrder = 10
      StartOfWeek = Sun
    end
    object cmbEX_FECHARECEPCION: TDBDateEdit
      Left = 684
      Top = 296
      Width = 89
      Height = 21
      Margins.Left = 4
      Margins.Top = 1
      DataField = 'EX_FECHARECEPCION'
      DataSource = dsDatos
      DialogTitle = 'Seleccione una Fecha.'
      Anchors = [akTop, akRight]
      NumGlyphs = 2
      TabOrder = 11
      StartOfWeek = Sun
    end
    inline fraEX_GRAVEDAD: TfraSTG_TIPOGRAVEDAD
      Left = 560
      Top = 208
      Width = 209
      Height = 23
      Anchors = [akTop, akRight]
      TabOrder = 5
      ExplicitLeft = 560
      ExplicitTop = 208
      ExplicitWidth = 209
      DesignSize = (
        209
        23)
      inherited cmbDescripcion: TComboGrid
        Width = 146
        ExplicitWidth = 146
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
      inherited Propiedades: TPropiedadesFrame
        DataField = sdqDatosEX_GRAVEDAD
        DataSource = dsDatos
        FieldID = 'TG_ID'
      end
    end
    object chkEX_POSIBLERECUPERO: TDBCheckBox
      Left = 8
      Top = 63
      Width = 69
      Height = 30
      Caption = 'Posible recupero'
      DataField = 'EX_POSIBLERECUPERO'
      DataSource = dsDatos
      TabOrder = 1
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      WordWrap = True
      OnClick = chkEX_POSIBLERECUPEROClick
    end
    object rpEX_ESTADOCRONICO: TJvDBRadioPanel
      Left = 76
      Top = 328
      Width = 253
      Height = 17
      BevelOuter = bvNone
      Columns = 3
      DataField = 'EX_ESTADOCRONICO'
      DataSource = dsDatos
      Items.Strings = (
        'Activo '
        'Sin actualiz.'
        'Inactivo')
      ParentColor = True
      TabOrder = 12
      Values.Strings = (
        'A'
        'S'
        'I')
    end
    object clbExpedienteART: TARTCheckListBox
      Left = 456
      Top = 35
      Width = 316
      Height = 150
      Anchors = [akLeft, akTop, akRight]
      Columns = 1
      ItemHeight = 13
      TabOrder = 13
      AutoAjustarColumnas = True
      Locked = False
      SQL = 
        ' SELECT AR_NOMBRE, AR_ID FROM AFI.AAR_ART WHERE AR_FECHABAJA IS ' +
        'NULL ORDER BY AR_NOMBRE '
    end
  end
  object gbNoListadas: TJvgGroupBox [2]
    Left = 0
    Top = 594
    Width = 793
    Height = 216
    Align = alTop
    Caption = ' Enfermedad imputable al Fondo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Border.Inner = bvNone
    Border.Outer = bvNone
    Border.Bold = False
    CaptionAlignment = fcaWidth
    CaptionBorder.Inner = bvRaised
    CaptionBorder.Outer = bvNone
    CaptionBorder.Bold = False
    CaptionGradient.FromColor = 10461087
    CaptionGradient.ToColor = clSilver
    CaptionGradient.Active = True
    CaptionGradient.Orientation = fgdHorizontal
    CaptionShift.X = 8
    CaptionShift.Y = 0
    Colors.Text = clHighlightText
    Colors.TextActive = clHighlightText
    Colors.Caption = clBtnShadow
    Colors.CaptionActive = clBtnShadow
    Colors.Client = clBtnFace
    Colors.ClientActive = clBtnFace
    Gradient.FromColor = clBlack
    Gradient.ToColor = clGray
    Gradient.Active = False
    Gradient.Orientation = fgdHorizontal
    Options = [fgoCanCollapse, fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
    GlyphCollapsed.Data = {
      DE000000424DDE0000000000000076000000280000000F0000000D0000000100
      0400000000006800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF77777777
      7770FFFF7FFFFFFFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FF
      FF70FFFF7F0000000F70FFFF7FFFF0FFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FF
      FF70FFFF7FFFFFFFFF70FFFF777777777770FFFFFFFFFFFFFFF0FFFFFFFFFFFF
      FFF0}
    GlyphExpanded.Data = {
      DE000000424DDE0000000000000076000000280000000F0000000D0000000100
      0400000000006800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF77777777
      7770FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFF
      FF70FFFF7F0000000F70FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFF
      FF70FFFF7FFFFFFFFF70FFFF777777777770FFFFFFFFFFFFFFF0FFFFFFFFFFFF
      FFF0}
    OnCollapsed = CambioTamanio
    OnExpanded = CambioTamanio
    DesignSize = (
      793
      216)
    FullHeight = 216
    object Label21: TLabel
      Left = 8
      Top = 24
      Width = 107
      Height = 13
      Caption = 'Enfermedad imputable'
    end
    object rpNL_MARCADO: TJvDBRadioPanel
      Left = 125
      Top = 23
      Width = 100
      Height = 17
      BevelOuter = bvNone
      Columns = 2
      DataField = 'NL_MARCADO'
      DataSource = dsDatos
      Items.Strings = (
        'Si'
        'No')
      ParentColor = True
      TabOrder = 1
      Values.Strings = (
        'S'
        'N')
      OnChange = rpNL_MARCADOChange
    end
    object gbSiListada: TGroupBox
      Left = 2
      Top = 39
      Width = 425
      Height = 174
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      DesignSize = (
        425
        174)
      object Label28: TLabel
        Left = 4
        Top = 41
        Width = 28
        Height = 13
        Caption = 'Tarea'
      end
      object Label29: TLabel
        Left = 4
        Top = 112
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label18: TLabel
        Left = 4
        Top = 64
        Width = 58
        Height = 13
        Caption = 'Enfermedad'
      end
      object Label24: TLabel
        Left = 4
        Top = 87
        Width = 35
        Height = 13
        Caption = 'Agente'
      end
      object Label25: TLabel
        Left = 4
        Top = 16
        Width = 57
        Height = 13
        Caption = 'F. Dictamen'
      end
      object Bevel3: TBevel
        Left = 161
        Top = 12
        Width = 2
        Height = 21
      end
      object cmbNL_FDICTMARCA: TDBDateEdit
        Left = 66
        Top = 12
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'NL_FDICTMARCA'
        DataSource = dsDatos
        DialogTitle = 'Seleccione una Fecha.'
        NumGlyphs = 2
        TabOrder = 0
        StartOfWeek = Sun
      end
      object edNL_TAREA: TDBMemo
        Left = 65
        Top = 37
        Width = 355
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelWidth = 0
        DataField = 'NL_TAREA'
        DataSource = dsDatos
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object edNL_ENFERMEDAD: TDBMemo
        Left = 65
        Top = 61
        Width = 355
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelWidth = 0
        DataField = 'NL_ENFERMEDAD'
        DataSource = dsDatos
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object edNL_AGENTE: TDBMemo
        Left = 65
        Top = 85
        Width = 355
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelWidth = 0
        DataField = 'NL_AGENTE'
        DataSource = dsDatos
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 3
      end
      object edNL_OBSMARCA: TDBMemo
        Left = 3
        Top = 129
        Width = 417
        Height = 40
        Anchors = [akLeft, akTop, akRight]
        BevelWidth = 0
        DataField = 'NL_OBSMARCA'
        DataSource = dsDatos
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object chkNL_ENFNOLISTADA: TDBCheckBox
        Left = 172
        Top = 14
        Width = 96
        Height = 17
        Caption = 'Enf. No Listada'
        Color = clBtnFace
        DataField = 'NL_ENFNOLISTADA'
        DataSource = dsDatos
        ParentColor = False
        TabOrder = 5
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object chkNL_HIPOACUSIA: TDBCheckBox
        Left = 278
        Top = 14
        Width = 75
        Height = 17
        Caption = 'Hipoacusia'
        Color = clBtnFace
        DataField = 'NL_HIPOACUSIA'
        DataSource = dsDatos
        ParentColor = False
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
    object gbNoListada: TGroupBox
      Left = 429
      Top = 39
      Width = 360
      Height = 174
      Anchors = [akTop, akRight]
      TabOrder = 2
      DesignSize = (
        360
        174)
      object Label12: TLabel
        Left = 6
        Top = 24
        Width = 57
        Height = 13
        Caption = 'F. Dictamen'
      end
      object Label14: TLabel
        Left = 6
        Top = 64
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object cmbNL_FDICTDESMARCA: TDBDateEdit
        Left = 67
        Top = 17
        Width = 88
        Height = 21
        Margins.Left = 4
        Margins.Top = 1
        DataField = 'NL_FDICTDESMARCA'
        DataSource = dsDatos
        DialogTitle = 'Seleccione una Fecha.'
        Anchors = [akTop, akRight]
        NumGlyphs = 2
        TabOrder = 0
        StartOfWeek = Sun
      end
      object edNL_OBSDESMARCA: TDBMemo
        Left = 5
        Top = 85
        Width = 336
        Height = 76
        Anchors = [akLeft, akTop, akRight]
        BevelWidth = 0
        DataField = 'NL_OBSDESMARCA'
        DataSource = dsDatos
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
  end
  object fpObservIncap: TFormPanel [3]
    Left = 300
    Top = 331
    Width = 494
    Height = 320
    Caption = 'Observaciones Incapacidades'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    BorderStyle = bsSingle
    Position = poOwnerFormCenter
    object gbAclaraciones: TJvgGroupBox
      Left = 0
      Top = 160
      Width = 494
      Height = 16
      Align = alTop
      Caption = ' Aclaraciones de los '#237'tems'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Border.Inner = bvNone
      Border.Outer = bvNone
      Border.Bold = False
      CaptionAlignment = fcaWidth
      CaptionBorder.Inner = bvRaised
      CaptionBorder.Outer = bvNone
      CaptionBorder.Bold = False
      CaptionGradient.ToColor = clSilver
      CaptionGradient.Active = True
      CaptionGradient.Orientation = fgdHorizontal
      CaptionShift.X = 8
      CaptionShift.Y = 0
      Collapsed = True
      Colors.Text = clHighlightText
      Colors.TextActive = clHighlightText
      Colors.Caption = clBtnShadow
      Colors.CaptionActive = clBtnShadow
      Colors.Client = clBtnFace
      Colors.ClientActive = clBtnFace
      Gradient.FromColor = clBlack
      Gradient.ToColor = clGray
      Gradient.Active = False
      Gradient.Orientation = fgdHorizontal
      Options = [fgoCanCollapse, fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
      GlyphCollapsed.Data = {
        DE000000424DDE0000000000000076000000280000000F0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF77777777
        7770FFFF7FFFFFFFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FF
        FF70FFFF7F0000000F70FFFF7FFFF0FFFF70FFFF7FFFF0FFFF70FFFF7FFFF0FF
        FF70FFFF7FFFFFFFFF70FFFF777777777770FFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFF0}
      GlyphExpanded.Data = {
        DE000000424DDE0000000000000076000000280000000F0000000D0000000100
        0400000000006800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF77777777
        7770FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFF
        FF70FFFF7F0000000F70FFFF7FFFFFFFFF70FFFF7FFFFFFFFF70FFFF7FFFFFFF
        FF70FFFF7FFFFFFFFF70FFFF777777777770FFFFFFFFFFFFFFF0FFFFFFFFFFFF
        FFF0}
      OnCollapsed = CambioTamanio
      OnExpanded = CambioTamanio
      FullHeight = 92
      object memoAclaraciones: TMemo
        Left = 2
        Top = 16
        Width = 490
        Height = 74
        Align = alClient
        Color = clSilver
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
        Visible = False
      end
    end
    object JvgGroupBox2: TJvgGroupBox
      Left = 0
      Top = 29
      Width = 494
      Height = 131
      Align = alTop
      Caption = ' Items Observaciones Incapacidades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Border.Inner = bvNone
      Border.Outer = bvNone
      Border.Bold = False
      CaptionAlignment = fcaWidth
      CaptionBorder.Inner = bvRaised
      CaptionBorder.Outer = bvNone
      CaptionBorder.Bold = False
      CaptionGradient.FromColor = clBtnShadow
      CaptionGradient.ToColor = clSilver
      CaptionGradient.Active = True
      CaptionGradient.Orientation = fgdHorizontal
      CaptionShift.X = 8
      CaptionShift.Y = 0
      Colors.Text = clHighlightText
      Colors.TextActive = clHighlightText
      Colors.Caption = clBtnShadow
      Colors.CaptionActive = clBtnShadow
      Colors.Client = clBtnFace
      Colors.ClientActive = clBtnFace
      Gradient.FromColor = clBlack
      Gradient.ToColor = clGray
      Gradient.Active = False
      Gradient.Orientation = fgdHorizontal
      Options = [fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
      OnCollapsed = CambioTamanio
      OnExpanded = CambioTamanio
      FullHeight = 156
      object clbObservIncap: TARTCheckListBox
        Left = 2
        Top = 16
        Width = 490
        Height = 113
        Align = alClient
        Columns = 1
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 0
        AutoAjustarColumnas = True
        Locked = False
      end
    end
    object JvgGroupBox1: TJvgGroupBox
      Left = 0
      Top = 176
      Width = 494
      Height = 118
      Align = alClient
      Caption = ' Observaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Border.Inner = bvNone
      Border.Outer = bvNone
      Border.Bold = False
      CaptionAlignment = fcaWidth
      CaptionBorder.Inner = bvRaised
      CaptionBorder.Outer = bvNone
      CaptionBorder.Bold = False
      CaptionGradient.ToColor = clSilver
      CaptionGradient.Active = True
      CaptionGradient.Orientation = fgdHorizontal
      CaptionShift.X = 8
      CaptionShift.Y = 0
      Colors.Text = clHighlightText
      Colors.TextActive = clHighlightText
      Colors.Caption = clBtnShadow
      Colors.CaptionActive = clBtnShadow
      Colors.Client = clBtnFace
      Colors.ClientActive = clBtnFace
      Gradient.FromColor = clBlack
      Gradient.ToColor = clGray
      Gradient.Active = False
      Gradient.Orientation = fgdHorizontal
      Options = [fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
      OnCollapsed = CambioTamanio
      OnExpanded = CambioTamanio
      FullHeight = 67
      object memoObservaciones: TMemo
        Left = 2
        Top = 16
        Width = 490
        Height = 100
        Align = alClient
        MaxLength = 500
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 494
      Height = 29
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        494
        29)
      object Label27: TLabel
        Left = 8
        Top = 8
        Width = 41
        Height = 13
        Caption = 'Siniestro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edSiniestro: TSinEdit
        Left = 53
        Top = 4
        Width = 118
        Height = 21
        Hint = 'C'#243'digo de Siniestro'
        Anchors = [akTop, akRight]
        TabOrder = 0
        Enabled = False
        Color = clActiveBorder
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 294
      Width = 494
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        494
        26)
      object btnAceptarObservIncap: TBitBtn
        Left = 343
        Top = 2
        Width = 68
        Height = 23
        Anchors = [akRight, akBottom]
        Caption = '&Aceptar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btnAceptarObservIncapClick
      end
      object btnCerrarObservIncap: TBitBtn
        Left = 420
        Top = 2
        Width = 68
        Height = 23
        Anchors = [akRight, akBottom]
        Caption = '&Cerrar'
        Kind = bkCancel
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnCerrarObservIncapClick
      end
    end
  end
  object fpMinFAccid: TFormPanel [4]
    Left = 305
    Top = 414
    Width = 249
    Height = 118
    Caption = 'M'#237'nima fecha en el historial'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = [biSystemMenu]
    BorderStyle = bsSingle
    Position = poOwnerFormCenter
    DesignSize = (
      249
      118)
    object Label31: TLabel
      Left = 8
      Top = 19
      Width = 41
      Height = 13
      Caption = 'Siniestro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 8
      Top = 51
      Width = 81
      Height = 13
      Caption = 'Min. fecha accid.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 1
      Top = 78
      Width = 244
      Height = 3
      Shape = bsTopLine
    end
    object edSiniestroMin: TSinEdit
      Left = 105
      Top = 15
      Width = 118
      Height = 21
      Hint = 'C'#243'digo de Siniestro'
      Anchors = [akTop, akRight]
      TabOrder = 0
      Enabled = False
      Color = clActiveBorder
    end
    object btnCerrarMin: TBitBtn
      Left = 173
      Top = 86
      Width = 68
      Height = 24
      Anchors = [akRight, akBottom]
      Caption = '&Cerrar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = btnCerrarObservIncapClick
    end
    object edMINFECHAACCID: TDateComboBox
      Left = 105
      Top = 44
      Width = 88
      Height = 21
      Color = clInactiveBorder
      Enabled = False
      TabOrder = 2
    end
  end
  object fpObservErrCarga: TFormPanel [5]
    Left = 265
    Top = 393
    Width = 390
    Height = 98
    Caption = 'Observaciones del Siniestro con Error de carga'
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = [biSystemMenu]
    BorderStyle = bsSingle
    Position = poOwnerFormCenter
    OnBeforeShow = fpObservErrCargaBeforeShow
    DesignSize = (
      390
      98)
    object Bevel5: TBevel
      Left = 1
      Top = 65
      Width = 387
      Height = 3
      Shape = bsTopLine
    end
    object btnCancelarObservErrCarga: TBitBtn
      Left = 319
      Top = 70
      Width = 68
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = '&Cerrar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnCancelarObservErrCargaClick
    end
    object MemoObservErrorCarga: TMemo
      Left = 3
      Top = 4
      Width = 383
      Height = 58
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object btnAceptarObservErrCarga: TBitBtn
      Left = 246
      Top = 70
      Width = 68
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnAceptarObservErrCargaClick
    end
  end
  inherited sdqDatos: TSDQuery
    OnNewRecord = sdqDatosNewRecord
    SQL.Strings = (
      
        'SELECT EX_SINIESTRO, EX_ORDEN, EX_RECAIDA, EX_FECHAACCIDENTE, EX' +
        '_HORAACCIDENTE,'
      
        '       EX_FECHARECAIDA, EX_TIPO, EX_ACCIDENTETRANSITO, EX_SINIES' +
        'TROMULTIPLE,'
      
        '       EX_ESTADO, NVL(EX_POSIBLERECUPERO, '#39'N'#39') as EX_POSIBLERECU' +
        'PERO,'
      
        '       NVL(EX_POSIBLERECHAZO, '#39'N'#39') as EX_POSIBLERECHAZO, EX_SUSP' +
        'ENSIONPLAZO, EX_IDDIAGNOSTICO,'
      
        '       EX_CUIT, EX_CUIL, EX_CAUSAFIN, EX_FECHAFIN, EX_BREVEDESCR' +
        'IPCION,'
      
        '       EX_OBSERVACIONES, EX_BAJAMEDICA, EX_ALTAMEDICA, EX_FECHAM' +
        'ANIFESTACION,'
      
        '       EX_FECHAEXPUESTO, EX_GRAVEDAD, EX_DIAGNOSTICO, EX_DIAGNOS' +
        'TICOOMS,'
      
        '       EX_PRESUPINCAPACIDAD, EX_FECHARECEPCION, EX_SINIESTRORED,' +
        ' EX_ORDENRED,'
      
        '       EX_RECAIDARED, EX_RED, EX_USUALTA, EX_FECHAALTA, EX_USUMO' +
        'DIF,'
      
        '       EX_FECHAMODIF, EX_SUSPPLAZOSIN, EX_SUSPPLAZOMED, EX_SUSPP' +
        'LAZOLEG,'
      
        '       EX_VENCIMSUSPENSION, EX_RECHAZOSIN, EX_RECHAZOMED, EX_REC' +
        'HAZOLEG,'
      
        '       EX_RECHAZO, EX_VENCIMRECHAZO, EX_USUARIOSUSPSIN, EX_USUAR' +
        'IOSUSPMED,'
      
        '       EX_USUARIOSUSPLEG, EX_USUARIORECHAZOSIN, EX_USUARIORECHAZ' +
        'OMED,'
      
        '       EX_USUARIORECHAZOLEG, EX_FSUSPSIN, EX_FSUSPMED, EX_FRECHA' +
        'ZOSIN,'
      
        '       EX_FRECHAZOMED, EX_SECTOR, EX_GTRABAJO, EX_MTRABAJO, EX_P' +
        'RESTADOR,'
      
        '       EX_FECHAREASIGNACION, EX_DELEGACION, EX_ID, EX_ADDENDA, N' +
        'VL(EX_FECHACARGA, EX_FECHAALTA) AS EX_FECHACARGA,'
      
        '       EX_PROTOCOLO, EX_MDELEGACION, EX_GRAVEDADCIE10, EX_IDTRAB' +
        'AJADOR,'
      ''
      '       CAST(NULL AS VARCHAR2(10)) RS_TDESTINATARIO,'
      ''
      
        '       DECODE(EX_INTERCURRENCIA, NULL, '#39'N'#39', EX_INTERCURRENCIA) a' +
        's EX_INTERCURRENCIA,'
      
        '       DECODE(EX_PLURIEMPLEO, NULL, '#39'N'#39', EX_PLURIEMPLEO) as EX_P' +
        'LURIEMPLEO,'
      ''
      '       CAST(NULL AS VARCHAR2(100)) RS_DESTINATARIO,'
      ''
      '       CAST(NULL AS VARCHAR2(250)) RS_OBSERVACIONES,'
      ''
      '       TO_NUMBER(NULL) AS RS_IDREF, NL_MARCADO, NL_TAREA,'
      
        '       NL_ENFERMEDAD, NL_AGENTE, NL_OBSMARCA, NL_FDICTMARCA, NL_' +
        'OBSDESMARCA,'
      '       NL_FDICTDESMARCA, NL_ID, EX_ESTADOCRONICO,'
      
        '       DECODE(NL_ENFNOLISTADA, NULL, '#39'N'#39', NL_ENFNOLISTADA) NL_EN' +
        'FNOLISTADA,'
      
        '       DECODE(NL_HIPOACUSIA, NULL, '#39'N'#39', NL_HIPOACUSIA) NL_HIPOAC' +
        'USIA, nvl(EX_EXAMENPERIODICO, '#39'N'#39') EX_EXAMENPERIODICO,'
      
        '       EX_OBSERV_ERRORCARGA, NVL(EX_POSIBLEFRAUDE, '#39'N'#39') EX_POSIB' +
        'LEFRAUDE, NVL(EX_EMPLEADOPCP, '#39'N'#39') EX_EMPLEADOPCP, '
      '       EX_ABIERTOPORJUICIO, EX_IDEXPINTERCURRENCIA'
      '  FROM SEX_EXPEDIENTES, SIN.SNL_ENFERMEDADNOLISTADA'
      ' WHERE EX_ID = NL_IDEXPEDIENTE(+)'
      '   AND NL_FECHABAJA IS NULL'
      '   AND EX_ID = :ID')
    UniDirectional = True
    Left = 528
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    object sdqDatosEX_SINIESTRO: TFloatField
      FieldName = 'EX_SINIESTRO'
      Required = True
    end
    object sdqDatosEX_ORDEN: TFloatField
      FieldName = 'EX_ORDEN'
      Required = True
    end
    object sdqDatosEX_RECAIDA: TFloatField
      FieldName = 'EX_RECAIDA'
      Required = True
    end
    object sdqDatosEX_FECHAACCIDENTE: TDateTimeField
      FieldName = 'EX_FECHAACCIDENTE'
    end
    object sdqDatosEX_HORAACCIDENTE: TStringField
      FieldName = 'EX_HORAACCIDENTE'
      Size = 5
    end
    object sdqDatosEX_FECHARECAIDA: TDateTimeField
      FieldName = 'EX_FECHARECAIDA'
    end
    object sdqDatosEX_TIPO: TStringField
      FieldName = 'EX_TIPO'
      Size = 1
    end
    object sdqDatosEX_ACCIDENTETRANSITO: TStringField
      FieldName = 'EX_ACCIDENTETRANSITO'
      Size = 1
    end
    object sdqDatosEX_SINIESTROMULTIPLE: TStringField
      FieldName = 'EX_SINIESTROMULTIPLE'
      Size = 1
    end
    object sdqDatosEX_ESTADO: TStringField
      FieldName = 'EX_ESTADO'
      Size = 2
    end
    object sdqDatosEX_POSIBLERECUPERO: TStringField
      FieldName = 'EX_POSIBLERECUPERO'
      Size = 1
    end
    object sdqDatosEX_POSIBLERECHAZO: TStringField
      FieldName = 'EX_POSIBLERECHAZO'
      Size = 1
    end
    object sdqDatosEX_SUSPENSIONPLAZO: TStringField
      FieldName = 'EX_SUSPENSIONPLAZO'
      Size = 1
    end
    object sdqDatosEX_CUIT: TStringField
      FieldName = 'EX_CUIT'
      Size = 11
    end
    object sdqDatosEX_CUIL: TStringField
      FieldName = 'EX_CUIL'
      Size = 11
    end
    object sdqDatosEX_CAUSAFIN: TStringField
      FieldName = 'EX_CAUSAFIN'
      Size = 10
    end
    object sdqDatosEX_FECHAFIN: TDateTimeField
      FieldName = 'EX_FECHAFIN'
    end
    object sdqDatosEX_BREVEDESCRIPCION: TStringField
      FieldName = 'EX_BREVEDESCRIPCION'
      Size = 250
    end
    object sdqDatosEX_OBSERVACIONES: TStringField
      FieldName = 'EX_OBSERVACIONES'
      Size = 250
    end
    object sdqDatosEX_BAJAMEDICA: TDateTimeField
      FieldName = 'EX_BAJAMEDICA'
    end
    object sdqDatosEX_ALTAMEDICA: TDateTimeField
      FieldName = 'EX_ALTAMEDICA'
    end
    object sdqDatosEX_FECHAMANIFESTACION: TDateTimeField
      FieldName = 'EX_FECHAMANIFESTACION'
    end
    object sdqDatosEX_FECHAEXPUESTO: TDateTimeField
      FieldName = 'EX_FECHAEXPUESTO'
    end
    object sdqDatosEX_GRAVEDAD: TStringField
      FieldName = 'EX_GRAVEDAD'
      Size = 1
    end
    object sdqDatosEX_DIAGNOSTICO: TStringField
      FieldName = 'EX_DIAGNOSTICO'
      Size = 250
    end
    object sdqDatosEX_DIAGNOSTICOOMS: TStringField
      FieldName = 'EX_DIAGNOSTICOOMS'
      Size = 10
    end
    object sdqDatosEX_PRESUPINCAPACIDAD: TStringField
      FieldName = 'EX_PRESUPINCAPACIDAD'
      Size = 1
    end
    object sdqDatosEX_FECHARECEPCION: TDateTimeField
      FieldName = 'EX_FECHARECEPCION'
    end
    object sdqDatosEX_SINIESTRORED: TFloatField
      FieldName = 'EX_SINIESTRORED'
    end
    object sdqDatosEX_ORDENRED: TFloatField
      FieldName = 'EX_ORDENRED'
    end
    object sdqDatosEX_RECAIDARED: TFloatField
      FieldName = 'EX_RECAIDARED'
    end
    object sdqDatosEX_RED: TStringField
      FieldName = 'EX_RED'
      Size = 3
    end
    object sdqDatosEX_USUALTA: TStringField
      FieldName = 'EX_USUALTA'
    end
    object sdqDatosEX_FECHAALTA: TDateTimeField
      FieldName = 'EX_FECHAALTA'
    end
    object sdqDatosEX_USUMODIF: TStringField
      FieldName = 'EX_USUMODIF'
    end
    object sdqDatosEX_FECHAMODIF: TDateTimeField
      FieldName = 'EX_FECHAMODIF'
    end
    object sdqDatosEX_SUSPPLAZOSIN: TStringField
      FieldName = 'EX_SUSPPLAZOSIN'
      Size = 3
    end
    object sdqDatosEX_SUSPPLAZOMED: TStringField
      FieldName = 'EX_SUSPPLAZOMED'
      Size = 3
    end
    object sdqDatosEX_SUSPPLAZOLEG: TStringField
      FieldName = 'EX_SUSPPLAZOLEG'
      Size = 3
    end
    object sdqDatosEX_VENCIMSUSPENSION: TDateTimeField
      FieldName = 'EX_VENCIMSUSPENSION'
    end
    object sdqDatosEX_RECHAZOSIN: TStringField
      FieldName = 'EX_RECHAZOSIN'
      Size = 3
    end
    object sdqDatosEX_RECHAZOMED: TStringField
      FieldName = 'EX_RECHAZOMED'
      Size = 3
    end
    object sdqDatosEX_RECHAZOLEG: TStringField
      FieldName = 'EX_RECHAZOLEG'
      Size = 3
    end
    object sdqDatosEX_RECHAZO: TStringField
      FieldName = 'EX_RECHAZO'
      Size = 1
    end
    object sdqDatosEX_VENCIMRECHAZO: TDateTimeField
      FieldName = 'EX_VENCIMRECHAZO'
    end
    object sdqDatosEX_USUARIOSUSPSIN: TStringField
      FieldName = 'EX_USUARIOSUSPSIN'
    end
    object sdqDatosEX_USUARIOSUSPMED: TStringField
      FieldName = 'EX_USUARIOSUSPMED'
    end
    object sdqDatosEX_USUARIOSUSPLEG: TStringField
      FieldName = 'EX_USUARIOSUSPLEG'
    end
    object sdqDatosEX_USUARIORECHAZOSIN: TStringField
      FieldName = 'EX_USUARIORECHAZOSIN'
    end
    object sdqDatosEX_USUARIORECHAZOMED: TStringField
      FieldName = 'EX_USUARIORECHAZOMED'
    end
    object sdqDatosEX_USUARIORECHAZOLEG: TStringField
      FieldName = 'EX_USUARIORECHAZOLEG'
    end
    object sdqDatosEX_FSUSPSIN: TDateTimeField
      FieldName = 'EX_FSUSPSIN'
    end
    object sdqDatosEX_FSUSPMED: TDateTimeField
      FieldName = 'EX_FSUSPMED'
    end
    object sdqDatosEX_FRECHAZOSIN: TDateTimeField
      FieldName = 'EX_FRECHAZOSIN'
    end
    object sdqDatosEX_FRECHAZOMED: TDateTimeField
      FieldName = 'EX_FRECHAZOMED'
    end
    object sdqDatosEX_SECTOR: TStringField
      FieldName = 'EX_SECTOR'
      Size = 8
    end
    object sdqDatosEX_GTRABAJO: TStringField
      DisplayWidth = 3
      FieldName = 'EX_GTRABAJO'
      Size = 3
    end
    object sdqDatosEX_MTRABAJO: TStringField
      FieldName = 'EX_MTRABAJO'
      Size = 1
    end
    object sdqDatosEX_PRESTADOR: TFloatField
      FieldName = 'EX_PRESTADOR'
    end
    object sdqDatosEX_FECHAREASIGNACION: TDateTimeField
      FieldName = 'EX_FECHAREASIGNACION'
    end
    object sdqDatosEX_DELEGACION: TStringField
      FieldName = 'EX_DELEGACION'
      Size = 4
    end
    object sdqDatosEX_ID: TFloatField
      FieldName = 'EX_ID'
    end
    object sdqDatosEX_ADDENDA: TStringField
      FieldName = 'EX_ADDENDA'
      Size = 1
    end
    object sdqDatosEX_FECHACARGA: TDateTimeField
      FieldName = 'EX_FECHACARGA'
    end
    object sdqDatosEX_PROTOCOLO: TStringField
      FieldName = 'EX_PROTOCOLO'
      Size = 10
    end
    object sdqDatosEX_MDELEGACION: TStringField
      FieldName = 'EX_MDELEGACION'
      Size = 1
    end
    object sdqDatosEX_GRAVEDADCIE10: TStringField
      FieldName = 'EX_GRAVEDADCIE10'
      Size = 10
    end
    object sdqDatosEX_IDTRABAJADOR: TFloatField
      FieldName = 'EX_IDTRABAJADOR'
    end
    object sdqDatosRS_TDESTINATARIO: TStringField
      FieldName = 'RS_TDESTINATARIO'
      Size = 100
    end
    object sdqDatosRS_DESTINATARIO: TStringField
      FieldName = 'RS_DESTINATARIO'
      Size = 100
    end
    object sdqDatosRS_OBSERVACIONES: TStringField
      FieldName = 'RS_OBSERVACIONES'
      Size = 100
    end
    object sdqDatosEX_IDDIAGNOSTICO: TFloatField
      FieldName = 'EX_IDDIAGNOSTICO'
    end
    object sdqDatosEX_INTERCURRENCIA: TStringField
      FieldName = 'EX_INTERCURRENCIA'
      Size = 1
    end
    object sdqDatosEX_PLURIEMPLEO: TStringField
      FieldName = 'EX_PLURIEMPLEO'
      Size = 1
    end
    object sdqDatosNL_MARCADO: TStringField
      FieldName = 'NL_MARCADO'
      Size = 1
    end
    object sdqDatosNL_TAREA: TStringField
      FieldName = 'NL_TAREA'
      Size = 500
    end
    object sdqDatosNL_ENFERMEDAD: TStringField
      FieldName = 'NL_ENFERMEDAD'
      Size = 500
    end
    object sdqDatosNL_AGENTE: TStringField
      FieldName = 'NL_AGENTE'
      Size = 500
    end
    object sdqDatosNL_OBSMARCA: TStringField
      FieldName = 'NL_OBSMARCA'
      Size = 500
    end
    object sdqDatosNL_FDICTMARCA: TDateTimeField
      FieldName = 'NL_FDICTMARCA'
    end
    object sdqDatosNL_OBSDESMARCA: TStringField
      FieldName = 'NL_OBSDESMARCA'
      Size = 500
    end
    object sdqDatosNL_FDICTDESMARCA: TDateTimeField
      FieldName = 'NL_FDICTDESMARCA'
    end
    object sdqDatosNL_ID: TFloatField
      FieldName = 'NL_ID'
    end
    object sdqDatosEX_ESTADOCRONICO: TStringField
      FieldName = 'EX_ESTADOCRONICO'
      Size = 1
    end
    object sdqDatosRS_IDREF: TFloatField
      FieldName = 'RS_IDREF'
    end
    object sdqDatosNL_ENFNOLISTADA: TStringField
      FieldName = 'NL_ENFNOLISTADA'
      Size = 1
    end
    object sdqDatosNL_HIPOACUSIA: TStringField
      FieldName = 'NL_HIPOACUSIA'
      Size = 1
    end
    object sdqDatosEX_EXAMENPERIODICO: TStringField
      DisplayWidth = 1
      FieldName = 'EX_EXAMENPERIODICO'
      Size = 1
    end
    object sdqDatosEX_OBSERV_ERRORCARGA: TStringField
      FieldName = 'EX_OBSERV_ERRORCARGA'
      Size = 250
    end
    object sdqDatosEX_POSIBLEFRAUDE: TStringField
      FieldName = 'EX_POSIBLEFRAUDE'
      Size = 1
    end
    object sdqDatosEX_EMPLEADOPCP: TStringField
      FieldName = 'EX_EMPLEADOPCP'
      Size = 1
    end
    object sdqDatosEX_ABIERTOPORJUICIO: TStringField
      FieldName = 'EX_ABIERTOPORJUICIO'
      Size = 1
    end
    object sdqDatosEX_IDEXPINTERCURRENCIA: TFloatField
      FieldName = 'EX_IDEXPINTERCURRENCIA'
    end
  end
  inherited dsDatos: TDataSource
    OnDataChange = dsDatosDataChange
    OnUpdateData = dsDatosUpdateData
    Left = 556
    Top = 104
  end
  inherited sduDatos: TSDUpdateSQL
    ModifySQL.Strings = (
      'DECLARE'
      '  CAMBIOCUIL VARCHAR2(100);'
      'BEGIN'
      '  UPDATE ART.SEX_EXPEDIENTES'
      '     SET EX_FECHAACCIDENTE = :EX_FECHAACCIDENTE,'
      '         EX_HORAACCIDENTE = :EX_HORAACCIDENTE,'
      '         EX_FECHARECAIDA = :EX_FECHARECAIDA,'
      '         EX_TIPO = :EX_TIPO,'
      '         EX_ACCIDENTETRANSITO = :EX_ACCIDENTETRANSITO,'
      '         EX_SINIESTROMULTIPLE = :EX_SINIESTROMULTIPLE,'
      '         EX_ESTADO = :EX_ESTADO,'
      '         EX_POSIBLERECUPERO = :EX_POSIBLERECUPERO,'
      '         EX_POSIBLERECHAZO = :EX_POSIBLERECHAZO,'
      '         EX_SUSPENSIONPLAZO = :EX_SUSPENSIONPLAZO,'
      '         EX_CUIT = :EX_CUIT,'
      '         EX_CUIL = :EX_CUIL,'
      '         EX_BREVEDESCRIPCION = :EX_BREVEDESCRIPCION,'
      '         EX_OBSERVACIONES = :EX_OBSERVACIONES,'
      '         EX_BAJAMEDICA = :EX_BAJAMEDICA,'
      '         EX_ALTAMEDICA = :EX_ALTAMEDICA,'
      '         EX_FECHAMANIFESTACION = :EX_FECHAMANIFESTACION,'
      '         EX_FECHAEXPUESTO = :EX_FECHAEXPUESTO,'
      '         EX_GRAVEDAD = :EX_GRAVEDAD,'
      '         EX_DIAGNOSTICO = :EX_DIAGNOSTICO,'
      '         EX_DIAGNOSTICOOMS = :EX_DIAGNOSTICOOMS,'
      '         EX_PRESUPINCAPACIDAD = :EX_PRESUPINCAPACIDAD,'
      '         EX_FECHARECEPCION = :EX_FECHARECEPCION,'
      '         EX_SINIESTRORED = :EX_SINIESTRORED,'
      '         EX_ORDENRED = :EX_ORDENRED,'
      '         EX_RECAIDARED = :EX_RECAIDARED,'
      '         EX_RED = :EX_RED,'
      '         EX_USUMODIF = :EX_USUMODIF,'
      '         EX_FECHAMODIF = ART.ACTUALDATE,'
      '         EX_SECTOR = :EX_SECTOR,'
      '         EX_PRESTADOR = :EX_PRESTADOR,'
      '         EX_FECHAREASIGNACION = :EX_FECHAREASIGNACION,'
      '         EX_DELEGACION = :EX_DELEGACION,'
      '         EX_ADDENDA = :EX_ADDENDA,'
      '         EX_FECHACARGA = :EX_FECHACARGA,'
      '         EX_PROTOCOLO = :EX_PROTOCOLO,'
      '         EX_MDELEGACION = :EX_MDELEGACION,'
      '         EX_GRAVEDADCIE10 = :EX_GRAVEDADCIE10,'
      '         EX_IDTRABAJADOR = :EX_IDTRABAJADOR,'
      '         EX_INTERCURRENCIA = :EX_INTERCURRENCIA,'
      '         EX_PLURIEMPLEO = :EX_PLURIEMPLEO,'
      '         EX_ESTADOCRONICO = :EX_ESTADOCRONICO,'
      '         EX_EXAMENPERIODICO = :EX_EXAMENPERIODICO,'
      '         EX_OBSERV_ERRORCARGA = :EX_OBSERV_ERRORCARGA,'
      '         EX_POSIBLEFRAUDE = :EX_POSIBLEFRAUDE,'
      '         EX_EMPLEADOPCP = :EX_EMPLEADOPCP,'
      '         EX_ABIERTOPORJUICIO = :EX_ABIERTOPORJUICIO'
      '   WHERE EX_ID = :OLD_EX_ID;'
      ''
      
        '  IF ((:EX_SUSPENSIONPLAZO = '#39'S'#39') AND (:OLD_EX_SUSPENSIONPLAZO =' +
        ' '#39'N'#39' OR :OLD_EX_SUSPENSIONPLAZO IS NULL)) THEN   -- SI SUSPENSI'#211 +
        'N DE PLAZO'
      ''
      '    UPDATE SEX_EXPEDIENTES'
      '       SET EX_ESTADO   = '#39'02'#39',        -- ESTADO SUSPENDIDO'
      '           EX_CAUSAFIN = NULL,'
      '           EX_FECHAFIN = NULL'
      '     WHERE EX_ID = :OLD_EX_ID;'
      ''
      
        '    ART.SINIESTRO.DO_INSERTARREG_ESTADOSINIESTRO(:EX_SINIESTRO, ' +
        ':EX_ORDEN, :EX_RECAIDA, '#39'02'#39', '#39'Cambio de estado desde la solapa ' +
        'de expedientes'#39', '#39#39', '#39#39', 0, 0, 0, :EX_USUMODIF);'
      ''
      
        '  ELSIF ((:EX_SUSPENSIONPLAZO = '#39'N'#39') AND (:OLD_EX_ESTADO = '#39'02'#39')' +
        ') THEN    -- ESTADO SUSPENDIDO'
      ''
      '    UPDATE SEX_EXPEDIENTES'
      '       SET EX_ESTADO   = '#39'01'#39',        -- ESTADO ACTIVO'
      '           EX_CAUSAFIN = NULL,'
      '           EX_FECHAFIN = NULL'
      '     WHERE EX_ID = :OLD_EX_ID;'
      ''
      
        '    ART.SINIESTRO.DO_INSERTARREG_ESTADOSINIESTRO(:EX_SINIESTRO, ' +
        ':EX_ORDEN, :EX_RECAIDA, '#39'01'#39', '#39'Cambio de estado desde la solapa ' +
        'de expedientes'#39', '#39#39', '#39#39', 0, 0, 0, :EX_USUMODIF);'
      ''
      '  END IF;'
      ''
      
        '  IF :EX_RECAIDA = 0 THEN                                   -- S' +
        'I NO ES UNA RECA'#205'DA'
      
        '    IF (:OLD_EX_FECHAACCIDENTE <> :EX_FECHAACCIDENTE) THEN  -- Y' +
        ' CAMBI'#211' LA FECHA DE ACCIDENTE'
      
        '      UPDATE SEX_EXPEDIENTES                                -- A' +
        'CTUALIZO TODAS LAS RECA'#205'DAS DEL SINIESTRO/ORDEN'
      '         SET EX_FECHAACCIDENTE = :EX_FECHAACCIDENTE,'
      '             EX_USUMODIF = :EX_USUMODIF,'
      '             EX_FECHAMODIF = ART.ACTUALDATE'
      '       WHERE EX_SINIESTRO = :EX_SINIESTRO'
      '         AND EX_ORDEN = :EX_ORDEN'
      '         AND EX_RECAIDA >= 1;'
      '    END IF;'
      ''
      
        '    IF (:OLD_EX_TIPO <> :EX_TIPO)                           -- Y' +
        ' CAMBI'#211' EL TIPO DE ACCIDENTE'
      '    OR (:OLD_EX_TIPO IS NULL AND :EX_TIPO IS NOT NULL)'
      '    OR (:OLD_EX_TIPO IS NOT NULL AND :EX_TIPO IS NULL) THEN'
      
        '      UPDATE SEX_EXPEDIENTES                                -- A' +
        'CTUALIZO TODAS LAS RECA'#205'DAS DEL SINIESTRO/ORDEN'
      '         SET EX_TIPO = :EX_TIPO,'
      '             EX_FECHAMANIFESTACION = :EX_FECHAMANIFESTACION,'
      '             EX_FECHAEXPUESTO = :EX_FECHAEXPUESTO,'
      '             EX_USUMODIF = :EX_USUMODIF,'
      '             EX_FECHAMODIF = ART.ACTUALDATE'
      '       WHERE EX_SINIESTRO = :EX_SINIESTRO'
      '         AND EX_ORDEN = :EX_ORDEN'
      '         AND EX_RECAIDA >= 1;'
      '    END IF;'
      '  END IF;'
      ''
      
        '  IF :EX_CUIL <> :OLD_EX_CUIL THEN                        -- SI ' +
        'CAMBI'#211' EL CUIL, ENTONCES'
      
        '    UPDATE SEX_EXPEDIENTES                                -- ACT' +
        'UALIZO TODAS LAS RECA'#205'DAS DEL SINIESTRO/ORDEN'
      '       SET EX_CUIL = :EX_CUIL,'
      '           EX_USUMODIF = :EX_USUMODIF,'
      '           EX_FECHAMODIF = ART.ACTUALDATE'
      '     WHERE EX_SINIESTRO = :EX_SINIESTRO'
      '       AND EX_ORDEN = :EX_ORDEN;'
      ''
      
        '    SELECT '#39'CAMBIO DE CUIL '#39' || :OLD_EX_CUIL || '#39' POR '#39' || :EX_C' +
        'UIL || '#39', DEL SINIESTRO '#39' || ART.UTILES.ARMAR_SINIESTRO(:EX_SINI' +
        'ESTRO, :EX_ORDEN, :EX_RECAIDA)'
      '      INTO CAMBIOCUIL'
      '      FROM DUAL;'
      ''
      
        '    ART.SINIESTRO.DO_REGAUDITLOG('#39'SINIESTROS'#39', '#39'CUIL EXPEDIENTE'#39 +
        ', '#39'MODIFICACION'#39', CAMBIOCUIL, :EX_USUMODIF);'
      '  END IF;'
      ''
      '  ART.SINIESTRO.DO_REGAUDITLOG_COMPLETO(:EX_ID,'
      '                                        '#39'SINIESTROS'#39','
      
        '                                        '#39'ADM. TABLAS EXPEDIENTE'#39 +
        ','
      '                                        '#39'MODIFICACION'#39','
      '                                        :EX_USUMODIF,'
      '                                        -1,'
      '                                        :EX_DIAGNOSTICOOMS,'
      '                                        :EX_GRAVEDAD,'
      '                                        :EX_TIPO,'
      '                                        :EX_POSIBLERECUPERO,'
      '                                        :EX_POSIBLERECHAZO,'
      '                                        :EX_SUSPENSIONPLAZO,'
      '                                        :EX_PRESUPINCAPACIDAD);'
      ''
      
        '  -- SOLO SE GRABAN LOS DATOS SI EST'#193' TILDADO EL CHECK DE POSIBL' +
        'E RECUPERO'
      '  IF :EX_POSIBLERECUPERO = '#39'S'#39' THEN'
      
        '    ART.SINIESTRO.DO_GRABAR_RECUPEROSINIESTRO(:EX_ID, :RS_TDESTI' +
        'NATARIO, :RS_DESTINATARIO, :RS_OBSERVACIONES, :EX_USUMODIF, IIF_' +
        'COMPARA('#39'='#39', :RS_IDREF, 0, NULL, :RS_IDREF));'
      '  END IF;'
      ''
      '  ART.SINIESTRO.DO_ACTUALIZAR_GRUPODETRABAJO(:EX_ID);'
      ''
      '  IF (:NL_MARCADO IS NOT NULL) THEN'
      ''
      
        '      IF (:NL_MARCADO = '#39'S'#39') AND ((:OLD_NL_MARCADO = '#39'N'#39') OR (:O' +
        'LD_NL_MARCADO IS NULL)) THEN'
      '        UPDATE SIN.SNL_ENFERMEDADNOLISTADA'
      '           SET NL_FECHABAJA = ART.ACTUALDATE,'
      '               NL_USUBAJA = :EX_USUMODIF'
      '         WHERE NL_ID = :NL_ID;'
      ''
      '        INSERT INTO SIN.SNL_ENFERMEDADNOLISTADA'
      
        '                    (NL_IDEXPEDIENTE, NL_MARCADO, NL_TAREA, NL_E' +
        'NFERMEDAD, NL_AGENTE,'
      
        '                     NL_OBSMARCA, NL_FDICTMARCA, NL_USUMARCA, NL' +
        '_FECHAMARCA, NL_ENFNOLISTADA, NL_HIPOACUSIA)'
      
        '             VALUES (:EX_ID, :NL_MARCADO, :NL_TAREA, :NL_ENFERME' +
        'DAD, :NL_AGENTE,'
      
        '                     :NL_OBSMARCA, :NL_FDICTMARCA, :EX_USUMODIF,' +
        ' ART.ACTUALDATE, :NL_ENFNOLISTADA, :NL_HIPOACUSIA);'
      ''
      '      ELSIF (:NL_MARCADO = '#39'S'#39') AND (:OLD_NL_MARCADO = '#39'S'#39') THEN'
      ''
      '        UPDATE SIN.SNL_ENFERMEDADNOLISTADA'
      '           SET NL_TAREA = :NL_TAREA,'
      '               NL_ENFERMEDAD = :NL_ENFERMEDAD,'
      '               NL_AGENTE = :NL_AGENTE,'
      '               NL_OBSMARCA = :NL_OBSMARCA,'
      '               NL_FDICTMARCA = :NL_FDICTMARCA,'
      '               NL_ENFNOLISTADA = :NL_ENFNOLISTADA,'
      '               NL_HIPOACUSIA = :NL_HIPOACUSIA'
      '         WHERE NL_ID = :NL_ID;'
      ''
      '      ELSIF (:NL_MARCADO = '#39'N'#39') THEN'
      ''
      '        UPDATE SIN.SNL_ENFERMEDADNOLISTADA'
      '           SET NL_MARCADO = :NL_MARCADO,'
      '               NL_OBSDESMARCA = :NL_OBSDESMARCA,'
      '               NL_FDICTDESMARCA = :NL_FDICTDESMARCA,'
      '               NL_USUDESMARCA = :EX_USUMODIF,'
      '               NL_FECHADESMARCA = ART.ACTUALDATE,'
      '               NL_ENFNOLISTADA = :NL_ENFNOLISTADA,'
      '               NL_HIPOACUSIA = :NL_HIPOACUSIA'
      '         WHERE NL_ID = :NL_ID;'
      ''
      '      END IF;'
      ''
      
        '    ART.SINIESTRO.DO_ACTUALIZAREXPEDIENTE (:EX_ID, NULL, :EX_USU' +
        'MODIF, ART.ACTUALDATE, NULL);'
      ''
      '  END IF;'
      ''
      'END;')
    InsertSQL.Strings = (
      'BEGIN'
      '  INSERT INTO ART.SEX_EXPEDIENTES'
      
        '              (EX_SINIESTRO, EX_ORDEN, EX_RECAIDA, EX_FECHAACCID' +
        'ENTE,'
      '               EX_HORAACCIDENTE, EX_FECHARECAIDA, EX_TIPO,'
      
        '               EX_ACCIDENTETRANSITO, EX_SINIESTROMULTIPLE, EX_ES' +
        'TADO,'
      
        '               EX_POSIBLERECUPERO, EX_POSIBLERECHAZO, EX_SUSPENS' +
        'IONPLAZO,'
      '               EX_CUIT, EX_CUIL, EX_CAUSAFIN, EX_FECHAFIN,'
      
        '               EX_BREVEDESCRIPCION, EX_OBSERVACIONES, EX_BAJAMED' +
        'ICA,'
      
        '               EX_ALTAMEDICA, EX_FECHAMANIFESTACION, EX_FECHAEXP' +
        'UESTO,'
      '               EX_GRAVEDAD, EX_DIAGNOSTICO, EX_DIAGNOSTICOOMS,'
      
        '               EX_PRESUPINCAPACIDAD, EX_FECHARECEPCION, EX_SINIE' +
        'STRORED,'
      '               EX_ORDENRED, EX_RECAIDARED, EX_RED, EX_USUALTA,'
      
        '               EX_FECHAALTA, EX_USUMODIF, EX_FECHAMODIF, EX_SUSP' +
        'PLAZOSIN,'
      
        '               EX_SUSPPLAZOMED, EX_SUSPPLAZOLEG, EX_VENCIMSUSPEN' +
        'SION,'
      
        '               EX_RECHAZOSIN, EX_RECHAZOMED, EX_RECHAZOLEG, EX_R' +
        'ECHAZO,'
      
        '               EX_VENCIMRECHAZO, EX_USUARIOSUSPSIN, EX_USUARIOSU' +
        'SPMED,'
      '               EX_USUARIOSUSPLEG, EX_USUARIORECHAZOSIN,'
      
        '               EX_USUARIORECHAZOMED, EX_USUARIORECHAZOLEG, EX_FS' +
        'USPSIN,'
      
        '               EX_FSUSPMED, EX_FRECHAZOSIN, EX_FRECHAZOMED, EX_S' +
        'ECTOR,'
      '               EX_GTRABAJO, EX_MTRABAJO, EX_PRESTADOR,'
      
        '               EX_FECHAREASIGNACION, EX_DELEGACION, EX_ID, EX_AD' +
        'DENDA,'
      '               EX_FECHACARGA, EX_PROTOCOLO, EX_MDELEGACION,'
      
        '               EX_GRAVEDADCIE10, EX_IDTRABAJADOR, EX_INTERCURREN' +
        'CIA,'
      
        '               EX_ESTADOCRONICO, EX_EXAMENPERIODICO, EX_OBSERV_E' +
        'RRORCARGA,'
      
        '               EX_POSIBLEFRAUDE, EX_EMPLEADOPCP, EX_ABIERTOPORJU' +
        'ICIO'
      ''
      '              )'
      
        '       VALUES (:EX_SINIESTRO, :EX_ORDEN, :EX_RECAIDA, :EX_FECHAA' +
        'CCIDENTE,'
      '               :EX_HORAACCIDENTE, :EX_FECHARECAIDA, :EX_TIPO,'
      
        '               :EX_ACCIDENTETRANSITO, :EX_SINIESTROMULTIPLE, :EX' +
        '_ESTADO,'
      
        '               :EX_POSIBLERECUPERO, :EX_POSIBLERECHAZO, :EX_SUSP' +
        'ENSIONPLAZO,'
      '               :EX_CUIT, :EX_CUIL, :EX_CAUSAFIN, :EX_FECHAFIN,'
      
        '               :EX_BREVEDESCRIPCION, :EX_OBSERVACIONES, :EX_BAJA' +
        'MEDICA,'
      
        '               :EX_ALTAMEDICA, :EX_FECHAMANIFESTACION, :EX_FECHA' +
        'EXPUESTO,'
      
        '               :EX_GRAVEDAD, :EX_DIAGNOSTICO, :EX_DIAGNOSTICOOMS' +
        ','
      
        '               :EX_PRESUPINCAPACIDAD, :EX_FECHARECEPCION, :EX_SI' +
        'NIESTRORED,'
      
        '               :EX_ORDENRED, :EX_RECAIDARED, :EX_RED, :EX_USUALT' +
        'A,'
      
        '               :EX_FECHAALTA, :EX_USUMODIF, :EX_FECHAMODIF, :EX_' +
        'SUSPPLAZOSIN,'
      
        '               :EX_SUSPPLAZOMED, :EX_SUSPPLAZOLEG, :EX_VENCIMSUS' +
        'PENSION,'
      
        '               :EX_RECHAZOSIN, :EX_RECHAZOMED, :EX_RECHAZOLEG, :' +
        'EX_RECHAZO,'
      
        '               :EX_VENCIMRECHAZO, :EX_USUARIOSUSPSIN, :EX_USUARI' +
        'OSUSPMED,'
      '               :EX_USUARIOSUSPLEG, :EX_USUARIORECHAZOSIN,'
      
        '               :EX_USUARIORECHAZOMED, :EX_USUARIORECHAZOLEG, :EX' +
        '_FSUSPSIN,'
      
        '               :EX_FSUSPMED, :EX_FRECHAZOSIN, :EX_FRECHAZOMED, :' +
        'EX_SECTOR,'
      '               :EX_GTRABAJO, :EX_MTRABAJO, :EX_PRESTADOR,'
      
        '               :EX_FECHAREASIGNACION, :EX_DELEGACION, :EX_ID, :E' +
        'X_ADDENDA,'
      '               :EX_FECHACARGA, :EX_PROTOCOLO, :EX_MDELEGACION,'
      
        '               :EX_GRAVEDADCIE10, :EX_IDTRABAJADOR, :EX_INTERCUR' +
        'RENCIA,'
      
        '               :EX_ESTADOCRONICO, :EX_EXAMENPERIODICO, :EX_OBSER' +
        'V_ERRORCARGA,'
      
        '               :EX_POSIBLEFRAUDE, :EX_EMPLEADOPCP, :EX_ABIERTOPO' +
        'RJUICIO'
      ''
      '              );'
      ''
      
        '  -- SOLO SE GRABAN LOS DATOS SI EST'#193' TILDADO EL CHECK DE POSIBL' +
        'E RECUPERO'
      '  IF :EX_POSIBLERECUPERO = '#39'S'#39' THEN'
      
        '    ART.SINIESTRO.DO_GRABAR_RECUPEROSINIESTRO(:EX_ID, :RS_TDESTI' +
        'NATARIO, :RS_DESTINATARIO, :RS_OBSERVACIONES, :EX_USUALTA);'
      '  END IF;'
      'END;')
    DeleteSQL.Strings = (
      'delete from art.SEX_EXPEDIENTES'
      'where'
      '  EX_ID = :OLD_EX_ID')
    Left = 584
    Top = 104
  end
  inherited XPMenu: TXPMenu
    Left = 528
    Top = 132
  end
  inherited Seguridad: TSeguridad
    Left = 556
    Top = 132
  end
  inherited FormStorage: TFormStorage
    StoredProps.Strings = (
      'gbAdicionales.Collapsed'
      'gbDatos1.Collapsed')
    Left = 584
    Top = 132
  end
  inherited Acciones: TActionList
    Left = 528
    Top = 160
  end
  object sdqExpedienteART: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT *'
      '  FROM afi.aar_art, SIN.sea_expedienteart'
      ' WHERE ea_idart = ar_id'
      '   AND ea_idexpediente = :ID')
    Left = 556
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end>
    object sdqExpedienteARTAR_ID: TFloatField
      FieldName = 'AR_ID'
      Required = True
    end
    object sdqExpedienteARTAR_NOMBRE: TStringField
      FieldName = 'AR_NOMBRE'
      Size = 60
    end
    object sdqExpedienteARTAR_IDUBICACION: TFloatField
      FieldName = 'AR_IDUBICACION'
    end
    object sdqExpedienteARTAR_NUMERO: TStringField
      FieldName = 'AR_NUMERO'
    end
    object sdqExpedienteARTAR_PISO: TStringField
      FieldName = 'AR_PISO'
    end
    object sdqExpedienteARTAR_DEPARTAMENTO: TStringField
      FieldName = 'AR_DEPARTAMENTO'
    end
    object sdqExpedienteARTAR_CPOSTALA: TStringField
      FieldName = 'AR_CPOSTALA'
      Size = 8
    end
    object sdqExpedienteARTAR_CODAREATELEFONOS: TStringField
      FieldName = 'AR_CODAREATELEFONOS'
      Size = 5
    end
    object sdqExpedienteARTAR_TELEFONOS: TStringField
      FieldName = 'AR_TELEFONOS'
      Size = 60
    end
    object sdqExpedienteARTAR_CODAREAFAX: TStringField
      FieldName = 'AR_CODAREAFAX'
      Size = 5
    end
    object sdqExpedienteARTAR_FAX: TStringField
      FieldName = 'AR_FAX'
      Size = 60
    end
    object sdqExpedienteARTAR_OBSERVACIONES: TStringField
      FieldName = 'AR_OBSERVACIONES'
      Size = 150
    end
    object sdqExpedienteARTAR_FECHAALTA: TDateTimeField
      FieldName = 'AR_FECHAALTA'
    end
    object sdqExpedienteARTAR_USUALTA: TStringField
      FieldName = 'AR_USUALTA'
    end
    object sdqExpedienteARTAR_FECHAMODIF: TDateTimeField
      FieldName = 'AR_FECHAMODIF'
    end
    object sdqExpedienteARTAR_USUMODIF: TStringField
      FieldName = 'AR_USUMODIF'
    end
    object sdqExpedienteARTAR_FECHABAJA: TDateTimeField
      FieldName = 'AR_FECHABAJA'
    end
    object sdqExpedienteARTAR_USUBAJA: TStringField
      FieldName = 'AR_USUBAJA'
    end
    object sdqExpedienteARTAR_CALLE: TStringField
      FieldName = 'AR_CALLE'
      Size = 60
    end
    object sdqExpedienteARTAR_LOCALIDAD: TStringField
      FieldName = 'AR_LOCALIDAD'
      Size = 60
    end
    object sdqExpedienteARTAR_CPOSTAL: TStringField
      FieldName = 'AR_CPOSTAL'
      Size = 5
    end
    object sdqExpedienteARTAR_PROVINCIA: TStringField
      FieldName = 'AR_PROVINCIA'
      Size = 2
    end
    object sdqExpedienteARTAR_CODIGOSRT: TStringField
      FieldName = 'AR_CODIGOSRT'
      Size = 5
    end
    object sdqExpedienteARTAR_ARTWEB: TStringField
      FieldName = 'AR_ARTWEB'
      Size = 60
    end
    object sdqExpedienteARTEA_ID: TFloatField
      FieldName = 'EA_ID'
      Required = True
    end
    object sdqExpedienteARTEA_IDEXPEDIENTE: TFloatField
      FieldName = 'EA_IDEXPEDIENTE'
      Required = True
    end
    object sdqExpedienteARTEA_IDART: TFloatField
      FieldName = 'EA_IDART'
      Required = True
    end
    object sdqExpedienteARTEA_USUALTA: TStringField
      FieldName = 'EA_USUALTA'
      Required = True
    end
    object sdqExpedienteARTEA_FECHAALTA: TDateTimeField
      FieldName = 'EA_FECHAALTA'
      Required = True
    end
  end
end
