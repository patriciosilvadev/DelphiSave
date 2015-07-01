inherited frmInvRptPlazosFijosCartera: TfrmInvRptPlazosFijosCartera
  Left = 415
  Top = 308
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  BorderStyle = bsDialog
  Caption = 'Plazos Fijos de Cartera'
  ClientHeight = 83
  ClientWidth = 702
  Scaled = False
  ExplicitLeft = 415
  ExplicitTop = 308
  ExplicitWidth = 710
  ExplicitHeight = 113
  DesignSize = (
    702
    83)
  PixelsPerInch = 96
  TextHeight = 13
  object gbTipoInstrumento: TGroupBox [0]
    Left = 8
    Top = 2
    Width = 574
    Height = 43
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Tipo de Instrumento'
    TabOrder = 0
    DesignSize = (
      574
      43)
    inline fraTipoInstrumento: TfraCodigoDescripcion
      Left = 8
      Top = 14
      Width = 559
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      ExplicitLeft = 8
      ExplicitTop = 14
      ExplicitWidth = 559
      DesignSize = (
        559
        23)
      inherited cmbDescripcion: TArtComboBox
        Width = 494
        ExplicitWidth = 494
      end
    end
  end
  object gbFecha: TGroupBox [1]
    Left = 587
    Top = 2
    Width = 104
    Height = 43
    Anchors = [akTop, akRight]
    Caption = 'Fecha'
    TabOrder = 1
    object edFecha: TDateComboBox
      Left = 9
      Top = 15
      Width = 89
      Height = 21
      TabOrder = 0
    end
  end
  object btnAceptar: TButton [2]
    Left = 541
    Top = 54
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Aceptar'
    TabOrder = 2
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton [3]
    Left = 622
    Top = 54
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object qr: TQuickRep [4]
    Left = 24
    Top = 145
    Width = 2016
    Height = 1224
    IDReport = 0
    DataSet = sdqReporte
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = Legal
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2159.000000000000000000
      100.000000000000000000
      3556.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    ReportTitle = 'Minuta de Inversiones'
    SnapToGrid = True
    Units = MM
    Zoom = 150
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object PageHeaderBand1: TQRBand
      Left = 57
      Top = 57
      Width = 1903
      Height = 125
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        220.486111111111100000
        3356.680555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object qrlParam2: TQRLabel
        Left = 2
        Top = 86
        Width = 1639
        Height = 26
        Size.Values = (
          45.861111111111110000
          3.527777777777778000
          151.694444444444400000
          2891.013888888889000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Subtitulo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 10
      end
      object qrlParam1: TQRLabel
        Left = 256
        Top = 46
        Width = 1385
        Height = 30
        Size.Values = (
          52.916666666666670000
          451.555555555555600000
          81.138888888888890000
          2442.986111111111000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'Titulo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 12
      end
      object qriLogo: TQRImage
        Left = 1655
        Top = 4
        Width = 244
        Height = 96
        Size.Values = (
          169.333333333333300000
          2919.236111111111000000
          7.055555555555556000
          430.388888888888900000)
        XLColumn = 0
        Stretch = True
      end
    end
    object DetailBand1: TQRBand
      Left = 57
      Top = 216
      Width = 1903
      Height = 30
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        3356.680555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 394
        Top = 3
        Width = 131
        Height = 21
        Size.Values = (
          37.041666666666670000
          694.972222222222200000
          5.291666666666667000
          231.069444444444400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'CONSTITUCION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 7
        Top = 3
        Width = 108
        Height = 21
        Size.Values = (
          37.041666666666670000
          12.347222222222220000
          5.291666666666667000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'CERTIFICADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 120
        Top = 3
        Width = 270
        Height = 21
        Size.Values = (
          37.041666666666670000
          211.666666666666700000
          5.291666666666667000
          476.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'INSTITUCION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 530
        Top = 3
        Width = 179
        Height = 21
        Size.Values = (
          37.041666666666670000
          934.861111111111100000
          5.291666666666667000
          315.736111111111100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'CAPITAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatMonto
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 713
        Top = 3
        Width = 98
        Height = 21
        Size.Values = (
          37.041666666666670000
          1257.652777777778000000
          5.291666666666667000
          172.861111111111100000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'TASA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatPorc3
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Left = 815
        Top = 3
        Width = 87
        Height = 21
        Size.Values = (
          37.041666666666670000
          1437.569444444444000000
          5.291666666666667000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'PLAZO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 908
        Top = 3
        Width = 111
        Height = 21
        Size.Values = (
          37.041666666666670000
          1601.611111111111000000
          5.291666666666667000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'VENCIMIENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 1025
        Top = 3
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          1807.986111111111000000
          5.291666666666667000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'INTERES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatMonto
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 1760
        Top = 3
        Width = 139
        Height = 21
        Size.Values = (
          37.041666666666670000
          3104.444444444444000000
          5.291666666666667000
          245.180555555555600000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'INTERES_DEVENGADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatMonto
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 1195
        Top = 3
        Width = 110
        Height = 21
        Size.Values = (
          37.041666666666670000
          2107.847222222222000000
          5.291666666666667000
          194.027777777777800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'IMPUESTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatMonto
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 1311
        Top = 3
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          2312.458333333333000000
          5.291666666666667000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'MONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatMonto
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 1480
        Top = 3
        Width = 104
        Height = 21
        Size.Values = (
          37.041666666666670000
          2610.555555555556000000
          5.291666666666667000
          183.444444444444400000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'RENDIMIENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatPorc2
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
      object QRDBText13: TQRDBText
        Left = 1589
        Top = 3
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          2802.819444444444000000
          5.291666666666667000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = sdqReporte
        DataField = 'DEVENGADO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        OnPrint = FormatMonto
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        FontSize = 8
      end
    end
    object PageFooterBand1: TQRBand
      Left = 57
      Top = 289
      Width = 1903
      Height = 28
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        49.388888888888890000
        3356.680555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel9: TQRLabel
        Left = 1782
        Top = 1
        Width = 51
        Height = 26
        Size.Values = (
          45.861111111111110000
          3143.250000000000000000
          1.763888888888889000
          89.958333333333330000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'P'#225'g.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 1837
        Top = 1
        Width = 62
        Height = 26
        Size.Values = (
          45.861111111111110000
          3240.263888888889000000
          1.763888888888889000
          109.361111111111100000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
      object qrlUsuImpresion: TQRLabel
        Left = 2
        Top = 1
        Width = 563
        Height = 26
        Size.Values = (
          45.861111111111110000
          3.527777777777778000
          1.763888888888889000
          993.069444444444400000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'Usuario Impresion'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 829
        Top = 1
        Width = 244
        Height = 26
        Size.Values = (
          45.861111111111110000
          1462.263888888889000000
          1.763888888888889000
          430.388888888888900000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        FontSize = 8
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 57
      Top = 182
      Width = 1903
      Height = 34
      Frame.DrawTop = True
      Frame.DrawBottom = True
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        59.972222222222220000
        3356.680555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 394
        Top = 6
        Width = 131
        Height = 21
        Size.Values = (
          37.041666666666670000
          694.972222222222200000
          10.583333333333330000
          231.069444444444400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CONSTITUC.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 7
        Top = 6
        Width = 108
        Height = 21
        Size.Values = (
          37.041666666666670000
          12.347222222222220000
          10.583333333333330000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'CERTIFICADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 120
        Top = 6
        Width = 270
        Height = 21
        Size.Values = (
          37.041666666666670000
          211.666666666666700000
          10.583333333333330000
          476.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'INSTITUCION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 530
        Top = 6
        Width = 179
        Height = 21
        Size.Values = (
          37.041666666666670000
          934.861111111111100000
          10.583333333333330000
          315.736111111111100000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'CAPITAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 713
        Top = 6
        Width = 98
        Height = 21
        Size.Values = (
          37.041666666666670000
          1257.652777777778000000
          10.583333333333330000
          172.861111111111100000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'TASA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 815
        Top = 6
        Width = 87
        Height = 21
        Size.Values = (
          37.041666666666670000
          1437.569444444444000000
          10.583333333333330000
          153.458333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'PLAZO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 908
        Top = 6
        Width = 111
        Height = 21
        Size.Values = (
          37.041666666666670000
          1601.611111111111000000
          10.583333333333330000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'VENCIM.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 1025
        Top = 6
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          1807.986111111111000000
          10.583333333333330000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'INTERES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 1760
        Top = 6
        Width = 139
        Height = 21
        Size.Values = (
          37.041666666666670000
          3104.444444444444000000
          10.583333333333330000
          245.180555555555600000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'INT. DEVENG.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 1195
        Top = 6
        Width = 110
        Height = 21
        Size.Values = (
          37.041666666666670000
          2107.847222222222000000
          10.583333333333330000
          194.027777777777800000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'IMPUESTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 1311
        Top = 6
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          2312.458333333333000000
          10.583333333333330000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'MONTO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 1480
        Top = 6
        Width = 104
        Height = 21
        Size.Values = (
          37.041666666666670000
          2610.555555555556000000
          10.583333333333330000
          183.444444444444400000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'RENDIM.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 1589
        Top = 6
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          2802.819444444444000000
          10.583333333333330000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Caption = 'DEVENGADO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
    end
    object SummaryBand1: TQRBand
      Left = 57
      Top = 246
      Width = 1903
      Height = 43
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        75.847222222222220000
        3356.680555555556000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel8: TQRLabel
        Left = 290
        Top = 17
        Width = 186
        Height = 21
        Size.Values = (
          37.041666666666670000
          511.527777777777800000
          29.986111111111110000
          328.083333333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 1025
        Top = 6
        Width = 163
        Height = 9
        Size.Values = (
          15.875000000000000000
          1807.986111111111000000
          10.583333333333330000
          287.513888888888900000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr2: TQRExpr
        Left = 1025
        Top = 17
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          1807.986111111111000000
          29.986111111111110000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = FormatMonto
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sdqReporte.INTERES)'
        ExportAs = exptFormula
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape2: TQRShape
        Left = 1195
        Top = 6
        Width = 110
        Height = 9
        Size.Values = (
          15.875000000000000000
          2107.847222222222000000
          10.583333333333330000
          194.027777777777800000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr1: TQRExpr
        Left = 1195
        Top = 17
        Width = 110
        Height = 21
        Size.Values = (
          37.041666666666670000
          2107.847222222222000000
          29.986111111111110000
          194.027777777777800000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = FormatMonto
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sdqReporte.IMPUESTO)'
        ExportAs = exptFormula
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape3: TQRShape
        Left = 1311
        Top = 6
        Width = 163
        Height = 9
        Size.Values = (
          15.875000000000000000
          2312.458333333333000000
          10.583333333333330000
          287.513888888888900000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr3: TQRExpr
        Left = 1311
        Top = 17
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          2312.458333333333000000
          29.986111111111110000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = FormatMonto
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sdqReporte.MONTO)'
        ExportAs = exptFormula
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape4: TQRShape
        Left = 1589
        Top = 6
        Width = 163
        Height = 9
        Size.Values = (
          15.875000000000000000
          2802.819444444444000000
          10.583333333333330000
          287.513888888888900000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr4: TQRExpr
        Left = 1589
        Top = 17
        Width = 163
        Height = 21
        Size.Values = (
          37.041666666666670000
          2802.819444444444000000
          29.986111111111110000
          287.513888888888900000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = FormatMonto
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sdqReporte.DEVENGADO)'
        ExportAs = exptFormula
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape5: TQRShape
        Left = 1760
        Top = 6
        Width = 139
        Height = 9
        Size.Values = (
          15.875000000000000000
          3104.444444444444000000
          10.583333333333330000
          245.180555555555600000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr5: TQRExpr
        Left = 1760
        Top = 17
        Width = 139
        Height = 21
        Size.Values = (
          37.041666666666670000
          3104.444444444444000000
          29.986111111111110000
          245.180555555555600000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = FormatMonto
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sdqReporte.INTERES_DEVENGADO)'
        ExportAs = exptFormula
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
      object QRShape6: TQRShape
        Left = 530
        Top = 6
        Width = 179
        Height = 9
        Size.Values = (
          15.875000000000000000
          934.861111111111100000
          10.583333333333330000
          315.736111111111100000)
        XLColumn = 0
        Pen.Width = 2
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr6: TQRExpr
        Left = 484
        Top = 17
        Width = 225
        Height = 21
        Size.Values = (
          37.041666666666670000
          853.722222222222200000
          29.986111111111110000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        Color = clWhite
        OnPrint = FormatMonto
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(sdqReporte.CAPITAL)'
        ExportAs = exptFormula
        WrapStyle = BreakOnSpaces
        FontSize = 7
      end
    end
  end
  inherited FormStorage: TFormStorage
    Left = 48
    Top = 200
  end
  inherited XPMenu: TXPMenu
    Left = 76
    Top = 200
  end
  inherited ilByN: TImageList
    Left = 48
    Top = 228
    Bitmap = {
      494C01011F004C004C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001001000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E71CE71CE71C
      E71CE71CE71CE71CE71CE71C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000000000
      000000000000000000000000000010420000000000000000E71CCE398C318C31
      8C318C318C318C318C318C31E71C000000000000000000000000000000000000
      000000000000C618C61800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000000000
      000000000000000000000000000010420000000000000000292594529452D65A
      FF7F8C31FF7FD65AD65A9452CE39E71C00000000000000000000000000000000
      000000000000C618945208210000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000000000
      000000000000000000000000000010420000000000008410945218637B6FFF7F
      8C318C318C31FF7F3967D65A734EE71C000000000000000000000000C618C618
      C618C618C618C6187B6F94520821000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000001042
      0000000010420000000000000000104200000000E71C8C31D65A5A6BDE7B8C31
      FF7F8C31FF7F8C319C731863D65A8C31E71C000000000000000000000821524A
      9452D65A7B6F7B6F7B6F7B6F9452082100000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000010421042
      0000000010421042000000000000104200000000E71C8C31D65A5A6BFE7FFF7F
      FF7F8C318C31FF7FDE7B3967D65A8C31E71C0000000000000000000008210821
      6B2D6B2D6B2D6B2D9452524A0821000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000104210421042
      0000000010421042104200000000104200000000E71C8C31D65A5A6BDE7BFF7F
      8C318C31FF7FFF7FBD775A6BD65A8C31E71C0000000000000000000000000000
      0000000000006B2D524A08210000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200001042104210421042
      00000000104210421042104200001042000000000000292594523967BD778C31
      FF7F8C31FF7F8C319C731863734E292500000000000000000000000000000000
      0000000000006B2D6B2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200001042104210421042
      00000000104210421042104200001042000000000000E71C1042D65A5A6BFF7F
      8C318C318C31FF7F3967D65A1042E71C00000000000000000000C618C6180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000104210421042
      0000000010421042104200000000104200000000000000000821734ED65A1863
      FF7F8C31FF7F3967D65A734EE71C0000000000000000000008219452C6180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000010421042
      0000000010421042000000000000104200000000000000000000E71C8C31734E
      734E734E734E734ECE39E71C00000000000000000000082194527B6F6B2D6B2D
      6B2D6B2D6B2D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000001042
      000000001042000000000000000010420000000000000000000000000000C618
      8C316B2D6B2DC618000000000000000000000000082194527B6F7B6F7B6FD65A
      9452524A6B2D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000000000
      0000000000000000000000000000104200000000000000000000000000002925
      CE39524A1042292500000000000000000000000000000821524A9452C618C618
      C6186B2D6B2D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000000000
      00000000000000000000000000001042000000000000000000000000E71C524A
      D65A94527B6F1042E71C00000000000000000000000000000821524AC6180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000104200000000000000000000
      000000000000000000000000000010420000000000000000000000008C311042
      1863D65AD65A1042292500000000000000000000000000000000C618C6180000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000008C31E71C
      8C31E71C8C31E71C8C3100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      4208C01800000000000000000000000000000000000000000000000000000000
      4208420800000000000000000000000000000000000000000000000000000000
      4208420800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004208
      524A524AC0180000000000000000000000000000000000000000000000004208
      524A420800000000000000000000000000000000000000000000000000000000
      4208524A42080000000000000000000000000000000000000000000000001042
      000010420000000000000000000000000000000000000000000000004208524A
      9452D65A524AC01800000000000000000000000000000000000000004208524A
      9452420800000000000000000000000000000000000000000000000000000000
      42089452524A4208000000000000000000000000000000000000000000001042
      00001042000000000000000000000000000000000000000000004208524A9452
      D65A18631863524AC018000000000000000000000000000000004208524A9452
      D65A420800000000000000000000000000000000000000000000000000000000
      4208D65A9452524A420800000000000000000000000000000000000000001042
      0000104200000000000000000000000000000000000000004208524A9452D65A
      18639C7318631863524AC0180000000000000000000000004208524A9452D65A
      1863420800000000000000000000000000000000000000000000000000000000
      42081863D65A9452524A42080000000000000000104200000000000000001042
      000010420000000000000000104200000000000000004208524A9452D65A1863
      18639C739C737B6F7B6F524AC01800000000000000004208524A9452D65A1863
      1863420842084208420842084208420842084208420842084208420842084208
      420818631863D65A9452524A4208000000000000104210420000000000001042
      00001042000000000000104210420000000000004208524A9452D65A18631863
      18639C737B6FDE7B7B6F7B6F524AC018000000004208524A9452D65A18631863
      1863524A524A524A524A524A524A524AC018C018524A524A524A524A524A524A
      524A186318631863D65A9452524A420800000000104210421042000000001042
      0000104200000000104210421042000000004208524A9452D65A186318631863
      39679C737B6F7B6F7B6F7B6F7B6F524AC0184208524A9452D65A186318631863
      39673967396739673967396739673967C018C018396739673967396739673967
      39673967186318631863D65A9452524A42080000104210421042104200001042
      000010420000104210421042104200000000420842084208420842084208524A
      39679C737B6FC018C018C018C018C018C018C018524AD65A18639C739C739C73
      9C739C739C739C739C739C7318631863C018C018186318639C739C739C739C73
      9C739C739C739C739C731863D65A524AC0180000104210421042104200001042
      000010420000104210421042104200000000000000000000000000004208524A
      39679C737B6FC018000000000000000000000000C018524A186318639C737B6F
      7B6F7B6F7B6F7B6F7B6F7B6F7B6F7B6FC018C0187B6F7B6F7B6F7B6F7B6F7B6F
      7B6F7B6F7B6F9C7318631863524AC01800000000104210421042000000001042
      000010420000000010421042104200000000000000000000000000004208524A
      39679C737B6FC0180000000000000000000000000000C018524A18637B6FDE7B
      7B6FC018C018C018C018C018C018C018C018C018C018C018C018C018C018C018
      C0187B6FDE7B7B6F1863524AC018000000000000104210420000000000001042
      000010420000000000001042104200000000000000000000000000004208524A
      39679C737B6FC01800000000000000000000000000000000C018524A7B6F7B6F
      7B6FC01800000000000000000000000000000000000000000000000000000000
      C0187B6F7B6F7B6F524AC0180000000000000000104200000000000000001042
      000010420000000000000000104200000000000000000000000000004208524A
      39679C737B6FC018000000000000000000000000000000000000C018524A7B6F
      7B6FC01800000000000000000000000000000000000000000000000000000000
      C0187B6F7B6F524AC01800000000000000000000000000000000000000001042
      000010420000000000000000000000000000000000000000000000004208524A
      396718637B6FC0180000000000000000000000000000000000000000C018524A
      7B6FC01800000000000000000000000000000000000000000000000000000000
      C0187B6F524AC018000000000000000000000000000000000000000000001042
      000010420000000000000000000000000000000000000000000000004208524A
      396718637B6FC01800000000000000000000000000000000000000000000C018
      524AC01800000000000000000000000000000000000000000000000000000000
      C018524AC0180000000000000000000000000000000000000000000000001042
      000010420000000000000000000000000000000000000000000000004208C018
      C018C018C018C018000000000000000000000000000000000000000000000000
      C018C01800000000000000000000000000000000000000000000000000000000
      C018C01800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000004208C018
      C018C018C018C018000000000000000000002925292529252925292529252925
      2925292529252925292500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000004208524A
      396718637B6FC01800000000000000000000292594529452292518635A6B5A6B
      5A6B292594529452292529250000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8C318C318C318C318C318C31000000000000000000000000000000004208524A
      396718637B6FC018000000000000000000002925945294522925186318631863
      5A6B29259452945229253967292500000000000000008C313967524A524A524A
      524A524A524A524A524A524A524A000000000000000000000000000000002925
      00000000000000008C31524A8C3100000000000000000000000000004208524A
      39679C737B6FC018000000000000000000002925945294522925292529252925
      292529259452945229253967396729250000000000008C313967D65A1863D65A
      734ED65A734ED65A524AD65A524A00000000000000000000000000006B2D0000
      000000000000000000008C31524A8C310000000000000000000000004208524A
      39679C737B6FC018000000000000000000002925945294529452945294529452
      94529452945294522925396739672925000000008C313967D65A3967D65A1863
      D65A734ED65A734ED65A10420000524A00000000000000000000000000000000
      000000000000000000008C31524A8C310000000000000000000000004208524A
      39679C737B6FC018000000000000000000002925945294529452945294529452
      94529452945294522925396739672925000000008C3139673967D65A3967D65A
      1863D65A734ED65A734ED65A0000524A000000001042D65AD65AD65AD65AD65A
      D65A000000008C3100008C31524A8C310000000000000000000000004208524A
      39679C737B6FC018000000000000000000002925945294529452945294529452
      9452945294529452292539673967292500008C3139671863D65A3967D65A3967
      D65A1863D65A734ED65A0000D65A524A00000000104218634A294A294A294A29
      D65A000000008C318C318C31524A8C310000420842084208420842084208524A
      39679C737B6FC018C018C018C018C018C0182925945294522925292594529452
      2925292594529452292539673967292500008C31396739673967396739673967
      396739673967396739670000524A524A0000000010429C7318639C7318639C73
      D65A000000008C31734E8C318C318C3100004208524A9452D65A186318631863
      39679C737B6F7B6F7B6F7B6F7B6F524AC0180000292594522925396729259452
      2925396729259452292539673967292500008C318C318C318C318C318C318C31
      8C318C318C318C318C31734ED65A524A00000000104218638C318C318C318C31
      D65A000000008C31734ED65A8C310000000000004208524A9452D65A18631863
      18639C737B6FDE7B7B6F7B6F524AC01800000000000029252925396739672925
      29253967396729252925396739672925000000008C313967D65A1863D65A1863
      D65A1863D65AD65A734ED65A734E524A0000000010429C7318639C7318639C73
      D65A000000008C318C318C318C318C310000000000004208524A9452D65A1863
      18639C739C737B6F7B6F524AC018000000000000000000002925396739673967
      29253967396739672925396739672925000000008C3139671863D65A1863D65A
      1863D65A9C733967396739673967396700000000104218631042104210421863
      D65A000000000000000000000000000000000000000000004208524A9452D65A
      18639C7318631863524AC0180000000000000000000000000000292539672925
      00002925396729250000292539672925000000008C313967D65A1863D65A3967
      D65A734E8C318C318C318C318C318C318C31000010429C7318639C7318631042
      00000000000000000000000000000000000000000000000000004208524A9452
      D65A18631863524AC01800000000000000000000000000000000000029252925
      000000002925292500000000292529250000000000008C313967396739673967
      734E8C310000000000000000000000000000000010429C739C739C739C731042
      000000000000000000000000000000000000000000000000000000004208524A
      9452D65A524AC018000000000000000000000000000000000000000000002925
      0000000000002925000000000000292500000000000000008C318C318C318C31
      8C31000000000000000000000000000000000000104210421042104210421042
      0000000000000000000000000000000000000000000000000000000000004208
      524A524AC0180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      4208C01800000000000000000000000000000000000000000000000000000000
      1042104210421042104210421042104210425A6B18631863186318631863FF7F
      1863186318631863BD775A6BD65A18631863000029254A298C31082100000000
      0000000000000000000000000000000000008C318C318C318C318C318C318C31
      8C316B2D00000000000000000000000000001042104210421042104210421042
      1042FF7FFF7FFF7FFF7FFF7FFF7FFF7F10421863524A524A524A734E734EDE7B
      D65A734E734ED65AFF7FD65A524A734E734E000029254A2910428C3108210000
      0000000000000000000000000000000000008C31CE39CE39CE398C3118638C31
      6B2D6B2D00000000000000000000000000001042186318631863186318631863
      1042FF7F10421042104210421042FF7F10421863524A524A734E524A524ADE7B
      D65A524A524A39677B6F524A734E524AD65A000000004A29104210421042D65A
      D65AD65AD65AD65AD65AD65A00000000CE3900001042104210421863D65A9452
      10426B2D9452524A8C316B2D1042000000001042FF7FFF7F1863FF7F1863FF7F
      1042FF7F10421042FF7FFF7FFF7FFF7F10421863524A524A524A524A734EDE7B
      D65A734E524ADE7BD65A524A734E734E734E0000000010424A29104210420821
      9C7318639C7318639C73D65A0000CE3908210000000010421863D65A94521042
      10426B2D6B2D18638C316B2D1042000000001042FF7F18631863186318631863
      1042FF7FFF7F104210421042FF7FFF7F10425A6B186339673967D65A524ADE7B
      1863D65A7B6F7B6F524A524A734E524A734E0000000010429C734A29524A0821
      4A294A294A294A291863D65A8C31082100000000000010421042186310421042
      10426B2D1863D65A945210420000000000001042FF7FFF7F1863FF7F1863FF7F
      1042FF7FFF7FFF7FFF7F10421042FF7F1042DE7B396718633967DE7B5A6BDE7B
      7B6F7B6FBD775A6BD65ADE7B734E524A734E0000000010429C7318634A298C31
      082118639C7318639C738C31082100000000000010421042104218635A6B5A6B
      18631042D65A9452104210420000000000001042FF7F18631863186310421042
      1042FF7F10421042FF7F10421042FF7F10421863524A734E524AD65AFF7FFF7F
      D65A524A524A1863DE7BDE7B734E524AD65A0000000010429C738C318C314A29
      8C3108218C318C318C310821000000000000104210421042104218635A6B5A6B
      1863104294521042104210420000000000001042FF7FFF7F1863FF7F10421042
      1042FF7FFF7F104210421042FF7FFF7F10421863524A524A524A524ABD77FF7F
      D65A524A524A524AFF7FDE7BD65A734E734E0000000010429C7318639C731863
      4A298C3108218C310821D65A000000000000104210421042104218635A6B3967
      3967186310425A6B5A6B18631042000000001042FF7F18631863186310421042
      1042FF7FFF7FFF7FFF7FFF7FFF7FFF7F10421863524A524A524AD65AFF7FFF7F
      D65A524A524AD65AFF7FDE7B734E734E734E0000000010429C73CE39CE39CE39
      CE394A298C3108211863D65A000000000000104210421042104210425A6B5A6B
      6B2D10425A6B5A6B5A6B18631042000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      1042FF7F10421042FF7F10421042FF7F10421863524A524A1863DE7B1863FF7F
      186318633967BD777B6FDE7B734E524A734E0000000010429C739C739C731863
      10428C3108218C310821D65A0000000000001042104210421042104218635A6B
      5A6B104218635A6B396739671863104200001042104210421042104210421042
      1042FF7FFF7FFF7FFF7FFF7FFF7FFF7F10421863D65ABD77BD77D65A734E3967
      5A6B5A6B39671863734EDE7B734E524AD65A0000000010429C73104210421042
      8C31082118639C738C3108210000000000001042104210421042104210421042
      1863186310425A6B5A6B6B2D1042000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      1042104210421042104210421042104210425A6BDE7B1863524A734E524A524A
      734E524A734E734E734EDE7B734E524A734E0000000010429C73292529258C31
      082118639C73104200008C310821000000000000104210421042104210421042
      10421042104218635A6B5A6B1042000000001042FF7F10421042104210421042
      1042FF7FFF7F104210421042FF7F18631042FF7F1863524A524A524A734E524A
      524A524A524A524A524ADE7B734E734E734E000000002925292510428C310821
      9C739C739C731042FF7F00008C31082100000000104210421042104210421042
      1042104210421042104218631863104200001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F18631042FF7F1863734E524A524A734E524A
      734E524A734E734E524ADE7BD65A734E734E00002925104210428C3108219C73
      9C739C739C731042000000000000CE3908210000000010421042104210421042
      1042104210421042104210421042104200001042104210421042104210421042
      1042104210421042104210421042104210427B6FDE7BD65A734ED65AD65A524A
      524A734E5A6B5A6B3967FF7F5A6B5A6B7B6F29251042CE398C31082110421042
      1042104210421042000000000000000000000000000000000000000000001042
      1042104210421042104210421042104200000000000000000000000000000000
      00000000000000000000000000000000000018633967DE7B9C73DE7B3967734E
      734E734EFF7FFF7FFF7FFF7FFF7FFF7FFF7FCE394A294A29CE39000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      1042104210421042104210420000000000000000734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E00000000000000000000000000000000
      000000008C310000000000000000000000000000000000000000000000000000
      00000000C618C618000000000821000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008C3110428C31000000000000000000000000000000000000000000000000
      C6181863FF7F186300000821CE39104200001042104210421042104210421042
      1042104210421042104210421042104210420000734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E00001042186318631863186318631863
      8C31524ACE398C310000000000000000000000000000000000000000C6181863
      FF7FFF7FFF7FFF7F0821CE391863D65A08211042186318631863186318631863
      1863186318631863186318631863186310420000000000000000000000000000
      0000000000000000000000000000000000001042DE7B10421042104210428C31
      734ECE391863CE398C310000000000000000000000000000C6181863FF7FFF7F
      FF7F3967734E0821CE3994521863082100001042FF7FFF7F1863FF7F1863FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F186310420000734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E00001042DE7BDE7BDE7BDE7BDE7BCE39
      CE39DE7B1863CE398C310000000000000000000000001042FF7FFF7FFF7F3967
      734E39670821CE399452D65A0821000000001042FF7F18631863186318631863
      186318631863186318631863FF7F186310422925000000000000292500002925
      0000000000002925000029250000000029251042DE7B94529452945294529452
      9452DE7B18630000CE398C31000000000000000000000000FF7F3967734E3967
      734E0821CE399452D65A08210000000000001042FF7FFF7F1863FF7F1863FF7F
      1863FF7F1863FF7F1863FF7FFF7F186310422925734E734E734E2925734E2925
      734E734E734E2925734E2925734E734E29251042DE7BDE7BDE7BDE7BDE7BDE7B
      DE7BDE7B18630000CE398C310000000000000000C6187B6F0821082108210821
      082110429452D65A0821FF7FC618000000001042FF7F18631863186310421042
      104218631863186318631863FF7F186310422925000000000000292500002925
      2925292529252925000029250000000029251042DE7B524A524A524A524A524A
      524ADE7B186300001863CE398C31000000000000FF7F082139675A6B18631863
      0821082110420821734E39671863000000001042FF7FFF7F1863FF7F10421042
      1042FF7F1863FF7F1863FF7FFF7F186310422925734E734E734E2925734E2925
      734E734E734E2925734E734E2925292500001042DE7BDE7BDE7BDE7BDE7BDE7B
      DE7BDE7B186300001863CE398C31000000000000082139675A6B5A6B18631863
      1863082108213967734E734EFF7FC61800001042FF7F18631863186310421042
      104218631863186318631863FF7F186310422925000029250000292500002925
      0000000000002925000000002925292500001042DE7BD65AD65AD65A1863DE7B
      DE7BDE7B1863000018630000CE398C31000008213967DE7B9C735A6B18631863
      186318630821734E3967734E3967186300001042FF7FFF7FFF7FFF7FFF7FFF7F
      1863FF7F1863FF7F1863FF7FFF7F1863104229252925734E29252925734E734E
      2925734E2925734E734E2925734E734E29251042DE7BDE7BDE7BDE7BDE7BDE7B
      DE7BDE7B18630000186300000000CE398C3108215A6B9C739C735A6B18631863
      18631863082139673967FF7FFF7FFF7FC6181042104210421042104210421042
      1042104210421042104210421042186310422925000000000000292500000000
      0000292500000000000029250000000029251042DE7B734E734E1863DE7BDE7B
      DE7BDE7B186300001863000000000000CE3908215A6B5A6B5A6B186318631863
      945294520821FF7FFF7FFF7FFF7F1863C6181042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F186310420000734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E00001042DE7BDE7BDE7BDE7BDE7BDE7B
      DE7BDE7B18630000186300000000000000000821186339673967186318631863
      104294520821524A7B6F1863C618000000001042FF7F10421042104210421042
      1042FF7FFF7F104210421042FF7F186310420000000000000000000000000000
      0000000000000000000000000000000000001042104210421042104210421042
      10421042104200001863000000000000000000000821D65AD65A186318631863
      104208217B6FD65A630C8C310000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F186310420000734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E0000000000001042DE7BDE7BDE7BDE7B
      DE7BDE7BDE7BDE7B1863000000000000000000000000082118631863524A524A
      0821104210421042C61800000000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      1042104210421042104200000000000000000000000000000821082108210821
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000029254A298C31082100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000029254A2910428C3108210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000292529252925292529252925
      292529252925292529252925292529250000000000004A29104210421042D65A
      D65AD65AD65AD65AD65AD65A00000000CE39734E734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E734E0000000000000000292529252925
      2925292529252925292500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010424A29104210420821
      9C7318639C7318639C73D65A0000CE390821734EDE7B734EDE7BDE7BDE7BDE7B
      945294529452DE7BDE7BDE7BDE7BDE7B734E0000000000000000000029252925
      2925292529252925000000000000000000000000000000000000000000000000
      2925292500000000000000000000000000000000000010429C734A29524A0821
      4A294A294A294A291863D65A8C3108210000734E5A6B734E5A6B5A6B5A6B9452
      10421042104294525A6B5A6B5A6BDE7B734E0000000000000000000000002925
      2925292529250000000000000000000000000000000000000000000000002925
      2925292529250000000000000000000000000000000010429C7318634A298C31
      082118639C7318639C738C31082100000000734EDE7B734EDE7BDE7BDE7B9452
      DE7BDE7BDE7B9452DE7BDE7BDE7BDE7B734E0000000000000000000000000000
      2925292500000000000000000000000000000000000000000000000029252925
      2925292529252925000000000000000000000000000010429C738C318C314A29
      8C3108218C318C318C310821000000000000734E5A6B734E5A6B5A6B5A6B9452
      10421042104294525A6B5A6B5A6BDE7B734E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292529252925
      2925292529252925292500000000000000000000000010429C7318639C731863
      4A298C3108218C310821D65A000000000000734EDE7B734EDE7BDE7BDE7B9452
      DE7BDE7BDE7B9452DE7BDE7BDE7BDE7B734E0000292529252925292529252925
      2925292529252925292529252925292500000000000000000000000000000000
      0000000000000000000000000000000000000000000010429C73CE39CE39CE39
      CE394A298C3108211863D65A000000000000734E5A6B734E5A6B5A6B5A6B9452
      10421042104294525A6B5A6B5A6BDE7B734E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010429C739C739C731863
      10428C3108218C310821D65A000000000000734EDE7B734EDE7BDE7BDE7B9452
      DE7BDE7BDE7B9452DE7BDE7BDE7BDE7B734E0000292529252925292529252925
      2925292529252925292529252925292500000000000000000000292529252925
      2925292529252925292500000000000000000000000010429C73104210421042
      8C31082118639C738C310821000000000000734E5A6B734E5A6B5A6B5A6B9452
      10421042104294525A6B5A6B5A6BDE7B734E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000029252925
      2925292529252925000000000000000000000000000010429C73292529258C31
      082118639C73104200008C31082100000000734EDE7B734EDE7BDE7BDE7BDE7B
      945294529452DE7BDE7BDE7BDE7BDE7B734E0000000000000000000000000000
      2925292500000000000000000000000000000000000000000000000000002925
      292529252925000000000000000000000000000000002925292510428C310821
      9C739C739C731042FF7F00008C3108210000734E734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E734E0000000000000000000000002925
      2925292529250000000000000000000000000000000000000000000000000000
      29252925000000000000000000000000000000002925104210428C3108219C73
      9C739C739C731042000000000000CE390821734E5A6B734E5A6B5A6B5A6B734E
      5A6B5A6B5A6B734E5A6B5A6B5A6B5A6B734E0000000000000000000029252925
      2925292529252925000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000029251042CE398C31082110421042
      104210421042104200000000000000000000734E734E734E734E734E734E734E
      734E734E734E734E734E734E734E734E734E0000000000000000292529252925
      2925292529252925292500000000000000000000292529252925292529252925
      292529252925292529252925292529250000CE394A294A29CE39000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C318C318C318C318C318C318C31
      8C318C318C318C318C318C318C318C318C310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001863
      A514C6180000000000000000000000000000524A524A524A524A524A524A524A
      524A8C313967524A524A524A524A524A8C310000000000001042D65AD65AD65A
      D65AD65AD65AD65AD65AD65AD65A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000396718631042
      0000000029254A2900000000000000000000524A524A524A524A524A524A524A
      524A8C3139679452524A524A524A524A8C3100000000000010429C7318639C73
      18639C7318639C7318639C73D65A0000000000001042D65AD65AD65AD65AD65A
      D65AD65AD65AD65AD65A0000000000000000000000007B6F5A6B104210421863
      A514C618000000006B2D8C31000000000000524A524A524A524A524A524A524A
      524A8C31396794529452524A524A524A8C3100000000000010429C734A294A29
      4A294A294A294A294A291863D65A00000000000010429C7318639C7318639C73
      18639C7318630000000000000000000000000000104210429452396718631863
      A514C61829254A2900000000CE3900000000000000000000000000009C739C73
      9C738C31396794529452082100000000000000000000000010429C7318639C73
      18639C7318639C7318639C73D65A00000000000010429C734A294A294A290000
      00000000000000006B2D6B2D6B2D00008C31104294527B6F5A6B396718631863
      A514C61829254A296B2D8C31000000000000000000000000000000008C318C31
      8C318C31396794529452082100000000000000000000000010429C738C318C31
      8C318C318C318C318C311863D65A00000000000010429C7318639C7318630000
      00001042104210428C318C318C31000010421042FF7F7B6F5A6B39671863FF7F
      A514C61829254A296B2D8C31CE39104200000000000000008C31000010421042
      10428C31396794529452082100000000000000000000000010429C7318639C73
      18639C7318639C7318639C73D65A00000000000010429C738C318C318C310000
      524A00000000D65AD65A104210420000524A1042FF7F7B6F5A6BFF7FFF7F1863
      1863186329254A296B2D8C31CE39104200000000000000008C31945210421042
      10428C31396708219452082100000000000000000000000010429C73CE39CE39
      CE39CE39CE39CE39CE391863D65A00000000000010429C7318639C7318630000
      1863524A00001863186300000000000000001042FF7FFF7FFF7F5A6B39678C31
      CE391863186318636B2D8C31CE39104200000000000000008C31396794521042
      10428C313967FF7F9452082100000000000000000000000010429C739C739C73
      18639C7318639C7318639C73D65A00000000000010429C73CE39CE39CE39CE39
      00001863524A0000000000000000000000001042FF7F7B6F5A6B4A2929255A6B
      396739671042104200001863CE39104200009452945294529452396739679452
      10428C3139679452945208210000000000000000000000008C319C7310421042
      10421042104218639C739C73D65A00000000000010429C739C739C7318639C73
      186300000000524A00000000000000000000000010421042FF7F7B6F18635A6B
      104210421863186300007B6F00000000000039679C739C739C739C739C733967
      8C318C31396794529452082100000000000000008C3100008C319C738C319C73
      9C739C7318639C7310420000000000000000000010429C731042104210421042
      104218639C739C73524A000000000000000000000000000010421042FF7F1042
      1863186318635A6B396700000000000000008C318C318C318C319C7339678C31
      10428C313967945294520821000000000000000000008C318C318C319C739C73
      9C739C739C739C7310429C73000000000000000010429C739C739C739C739C73
      18639C73104200000000524A0000000000000000000000000000000010421042
      18633967396739675A6B39670000000000000000000000008C3139678C311042
      10428C3139679452945208210000000000008C318C318C3110428C318C318C31
      9C739C739C739C7310420000000000000000000010429C739C739C739C739C73
      9C739C731042FF7F00000000524A000000000000000000000000000000000000
      524A5A6B39675A6B3967FE7FFE7F000000000000000000008C318C3110421042
      104210429C73945294520821000000000000000000008C318C318C3110421042
      104210421042104210420000000000000000000010429C739C739C739C739C73
      9C739C7310420000000000000000000000000000000000000000000000000000
      0000524A5A6BFE7FFE7F524A524A000000000000000000000000000010421042
      1042104210429C739452082100000000000000008C3100008C3100008C310000
      0000000000000000000000000000000000000000104210421042104210421042
      1042104210420000000000000000000000000000000000000000000000000000
      00000000D65AD65AD65A00000000000000000000000000000000000010421042
      10421042104210429C7308210000000000000000000000008C31000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004A290000000000000000000000000000000000000000
      8C318C3100000000000000000000000000000000292529252925292529252925
      00000000000000000000CE390000000000001042104210421042104200000000
      000000000000000010421042104210420000000000004A294A294A294A294A29
      00000000000000004A294A290000000000000000000000000000000000008C31
      9C7394528C310000000000000000000000000000292529250000000000002925
      0000000000000000CE39CE39CE390000000010427B6F18631863186310421042
      104210421042000018637B6F18631042000000004A296B2D6B2D6B2D6B2D4A29
      000000000000000010424A29000000000000000000000000000000008C319C73
      94529C7394528C31000000000000000000000000000029252925000000000000
      0000000000000000CE39CE39CE390000000010425A6B18631863186310420000
      186310421042000018637B6F1863104200006B2DCE39CE39CE396B2D4A290000
      00000000630C1042104210424A294A2900000000000000000000000000429452
      9C7339675A6BD65A8C3100000000000000000000000000002925292500000000
      000000000000CE39CE39CE39CE39CE39000010427B6F18631863186310420000
      186310421042000018637B6F1863104200006B2D7B6F1042C6184A2900000000
      0000630C104210421042104210428C314A2900000000000000008C31D65A9C73
      39675A6B9C7394529C738C310000000000000000000000000000292529250000
      000000000000CE39CE39CE39CE39CE39000010425A6B18631863186318631042
      1042104210421042104218631863104200006B2D7B6F8C314A29000000000000
      6B2D1042186394521042104210428C314A2900000000000010428C319C733967
      5A6B9C7394529C73945218638C31000000000000292500000000000029252925
      00000000000000000000CE3900000000000010427B6F18631863186318631863
      1863186318631863186318631863104200006B2D7B6FCE398C31630C00000000
      1042BD777B6F18639452104210428C314A2900000000000010428C3139675A6B
      9C7394529C73945218631863D65A8C3100000000292529252925292529252925
      00000000000000000000CE3900000000000010425A6B18631863104210421042
      1042104210421042104218631863104200006B2D7B6F524ACE398C314A290000
      00001042BD777B6F1863945210424A294A29000000000000104210428C31D65A
      94529C73945218631863D65A8031841000000000000000000000000000000000
      00000000000000000000CE3900000000000010427B6F186310427B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F1863104200006B2D7B6FBD77524ACE398C312925
      292529251042BD777B6F186310428C314A290000000000009452945210428C31
      9C73D65A1863186394528C31E71C000000000000292529252925000029252925
      29250000000000000000CE3900000000000010425A6B186310427B6F5A6B7B6F
      5A6B7B6F5A6B7B6F5A6B7B6F1863104200006B2DBD77524A2925292529252925
      2925292529251042BD772925D65A8C314A290000000000009452D65AD65A1042
      8C31D65A664E8C318C3100000000000000000000CE3929250000000000002925
      CE390000000000000000CE3900000000000010427B6F186310427B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F1863104200006B2D7B6F29252925292529252925
      29252925292529251042292529258C314A2900000000524A1863D65AD65A1042
      10428C318C310000000000000000000000000000000029252925292529252925
      00000000000000000000CE3900000000000010425A6B186310427B6F5A6B7B6F
      5A6B7B6F5A6B7B6F5A6B7B6F1863104200006B2D524ACE392925292529252925
      2925292529252925292529252925524AC6180000524AD65A1042524A00000000
      00000000000000000000000000000000000000000000CE39292500002925CE39
      00000000000000000000CE3900000000000010427B6F186310427B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F18631042000000006B2D524ACE39292529252925
      292529252925292529252925CE394A290000524A94521042524A000000000000
      0000000000000000000000000000000000000000000000002925292529250000
      00000000000000000000CE3900000000000010425A6B186310427B6F5A6B7B6F
      5A6B7B6F5A6B7B6F5A6B7B6F000010420000000000006B2D6B2D6B2D4A294A29
      4A294A294A294A294A294A294A290000000010421042524A0000000000000000
      000000000000000000000000000000000000000000000000CE392925CE390000
      00000000000000000000CE3900000000000010427B6F186310427B6F7B6F7B6F
      7B6F7B6F7B6F7B6F7B6F7B6F1863104200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292500000000
      00000000000000000000CE390000000000000000104210421042104210421042
      104210421042104210421042104210420000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFF007FFFF0000BFFDE003FFCF0000
      BFFDE001FFC70000BFFDC001F8030000BDBD8000F8010000B99D8000F8030000
      B18D8000FFC70000A185C001FFCF0000A185C001F3FF0000B18DE003E3FF0000
      B99DF007C03F0000BDBDFC1F803F0000BFFDFC1FC03F0000BFFDF80FE3FF0000
      BFFDF80FF3FF0000FFFFF80FFFFF0000FE7FFE7FFE7FFFFFFC3FFC7FFE3FFD7F
      F81FF87FFE1FFD7FF00FF07FFE0FFD7FE007E07FFE07BD7BC003C00000039D73
      8001800000018D6300000000000085430000000000008543F81F800000018D63
      F81FC00000039D73F81FE07FFE07BD7BF81FF07FFE0FFD7FF81FF87FFE1FFD7F
      F81FFC7FFE3FFD7FF81FFE7FFE7FFFFFFFFFFFFFFFFFF81F000FFFFFFFFFF81F
      0007E000FE07F81F0003C000FDE3F81F0001C000FBF1F81F000180008071F81F
      000180008051F81F000100008041000000010000804100008001000080438001
      C00180008041C003E0018000807FE007F1118000807FF00FF999C07F80FFF81F
      FDDDE0FF81FFFC3FFFFFFFFFFFFFFE7FFE00000087FF007F000000008003007F
      00000000C002800300000000C000C00300000000C001C00700000000C0038007
      00000000C003000700000000C003000300000000C003000300000000C0030001
      00000000C003000300000000C003800300000000C001800100000000800CC001
      00000000001FFC01FFFF00000FFFFE078001FFBFFF18FFFFFFFF001FFC000000
      8001001FF0000000FFFF0007C001000080010007C003000075D60007C0030000
      00000007800300007416000300010000000100038001000055D9000100000000
      000000040000000077760006000000008001000700010000FFFF000780030000
      8001C007C0070000FFFFC007E00FFFFF87FFFFFFFFFFFFFF8003FFFFFFFF8001
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
    Left = 76
    Top = 228
    Bitmap = {
      494C01011F004C004C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001001000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C618004200420042
      0042004200420042004200420000000000000000000000000000000000000000
      0000000000001000100000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000002925B256B256B256
      9C7310029C73B256B256B2560042000000000000000000000000000000000000
      00000000000010003F1B10000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008410B25633679C73BD77
      100210021002FF7F18633367B256841000000000000000000000000013001000
      1000100010001000FF4F3F1B1000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004233673367DE7B1002
      FF7F1002FF7F10025A6B33673367004200000000000000000000000010003F1B
      3F1BFF4FFF4FFF4FFF4FFF4F3F1B100000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004233673367FE7FBD77
      FF7F10021002FF7FDE7B33673367004200000000000000000000000010001000
      13001300130013003F1B3F1B1300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000042336733679C73FF7F
      10021002FF7FFF7FBD7733673367004200000000000000000000000000000000
      00000000000013003F1B13000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002925B25633679C731002
      FF7F1002FF7F10029C733367B256292500000000000000000000000000000000
      0000000000001300130000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042080042B2561863BD77
      100210021002BD775A6BB256604E420800000000000000000000100013000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000821B256B256B256
      9C7310029C735A6BB256B25608210000000000000000000010003F1B13000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008410604E6C4E
      6C4E6C4E6C4E6C4E604E84100000000000000000000010003F1BFF4F10001000
      1000100010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C618
      604E00420042C61800000000000000000000000010003F1BFF4FFF4FFF4FFF4F
      3F1B3F1B10000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002925
      604EB256604E2925000000000000000000000000000013003F1B3F1B13001300
      1300100010000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042082067
      3367B256B25620674208000000000000000000000000000013003F1B13000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000604E604E
      33673367B2562067292500000000000000000000000000000000130013000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000604E8410
      604E0821604E8410604E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      4208C01800000000000000000000000000000000000000000000000000000000
      4208420800000000000000000000000000000000000000000000000000000000
      4208420800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004208
      00420042C0180000000000000000000000000000000000000000000000004208
      0042420800000000000000000000000000000000000000000000000000000000
      4208004242080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      604E20670042C018000000000000000000000000000000000000000042080042
      604E420800000000000000000000000000000000000000000000000000000000
      4208604E00424208000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042080042604E
      2067E07FE07F0042C0180000000000000000000000000000000042080042604E
      2067420800000000000000000000000000000000000000000000000000000000
      42082067604E0042420800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000042080042604E2067
      E07FFE7FE67FE67F0042C01800000000000000000000000042080042604E2067
      E07F420800000000000000000000000000000000000000000000000000000000
      4208E07F2067604E004242080000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000042080042604E2067E07F
      E07FFE7FFE7FF97FF97F0042C018000000000000000042080042604E2067E07F
      E07F4208420842084208420842084208C018C018420842084208420842084208
      4208E07FE07F2067604E00424208000000000000000000000000000000000000
      000000000000000000000000000000000000000042080042604E2067E07FE07F
      E67FFE7FF97FFE7FF97FF97F0042C0180000000042080042604E2067E07FE07F
      E67F0042004200420042004200420042C018C018004200420042004200420042
      0042E67FE07FE07F2067604E0042420800000000000000000000000000000000
      00000000000000000000000000000000000042080042604E2067E07FE07FE67F
      EC7FFE7FF97FF97FF97FF97FF97F0042C01842080042604E2067E07FE07FE67F
      EC7FEC7FEC7FEC7FEC7FEC7FEC7FEC7FC018C018EC7FEC7FEC7FEC7FEC7FEC7F
      EC7FEC7FE67FE07FE07F2067604E004242080000000000000000000000000000
      0000000000000000000000000000000000004208420842084208420842080042
      EC7FFE7FF97FC018C018C018C018C018C018C01800422067E07FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FFE7FFE7FF37FC018C018F37FFE7FFE7FFE7FFE7FFE7F
      FE7FFE7FFE7FFE7FFE7FE07F20670042C0180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000C0180042E07FE67FFE7FF97F
      F97FF97FF97FF97FF97FF97FF97FF97FC018C018F97FF97FF97FF97FF97FF97F
      F97FF97FF97FFE7FE67FE07F0042C01800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FFE7FF97FC0180000000000000000000000000000C0180042E67FF97FFE7F
      F97FC018C018C018C018C018C018C018C018C018C018C018C018C018C018C018
      C018F97FFE7FF97FE67F0042C018000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FFE7FF97FC01800000000000000000000000000000000C0180042F97FF97F
      F97FC01800000000000000000000000000000000000000000000000000000000
      C018F97FF97FF97F0042C0180000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000000000000000C0180042F97F
      F97FC01800000000000000000000000000000000000000000000000000000000
      C018F97FF97F0042C01800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FFE7FF97FC0180000000000000000000000000000000000000000C0180042
      F97FC01800000000000000000000000000000000000000000000000000000000
      C018F97F0042C018000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FF37FF97FC01800000000000000000000000000000000000000000000C018
      0042C01800000000000000000000000000000000000000000000000000000000
      C0180042C0180000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000C018C018
      C018C018C018C018000000000000000000000000000000000000000000000000
      C018C01800000000000000000000000000000000000000000000000000000000
      C018C01800000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000C018C018
      C018C018C018C018000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000042080042
      EC7FF37FF97FC018000000000000000000000000104210420000206720672067
      2067000010421042000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0064006400640064006400640000000000000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000104210420000206720672067
      206700001042104200001863000000000000000000008031F37F606660666066
      6066606660666066606660666066000000000000000000000000000000000064
      00000000000000000064007C0064000000000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000104210420000000000000000
      000000001042104200001863186300000000000000008031F37F207F267F207F
      207F207F6066207F6066207F6066000000000000000000000000000000640000
      000000000000000000000064007C006400000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000104210421042104210421042
      10421042104210420000186318630000000000008031F37F207FEC7F207F267F
      207F207F207F6066207F60660000606600000000000000000000000000000000
      000000000000000000000064007C006400000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000104210421042104210421042
      10421042104210420000186318630000000000008031F37FF37F207FEC7F207F
      267F207F207F207F6066207F0000606600000000104218631863186318631863
      186300000000006400000064007C006400000000000000000000000042080042
      EC7FFE7FF97FC018000000000000000000000000104210421042104210421042
      1042104210421042000018631863000000008031F37FF97F207FF37F207FEC7F
      207F267F207F207F207F0000207F6066000000001042F37FD900D900D900D900
      186300000000006400640064007C006400004208420842084208420842080042
      EC7FFE7FF97FC018C018C018C018C018C0180000104210420000000010421042
      0000000010421042000018631863000000008031F37FF37FF37FF37FF37FF37F
      F37FF37FF37FF37FF37F000060666066000000001042FF7FF37FFF7FF37FFF7F
      1863000000000064007C006400640064000042080042604E2067E07FE07FE67F
      EC7FFE7FF97FF97FF97FF97FF97F0042C0180000000010420000186300001042
      0000186300001042000018631863000000008031803180318031803180318031
      803180318031803180316066207F6066000000001042F37F1F001F001F001F00
      1863000000000064007CF07D006400000000000042080042604E2067E07FE07F
      E67FFE7FF97FFE7FF97FF97F0042C01800000000000000000000186318630000
      00001863186300000000186318630000000000008031F37F207FF37F207FEC7F
      207F267F207F207F207F207F60666066000000001042FF7FF37FFF7FF37FFF7F
      1863000000000064006400640064006400000000000042080042604E2067E07F
      E07FFE7FFE7FF97FF97F0042C018000000000000000000000000186318631863
      00001863186318630000186318630000000000008031F37FF97F207FF37F207F
      EC7F207F267FF37FF37FF37FF37FF37F000000001042F37F9F199F199F19F37F
      18630000000000000000000000000000000000000000000042080042604E2067
      E07FFE7FE67FE67F0042C0180000000000000000000000000000000018630000
      00000000186300000000000018630000000000008031F37F207FF97F207FF37F
      207F3367803180318031803180318031803100001042FF7FF37FFF7FF37F1042
      000000000000000000000000000000000000000000000000000042080042604E
      2067E07FE07F0042C01800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008031F37FF37FF37FF37F
      33678031000000000000000000000000000000001042FF7FFF7FFF7FFF7F1042
      0000000000000000000000000000000000000000000000000000000042080042
      604E20670042C018000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008031803180318031
      8031000000000000000000000000000000000000104210421042104210421042
      0000000000000000000000000000000000000000000000000000000000004208
      00420042C0180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      4208C01800000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000394F79327932793279327932FF7F
      7932793279327932BF67394F791A7932793200000000004C0000000000000000
      0000000000000000000000000000000000001000100010001000100010001000
      1000000000000000000000000000000000000000000000000000000000000000
      0000FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000793293019301930199019901DE7B
      9919990199019919FF7F991993019901931900000064007C004C000000000000
      00000000000000000000000000000000007C10001F001F001F00100018631000
      1F00000000000000000000000000000000001042186318631863186318631863
      1042FF7F00000000000000000000FF7F0000793293019301990193019301DE7B
      991993019301794E3E53930199019301991900000064807D007C004C39673967
      39673967396739673967396700000000000000001000100010001863D65A9452
      00000040007C0064004C00400000000000001042FF7F1863186318631863FF7F
      1042FF7F00000000FF7FFF7FFF7FFF7F0000793293019301930193019901DE7B
      991999019301BD77791A930199019901931900000064667E807D004CFF7FF37F
      FF7FF37FFF7FF37FFF7F39670000007C00000000000010421863D65A94520000
      0000004000401863004C00400000000000001042FF7F18631863186318631863
      1042FF7FFF7F000000000000FF7FFF7F0000394F79323933393399199301DE7B
      7932791A3967396793019301990193019319000000000064667E0064004CD900
      D900D900D900D900F37F3967007C004C00000000000000000000186300000000
      000000401863D65A945200000000000000001042FF7F18631863186318631863
      1042FF7FFF7FFF7FFF7F00000000FF7F0000BD77794E7932794EDE7B394FDE7B
      3E533E537B6F394F9919BD779319930193190000000010420064807D004CF37F
      FF7FF37FFF7FF37FFF7F007C004C00000000000000000000000018635A6B5A6B
      18630000D65A9452000000000000000000001042FF7F18631863186310421042
      1042FF7F00000000FF7F00000000FF7F000079329301990193019919FF7FFF7F
      9919930193017932BD77DE7B931993019919000000001042FF7F0064007C004C
      1F001F001F001F00007C004C000000000000000000000000000018635A6B5A6B
      1863000094520000000000000000000000001042FF7F18631863186310421F00
      1042FF7FFF7F000000000000FF7FFF7F000079329301930193019301BF67FF7F
      9919930193019301FF7FDE7B991999019319000000001042FF7FF37F0064007C
      004CF37FFF7F007C004C3967000000000000000000000000000018635A6B3967
      3967186300005A6B5A6B18630000000000001042FF7F18631863186310421042
      1042FF7FFF7FFF7FFF7FFF7FFF7FFF7F000079329301930193019919FF7FFF7F
      9919930193019919FF7FDE7B931999019319000000001042FF7F1F001F000064
      007C004C007C004CF37F3967000000000000000000000000000000005A6B5A6B
      1F0000005A6B5A6B5A6B18630000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      1042FF7F00000000FF7F00000000FF7F00007932930193017932DE7B7932FF7F
      79327932794E9C733E53BD77931993019319000000001042FF7FFF7FFF7FF37F
      0064007C004CF37FFF7F39670000000000000000000000000000000018635A6B
      5A6B000018635A6B396739671863000000001042104210421042104210421042
      1042FF7FFF7FFF7FFF7FFF7FFF7FFF7F00007932791A9C733F67791A9901794E
      394F394F794E79329901DE7B931993019919000000001042FF7F9F199F190064
      007C004C0064004CFF7F39670000000000000000000000000000000000000000
      1863186300005A6B5A6B1F000000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      104210421042104210421042104210420000394FDE7B79329301990193019301
      99019301990199019901DE7B931993019319000000001042FF7F00640064007C
      004CF37FFF7F0064004C00000000000000000000000000000000000000000000
      00000000000018635A6B5A6B0000000000001042FF7F00000000000000000000
      1042FF7FFF7F000000001042FF7F18630000FF7F793293019301930199019301
      93019301930193019301DE7B9319990193190000000000640064807D007C004C
      FF7FFF7FFF7F10420064004C0000000000000000000000000000000000000000
      0000000000000000000018631863000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F18630000FF7F793299019301930199019301
      99019301990199019301DE7B99199901931900000064667E807D0064004CFF7F
      FF7FFF7FFF7F104200000064004C000000000000000000000000000000000000
      0000000000000000000000000000000000001042104210421042104210421042
      1042104210421042104210421042104210423E53BD77791A9319991999199301
      93019901394F394FD65AFF7F394F394F3E530064667E807D0064004C10421042
      1042104210421042000000000000006400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000079323933DE7B5A6BBD7739339901
      99019901FF7FFF7FFF7FFF7FFF7FFF7FFF7F0000006400640000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000007F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E00000000000000000000000000000000
      00000000004C0000000000000000000000000000000000000000000000000000
      00000000C618C618000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000004C007C004C000000000000000000000000000000000000000000000000
      C6181863FF7F18630000000086316C6600000000000000000000000000000000
      00000000000000000000000000000000000000007F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E00001042186318631863186318631863
      004C007C0064004C0000000000000000000000000000000000000000C6181863
      FF7FFF7FFF7FFF7F000086313367587700001042186318631863186318631863
      1863186318631863186318631863186300000000000000000000000000000000
      0000000000000000000000000000000000001042FF7FD900D900D900D900004C
      667E006418630064004C0000000000000000000000000000C6181863FF7FFF7F
      FF7F3F679F31000086316C665877000000001042FF7F1863186318631863FF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1863000000007F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E00001042FF7FF37FFF7FF37FFF7F0064
      0064F37F18630064004C0000000000000000000000001042FF7FFF7FFF7F3F67
      9F313F67000086316C6658770000000000001042FF7F18631863186318631863
      186318631863186318631863FF7F186300000000000000000000000000000000
      0000000000000000000000000000000000001042FF7F1F001F001F001F001F00
      1F00FF7F186300000064004C000000000000000000000000FF7F3F679F313F67
      9F31000086316C66336700000000000000001042FF7F18631863186318631863
      186318631863186318631863FF7F1863000000007F4E7F4E7F4E00007F4E0000
      7F4E7F4E7F4E00007F4E00007F4E7F4E00001042FF7FF37FFF7FF37FFF7FF37F
      FF7FF37F186300000064004C0000000000000000C6187B6F0000000000000000
      00006C66666658770000FF7FC618000000001042FF7F18631863186310421042
      104218631863186318631863FF7F186300000000000000000000000000000000
      0000000000000000000000000000000000001042FF7F9F199F199F199F199F19
      9F19FF7F1863000018630064004C000000000000FF7F0000391BFF4F391B391B
      00000000666600009F313F671863000000001042FF7F18631863186310421F00
      104218631863186318631863FF7F1863000000007F4E7F4E7F4E00007F4E0000
      7F4E7F4E7F4E00007F4E7F4E0000000000001042FF7FFF7FFF7FF37FFF7FF37F
      FF7FF37F1863000018630064004C0000000000000000391BFF4FFF4F391B391B
      391B000000003F679F319F31FF7FC61800001042FF7F18631863186310421042
      104218631863186318631863FF7F186300000000000000000000000000000000
      0000000000000000000000000000000000001042FF7F0040004000400040FF7F
      F37FFF7F18630000186300000064004C00000000FF67FF7FBF67FF4F3933391B
      391B391B00009F313F679F313F67186300001042FF7FFF7FFF7FFF7FFF7FFF7F
      186318631863186318631863FF7F18630000000000007F4E000000007F4E7F4E
      00007F4E00007F4E7F4E00007F4E7F4E00001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FF37F18630000186300000000006400400000FF4FBF67BF67FF4F3933391B
      391B391B00003F673F67FF7FFF7FFF7FC6181042104210421042104210421042
      1042104210421042104210421042186300000000000000000000000000000000
      0000000000000000000000000000000000001042FF7F067C067C0040FF7FFF7F
      F37FFF7F186300001863000000000000007C0000FF4FFF4FFF4F3F33391B391B
      791A791A0000FF7FFF7FFF7FFF7F1863C6181042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F1863FF7FFF7FFF7F1863000000007F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E00001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F18630000186300000000000000000000FF1B3F4F3F4F3F33391B391B
      731A791A0000524A7B6F1863C618000000001042FF7F00000000000000000000
      1042FF7FFF7F000000001042FF7F186300000000000000000000000000000000
      0000000000000000000000000000000000001042104210421042104210421042
      1042104210420000186300000000000000000000000039333933391B391B391B
      731A00007B6FD65A630C8C310000000000001042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F1863000000007F4E7F4E7F4E7F4E7F4E7F4E
      7F4E7F4E7F4E7F4E7F4E7F4E7F4E7F4E0000000000001042FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F18630000000000000000000000000000391B391B791A791A
      0000104210421042C61800000000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000010421042104210421042
      1042104210421042104200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000004C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000064007C004C000000000000
      00000000000000000000000000000000007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000064807D007C004C39673967
      3967396739673967396739670000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000064667E807D004CFF7FF37F
      FF7FF37FFF7FF37FFF7F39670000007C00001042FF7F1042FF7FFF7FFF7FFF7F
      007C007C007CFF7FFF7FFF7FFF7FFF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000064667E0064004CD900
      D900D900D900D900F37F3967007C004C0000104218631042186318631863007C
      004000400040007C186318631863FF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000010420064807D004CF37F
      FF7FF37FFF7FF37FFF7F007C004C000000001042FF7F1042FF7FFF7FFF7F007C
      FF7FFF7FFF7F007CFF7FFF7FFF7FFF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001042FF7F0064007C004C
      1F001F001F001F00007C004C000000000000104218631042186318631863007C
      004000400040007C186318631863FF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001042FF7FF37F0064007C
      004CF37FFF7F007C004C39670000000000001042FF7F1042FF7FFF7FFF7F007C
      FF7FFF7FFF7F007CFF7FFF7FFF7FFF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001042FF7F1F001F000064
      007C004C007C004CF37F3967000000000000104218631042186318631863007C
      004000400040007C186318631863FF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001042FF7FFF7FFF7FF37F
      0064007C004CF37FFF7F39670000000000001042FF7F1042FF7FFF7FFF7F007C
      FF7FFF7FFF7F007CFF7FFF7FFF7FFF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001042FF7F9F199F190064
      007C004C0064004CFF7F3967000000000000104218631042186318631863007C
      004000400040007C186318631863FF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001042FF7F00640064007C
      004CF37FFF7F0064004C00000000000000001042FF7F1042FF7FFF7FFF7FFF7F
      007C007C007CFF7FFF7FFF7FFF7FFF7F10420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000640064807D007C004C
      FF7FFF7FFF7F10420064004C0000000000001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000064667E807D0064004CFF7F
      FF7FFF7FFF7F104200000064004C000000001042186310421863186318631042
      1863186318631042186318631863186310420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000064667E807D0064004C10421042
      1042104210421042000000000000006400001042104210421042104210421042
      1042104210421042104210421042104210420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000006400640000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001000100010001000100010001000
      1000100010001000100010001000100010000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001863
      C618E71C00000000000000000000000000009F199F199F199F199F199F199F19
      9F1910003F1B9F199F199F199F199F1910000000000000001042396739673967
      3967396739673967396739673967000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000396718631042
      0000000029254A29000000000000000000009F199F199F199F199F199F199F19
      9F1910003F1B7F029F199F199F199F1910000000000000001042FF7FF37FFF7F
      F37FFF7FF37FFF7FF37FFF7F3967000000000000104239673967396739673967
      396739673967396739670000000000000000000000007B6F5A6B104210421863
      C618E71C000000006B2D8C310000000000009F199F199F199F199F199F199F19
      9F1910003F1B7F027F029F199F199F1910000000000000001042FF7FD900D900
      D900D900D900D900D900F37F39670000000000001042FF7FF37FFF7FF37FFF7F
      F37FFF7FF37F0000000000000000000000000000104210429452396718631863
      C618E71C29254A2900000000CE390000000000000000000000000000FF4FFF4F
      FF4F10003F1B7F027F0200000000000000000000000000001042FF7FF37FFF7F
      F37FFF7FF37FFF7FF37FFF7F39670000000000001042FF7FD900D900D9000000
      00000000000000008C4D8C4D8C4D00001F00104294527B6F5A6B396718631863
      C618E71C29254A296B2D8C310000000000000000000000000000000010001000
      100010003F1B7F027F0200000000000000000000000000001042FF7F1F001F00
      1F001F001F001F001F00F37F39670000000000001042FF7FF37FFF7FF37F0000
      0000B256B256B2566C4E6C4EB2560000DF181042FF7F7B6F5A6B39671863FF7F
      C618E71C29254A296B2D8C31CE39104200000000000000001000000010421042
      104210003F1B7F027F0200000000000000000000000000001042FF7FF37FFF7F
      F37FFF7FF37FFF7FF37FFF7F39670000000000001042FF7F1F001F001F000000
      E07F00000000B256B256B256B25600009F311042FF7F7B6F5A6BFF7FFF7F1863
      1863186329254A296B2D8C31CE39104200000000000000001000100210421042
      104210003F1B00007F0200000000000000000000000000001042FF7F1F001F00
      1F001F001F001F001F00F37F39670000000000001042FF7FF37FFF7FF37F0000
      1863E07F00001863186300000000000000001042FF7FFF7FFF7F5A6B3967C67C
      00001863186318636B2D8C31CE391042000000000000000010003F1B10021042
      104210003F1BFF7F7F0200000000000000000000000000001042FF7FFF7FFF7F
      F37FFF7FF37FFF7FF37FFF7F39670000000000001042FF7F1F001F001F001F00
      00001863E07F0000000000000000000000001042FF7F7B6F5A6BF34FE0035A6B
      396739671042104200001863CE391042000010021002100210023F1B3F1B1002
      104210003F1B7F027F020000000000000000000000000000267FFF7F9F199F19
      9F199F199F19F37FFF7FFF7F39670000000000001042FF7FFF7FFF7FF37FFF7F
      F37F00000000E07F00000000000000000000000010421042FF7F7B6F18635A6B
      10421042F37FF37F00007B6F0000000000003F1BFF4FFF4FFF4FFF4FFF4F3F1B
      100010003F1B7F027F0200000000000000000000267F0000267FFF7F267FFF7F
      FF7FFF7FF37FFF7F1042000000000000000000001042FF7F9F199F199F199F19
      9F19F37FFF7FFF7FE07F000000000000000000000000000010421042FF7F1042
      F37FF37FF37FF97FF97F00000000000000001000100010001000FF4F3F1B1000
      104210003F1B7F027F02000000000000000000000000267F267F267FFF7FFF7F
      FF7FFF7FFF7FFF7F1042FF7F00000000000000001042FF7FFF7FFF7FFF7FFF7F
      F37FFF7F104200000000E07F0000000000000000000000000000000010421042
      F37FF97FF97FF97FF97FF97F00000000000000000000000010003F1B10001042
      104210003F1B7F027F020000000000000000267F267F267F1042267F267F267F
      FF7FFF7FFF7FFF7F1042000000000000000000001042FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F1042FF7F00000000E07F000000000000000000000000000000000000
      524AF97FF97FF97FF97FFE7FFE7F000000000000000000001000100010421042
      10421042FF4F7F027F02000000000000000000000000267F267F267F10421042
      10421042104210421042000000000000000000001042FF7FFF7FFF7FFF7FFF7F
      FF7FFF7F10420000000000000000000000000000000000000000000000000000
      0000524AF97FFE7FFE7F524A524A000000000000000000000000000010421042
      104210421042FF4F7F0200000000000000000000267F0000267F0000267F0000
      0000000000000000000000000000000000000000104210421042104210421042
      1042104210420000000000000000000000000000000000000000000000000000
      00000000D65AD65AD65A00000000000000000000000000000000000010421042
      1042104210421042FF4F0000000000000000000000000000267F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000052100000000000000000000000000000000000000000000000000000000
      0000000000000000000010000000000000001042104210421042104200000000
      0000000000000000104210421042104200000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000600C
      E07F8C5246290000000000000000000000000000000000000000000000000000
      0000000000000000104210001042000000001042FF7F18631863186310421042
      10421042104200001863FF7F186310420000000000009F199F199F199F190000
      00000000000000009F190000000000000000000000000000000000006B2DE07F
      A056C07B8052C318000000000000000000000000000000000000000000000000
      0000000000000000100010001000000000001042FF7F18631863186310420000
      18631042104200001863FF7F1863104200009F197F1A7F1A7F1A9F1900000000
      00000000A5149F197F1A9F1900000000000000000000000000000000C0398052
      E07F606F406BF45E600C00000000000000000000000000000000000000000000
      0000000000001042100010001000104200001042FF7F18631863186310420000
      18631042104200001863FF7F1863104200009F19FF4F3F1BD300000000000000
      0000A5149F197F1A7F1A7F1A9901D30000000000000000000000E71C2067C07B
      606F2067C07BC25A807325250000000000000000000000000000000000000000
      0000000000001000100010001000100000001042FF7F18631863186318631042
      1042104210421042104218631863104200009F19FF4FD3000000000000000000
      9F199F193F1B3F1B7F1A7F1A9901D30000000000000000000000C018A0772067
      406BA0770063E27F0963EC5E4629000000000000000000000000000000000000
      0000000000000000000010000000000000001042FF7F18631863186318631863
      1863186318631863186318631863104200009F19FF4F7F1AD300A51400000000
      9F19FF67FF4F3F1B3F1B7F1A9901D3000000000000000000975240294D6B606F
      E07FE05EE27FCB5AA07780732367841000000000000000000000000000000000
      0000000000000000000010000000000000001042FF7F18631863104210421042
      1042104210421042104218631863104200009F19FF4F3F1B7F1AD300A5140000
      00009F19FF67FF4F3F1B3F1B791A990100000000000000001100340100213367
      404AE07FEA5EC07BC07B6F6F602D841000000000000000000000000000000000
      0000000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F1863104200009F19FF4FFF673F1B7F1AD3000000
      000000009F19FF67FF4F3F1B791A9901000000000000774EFF03DE1B31250221
      E07F27678073636FC25AC018E71C000000000000000000000000000000000000
      0000000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F1863104200009F19FF673F1B0000000000000000
      0000000000009F19FF6700003F1B9901000000000000774EFF03D646583ACF00
      20250563064200214A2900000000000000000000104200000000000000000000
      1042000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F1863104200009F19FF4F00000000000000000000
      00000000000000009F1900000000791A00000000F85E9609FF7BB756D0011000
      9210841084100000000000000000000000000000000000000000000000000000
      0000000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F1863104200009F193F1B7F1A0000000000000000
      00000000000000000000000000003F1BD3000000180AFF7331121642D85AD85A
      0000000000000000000000000000000000000000000010420000000000001042
      0000000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F18631042000000009F193F1B7F1A000000000000
      0000000000000000000000007F1A99010000F21CDE37131E153E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F000010420000000000009F199F199F1999019901
      990199019901990199019901990100000000F21CEF01B5350000000000000000
      0000000000000000000000000000000000000000000000001042000010420000
      0000000000000000000010000000000000001042FF7F18631042F97FF97FF97F
      F97FF97FF97FF97FF97FFF7F1863104200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010000000000000000000104210421042104210421042
      104210421042104210421042104210420000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00FFFFF007FFFF0000BFFDE003FFCF0000
      BFFDE001FFC70000BFFDC001F8030000BDBD8000F8010000B99D8000F8030000
      B18D8000FFC70000A185C001FFCF0000A185C001F3FF0000B18DE003E3FF0000
      B99DF007C03F0000BDBDFC1F803F0000BFFDFC1FC03F0000BFFDF80FE3FF0000
      BFFDF80FF3FF0000FFFFF80FFFFF0000FE7FFE7FFE7FFFFFFC3FFC7FFE3FFD7F
      F81FF87FFE1FFD7FF00FF07FFE0FFD7FE007E07FFE07BD7BC003C00000039D73
      8001800000018D6300000000000085430000000000008543F81F800000018D63
      F81FC00000039D73F81FE07FFE07BD7BF81FF07FFE0FFD7FF81FF87FFE1FFD7F
      F81FFC7FFE3FFD7FF81FFE7FFE7FFFFFFFFFFFFFFFFFF81F000FFFFFFFFFF81F
      0007E000FE07F81F0003C000FDE3F81F0001C000FBF1F81F000180008071F81F
      000180008051F81F000100008041000000010000804100008001000080438001
      C00180008041C003E0018000807FE007F1118000807FF00FF999C07F80FFF81F
      FDDDE0FF81FFFC3FFFFFFFFFFFFFFE7FFE000000DFFF007F000000008002007F
      0000000080038003000000008001C00300000000C001C00700000000C0038007
      00000000C003000700000000C003000300000000C003000300000000C0030001
      00000000C003000300000000C003800300000000C0078001000000008003C001
      00000000001DFC01FFFF00009FFFFE078001FFBFFF18FFFFFFFF001FFC000000
      8001001FF0000000FFFF0007C001000080010007C003000075D60007C0030000
      00000007800300007416000300010000000100038001000055D9000100000000
      000000040000000077760006000000008001000700010000FFFF000780030000
      8001C007C0070000FFFFC007E00FFFFFDFFFFFFFFFFFFFFF8002FFFFFFFF8001
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
  inherited IconosXP: TImageList
    Left = 104
    Top = 228
    Bitmap = {
      494C010130004C004C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D000000001001000000000000068
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A21C11C000464182B259031B031
      CF14000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000D631D73D
      4F39C83483386128403849495156BD7B00000000000000008714EC140F11EE0C
      A904EE08EC10C91485244A410000000000004631DC7F2B7FC672225A61396331
      E64168560B6B6D738E7B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000001046381DA150A150
      C350A24C40244849805061486040603800000000974232093109510D300D1005
      9021870430092F09EE04ED04CC0800000000025651776E7F6E7F6F7F8F7F4D7F
      0977425EA2456431C73DCA5E947F000000000000000000000000000000000000
      000000000000000000000000000000000000000000005325D20C9008C45CCC69
      ED6D2669AC59EB798238C364A258604000000000D51DF61D372A382EF721C90C
      BC3AD329B611B511730D3009CC0400000000025AC66ED67F8F7F8F7F8F7F8F7F
      8F7F907FB07F8F7F2A7786314E6F0000000000000000B67F4E770D6F0D6BED6A
      ED6A0D6F4F778F7F0000000000000000000000004F25B10C90089008AA300E72
      EE6DA438717E0D768A59A368A258804400000000921D7932DB46BA3E1822773A
      1D477A320B11181AD615520DCD0400000000225EE776FD7FB07FB17FB17FB17F
      B17FB17FB17FB17F907F2356E428000000000000876ACE3D6C31B135D439D439
      D4396D2D482DA739ED662356000000000000E54DB10CB10CD10CD210F2106449
      056D6341A96AA6726141A1388050D310000000000000582ADB429A360A151D47
      FD469B3A5736D71195113109A53400000000435E0A7B3173D17FD27FD27FF27F
      D17FB07FD17FF27F8F7FB17B851084100000E251F13D9E737E6F9F73BF77FF7F
      BF77BF77FF7F5A4A28296B52851084100000D014D20CF3101415551D731DA109
      4035507B507BE976426A025E670C06013A6300000000F3103822181E633D8866
      E976846EC151071D53098B2D00000000000063662C7FC772F77FF27FF37F4D7F
      2C7F0C7F4D7F2D7FB07FF97F81414B290000B756FC5EF53DD95AF43D574A1642
      7A4EBF56BF569F525F6B4C298018A5140921D30C14113519771D9825D01D2104
      2D7B727B527B0C7B666E055E42398000EB0C000000000000880860414F7B507B
      2C7BA672416A2262C449C455000000000000A76A4D7F2C7F7577FD7FD77F927F
      F67FB57FFC7F307F6E7FFA7F50772925A8141C63D149CB71B13D1B63FA5EF43D
      3646B8567C6F364618429F739F737F6F4408361557197821BA258D220309A514
      CC6E517B507BEA76676E265E44350000C60000000000CD1000002E7B717B727B
      4F7BC876446A0462045A0000000000000000C96A8F7F8F7F8F7FEC6A6D560E63
      B97BF77FF27FFE7F317F4F7FFF7F4335A7148962EE3D3A67FA5E37361A16D95A
      933115421032364638463946DF5AF63D8710991DBA25FB2D0C1F870B850CE71C
      C8412E7B0C7BC976A972896661100000240100000000420842082E7B727B527B
      2E7BC976676A055E475E00004008000000000D73D17FD17FD17FD35AF94EDF5F
      9A5F0D6F757BB97FFD7FB67FFF7F0D6FC8182A4E2E4A4E4AE9418B318E313346
      B7561B6398521E637A4EFE5E3446EC6E0000FA253C36F3324907E9036715C618
      E71C8739841042080000653900000000E704000000008410C6182D7B507B507B
      0B77C976676A2762275A00000000000000005177F27FF37FF37F1763F75AFF77
      FF679542BA423E4BDB774D4E643505524E2993568C524F6B3167734E734A5A67
      FF67000000003E4BDB734D4E0000000000001B2E7C3A6A17CF1FF31F93238410
      8C311042EF3D2925210400000000A0000E1900000000A514E71C6A5E2D7B0D7B
      EA76C976A96E896A45350000000000000000A766F47FF37FF37F37671A5BFF7F
      FF73D64EA514D84ABE7310468510E9180000CD661863F65EF45EB55652461042
      BD6B000000000000000000000000000000005542B52E670FF01FF533F83BAF26
      E71C1042CE392925210400000000A1014F2900000000630C0821E61C4956C418
      420821046110485A00000000000000000000C051B97BFA7FFA7F5867F956FF7F
      FF7BFF737B5F4C25FF6B104287106E2D00000000000000001463734E734AF75E
      DE7700000000000000000000000000000000C051F32A4307CE23F32FF94BDF77
      D95685108410630C0000C100C0021111000000000000410408216B2DAD35AD35
      29258410000000000000000000020000000000000000DC7F98775473DE7B5D5F
      FF7FFF7FFF73D64AD84A31468508000000000000000000007A6F336FBE770000
      0000000000000000000000000000000000000000665E512BC70BEF2FFA5BDF6B
      D747EC2BEF1F1F1A7F05FB004B0100000000000000008D1EA5148C3131463146
      8C31E71C0000000000000200000000000000000000000000000000000952DE7B
      D94E5A679E67B74AD65A653D4D25000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A523E577E5B7F5FD233
      AB2B6B2FCA27FF195E05150D0000000000000000000000008E29C618AD35AD35
      6B2DA514000000000000150D0000000000000000000000000000000000002D6F
      38677B6F596BB456CB626C770000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000776B7F5F5E4B
      932334233D1EBC1D8E4E00000000000000000000000000000000B25684108410
      841021040000890800000000000000000000000000000000000000000000564A
      F31CAC1800000000000000000000000000004D19420400140839F241774E0000
      000000000000000000000000000000000000000042040010E834F24100000000
      0000000000000000000000000000000000004D194304220CC7286E2DD235B135
      CF148A108318C5202220F85A3967DE7BFF7F00000000000000005B6B762D7C4E
      BD529552153E103500000000000000000000EB187A4E7A4EB0354A29AB14B335
      3946544A153E103500000000000000000000EA182E21ED1CA814640CA9140000
      00000000F53D0F35CB79FF7F000000000000C9143377A46AC56EE66E07732873
      4A774B776C778D7BAE7BD07F4C25D65ADE7B000000009C73D839FC5AFD5EDD56
      5D46F63D574A3846B342FF7F0000000000003A67BC4E3F4F3F4FFE4EBC4E9A4E
      D439EB1CEA1C4F2D2F369C73FF7FFF7F0000752D9631D8393D461842E918794A
      0000EA1C8510A514A5106B2D9C7300000000E355F37F84668D7B8D7B8D7B8D7B
      8D7B8D7B8D7B8D7B8D7B8D7B957FAE359C7339671746FB5A5D6B1D635D4AFD3D
      9D4ED7393721D735194250467B6FFF7F000039673F4FBC4E9F577F575F533F4F
      3F4FFE4EDC4E9A4E15424B256B2DB556FF7F0F21732D3125EE1C1B420E21B93E
      1E4B8C311863F75E7B6FAD35630C734E0000E355F37FE351F77FF67FF67FF67F
      F57FF57FF57FF47FF47FF47F8F77AC39DE7B3725BD773D673D467D4EFD5EBD56
      9D5257259831D93958290B3B46267B6F000037259F5B7F579A4EDF63BF5FBF5B
      9F577F575F533F4F3F4FFE4E794ECE39FF7F1B429F525E4A742D3125FA3DD946
      2921524AD65A3967F75E7B6FCE39A514FF7FE355F37FF87FF87FF87FF77F4B77
      C96607734B77F67FF67FF57F663DA514FF7F36253D461D635D6B1D63FD5ABD56
      9D525825FD39DD3979290937E832186300003625FF67DF63BF5F5D5FFF67FF67
      FF67DF63BF5FBF5B9F579A4EDC4E8C31FF7F3C46BF77BF56D839CD1895319C5B
      4A29AD3590312A253967F75EDE7BA5149C73E355F37FFA7FFA7FF97F524A3246
      5242544A1D63E86AF77FF77F6D29A510000057299D735D6B3D671D63FD5ABD56
      9D5239255825FD395A250A3B662AEB1CB6565729FF6BFF6BFF67BE63FF6FFF6F
      FF6FFF6BFF67FF67FB565F4F3F4F8510B55600001C429F52B735EF1CEB1C8249
      29252A25AE35D2392B255A6BD65ACE39AD35E355F27FFB7FFB7FB5567D57DF6F
      BF67FF7F9E5F1E632973F87F2B21AE35000057299D735D6B3D671D63FD5ABD56
      9D5239217A2DBC353A252B3FC72E70422E25F93DFF6FFF6FFF6FFF6BDB56FF7B
      FF77FF73FF737D63BF5FBF5B9F5748212E250000000000009E63B6352531677E
      08218C31734EEF3DD239D65A94529452A814E255AF7BFD7FD55A1B53DF5FBF5F
      BF5B7F57FF7BD64E0E46FA7F0A1D734E000056299D735D6B3D671D63FD5ABD56
      9D52191DDC39FE393A212C3FA72E902D2D25F73DFF77FF73FF6FB856D57FD65E
      1C639E737D6BDF67FF67FF67FF63C8182D2500000000000000009F52C449B17F
      C618C6183967734E8D31524AB5569452C918E2556C77FE7FD65ABF5FFF6BFF67
      1332FB4A5F4FBF63B956F97F0B1D734E000056299D735D6B3D671D63FD5ABD56
      9D52FE1C1E1DFC181B1D0A3BA72EB2356F29594AFF7BDB56D67FFE7FFE7FFD7F
      FC7FD87FD77F126FFF6BFF6BFF6BE91C6F2900000000000096773B4615677073
      ED66E71C0821CE39E71CEF3D524A29254E25E1512A73FF7F39679F67FF7FFF6F
      7342AF299F5B9E5F754EFD7FEA180921000057259D735D6B3D671D63FD5EFD5E
      5E6B7F4A3E21FE181E1D2D43A72EF43D4F299731794E356FFF7FFF7FFF7FFE7F
      FD7FFD7FFC7FFB7F126FFF6FFF6F0A214F290000000000009A52B7359C73EC1C
      C96E042DE71C29254A298C31CE39A6140000C1510773FF7F5A6BF85AFF7FFF7B
      FF6F9C5BAF2952466E52FE7FC814A6140000982DBD773D67FD5EFE5AFE5AFE5A
      FE5AFF5AFE5EBB521A21E732C72ED3394F2900003B67B37FFF7FFF7FFF7FFF7F
      FF7FFE7F767B1177AD72916AFF73EA1C4F29000000000000B6354F29742D1121
      CD390000B15AE71C08210821954E00000000C151C46EFF7FFF7F3967B74EFF7F
      347FFF671A53734EFF7FFF7F0B1DE9180000B652712DD739BA31DC39BB31B82D
      D52D7442555B965F504F0A3BC72EF43D4F2900000000F73DCC7ECA7E2E7F727F
      527F327F117FF07ED2729466784E8F2D00000000000000005A4A542999315529
      CF6E00000000000000000000000000000000C051826AFF7FFF7FFF7FB556BD77
      5A6B5A6B9452FF7FFF7FFF7F0C1D6E2D0000000000000000965F72537153514F
      514F7153514F4F4B08330622681D95314F29000000000000565B9477B27F927F
      727F527F327F117F117F574E481D0000000000000000734EDD5A10215529D166
      000000000000000000000000000000000000A0516066FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FA60C732D00000000000000009B775953AA256B36
      2A326F3E944EF95E3B677C6F3D677B4E2F2500000000000000001953B477D27F
      B27F927F527FF46E764E7C6F000000000000000000005D6BF73D0D1D93730000
      000000000000000000000000000000000000A0516066E555E555E555E555E555
      E555E555E555E555E555E5554D25594A00000000000000000000000010421342
      784EBA56BA56784ED339B1351242B6569C73000000000000000000001142556B
      D37FB27F784E564A000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C251804D6C776C776C776C776C77
      6C776C776C776C776C776C776D2D955200004D196408010021042000610C0000
      0000000000002729230445080825C51C6B29000000000018003000284018601C
      A02480248220E528003000242104000000000000000000000000212CD0491346
      774E774E1346CE41000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EB1898529852784EC718E31C0000
      000000000000092198529852784EA814A31400000000477DCC7D8A7D477D477D
      677D687D477D897DCC7D057D42640000000000000000B9565B6B9C737B6F7B6F
      5B6B3B673A67B8569952784E897D000000000000000000000000000000000000
      0000000000000000000000000000000000003A67DE7BB9561542794E376B0000
      0000000000003A67DE7BB9561542794EA81000000000E86C007C20780058615C
      E564A36000540064005C0030F4410000000000009D731A63BD77DE7BBD77BD77
      7B6F5B6BBA56995299523646374663680000000000000000000000000000D95A
      F23D574A000000000000000000000000000039675B3A5B3AB9358931346FF662
      0E428C2D944A37675B3A5B3AB9354A29A710000000000000AA38066D29416B2D
      0000103EE7246A592150393A0000000000000000B9561A63DE7BFF7FDE7BBD77
      7B6F99523946394639463646374A0000000000000000000000009C738C313146
      CE39A7148E314951000000000000000000004E52DF1AFF22FF265B3A84108410
      A46EA34184100821DF1AFF22FF265B3A640400000000C850276DAD35DE7BBD77
      BD775A6B7B6F955249412054DD26000000000000000000005B6B594ABA567C6F
      FA5E794EB935B935F93D574A0000000000000000BD1A955291312925DE7B5153
      734E754ED039C614A524BD77000000000000DA5A3F333F373F335B3A734E734E
      A56AA56A734EDA5A3F333F373F335B3A2200000057468178734EFF7F7B6F3967
      D65AB556B556186318630751214800000000000000000000F06917429F0ABE32
      594AD83936253625F73DB24AF65A00000000AF3531468C31CE397B6F9C735A6B
      39679652774E784E90310821734EDE7B0000DA5A7F47BF539F4B5B3A94520000
      734E8410B55ADA5A7F47BF539F4B5B3A2300000022788A71103EFF7F9C735A6B
      1863B556734E734E396731460054D53D000000000000000099527A4ADF16DF1A
      DF1ADF1A9A2A342EB735B756C626051A00007B6F7B6F7B6FBD779C737C6B7F5B
      FF7F5E57B656754E7A4E7C4E923129253967DA5ADA5A1A575D535B3A603E0000
      734E734EC871DA5ADA5A1A575D535B3A23000000407C597BFF7FFF7FFF7FFF7F
      FF7F7B6FD65A734ED65A7B6F005CA8440000000000000000784E9C2AFF22FF26
      1F271F270B0E210EBA1EE3098943C62A0000BD77DE7B7E633E53BE739E6B7F5B
      FF7F5F53FE3E9D2E353611425D4A1942F75E00000000000000006622640A714E
      F03D4C31082593567B6F00000000F85E44000000A17C8C29FF7FFF7FFF7FFF7F
      000000008410314618635A6B004C2150000000000000000036421F271F2F3F33
      3F333F372B12210E052B2633673B020E00000000A2781242B556185F9E6B7F5B
      FF7F5F53FE3E9D2E3B1ED811AE2DD339734E00000000000000000000F95EBD77
      7C6F3A67774E2E0D7D1200000000000000000000E47CFF7FFF7FFF7FFF7FFF7F
      0000FF7FDE7B7B6F9C73FF7F205C435400000000A979314A3246744A754A9752
      543E5E3F4B162106C31EE422C0051657000000000000000000000000CF315342
      9452DB4A783AAD31292518427D4EB235FF7F000000000000000000000000F95E
      5C6B38463846D619000000000000000000000000687D3072FF7FFF7FFF7FFF7F
      0000FF7FFF7FFF7FFF7FFF7F0054683800000000B5561B53DF67BF63DF6BFF7B
      954ADA5A4B1EE001410A610E831A2212DD770000000000000000DE77313E4B21
      A410C6188E31794E794ED039FF7F000000000000000000000000000000007946
      BF125B3AB935E9410000000000000000000000000C7E615CFF7FFF7FFF7FFF7F
      AD35FF7FFF7FFF7FFF7F8A5D006C935E0000B6569E5BFF67FF67FF63BF5F9F5B
      FF7B3A57D74ABF579F4F9F4BDB5A0000000000000000194F6C25C6184A29734E
      5A6B1863744EAE35FF7F0000000000000000000000000000000000000000FD42
      1F2F3F2FFF268839000000000000000000000000B17FEC7D40445A6BFF7FFF7F
      FF7FFF7FFF7FF75EF77200606364000000001863117BFF7FFF6F9642E81C2921
      9F630C76744ADF5FBF579F4F7D6F0000000000008C31F75EBD77BD77BD77BD77
      9C731036BB4200000000000000000000000000000000000000000000E76E1D37
      7F437F475F3BAA390000000000000000000000000000517F0D7E0040735EFF7F
      E718FF7FFF7F62382068207C0000000000003867DF77FF7FFF77FF73B54A4B25
      FF6B1A53954A5C5BBF57BF53B5620000000000003967734E744E5329153E1142
      000000000000000000000000000000000000000000000000000000006C563C43
      BF57DF5B9F4B643500000000000000000000000000000000927F507ECB7DC36C
      A2684060C378057DE27000000000000000000000BD773C5BFF7FFF7FDC77FF67
      9646B5569852774E15421542267D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000973
      ED6AB956B956651D00000000000000000000000000000000000000004B5E6D7A
      0D7EED79106E65250000000000000000000000008C5EF6627B6F195FF75A3967
      B35AAC7A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022042204000001002100
      420800000000000000000000000000000000000000000000000020046010A018
      E024E020E220472D240800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002204220421046110A018
      E020C020C21C27292408670C8D3DE6246B2DA904EE04EA18B13535469031E920
      242D285AA84100000000000000000000000000000000E8188039605AC06AA066
      605E40562056C0496039E12000000000000000000B11E8180000000000000000
      00000000000000000000000000000000000000000000C8182329042124250425
      0421E41CE41CC418A414840C66086704C4182D1D7B6F9C735B6B3B67DA5A9752
      794EE91C65390000000000000000000000000000D35E0B6FAF7F617FC06EA066
      605E205600522056E04DA045E0240000000000004F4EE741C63D217300000000
      0000000000000000000000000000000000002D1D4E4AC73D5411BB77BB77BB77
      BB77BB77BB77BB77BB77BB77BB773963C9149C73BD77BD779C735B6B5C6BB956
      784E794E6704C41C0000000000008510E91C0000EA6E917B645AA06EE07AE07E
      806E40620052A0416039803D603500000000000000000000244EC73DA33DE47A
      88624A56054A000000000000000000000000396B284E8D565411977B967BBB77
      BB777B637B67BB77577B367BBB773963A8107C6FFE7FFF7F9C731A63BA56594A
      1742794E172A00000000DC4A902DA30C640C000084628D7FD27FC07F407F8072
      205A005A806AA06E605EC045E02400000000000000000000000000002E468639
      D35AB3569152704A6A520000000000000000AE5EA36EC2455411447F981EBB77
      BB77AC279F12BB77686D2B45BB7739636508912DFA5A394A1B639952D939D939
      D739181E9C36C714C52046152216C005000000002252F77FEC7F0573E26EE072
      6062C049A0416035E04D405A803D000000000000000000000000E76A92523667
      A63D166337673663D45A704E000000000000C745707F4E7F5411447F247BBB77
      BB779F123C4FBB77A87D6779BB77396323000000173A9F02FF2E7B4A98315729
      71297446931D2415831EA4222316C936000000000D42D27FEF7F4A778B7F647F
      007BC051603D202DC049004EC041000000000000000000000000ED66D35A3767
      586BA73DB356586B3767D45A4E4A00000000C645937F8F7F5411396718679A77
      BB77D85E596FBB77396718679A7739632300912D584EBF12DF1ADF16FF227D2A
      B735C514062F631E693F82094E290000000000000000B826484A207B50738B7F
      417F005A603D6039C045A1250000000000000000000000000000C962D35A3767
      586B586BA63DD45A586B3767B2564E2900000356B47FB07F54118412A046BB77
      BB779539097EBB775A6B334ABB773963440090297942FF22FF261F277F021C02
      0B11242BC62A8C43EA217C2E00000000000000000000000000000000972EAD7F
      437FC05120310000000000000000000000000000000000000000DA36B3563767
      3767586B9A73A63D786FBA773667CD390000485AD87FD17F5411841E840EBB77
      BB778A69D662BB777B6F315ABB7739634400B1317A321F2F3F331B06181EBF6B
      1D4F7A6BC411E70C4F150000000000000000000000000000000000001826AF7F
      637F205A402D0000000000000000000000000000000000000000000092521663
      796F3767786F1663A839796F376BB25A0000A56ED77FF27F78019E129E129E12
      9E129E129E129E129E129E129E129B32230C554AFE325F37DA2A03626049162A
      7F4F162A2E19C514000000000000000000000000000000000000000061494356
      603D2035242900000000000000000000000000000000000000000000E849B356
      3767796F997358674E4AB356586BF55E00000B73957BF37F55115C225C225C22
      5C225C225C225C225C225C225C22F40022041A635F377F43CC662C7F8F7FA86E
      2F36BC3A5015000000000000000000000000000000000000000000000077C06E
      4062A04D00350321000000000000000000000000000000000000000000006E4E
      D35A1663796FDB7B7A6FA63D3767F56200000C732E73FA7FF87FF77FF77FF77F
      F77FF77FF77F927FC66E2629F65ED55A010019637F3F9F4BDF53D2524562EC72
      9F47593E72190000000000000000000000000000000000000000EF5A607F807F
      007B606660452035000000000000000000000000000000000000000000000000
      2E4AB356F65E58673767CF39CD35732D0000747BD17FAF7F2973A36AFD7FFA7F
      FA7FFA7FFA7F937F2E734925AD350000000095527546F94ABE5BFF67FF67BF5B
      9F4FD53974150000000000000000000000000000000000000000DB6B857FA87F
      A37FC07AC0554039000000000000000000000000000000000000000000000000
      00006E52714E9252062D3146E83DD45A0000757BF37FF37FF37FF37FE76EC76E
      2F73977BFF7FB87F977B6B2DC83D00000000945219633A679752354615427746
      1C4BB3315601000000000000000000000000000000000000000034468C7FD47F
      877FC07AE05D6139000000000000000000000000000000000000000000000000
      00000000035A2E4A0529504A0C422F3E0000685EF47FF37FF37FFA7F89622F73
      967BFB7FF87F0A73A2412E460C3E000000000000000000000000CB3D0E46544A
      9852143A792E000000000000000000000000000000000000000000008A5A477F
      017F806E41560000000000000000000000000000000000000000000000000000
      0000000000000000282D764ED85A00000000362E89620E7373776762494E477B
      017B606A2252A725282D764E0000000000000000000000000000000001000000
      6B2D000000000000000000000000000000000000000000000000000022046308
      4B296C2D8C2D8C31000000000000000000000000000000000000000021002104
      4208640C081D8C31000000000000000000000000650822042204000021000000
      000000000000000000000000000000000000000000000000000014427511EE14
      0100230066000000000000000000000000000000000000000000F33DD329754A
      54464C21A80C8704870000000000000000000000000000006E2D8651085A295A
      0B7F0C7FC841220066000000000000000000A9045309CC08A514821C042D8641
      AA720B7BC841000000000000000000000000000000000000B6567A09BF193F0A
      9F1AC9148410AD3500000000000000000000000000000000B656F8257A678E32
      5F571D57323E6C2987040000000000000000000000000000693DC6616B2D2A4E
      CA7E0C7B0C7F0C7B2200744E000000000000CA0C7609F8253A321505CF04A810
      C4204531E74D8A6622000000000000000000D75A8C31AD351D0A7819DA0DDF11
      7F02FF2E2E1DA514220022040821851000000000000000001C0A9D67F446051A
      F75A427D9D67A710430000000000000000000000000000004B2DC661A97E8A7E
      10776D5ACC39CC66262D2204000000000000D75AB90919329F639F639F5FDD46
      D81DD300CC08C41C052500000000000000005129DF73BE73BE6FBE6FBE6B7E57
      1F0A9F161F43B94A3F573F57F53DC71800000000000000007C67DB3A4926C72D
      4F4AC47D5B2E2C1DFD4E0000000000000000000000000000AB41C6610D36D24A
      0C3EE851A97EB0766831FD4E0000000000005129B90DBB469F679F637F5F7F5B
      5F5B1F3B9C36C81427290000000000000000922DDF77DF77DE73BE73BE6FBE6F
      7E577F02DF2A5F4FBF5F3C57F53D0B21000000000000DE775B673F4F0416C441
      2D3A257EAA69B02D1A4F3C570000000000000000000000008B35E6650D36354F
      5353965BF863F34E4731FA520000000000007129D911DC4EBF6B9F67A9669F5F
      7F5BBF1E9C36C814272D0000000000000000B331FF7BDF7BDF77BD739D6F9D6F
      9D6BFE369F121F3F3E4F9D63F53D2A3F000000000000DF775B67575B2516435E
      494E477E427DD756773A7D63000000000000000000000000AB3DE6650D365657
      6D3AAF42124BF24A47313B5B000000000000912DB9113D5FBF6F556B83667C63
      1F3FF8565B2AC614E5241A57000000000000F535FF7FFF7BDF7BDF7BDF7BDF7B
      5C57DF115F02DF26F62D9E67F53D4F29000000000000DF7B9C6F565B574F916F
      D1569D5FD94E59774F217D630000000000000000000000006B31E7650D36975B
      6D366D366D36B042262D3B5F000000000000912DB911BF73566FA766BF6BA866
      3C5BEF297F573C1EEC046B296F294E290100173AFF7FFF7FFF7FFF7BDF77DE73
      BE73BE6FBE6FBE6FBE6F9E6BF53D9131000000000000FF7BDB46E72E8001207F
      A3457B32217D5062F1397D670000000000000000000000008B3507660D36D863
      5553324F5453B14626313B5F0000000000009029B911DF77DF77DF73DF6F6066
      BF677F5F1A1A5F5B9F5F9D2E501186140000583EFF7F7A1DF935994E7C6BBD77
      BD73BD73BD73BE73BE6FBE6FF53DB2350000000000007A1DB94235254A11407F
      E0551D47C67560648E2D5C67000000000000000000000000AB3907660D36F967
      D863F146324FB042262D1A5F000000000000B02D9805FF7FFF7BDF77DF730F6B
      7B6B9F671A2AE9104F15DE3EBC7B216900189A3EFF7BFF0DBF153B11B94EFF7F
      FF7BDF7BDF77DF736E39535AF53D9131000000000000FF0DB72576299A32407F
      205E7D636C7A007D871CF04DF53D000000000000000000006B35887E0E3AFB6F
      F967124BF1468F3E052DCF45000000000000B02D7801FF7FFF7FFF7BDF77DF73
      8366BF6B3A2AC51405290000D239834C0104BB423F4BBF1A7F061F0A383AFF7F
      FF7FFF7BDF7BDF77E8714C72F53DB2350000000000009E1AB94AD9290C19276F
      205EF0393A63847DE648EA59F53D00000000000000000000AB3D897E2F3EFC73
      FB6FF967D0426E3A0531CA550000000000008F293701FF7FFF7FFF7FFF7BDF77
      A66ABF6FF921C514052D0000000000000000DD46BF1EFF7F1F3FDF269F0EBA4E
      DE7BBD77BD77BD779C739C73F53D742D00000000BF1E5B6BDB5ABB462F09B25E
      8D6232467C6F5B6BAF393242F43900000000000000000000CC41A97E5146FE7B
      FC73FA6B8E3E4D362631F13D000000000000D1315701182E1C5BFF7FFF7FFF7F
      FF77DF73F921C514052D00000000000000000000000000001E437F533F47FF32
      30197729D921511D7C6F00000000000000000000FB42B8461842D8399025BA3A
      557B3221D9215C6BF83D8F2D3B63000000000000000000008B39AA7E47350E3A
      1557DA6B6D362C3226316E29000000000000F039780178017801780157013601
      F8259A46D819C414062D00000000000000000000000000000000373ABF5F9F57
      5F4F1A265709564A0000000000000000000000009D734F5EA3400351F1355E53
      097FF82557097C6BF5394D25D95200000000000000000000473DCA7EC4798661
      6849057E0576865126312C21000000000000734ED74A1B4BFE3A5C1EB9097801
      780199019901A31C062D0000000000000000000000000000000000000000DB46
      DF639B3A8B31000000000000000000000000372E0E4AE6692459C469AF35BA46
      DF639B3A00008E4E3936774EFB5E0000000000000000000004452B4A2E6FAB6A
      286A067667212B43282D774E0000000000000000000000000445C93DE941CC3D
      313ED7469A32C725282D00000000000000000000000000000000010021042100
      8C2D8C2D8C318C31240800000000000000000000860843044308000001002100
      6C2D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000043042308000001002000
      6B2D00000000000000000000000000000000000000005E6BBF777D6B4B25AF29
      8E298E29AF2DAE316C2D64080000000000000000594E1E57FF4E3D2E951D0F15
      8610A7144B216C296C2D0000000000000000A904880487048704870487048700
      87008700870087008700000000000000000000008700A914B031574AD339EB1C
      4304440067000000000000000000000000009952DD7B596BD75A7111BA0DBA29
      BA29DB2D560DCC080B1D9552E81C000000000000594EFE7BD863B457B557B34B
      7C571E4B5E32F010E9180000000000000000AA04A90410421042EF3DEF3DEF3D
      CE39CE39CE39AD3587000000000000000000CA0C5B6B7B6F5B6B3B6798521642
      BA56D439C618AD3500000000000000000000D85AAC3D282D9D1E3511F4088E1D
      F404150D561599255511A810B552A61400000000594EB65F9453FB32BB2EFD2E
      5F477D4F95434E11CC08860C734A00000000CA04AA04734E524A524A31463146
      0B150B19CE39AD35870000000000000000005B6BBD77BD779C735B6B3B673446
      344699522C25AD3566006508534A000000008F6281595532D300D300F4008505
      3001F400D300F30856155515AF2D6C2D00000000594AB557B557BB2A7B325826
      392A3722581E1A1EDD3ABB36F3254A290000CB04CB04B556B556B5569452D035
      4F11EC08EF3DCE39870000000000000000007C6FDE7BFF7FBD777B6F1B631642
      F63D99524D290A21794ED139A60C0821A610F07F6931F3001501570178018C01
      A0017601CF7FF300300D94298808CF3900000000584AD863BC5FBD2E9C2E7926
      7922561A561EB71939361832582ECF350000EC04EC0418631863186332425011
      D6199315A804CE39870000000000000000000D0D9D73D7393B67B956594AD839
      B835584AFA5EFB5EDA5A955295524D290000AD7FAA7F267776019901BA010006
      0002CF7FAB7F667F49198C19F1086D2901000000594AFD775F57DD2EBC2A981E
      781E781E7922D8197A367B360D116D290000ED04ED045A6B5A6BD0315011F81D
      7642382E92154B2187000000000000000000000092257F0A1F37BB56B8359931
      B8353C671B639A52794EB335764EED4F0000734E877F647F217FC07293098172
      1C028D77877F427F207FE07A510D091D45080000594EFD7BFD32FD2ADB22B81A
      BA1EBB22BB261A1A9C36FE3A0D0900000000ED04EE045A67EC04D6197A361922
      D75A3A5F592A0D0D870400000000000000000000584ABF12DF165922DF1ADC4A
      F93D594ADA5AFB5EB956F43D1542B33501000000DD32227B207FC07E817E427A
      D01D7D0A75012663E07EA17E817EA710450C0000594ADA67FC2AFB26FB22DA1E
      DD26DD26DE2A3C1ADD3698366176000000000E050E059C735B6798423D570F09
      3967D65A9A3AD619CA0800000000000000000000DA5AFF1EBD2622484E39FF22
      FF22BE2EB935FB5EB9563746794ED539010000009F53DB01A21AA17A427E037A
      C475BF125F020E02E001A372427A027A85140000594A583F3B331C331D33FC2A
      1E2FFF2EFE2A5D1AFF36CA39427A000000000E050F09DE7BDE7BDE7B7646B74E
      5A6BF75E0D09BB429315AA080000000000000E059952DD2A004C3F33004C3F33
      1F2FFF26F93DFB5E9952D4391742164221040000FC4AFC01E422263342764566
      BC533F2F7F024902EC01C0016C66E379440C0000584E1B335D475F475F473D37
      3F3B1E331D2B7D1A1F3F60010000000000000F090F09DE7BDE7BDE7BBD779C73
      5A6B1863B556F6219A367215A904C37500005015993E3F335F3B5F3F0A495F3B
      3F373F33594AFB5E794E3746D439F53D010000000000CB3E25336A3F9C57FE73
      FF673537AD123D02EC01E701A161674D23040000594A5E439E577F537F535D43
      5E3F3C373C339C22BB36C60100000000000030093009300930090F090F090E05
      EE04ED04CB04CC04BB3E392272150D0D00005542FD3A5F3F7F479F4B9F4B4C49
      7F435F3B9A52FB5E594AD539594A1642000000000000CB2A172F32337D43D75B
      9F4F2633B0121D02DB012C422C4E8C31220400003946BF5FBF5F9E577D535B43
      5C435C3F3C3BBD2A710D2C4200000000000030093009300930090F090F090E05
      0E05ED04EC04CB0472153D57F71DCB0400003A675F3B7F47BF4FBF57BF57004C
      9F4B7F43DB5AFB5E594AB935B935B73500000000000000004A3FBB5335377147
      493B052BA8129E16D809E8018C31EB1C000000007A4AD03DDF675152DF67724E
      9F531A5B9F579D320E0500000000000000000000000000000000000000000000
      00000000000000000E0557361C53CB040000DE7BFB429F4FDF57FF63FF63F75A
      954E1D479E739E739E739E737E6F5B4A0000000000000000000000009A537C5F
      5D47174BAC2A1C021C0200000000000000000000D5311842124A183E124A1742
      544E344A9C4AB45E730100000000000000000000000000000000000000000000
      000000000000000000008D313C5F0E0900005A6BBE77196397523446984E3C57
      BF57BB42DB5ABA565746D139DA56000000000000000000000000000000000000
      00000000000000000000000000000000000000000E460E423142AC52D7320A67
      CB2E296F0F46AE4E8C3100000000000000000000000000000000000000000000
      000000000000000000000000FB5ED42100000000000000003146704EB852FB5E
      FA5E3746AD390000000000000000000000000000000000000000000000000000
      00000204040805080508680CCF45062900000000000000000000000000000000
      00000304250825082508880CAE41062900000000000000000000000000000000
      00000200030423042408680C0000000000000000000000000000000000000000
      8C318C318C318C3100000000000000000000000000000000000000000000574E
      98525B6B3B671A63FA5E784E0E218B08022500000000000000000000BF77364A
      D1396C296D296D294C25EA18A9108A08E2240000000000000000BF77F95E1042
      186339673967B556AD356408870C8A080000000000000000000000008C311863
      FF7FFF7F7B6F10428C31000000000000000000000000000000000000F53D7B6F
      9C739C735B6BF95E1863F33DBA56B4352B290000000000007B6F5B6BD4393246
      97527B6F5B6B3A67D95A9852D239C9100A210000000000000000B6561863BD77
      DE7BFF7FFF7FFF7FDE7B1863E81C870C0000000000000000000000007B6F9C73
      FF7FFF7FFF7FFF7F734E000000000000000000000000000000000000784EBD77
      DE7BBD777B6F574A764E1542BA56584A2B2900000000FE7B196311420C1D774E
      BD77BD779C733B673B67D95A584AB035EA1C0000000000001863F75E7B6FBD77
      DE7BFF7FFF7FFF7FFF7FFF7F1863A614E91C0000000000000000D55A9C739C73
      9C737B6F9C73FF7F9C738C3100000000000000000000000000000000DA5ABD77
      FF7FDE7B9C739952F63DF73DBA56F53DA618000000005C6B524A7B6FB556774E
      DE7BFF7FBD77DA5A594A3946584AB035A71400000000000031469C739C739C73
      9C737B6F9C73BD77FF7FFF7FBD778C31A6100000000000001A0E596BFF7F9C73
      9C739C739C73FF7F9C738C31000000000000000000000000B649D44174319731
      594ABB56794E794EB835B935B339FE5E000000000000B3317B6F7B6FB5563446
      9A52BA56794E794EB935B935F23D163E0000000000000000B556FF7F9C739C73
      9C739C739C739C737B6FFF7FFF7F31460000000000005B1ED3009C73FF7FFF7F
      9C739C739C739C73596B73198C31000000000000BE7B75099911B9219921D20C
      5A3A9F0EBF161D5BD83957290E25BD5A000000000000550939677B6FB5563446
      18429F0EBF0E1E4BF93D5629C814702D0100000000000000D65AFF7FDE7BBD77
      BD77BD779C739C739C73FF7FFF7FEF3D010000000000D30014019C73FF7FFF7F
      FF7F9C739C739C73B231912173190000000000001B12150DF408130915097621
      5B2ADF1ADF1EDF1EDF1EDE321942EF2004040000FA11F20CED107B6F784E3446
      9952DF1ADF1EFF1EFF1EDF263A4290314508000000000000185FFF7FFF7FDE7B
      DE7BBD77BD779C739C73DE7BDE7B2A25450800007B2236015701596B596BFF7F
      7B6FFF7FFF7F7B6F52058E1973198C310000BB3AF4001501360181013501F735
      DF22FF261F2B1F2B1F2BFF26FF22DF1E04089A36CF04D13536463746AF351942
      9952FF261F2B1F2F1F2F1F2BFF22B63545080000000000003967FF7FFF7FFF7F
      DE7BDE7BBD77BD779C73BD773967502900000000B80D5701BA017B6FFF7F596B
      972D18637B6FE71DA001870D8E198C310000560557019801D001E001C401FA5E
      1F2B3F333F373F373F373F331F2FBE2A0304110939679C731863734E784E3946
      99423F335F3B5F3B5F3B3F373F2FB33524040000000000009452FF7FFF7FFF7F
      FF7FDE7BDE7BBD779C739C73113A923100000000B80D1726B75267227B6F9C73
      F7629C73353A0002C001A00189118C3100005701BA01FA0149024702FC013B67
      3F375F3B7F437F437F435F3F5F377C360204D65A9C73DE7BFF7FFF7F94529752
      FD3A5F3F7F479F4B9F4B7F435F3B6F2D2304000000000000186318639C73FF7F
      FF7FDE7BDE7BBD77BD773967B92E000000000000DA09353A692618638C3A9C73
      DD2A9F0E3E022A02C401C40182058C31000099011702A212A616BF127F02D85A
      5F3F7F479F4B9F4F9F4F9F477F43393A010018635A6B9C73DE7BFF7FFF7F3A67
      5F3F9F4BBF53DF57BF579F4F7F434C252204000000000000D65AFF7FFF7F7B6F
      91319331F75EF75EF75E33367F43000000000000DD32FD01A92AEA3AF456EA3A
      7A433F2F7F022E060002C00186018C310000DA01A816052F2737533FB93E974A
      7F479F4FBF57DF5BDF5BBF539F4BD7390000524A18635A6B1042DE7BFF7FBD77
      534A974A5C53FF67FF63BF577F470B2122043146734E31461042FF7FFF7FFF7F
      752D1142DE7BBD7752469E5300000000000000007A438412E42A493B9F4F8E4B
      FF6B3D3FBF163E020802C001F5018C310000995304276B43B757DA67F85A534A
      D94A7D53FF5FFF67FF63DF5B9F4F94350000D546B556082131469C73DE7BFF7F
      754ED75A1A63D85A354615425842EB1C0100513E1863F75EE71C9452F75EBD77
      3967FF7F9C73524A14420000000000000000000000007A4325338E4BD45BD95F
      DF5B2633C91A5A02FD0108028C31000000000000F3266F47D95BBA57CD42F85E
      7C6F5C6BB85635461542DA4E7E4F512D000000000F32B556F75E5A6B9C73DE7B
      AE31F95E00000000D139F13912422F250000B5560819734E5A6B4A29EF3DFF7F
      734EB756B8560000000000000000000000000000000000007A434C3F78479A4F
      8E4B2633C31A3E021D028C31000000000000000000007A5370436B43052BAE12
      9A3A00000000B6569756B956FB5E7652000000000000B4429452F75E5A6BAD29
      573618460000000000000000000000000000372E0E46CD2D524A9C73BD77734E
      16320000000000000000000000000000000000000000000000007A4339373233
      2A33E722C91ADD328C3100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000E910660C670C470C270C2508
      4508650800000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000660C010021040000
      0000000000000000000000000000000000000000000000000000000000000000
      00001005EE04CD04CE04EE04F004000000000412B1313A675B6B3B671A63DA5A
      16428B10AD04000000000000000000000000000000000000FF7FFF7F18631863
      1863186318631042104210420000000000000000F33D5E6BBF7BBF77BF779F73
      DD5A08210000000000000000000000000000C71E23126105411D41154312A416
      840D2E11B131143E912DCA0CCC0454090000B8569C739C737B6F5B6BD95A534A
      F53D9952CC1CF33D0000AA0C0000000000000000000000001042FF7FFF7F1863
      1863186310421042000000000000000000009A52FF7FBD779B737B6F16423246
      D4393F678C310000000000000000000000002F365B6B3B67574A784EE2106316
      D85A7B6F7B6F3B67764E3646574AEC0400009C73DE7BDE7B9C737B6F5C6B1542
      154299529235B85A7031CC20B339EC0400000000000000000000000010421042
      1042104200000000000000000000000000001A67FE7FFF7FBD77BC7BB956F33D
      F33DFC5E9A5200000C25AA1C000000000000BD77DE7B7B6FD85A564A38464316
      9C73BD77BD771A63D85A354699520D090000D95ADE7BBE77BD77FA5EBA56F73D
      D73999529135DA5ADA5A9552B2396908C6180000104210421042104210421042
      104210421042104210421042104200000000DA5AFF7FBE77FE7FBC77FB5EB535
      9631DB5AB856BF779F777F6F36460000000016539A52DA5AD839F83DE415A416
      C71D6E2D7C6F9952F73DD739794E19160000000038461E4B7A4E3946D839B835
      B9353B671B63FB5E9A52754E764EB44E260C0000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F18631042000000009D73D831D74D374EF93D9931
      39299B73FE7F9C73D95A734E584AFF5E0000AA26BF0EDF1ABB4E50218515C71E
      C71D830536269A52B935983133227C1A000000007A429F0EBF12DF26BB529831
      B7351B63794E9A52DA5A1542B335564A260C0000FF7F00001F001F001F001F00
      000000001F001F001F0010001863104200000000BE7B1B129F025F27EE453731
      B218FF7FFF7FFD7F99529535794E1F630000F635FF221F2B1F2B3112EB104800
      C71D6006EB087C16DF1ABC42742D292543080000DA5ADF1ADF1EFF1EFF1EDF1E
      DD3EF93DBB56FB5EB9563746F53D164226080000FF7F00001F001F0000001863
      00001F001F001F001F00100018631042000000003C739F0AFF12151684319F17
      BE4AB749D929585ED7417A317B4E000000001A633F335F3B5F3B2637252FE422
      A212810E60069015FF2AFF26FF22EE1C410800009952FF261F2B1F2B1F2F1F2B
      FF26FF22B935FB5EB9563746794E164225080000FF7F000000001863FF7FFF7F
      00001F001F001F001F0010001863104200000000BA6A1F0F3812007B65218F15
      B4093C025B19DF027F236F39F245CE3900005C5F7F439F4B9F4B893F2637052F
      E422C31A810EA405772A3F371F2FA914600C1A5799423F2F3F375F375F373F37
      3F331F2B1942FB5E9A523746F53DD539250C00001863FF7FFF7FFF7FFF7FFF7F
      FF7F186300001F001F0010001863104200000000775E5F17C57FAC7BCE7FEE7F
      C97FE37F407BE041DB01605EFF0A7F430000B64E1B4BDF5FFF5FCB47893F2637
      052FE422C31A810EF1257F475F3B670C0000764EBB3A5F3B7F3F7F437F477F43
      5F3F3F37594AFB5E9A52374638461642250CFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F00001F001000186310420000DE7B564E5F2FCE3AF77F8B7B6B7B
      CF7FD27FF57FCF7FC77FC37FD5115F3B00000000CD6ED4621A63E41A6837893F
      2633052FE422620A7D53BF4F7F43C60C0000F95E5F3B7F439F4BBF4FBF539F4F
      7F475F3FBA56FB5E594AD839B535D539260CFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F00001F0010001863104200009D73573A7F3B9F3BEF7F9A2ABF43
      7F3BBF2B56210C4F677BD07FA74EFF4A00000000000000000000000000009C73
      683F2633620E3A57FF63BF57FD4201010000BE777F3F9F4BBF57DF5BDF5FDF57
      BF4F7F471C637D6FFF7FBB56B935B9354710FF7FFF7F00000000000000000000
      FF7FFF7FFF7F00001F001000186310420000BD7BFB329F47BF532F577E4BDF5B
      BF4FDF477A3EDF4F7C47D07F9F375C4A00000000000000000000000000000000
      CA47440E773EDA521B63DA5A374660010000BD77534A964A1B53FF67FF67FF5F
      BF571D475D6B5D6B5D6B5D6B3C679952CF3D1042FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7F1863104210421042186310420000BE7B123EDA46FF5BFF6BFF6FFF67
      DF579F47764ABE5B8E67FF5FFF57394E00000000000000000000000000000000
      450A7D1A00000000000000000000000000007B6FF75EF85E5B6B3B6797521542
      57467842173A3A267D1A0000000000000000000010421042FF7FFF7FFF7FFF7F
      18631042FF7FFF7FFF7FFF7FFF7F104200001863BE7B5B6B7552913950315646
      7D533E475A6F7D73584E9339173E354A00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001926
      583E37461B160000000000000000000000000000000010421863186318631863
      1863186318631863186318631863FF7F0000000000000000000018633A673C67
      B9561946524A0000000000005A6BDE7B00000000000000000000000000000000
      6508A70C000000000000000000000000000000002C15C810EA14E91000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004E19E910860CC810C70CA70C4304
      430485088608A70CC90CE910305206296B2D000000000000000000000000C718
      C620C7188514640C000000000000000000006E1DE324A4148410A5148410A614
      C61C00000000000000000000000000000000000000000000000000008410A618
      C61CC71885140000000000000000000000000412E611E611E611E611C60DE611
      690D1005F004F004F004F004F00410050225000000000000000000002B25631C
      A61CAC39A61CA718C714640C000000000000A80CA959076E246E406264356310
      420CE61C6414A614C7140000000000000000000000000000246A215A252D8510
      640CE71C8514A714C714640C240000000000E71EC416810A41360222A416A416
      A411D911B80DB80DB80DB80DB80D960DCE390000000000000000EA5D6318A428
      C5306A397152AD3DC720C7148D318E2D0000E71C8955E869076E07722776467A
      43720156242DA514430C640C4B290000000000000000E865A859AD3DBE777D6F
      964E8D2DA610A710850C850C4B258E293146E71E041E5C0ECF4AA15A2326A416
      CA0D5B1AFB11FB11FB11FB11FB11D80DAD35000000000000304E6418E634C530
      C530C5342835B97772528C398618C81448256931A959C865E869076E07722776
      467A467E667E657E626EE24D430C000000000000A959884DF43D7A4E9E733C67
      BA569A529A529A523B63F139A710A8102821E71E0222DB0EAC2EE83FE129A416
      C8119D1E5D165D165D165D165D161A12E61C00000000E47DC71C84240739D176
      C534C530C530E730D97F1567504EC720840C4531A85DC861C865E869076E0772
      2776467A467E667E667E616E282900000000452D48411842F83D19427D6F3C67
      BA5660029A529A529A529A529A523B67A610082382124279A37C2212841AA416
      A70DFF269E1A9E1A9E1A9E1A9E1A5C16840C0000366F2C15C530E538E534E534
      B06E0639C530C430A528D97B566B4839640C252DC85DA95DC861C865E869076E
      07722776467A467E667E616ECB39000000002829F83DF83D004CF83D3C673C67
      BA569A5262069A529A529A52DB5ADF7B860C28236A2BAC376B2FCD37AC332823
      C9117F337F337F379F377F379F379E1A850C000065498324C53406412745063D
      C53412736845A428C53084280E46A84900008445E8658959A95DC861C865E869
      076E07722776467A467E616E072500000000794EF83DF83D5041F83DDB5A5D6B
      DB5A9A529952691E9A529A521C6394526308D300D300D300D300D300D300D300
      D300D300D300D300D3001442000000000000AE398324E530C534064148514855
      284DE63CCA516E66A430C534A6208E310000A545086A68452735E620473DC861
      E869076E07722776467A616E431000000000FB5E6448EC44EC44F83D9A525D6B
      DB5A9A529A52903690369A525D6B0A1D4108FF7FBF77FF7FBE73BE73BF77FF7F
      523E340D38327A42F4001442000000000000831CA428D1726945C53827494855
      48510745C53469456E66A524AD7600000000265EA851A85DA85DA85DA85DA85D
      6B66473D06256641E765416A26312A250000AF623946F73D4448F83D39467D6F
      DB5A9A529A52681A60029A529E73091D800CFF7FFF7FFF7B9E6FBE73DF77FF7F
      5609560556055609560514420000000000008420C530A42C0D5A4E62C5380641
      0745E63CC530A42C07312672000000000000465E2739E865E865E865E865E865
      8F7F8F7FE865E865E865E865850C101900000000BA5672414448F83D18425D6B
      FB5E9A529A529A529A52DB5AB6560F19A114FF7FFF7FBE739E6BBE73FF7FFF7F
      D44A1722B811D915980935460000000000000000E72CC534A42CAA4DB06EC534
      E534C5342D5A8949146F0000000000000000A86EE724AF72076E076E076E076E
      076E076E076E076E076E076E84088B1900000000524AF841F83DF83D7D6FDB5A
      9A527A4E39467A4E5D6BDF7BC8146B1900002A7F2A7F2A7F2A7F2A7FE57EB87F
      DA0DDA0DDA0DDA0DDA0DF85E00000000000000000000092DC534C5342741D06E
      A430C534A52C7A73000000000000000000006641C75D27762776CD7A757FFA7F
      947FEE7A4876277627762776C1048205000000000000BB569E733C671C63B901
      990199017A4E594A3946F145C20482050000D77FFD7FFF7FBE73DF77FF7FFF7F
      5A261B123C1A1B121B128D350000000000000000000000001246C534C534E634
      B072273D25220C6B000000000000000000000000000000002A25E258A518E624
      6645C569467ECA7E2D7F7073800100000000000000007E67CF398A5511429652
      FA5E3152086A8A760D7B4F73800100000000DD77FE7B9E6F9E6FBE73FF7FFF7F
      F8425D16FE3ABD2E5D16AC5A0000000000000000000000000000195FC530C530
      A42CB0464A3F00000000000000000000000000000000000011424369E528C618
      A5146040A4206E3E0000000000000000000000000000000011424369E528C618
      A5146140A420000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      BC2A7E1A7E1A7E1A7E1A471A00000000000000000000000000000000DF7BC52C
      534E925A000000000000000000000000000000000000000010426A6663694365
      025DC250C524EE3E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B16485E3C163C163B163C163C16
      3B161B161B165D1A761EC31E000000000000000000000000000000002C158508
      8608C80CA70CC90C0B1100000000000000000000000000000A15E9100C156408
      8508C80C000000000000000000000000000000000000000000000000C80C0000
      0000A70C00000000000000000000000000000000000000000000000000006408
      8508A70CA70CC9100B1100000000000000000000000000008345A6142925C618
      850CC7149652650C43048708211000000000000084454239CE39A514A514B756
      840C43081242650C000000000000000000000000000000004A292925C6180821
      A6149652C6182204430000000000000000000000000000004A292925C618E81C
      C618D039C618640C430487080000000000000000CF048C04C618BD77BD77D65A
      B756AF35EF3D5A6BDE7BE81C4500CD080000AC042921FF7F9C73F75E4C296B2D
      F75E9C738C31CE3900000000000000000000000009210821BD77BD77D65AB756
      AF35EF3D5A6BDE7B6B2D6308240000000000000000000821186332464C290A1D
      C8186941E818C814E81C640C2400CD0800000000CD391863DE7BBD779C73B556
      D65AAD356B2DEF3D734E1863FF7FAF2D00007B6FFF7FFF7F9452734E1863B556
      31468D31524A292500000000000000000000AD351863DE7BBD779C73B556D65A
      AD356B2DEF3D734E1863FF7F734E00000000000000009C7350520B62EE5DB43D
      1A3A7B42574EA95587084C25CE358E2D314600005A6BDE7BBD779C73CE39EF3D
      9452D65AD65AD65A524AC618EF3DD1310000BD77B55694525A6B734E1042EF3D
      B55617636E424A294A298410AD35D13100005A6BDE7BBD779C73CE39EF3D9452
      D65AD65AD65A524AC618EF3D2925000000000000DE7BCE7A30525F537F5B9F63
      BF677A3E3A2EBF6B837D870C860C2B214825000039679C73CE3939675A6B734E
      94521042CE399452F75E8E42CE39D12D0000D65ABD775A6B9C7339679C735A6B
      18633246B5567B6F9C7318638C31C714A21039679C73CE3939675A6B734E9452
      1042CE399452F75E8E42CE3908210000000000007B6FE47DDD4A5F579F63DF6B
      FD523A2E7F57DF77FF7FD17E8A41660884100000CE399C737B6F5A6B7B6F9C73
      BD777B6FD65AD65A524A8C31EF3DD12D0000BD777B6F7B6F5A6BFF7FBD777B6F
      18635A6BBD77FF7FFF7FFF7FFF7F94524108CE399C737B6F5A6B7B6F9C73BD77
      7B6FD65AD65A524A8C31EF3DD65A0000000000003673BF1ABF677F63DF77FF7B
      DA5A3A2E9F63FF7FFF7BFF7F997F8B7A640C00009C737B6F5A6B39675A6BBD77
      BD77F75EF75E9C739C733967314634360000786F734E596B524A9452B656F75E
      3967BD779C737B6F7B6FBD77FF7FBD7720009C737B6F5A6B39675A6BBD77BD77
      F75EF75E9C739C73396731461863000000009C73667E5B2EDF73FF7BFF7F1D53
      7C36FD52DF73FF7FFF7FFF7F8937EA554204000031465A6B5A6BD65A5A6BDE7B
      BD77BD77BD779C737B6FB5566B2DFC4A0000000031461F573F5F7F677D6B9B73
      D65AFF7FBD77BD779C739C73BD77FF7F200431465A6B5A6BD65A5A6BDE7BBD77
      BD77BD779C737B6FB5564A29F75E000000003146607FBE6BBF6BFF7FFF7FDA5A
      3A2E7F5BFF7FFF7FFF7FFF7F221BAF314104000000003767BD77BD77B556F75E
      B556314694529C73D65AEF3D9B770000000000005A6FBF639F5F9F5F9F632B25
      3967FF7FDE7BDE7BBD779C739C73DE7B600C0000F65EBD77BD77B556F75EB556
      314694529C73D65AEF3998215419AD35000054772332FF7FFF7FFF7F1D533A2E
      7C369F63DF73FF7FFF7F117FEF7E4B29600C000000000000D75ADF521F5F9F6F
      BD775A6B5A6BAD35596B000000000000000000009652DF6FBF6BBF6BFF6FF13D
      5A6BFF7FFF7FDE7BDE7BBD779C739452E11800000000D75ADF521F5F9F6FBD77
      5A6B5A6B0B19340584011501F4045319A114A976153BFF7FFF7FFF7FD27E2D6A
      9F67FF7BFF7FFF7FFF7F677EAA083219000000000000000035467F5B7F5B7F5B
      7F5B5F5B4C29BB7700000000000000000000FC7FD956FF77DF77DF777D6BFB4E
      18635A6BFF7FFF7FFF7FDE7BBD773532000000000000574A7F5B7F5B7F5B7F5B
      5F5BCC109901EF010002B9016E018C19A414457E5B67AE7ED5665E5B7F5B7F5B
      E67DFF7FFF7FFF7F977FEB7E0B098C19000000000000000057469F679F679F67
      9F679F67AD2D000000000000000000000000F85A1A633B677D6F9D73DA525D5F
      F85EFF7FDD7B182138675A6B103EFE3A00000000000057469F679F679F679F67
      9F67EE006806A50E7D023A02E0018205E71CD366195F57469F63000000000000
      00002D19EE7EFF7FC97E6E19C105820500000000000076017E67BF6FBF6FBF6F
      BF6F7E67320100000000000000000000000000000000000000000000F856524A
      6C297B6FFF7FB656FF7F744A6E2D00000000000000007E67BF6FBF6FBF6FBF6F
      7E67B8010427483B793FBF0E2002C001EF3D0000000000000000000000000000
      0000000000000C6BEA7E7D1220020000000000000000B51DDF77DF77DF77DF77
      DF77F439FA0900000000000000000000000000000000000000000000D65A5346
      5A6BE91CFF7F9219000000000000000000000000D621DF77DF77DF77DF77DF77
      1442D2364A3FD65FD75BE9221B02EE0100000000000000000000000000000000
      00000000000000000000000000000000000000003B169D6FFF7FFF7FFF7FFF7F
      FF7FC1550000000000000000000000000000000000000000000000009D73F75E
      DF7BB25A921900000000000000000000000000009D6FFF7FFF7FFF7FFF7FFF7F
      BD7700003743914B6B43C31E5B16000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000004D19C80C
      8608C9100B112C1500000000000000000000901D2C15C8102B194D192D15C80C
      8608C80CEA10EA100B112C15D56A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000006B2D734E
      5E6B3446C614C614123A0000000000000000901DA54D636EA44D2A214A29103E
      7115550996151109A908A9082110803900006F1D844523668345091D2925CF35
      501133097515EF08A808A8082110603543310000000000000000000000000000
      0000000083108C29000000000000000000000000000000000000000031461042
      C61812423F678410F1350000000000000000AD29656AE4598472C4510821FB0D
      36118F1D150D561599219721C514E441FF7FCF04CF04CF04CF04CF04CF04CF04
      CF04CF04CF04CF04CF04CF04CF04110D524A000000000000000000002A210E3E
      E639214221424146802D8035E345000000000000000000000000000094523146
      6C2DCF398C31A314602D0000000000000000AE29866A0856E6694862B319D300
      140166051201F400D300361175198420DE7BFC7FFC7FFC7FFC7FFC7FFC7FFC7F
      FC7FFC7FFC7FFC7FFC7FFC7FFC7FFB5232460000195F8E4E02464046604EA052
      8052A1524046814E4046003EC0356129B15600000000000000000000D65A3146
      29256B2D2925C31820420000000000000000B1218766893100004C42AC295701
      7801C601C0017701360112019121850C4F4AFC7FBB77BB77BB7BDD7B5D5BEC65
      6B4DBC777D5F9B73BB7BBB77BB7BFB4E6929C056C05AC052824A8B329226FA32
      761AE07F2163616B816F41462042A031432900000000000000000000D65A524A
      AD35EF3D2925E31C61670000000000000000814EC44184310000181EA21CBA01
      DB012002F101DA01AA0182018911CD042421FC7FBB77BB7BDC7BA050AF49C972
      C96E913DA0589F5BBB7BBB7BBB7BFC4EA210D42EFC327E4BBF5B9E577D531B3B
      3E3FE577A16FA173616F2025E01C4046021D00000000000000000000F75EF75E
      EF3D6B2D2925E31C41670000000000000000E93DA476753A0000FA11BA013002
      5B0279025F023D020302C00184012F05E318FC7FBB7BBB7BDF67D07FAA6E2C7B
      2A7B666A447F3F3F9C6FBB77BB7BFC4E820CEA3E9F571B3B3C439E533B3F9E57
      BF5B712E606B416BE039602D40462042E118000000000000000000001863F75E
      4737893F2A3FE31CC0350000000000000000636E863D8D21D83A7A22FC01C31A
      E626112F1F2B7F063B02E201A0012E09E214FC7FBB7BDC7BC050696A4D7B2B7B
      EA722977A76EE054DF6FBB7BBB7BFC4A810C806F94269F57BF5B7E4F38439163
      6667A035816BE17BC17B616BE15A6029E018000000000000000000001863F75E
      89432637893FE31CA1770000000000000000225EE37964456D255B5B8B12252F
      6F3F6B43BF57FF1E5D020C02C0010611E118FC7FBB7BBC7B907F6F7F2B7B7E6F
      C9144472E472E176BE77BB7BBB7B1D4B800C4163A25220428031A0310042C15A
      E27FE27FE1774167E17FE17F8031A0142125000000000000000000003967F75E
      EC4B683B2637E318C17B0000000000000000A0726176E379A15104214E3B483B
      B253FC67BC570E275702DB013106A1102121FC7FBB7BBC7BDC7BEA612A7B7C6F
      C814897F656ABE6FBC7BBB7BBC7B1D4BA014E15AA173E27FE47FE87FEE7FF27F
      F67FF67FF07FE056E17BE1774167814EA331000000000000000000005A6BF75E
      2A33893F052BC318A17700000000000000000C6F487FA17EE169A7565A6B7743
      3837974B4A3FE4263D025A12C256814E0000FC7FBC7BBC7BBC7B937B4C7BF95E
      85108F7F2A77BC7BBC7BBC7BBC7B1E4BE11C614A616BF27FF77FF17FF07FF07B
      EC7BEC7B836B005BA152E15A814E41463563000000000000000000007B6FF75E
      EF3D1042CE39C318814E00000000000000000252887F467F25314B4A18639452
      944E394F1C33723E473EC156814E00000000FC7FBC7BBC7BBC7BBC7BDD7B3A5F
      8B31FD7FBC7BBC7BBC7BBC7BDC7B1E4BCC39CB2D015B025F2563045F025FE15A
      C152C156814E614A41464246244609190000000000000000000000007B6FD65A
      CE391042524AE31C41460000000000000000CA29E355AC7F017B04296C2DA151
      052D2A291042E31C000000000000000000007B6B5B5F5B5F5B5F5B5F5B5F5B5F
      5B5F5B5F5B5F5B5F5B5F5B5F5B5FFE3A524A0000756F684E8C52D05AF25E1567
      576B0000000000000000000000000000000000000000000000000000CD394408
      28253046B4567A73000000000000000000000000556BE355AF7F427F436AE05D
      E37944414A29386B000000000000000000007701760176017601760176017601
      7601760176017601D80DF9156F2D1B0AB5560000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F425C718
      2D11000000000000000000000000000000000000000016220656FB7F447F017F
      216AE3794631F521000000000000000000001B0E1C0E1C0E1C0E1B0A1C0E1C0E
      1C0E1C0E1B0AFB05FB05FB011C06D809FF7F0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000191AC718
      D70D000000000000000000000000000000000000000000003C12F03503568A7F
      257F216A94117D26000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000005F675A4E
      503DE938C540C434274DCC55D56AFF7F000000000000BD77396739673E630000
      000000000000000000000000000000000000901D901D6F194E194E194D192D15
      2C152C152C152C152C152C15000048358C3100002D15E9102D15000000000000
      0000000000000000000000000000000000000000000000009C4E381DA150A150
      C350A24C40244849805061486040603800000000FF7F8E2DCE3913526228A14C
      000000000000000000000000000000000000911DF952D84EB74A95467442543E
      333AAF2DAE2DD031123A2C150014803D633500000D4A345A2A21333E00000000
      000000000000000000000000000000000000000000007525D20C9008C45CCC69
      ED6D2669AC59EB798238C364A258604000000000FF7F0C1DEA7EC7653452E730
      CC6900000000000000000000000000000000B11D1A5BF952D84EB64A95465442
      533E840C640C8D29123A601CC141244E000000000A7FE76D13562A2154420000
      00000000000000000000000000000000000000009529B10C90089008AA300E72
      EE6DA438717E0D768A59A368A25880440000FF7F73256C08E9200A7FC7653452
      0835A4380000000000000000000000000000B11D3B5F1A5BF956D852B74A9546
      5442AE2D0000CF314018E045E3490000000000003A5F0B7F067233562B21533E
      0000000000000000000000000000000000005D6BB10CB10CD10CD210F2106449
      056D6341A96AA6726141A1388050F5180000F504190D5C199E25502D0A7FC765
      3556E228485AE54D01318130805000000000B2215C675B633A5B563673113205
      B31DC7148D2D8A392031A23D00000000000000005B63395F0A7F06721256CB04
      2E15640CC718E620002DA23D804CF41800001419D20CF3101415551D731DA109
      4035507B507BE976426A025E670C06019D6F18097D21BF2DFF31BB21F03D0A7F
      0D566F25D335DA4A3C5BF339650805010000D2219D6B5C5F11017409D511B411
      D61132013009007F6A562C150000000000000000F208F208F208AA72524A1442
      5E57FF6FFF6F3C5FA910F008120985040000D30C14113519771D9825D01D2104
      2D7B727B527B0C7B666E055E423980001432D400BF291F325F3A9C3A5F537625
      F339DD4AFF67FF6BFF6FFF773C6340001332D321BE7311013A1A7B1E8604A808
      171A5A1A7409510D333E2C150000000000000000FB7FDB7FDB7FDC7BB756BF5B
      FF63FF6FFF77FF7F9E6F8C35FC7F23000000361557197821BA258D220309A514
      CC6E517B507BEA76676E265E44350000290D131139113F3A370D1F4B3F4B5715
      7946FF67DF5FFF6FFF77FF7FFF7BF539080DD3211101181A9B2ABB2E86086F15
      161AF5155B1A3201333E2C150000000000000000DB7FF662F55EF55ED94EF852
      1857395F39635A6BBC67B0359977CA100000991DBA25FB2D0C1F870B850CE71C
      C8412E7B0C7BC976A9728966611000004505981D52196B00203481402034F00C
      5E5B9F57BF5FFF6BFF77FF77FF6F5D5BC304D3211101BC32FC3EFD42A60C352A
      0000F4195B1AD711921D2C150000000000000000DB7F9A779A77386B7D5BD94A
      1953595B59637A637B63974678732D1D0000FA253C36F3324907E9036715C618
      E71C87398410420800006539000000008C19870821040000E25002550251842C
      7E5F7F57BF5BFF67FF6BFF6FFF6B5D570711D3211101FD423D535E57A6103436
      4204792A7B1E5A1A32052D150000000000000000DB7FBB7BBB7BBB7B7D5BBF63
      9F5BFF63FF6BFF6BFF67143ADB7F4D1D000000009452734E524A524A93238410
      8C311042EF3D2925210400000000A000B94E4208630CE244635D636163612351
      DB4EFF77BF679F5BBF5FDF5FFF6758425542D32111013D535C5B9D6700002104
      4C21DC369B26191672114D190000000000000000DC7F1663F6621663964E7A6F
      5A671B531B4F5C577D5B1042FD7FEC1400000000F75E425CC650734EF83BAF26
      E71C1042CE392925210400000000A101FF7F8410A514434DC46DE571C56DA469
      0B21DF77FF7F9F5F7F53DF635F57A204DF7BD32111015D5753463963DF779E67
      3D53DC3A9B2A740935364E190000000000000000DC7F3767376737671767974E
      9C6BBD639D5F7D5BF33D796FFD7F65000000000029759472636C1052F94BDF77
      D95685108410630C0000C100C002383A0000A514E71C400C667E667E667E257A
      6A35E918BA4E9E5B7F5BFD520205F6350000D321362E941500005B6BBE739E67
      3D4FDC3A7A221101F85A6E190000000000000000DC7FDC7BDC7BDC7BDC7BDC7B
      F95E35469852396BDC7BBC7BFC7FCC1000000000DE7B9C73186B636C765BDF6B
      D747EC2BEF1F1F1A7F05FB00AE1100000000210429254A29630C813043694351
      1337CB272C1B76111601B700AE0D00000000D321FF7FED085011D8529E675E5B
      1D47592611011A5F19636F190000000000000000FC7F586F586F586F586F586F
      596F596F796F7A739A739A73FD7F8F290000A514000000000000D6724B65D233
      AB2B6B2FCA27FF195E05BB1D000000000000630C0821AD353146F75EAD352104
      6A2B00000000000000000000000000000000D321FF7F0000362E110111011101
      110111019C737B6B5A67901D0000000000000000372617221722172217221722
      1722172217221722172217223826AF2900000000000000000000BF6FF06D5E4B
      932334233D1EFE257E670000000000000000FF7FF75E630CEF3D6B2D2104FA42
      000000000000000000000000000000000000D321D321D321D321D321D321D321
      D321B221B121B11D911D901D00000000000000003B163C123C123C163C123C12
      3C121C0E1C0E9E265D163B1E153A33420000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FFFFFFF801E007000FFFFFE0018003
      0003FFFFC00180030003C01F80018003000380070001C003000100010000C007
      000100000000E007000000000000C007000000000000C003000000010000C003
      000000C70000C003000100FF0000C0030001E0FF0001C003C003E3FF8003C007
      F803FFFFC007E007FC07FFFFF00FF01FFC7F03FF87FF0000F01F001F03870000
      C007000101030000000100000001000000010000000000000001000000000001
      000000008000000100000000E000000100000000F000000100000000E0000001
      00000000E001000100008000E08300010000C001E0FF0001E000E003C1FF0001
      E000F007C3FF0001F800F81FFFFF000103C0C003F01FFFFF03C0C003C003FFFF
      03C0C0038001FC7F0000E0078003F01F0000C003E007800700008003E0030001
      02008001E001000002008001E0010000F00C8001E0018000F80F80018001F800
      FC1F80018000F003FC1F80010003C00FFC1F80030003803FF81FC007000381FF
      F81FE00F8003FFFFFC1FF81F807FFFFFC0FFF00FFFFFC000003FC0079FFFC000
      003F800387FF0000001C8003E03F000000308003F80F000000008003F0070000
      80018003F00300000003C007F00100000007F83FF0010000000FF83FF8010000
      001FF83FF8010000003FF81FFC010000003FF01FFE010003003FF01FFF010003
      003FF01FFF810003F03FF83FFFE30007F8FFF01FF01F83FFF03FF00FE00F003F
      E01FE00FE007000F0001E00FE007000F0001E00FE007000F0001C007E007000F
      0001C007E00700070001C007E00700000001C007E00700000001C007E0070000
      0001C003E00700080001C003E007000F00018003E007000FE00F8003E007000F
      F01F8003E007000FFC3F0043E007E00FF00F80FFFFFFC0FFC007800F000F803F
      0003800F000F001F00018003000F000300018001000F000000008001000F0000
      00008001000F800000008003000F800080008003000F80008000800300070000
      8000800700010000C000800700010000C000800700010000E001800FFFE10000
      F80F800FFFF10003FFFF800FFFF9E03FFE01FC01FC07FE1FFC00F800F001F80F
      F800E000F001F80FF800C000E000F007F800C000E000E007E001C000E000C003
      8001C000E000C00380008000E000800100000000E001800100000000E0018001
      00000000E003800100000000E0038001000000000007800100000000000FC003
      80008060003FE007C0C0C07F00FFF00FFFFF807FF00FE0FFFF03003FE007807F
      00010017E007003F00010001F81F000700010000800100010001800080008000
      0001800080008001000080008000800300008000800080010000000080008000
      00010000000000018001000000000001FC01000000000001FE01000000000001
      FE7F000F80000001FFFFFC3FC000F039FE7F87FFFFFF0000FC1F00FFF83F0000
      F807000FE0030000F0010003C0000000E000000380000000C000000300000000
      8000000300000000800100030000000700010003000000070003000100000007
      0007000180000007800F000180010007C01F0001C0010007E01FE003C0030007
      F03FE01FE03F0007F87FE01FFFFF0007F80FE07FFB7FFC0FE003801FE00FE007
      8001001F8003C0018001001F0003C00080010001000380008001000000038000
      800100000003800080010000000300008001800000030000C003800080010000
      E00F8000C0000001E01F0001C0000001E03F0001C0000F01C03FF803C000FFC3
      C03FF81F8001FFFF807FF83F8083FFFFFFFFF81F0003FFFFFFFFF80F00010000
      FF9FF80F00000000F803F80F000000008000F80F100000000000F80F10000000
      0000F80F100000000000F80F000000000000F80F000000000000F80F00000000
      0000F80F000100000000F80F000300000001F80F001F000080FFF81F801F0000
      FFFFF8FFC01F0000FFFFF8FFE01FFFFFF801C3FF00048FFFE00181FF000087FF
      C00180FF000183FF8001007F000381FF00010003000780010000000100078001
      0000000000078001000000000007800100000000000780010000000000078001
      0000000000078001000000000007800100010001000780010003000300078001
      000700FF00078001F00F01FF0007800100000000000000000000000000000000
      000000000000}
  end
  object sdqReporte: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      
        'SELECT OI_FECHA FECHA, TO_DESCRIPCION OPERACION, OI_FECHACUSTODI' +
        'A LIQUIDA, IN_CODCAJAVALORES COD_CAJA_VALORES,'
      
        '         IN_DESCRIPCION DENOMINACION, OI_IMPORTENOMINAL V_NOMINA' +
        'L, OI_PRECIO PRECIO, OI_MONTO MONTO'
      
        '    FROM NOI_OPERACIONINSTRUMENTO, NIN_INSTRUMENTO, NTO_TIPOOPER' +
        'ACION'
      '   WHERE IN_ID = OI_IDINSTRUMENTO'
      '     AND TO_ID = OI_IDTIPOOPERACION'
      '     AND TO_SIGNO = 1'
      '     AND OI_FECHABAJA IS NULL'
      '     AND IN_FECHABAJA IS NULL'
      '     AND IN_IDTIPOINSTRUMENTO = :TIPO'
      '     AND OI_FECHA BETWEEN :DESDE AND :HASTA'
      '   ORDER BY FECHA'
      '')
    Left = 47
    Top = 263
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'HASTA'
        ParamType = ptInput
      end>
  end
end
