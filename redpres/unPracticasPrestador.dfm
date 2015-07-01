object frmPracticasPrestador: TfrmPracticasPrestador
  Left = 523
  Top = 250
  Caption = 'Pr'#225'cticas del Prestador'
  ClientHeight = 315
  ClientWidth = 807
  Color = clBtnFace
  Constraints.MinHeight = 249
  Constraints.MinWidth = 509
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFiltros: TPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 54
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 581
    DesignSize = (
      807
      54)
    object Label1: TLabel
      Left = 22
      Top = 10
      Width = 48
      Height = 13
      Caption = 'Prestador:'
    end
    object Label2: TLabel
      Left = 4
      Top = 32
      Width = 66
      Height = 13
      Caption = 'Nomenclador:'
    end
    inline fraNomenclador: TfraNomenclador
      Left = 73
      Top = 29
      Width = 730
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      PopupMenu = fraNomenclador.PopupMenu
      TabOrder = 0
      ExplicitLeft = 73
      ExplicitTop = 29
      ExplicitWidth = 504
      ExplicitHeight = 21
      inherited cmbDescripcion: TLookupComboDlg
        Width = 615
        Color = clBtnFace
        ReadOnly = True
        ExplicitWidth = 389
      end
      inherited edNomenclador: TPatternEdit
        Color = clBtnFace
        ReadOnly = True
      end
      inherited edCapitulo: TPatternEdit
        Color = clBtnFace
        ReadOnly = True
      end
      inherited edCodigo: TPatternEdit
        Color = clBtnFace
        ReadOnly = True
      end
      inherited ImageList: TImageList
        Bitmap = {
          494C0101020004001C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
          0000000000003600000028000000400000001000000001002000000000000010
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000808080000000000080808000000
          0000000000000808080000000000080808000000000000000000080808000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002942420000000000000000000000
          00000000000000000000000000000000000084848400CECECE00CECECE00CECE
          CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
          CE00080808000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000018180000FFFF0063A5A50031525200000000000000
          00000000000000000000000000000000000084848400FFFFFF009CFFFF00FF00
          0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A5A5A0000FFFF0000ADAD0000F7F70000A5A500183131000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000073730000A5A50000FFFF0000DEDE0000D6D600A5BDBD000018
          18000000000000000000000000000000000084848400FFFFFF00FFFFFF00FF00
          0000FF000000FFFFFF00FF000000FF000000FF000000FF000000FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003939390000CECE0000F7F70000DEDE0000CECE0000F7F70010B5B50000E7
          E700294A4A0000000000000000000000000084848400FFFFFF009CFFFF00FFFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000031310000EFEF0000CECE0000D6D60000EFEF0000C6C60010FFFF004AC6
          C60063BDBD0031525200000000000000000084848400FFFFFF00FFFFFF00FF63
          3100FF633100FFFFFF00FF633100FF633100FF633100FF633100FFFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000BDA5
          A500005252006BD6D60000DEDE0000FFFF0000BDBD0010FFFF005AB5B50000EF
          EF0000E7E70018CECE00212121000000000084848400FFFFFF00FFFFFF009CFF
          FF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF009CFFFF00FFFFFF00CECE
          CE00080808000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008C00
          0000A54A0000004242009CCECE000094940000FFFF0052BDBD0000F7F70000F7
          F7007BDEDE00005A5A00212121000000000084848400FFFFFF009CCECE009CCE
          CE009CFFFF00FFFFFF009CFFFF009CCECE00000000009CCECE009CFFFF00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BD9C9C00FFFF
          0000F7F731008C4A4A001042420000FFFF0039CECE0000E7E70018DEDE0010B5
          B5000031310039393900000000000000000084848400FFFFFF00003100000031
          00009CCECE00FFFFFF009CCECE00003100009CCECE00000000009CCECE00CECE
          CE00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BD9C9C00FFFF
          0000B5B58C00C69473007B310000004A4A0029C6C60031848400004242005252
          52000000000000000000000000000000000084848400FFFFFF00639C9C00CEFF
          FF00003100009CCECE00003100009CCECE00316363009CCECE00000000000000
          0000080808000000000008080800000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C6BDBD00B5631000FFFF
          F700BDADAD008473000084000000942121002121210021212100000000000000
          00000000000000000000000000000000000084848400FFFFFF00FFFFFF00639C
          9C00CEFFFF00003100009CCECE00316363009CCECE0031636300639C9C00639C
          9C00639C9C0000000000FF633100FF6331000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000C6841000FFFFE7008C8C
          2100B5848400C6B5B500C6B5B500000000000000000000000000000000000000
          0000000000000000000000000000000000008484840084848400848484008484
          8400639C9C00CEFFFF00003100009CCECE00316363009CCECE009CCECE009CCE
          CE00639C9C00639C9C00FF9C3100FF9C31000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000094393900F7F76B009C843900AD84
          7B00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000639C9C00CEFFFF0000310000CEFFFF00CEFFFF009CCECE009CCE
          CE009CCECE009CCECE00FFCE3100FFCE31000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000943939007B7B0000AD6B6B000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000639C9C00FFFFFF00FFFFFF00CEFFFF00CEFFFF00CEFF
          FF00CEFFFF00639C9C00FFFF9C00FFFF9C000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000639C9C00639C9C00639C9C00639C9C00639C
          9C00639C9C00FFFFFF00FF633100FF6331000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000424D3E000000000000003E000000
          2800000040000000100000000100010000000000800000000000000000000000
          000000000000000000000000FFFFFF00FFFF000700000000FE7F000700000000
          FC3F000700000000F81F000700000000F80F000700000000F007000700000000
          F003000700000000E001000700000000E001000700000000C003000700000000
          C00F000000000000803F00000000000081FF0000000000000FFFF80000000000
          1FFFFC0000000000FFFFFE000000000000000000000000000000000000000000
          000000000000}
      end
    end
    object edPrestador: TEdit
      Left = 73
      Top = 4
      Width = 729
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
      ExplicitWidth = 503
    end
  end
  object pnlBotones: TPanel
    Left = 0
    Top = 278
    Width = 807
    Height = 37
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 222
    ExplicitWidth = 581
    DesignSize = (
      807
      37)
    object btnCancelar: TBitBtn
      Left = 718
      Top = 7
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      ExplicitLeft = 492
    end
    object btnAceptar: TBitBtn
      Left = 627
      Top = 7
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
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
      ModalResult = 1
      NumGlyphs = 2
      TabOrder = 0
      OnClick = btnAceptarClick
      ExplicitLeft = 401
    end
  end
  object lvPracticas: TListView
    Left = 0
    Top = 54
    Width = 807
    Height = 224
    Align = alClient
    Checkboxes = True
    Columns = <
      item
        AutoSize = True
        Caption = 'Descripci'#243'n'
      end
      item
        Alignment = taCenter
        Caption = 'Tope'
      end
      item
        Alignment = taCenter
        Caption = 'Excluyente'
        Width = 70
      end
      item
        AutoSize = True
        Caption = 'Observaci'#243'n'
      end
      item
        Caption = 'ID'
        MaxWidth = -1
        MinWidth = -1
        Width = -1
        WidthType = (
          -1)
      end
      item
        Caption = 'ESPRACTICA'
        MaxWidth = -1
        MinWidth = -1
        Width = -1
        WidthType = (
          -1)
      end
      item
        Caption = 'Fecha '#218'ltimo Movim.'
        Width = 120
      end>
    IconOptions.WrapText = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
  end
  object FormStorage1: TFormStorage
    UseRegistry = True
    StoredValues = <>
    Left = 72
    Top = 104
  end
end
