object frmLibroSubDiarioIVACompras: TfrmLibroSubDiarioIVACompras
  Left = 216
  Top = 222
  Width = 228
  Height = 120
  BorderIcons = []
  Caption = 'Libro Subdiario IVA Compras'
  Color = clBtnFace
  Constraints.MaxHeight = 120
  Constraints.MaxWidth = 228
  Constraints.MinHeight = 120
  Constraints.MinWidth = 228
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbPediodo: TLabel
    Left = 16
    Top = 25
    Width = 123
    Height = 13
    Caption = 'Periodo del libro Subdiario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnAceptar: TButton
    Left = 60
    Top = 59
    Width = 69
    Height = 25
    Caption = '&Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 129
    Top = 59
    Width = 75
    Height = 25
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object edPeriodo: TPeriodoPicker
    Left = 153
    Top = 21
    Width = 49
    Height = 21
    TabOrder = 0
    Color = clWindow
    Periodo.AllowNull = True
    Periodo.Orden = poAnoMes
    Periodo.Separador = #0
    Periodo.Mes = 0
    Periodo.Ano = 0
    Periodo.MaxPeriodo = '205310'
    Periodo.MinPeriodo = '195310'
    WidthMes = 19
    Separation = 0
    ShowButton = False
    ShowOrder = poAnoMes
    ReadOnly = False
    Enabled = True
    Fuente.Charset = DEFAULT_CHARSET
    Fuente.Color = clWindowText
    Fuente.Height = -11
    Fuente.Name = 'Tahoma'
    Fuente.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NullDropDown = SetMax
  end
end