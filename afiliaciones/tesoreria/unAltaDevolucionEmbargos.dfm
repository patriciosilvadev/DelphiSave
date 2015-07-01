object frmAltaDevolucionEmbargos: TfrmAltaDevolucionEmbargos
  Left = 325
  Top = 181
  ActiveControl = fraBancoEmbargo
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alta de Devoluci'#243'n de Embargos'
  ClientHeight = 380
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    480
    380)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = -1
    Top = 347
    Width = 483
    Height = 2
    Anchors = [akLeft, akRight, akBottom]
    Shape = bsTopLine
  end
  object Label12: TLabel
    Left = 51
    Top = 7
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Banco'
  end
  object Label13: TLabel
    Left = 48
    Top = 31
    Width = 34
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cuenta'
  end
  object Label14: TLabel
    Left = 52
    Top = 56
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Monto'
  end
  object Label15: TLabel
    Left = 52
    Top = 80
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fecha'
  end
  object Label16: TLabel
    Left = 6
    Top = 104
    Width = 75
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fecha Contable'
    WordWrap = True
  end
  object Label17: TLabel
    Left = 43
    Top = 224
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Car'#225'tula'
  end
  object Label18: TLabel
    Left = 55
    Top = 151
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fuero'
  end
  object Label19: TLabel
    Left = 42
    Top = 175
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Juzgado'
  end
  object Label20: TLabel
    Left = 32
    Top = 199
    Width = 50
    Height = 13
    Alignment = taRightJustify
    Caption = 'Secretar'#237'a'
  end
  object Label22: TLabel
    Left = 54
    Top = 248
    Width = 27
    Height = 13
    Alignment = taRightJustify
    Caption = 'Oficio'
  end
  object Label23: TLabel
    Left = 9
    Top = 272
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Observaciones'
  end
  object lbJurisdiccion: TLabel
    Left = 27
    Top = 127
    Width = 55
    Height = 13
    Alignment = taRightJustify
    Caption = 'Jurisdicci'#243'n'
  end
  object btnAceptarEmbargo: TButton
    Left = 328
    Top = 354
    Width = 72
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = btnAceptarEmbargoClick
  end
  object btnCancelarEmbargo: TButton
    Left = 400
    Top = 354
    Width = 72
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 13
    OnClick = btnCancelarEmbargoClick
  end
  inline fraCuentaBancariaEmbargo: TfraStaticCodigoDescripcion
    Left = 88
    Top = 27
    Width = 384
    Height = 23
    TabOrder = 1
    DesignSize = (
      384
      23)
    inherited cmbDescripcion: TComboGrid
      Width = 321
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
  end
  inline fraBancoEmbargo: TfraStaticCodigoDescripcion
    Left = 88
    Top = 3
    Width = 384
    Height = 23
    TabOrder = 0
    DesignSize = (
      384
      23)
    inherited cmbDescripcion: TComboGrid
      Width = 321
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
  end
  object edImporteEmbargo: TCurrencyEdit
    Left = 88
    Top = 52
    Width = 121
    Height = 21
    TabStop = False
    AutoSize = False
    TabOrder = 2
  end
  object edFechaEmbargo: TDateComboBox
    Left = 88
    Top = 76
    Width = 88
    Height = 21
    TabOrder = 3
  end
  object edFContableEmbargo: TDateComboBox
    Left = 88
    Top = 100
    Width = 88
    Height = 21
    TabOrder = 4
  end
  object edOficioEmbargo: TIntEdit
    Left = 88
    Top = 244
    Width = 121
    Height = 21
    TabOrder = 10
    MaxLength = 8
    MaxValue = 99999999
  end
  object edObservacEmbargo: TMemo
    Left = 88
    Top = 268
    Width = 384
    Height = 71
    MaxLength = 400
    TabOrder = 11
  end
  object edCaratulaEmbargo: TEdit
    Left = 88
    Top = 220
    Width = 384
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 9
  end
  inline fraJuzgadoEmbargo: TfraCodigoDescripcion
    Left = 88
    Top = 171
    Width = 384
    Height = 23
    TabOrder = 7
    DesignSize = (
      384
      23)
    inherited cmbDescripcion: TArtComboBox
      Width = 319
    end
  end
  inline fraFueroEmbargo: TfraCodigoDescripcion
    Left = 88
    Top = 147
    Width = 384
    Height = 23
    TabOrder = 6
    DesignSize = (
      384
      23)
    inherited cmbDescripcion: TArtComboBox
      Width = 319
    end
  end
  inline fraSecretariaEmbargo: TfraCodigoDescripcion
    Left = 88
    Top = 195
    Width = 384
    Height = 23
    TabOrder = 8
    DesignSize = (
      384
      23)
    inherited cmbDescripcion: TArtComboBox
      Width = 319
    end
  end
  inline fraJurisdiccionEmbargo: TfraCodigoDescripcion
    Left = 88
    Top = 123
    Width = 384
    Height = 23
    TabOrder = 5
    DesignSize = (
      384
      23)
    inherited cmbDescripcion: TArtComboBox
      Width = 319
    end
  end
  object DBLogin: TDBLogin
    DataBaseName = dmPrincipal.sdbPrincipal
    UseNetworkUser = True
    CheckServerDate = True
    AutoEjecutar = True
    Left = 12
    Top = 352
  end
  object Seguridad: TSeguridad
    AutoEjecutar = True
    Claves = <
      item
        Name = 'PermisoVerTodasCuentas'
      end>
    DBLogin = DBLogin
    PermitirEdicion = True
    Left = 40
    Top = 352
  end
end
