object fraUsuDatos: TfraUsuDatos
  Left = 0
  Top = 0
  Width = 640
  Height = 180
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  DesignSize = (
    640
    180)
  object Label9: TLabel
    Left = 4
    Top = 4
    Width = 52
    Height = 13
    Caption = 'Delegaci'#243'n'
  end
  object Label6: TLabel
    Left = 4
    Top = 30
    Width = 31
    Height = 13
    Caption = 'Sector'
  end
  object Label7: TLabel
    Left = 4
    Top = 56
    Width = 24
    Height = 13
    Caption = 'Perfil'
  end
  object Label8: TLabel
    Left = 4
    Top = 81
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object Label1: TLabel
    Left = 4
    Top = 108
    Width = 33
    Height = 13
    Caption = 'Correo'
  end
  object Label2: TLabel
    Left = 4
    Top = 135
    Width = 40
    Height = 13
    Caption = 'Intranet'
  end
  object Label3: TLabel
    Left = 4
    Top = 160
    Width = 13
    Height = 13
    Caption = 'PC'
  end
  object Label4: TLabel
    Left = 212
    Top = 160
    Width = 57
    Height = 13
    Caption = 'Responde a'
  end
  object Label5: TLabel
    Left = 213
    Top = 81
    Width = 78
    Height = 13
    Caption = 'Relaci'#243'n Laboral'
  end
  object Label10: TLabel
    Left = 213
    Top = 108
    Width = 77
    Height = 13
    Hint = 'Autorizaci'#243'n de los planes de pago'
    Caption = 'Nivel Cobranzas'
    ParentShowHint = False
    ShowHint = True
  end
  inline fraSectores: TfraSectores
    Left = 64
    Top = 26
    Width = 576
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    inherited cmbDescripcion: TArtComboBox
      Width = 491
      Columns = <
        item
          Expanded = False
          FieldName = 'SC_CODIGO'
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SC_DESCRIPCION'
          Title.Caption = 'Descripci'#243'n'
          Width = 200
          Visible = True
        end>
      DataSource = nil
    end
  end
  inline fraPerfiles: TfraPerfiles
    Left = 64
    Top = 52
    Width = 576
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    inherited cmbDescripcion: TArtComboBox
      Width = 492
      DataSource = nil
    end
  end
  object cmbCargos: TRxDBLookupCombo
    Left = 64
    Top = 78
    Width = 145
    Height = 21
    DropDownCount = 8
    DisplayEmpty = '(Ninguno)'
    EmptyValue = '(Ninguno)'
    LookupField = 'TB_CODIGO'
    LookupDisplay = 'TB_DESCRIPCION'
    LookupSource = dsCargos
    TabOrder = 2
  end
  object chkAccesoSeguridad: TCheckBox
    Left = 412
    Top = 132
    Width = 116
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Acceso a Seguridad'
    TabOrder = 7
  end
  object edSE_MAIL: TEdit
    Left = 64
    Top = 104
    Width = 145
    Height = 21
    CharCase = ecLowerCase
    TabOrder = 4
  end
  object chkUsuarioGenerico: TCheckBox
    Left = 532
    Top = 132
    Width = 102
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Usuario Gen'#233'rico'
    TabOrder = 8
    OnClick = AnalizoCambioSectorUsuGenerico
  end
  inline fraSector: TfraCodDesc
    Left = 63
    Top = 129
    Width = 322
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 5
    DesignSize = (
      322
      23)
    inherited cmbDescripcion: TArtComboBox
      Left = 48
      Width = 273
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Caption = 'Descripci'#243'n'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'se_nivel'
          Title.Caption = 'Nivel'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GERENCIA'
          Title.Caption = 'Gerencia'
          Visible = True
        end>
      DataSource = nil
    end
    inherited edCodigo: TPatternEdit
      Width = 44
    end
    inherited Propiedades: TPropiedadesFrame
      CodigoType = ctInteger
      ExtraCondition = ' and se_nivel = 4'
      ExtraFields = 
        ', se_nivel, (SELECT ger.se_descripcion FROM computos.cse_sector ' +
        'ger WHERE ger.se_id = (SELECT jef.se_idsectorpadre FROM computos' +
        '.cse_sector jef WHERE jef.se_id = (SELECT sec.se_idsectorpadre F' +
        'ROM computos.cse_sector sec WHERE sec.se_id = computos.cse_secto' +
        'r.se_id))) AS gerencia'
      FieldBaja = 'se_fechabaja'
      FieldCodigo = 'se_id'
      FieldDesc = 'se_descripcion'
      FieldID = 'se_id'
      IdType = ctInteger
      OrderBy = 'se_descripcion'
      TableName = 'computos.cse_sector'
      Left = 84
    end
  end
  object ToolBarSectores: TToolBar
    Left = 385
    Top = 129
    Width = 23
    Height = 22
    Align = alNone
    Anchors = [akTop, akRight]
    AutoSize = True
    EdgeBorders = []
    Flat = True
    Images = ImageListSectores
    TabOrder = 6
    object tbArbolSectores: TToolButton
      Left = 0
      Top = 0
      Hint = 'Despliega el '#225'rbol de sectores'
      Caption = 'tbArbolSectores'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbArbolSectoresClick
    end
  end
  inline fraEquipo: TfraCodDesc
    Left = 63
    Top = 156
    Width = 146
    Height = 23
    TabOrder = 9
    DesignSize = (
      146
      23)
    inherited cmbDescripcion: TArtComboBox
      Left = 48
      Width = 97
      DataSource = nil
    end
    inherited edCodigo: TPatternEdit
      Width = 44
    end
    inherited Propiedades: TPropiedadesFrame
      CodigoType = ctInteger
      FieldBaja = 'NULL'
      FieldCodigo = 'EQ_ID'
      FieldDesc = 'EQ_DESCRIPCION'
      FieldID = 'EQ_ID'
      IdType = ctInteger
      OrderBy = 'EQ_DESCRIPCION'
      TableName = 'COMPUTOS.CEQ_EQUIPO'
      Left = 84
    end
  end
  inline fraUsuarioJefe: TfraCodDesc
    Left = 272
    Top = 156
    Width = 368
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 10
    DesignSize = (
      368
      23)
    inherited cmbDescripcion: TArtComboBox
      Width = 303
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Title.Caption = 'Descripci'#243'n'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SE_INTERNO'
          Title.Caption = 'Interno'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SE_SECTOR'
          Title.Caption = 'Sector'
          Visible = True
        end>
      DataSource = nil
    end
    inherited edCodigo: TPatternEdit
      MaxLength = 20
    end
    inherited Propiedades: TPropiedadesFrame
      ExtraFields = ', se_interno, se_sector, se_pc '
      FieldBaja = 'SE_FECHABAJA'
      FieldCodigo = 'SE_USUARIO'
      FieldDesc = 'SE_NOMBRE'
      FieldID = 'SE_ID'
      IdType = ctInteger
      OrderBy = 'SE_USUARIO'
      TableName = 'ART.USE_USUARIOS'
      Left = 96
    end
  end
  inline fraRelacionLaboral: TfraCodDesc
    Left = 294
    Top = 77
    Width = 344
    Height = 23
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    inherited cmbDescripcion: TArtComboBox
      Left = 44
      Width = 301
      DataSource = nil
    end
    inherited edCodigo: TPatternEdit
      Width = 40
    end
    inherited Propiedades: TPropiedadesFrame
      CodigoType = ctInteger
      FieldBaja = 'ru_fechabaja'
      FieldCodigo = 'ru_id'
      FieldDesc = 'ru_detalle'
      FieldID = 'ru_id'
      IdType = ctInteger
      TableName = 'comunes.cru_relacionlaboralusuario'
      Left = 76
    end
  end
  inline fraNivelCobranzas: TfraCodDesc
    Left = 294
    Top = 103
    Width = 344
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 11
    inherited cmbDescripcion: TArtComboBox
      Left = 44
      Width = 301
      DataSource = nil
    end
    inherited edCodigo: TPatternEdit
      Width = 40
    end
    inherited Propiedades: TPropiedadesFrame
      CodigoType = ctInteger
      FieldBaja = 'na_fechabaja'
      FieldCodigo = 'na_id'
      FieldDesc = 'na_descripcion'
      FieldID = 'na_id'
      IdType = ctInteger
      OrderBy = 'na_id'
      TableName = 'Zna_NivelAutorizacion'
      Left = 76
    end
  end
  inline fraDelegacion: TfraDelegacion
    Left = 64
    Top = 0
    Width = 576
    Height = 23
    TabOrder = 12
    inherited cmbDescripcion: TArtComboBox
      Left = 63
      Width = 512
    end
    inherited edCodigo: TPatternEdit
      Left = 0
    end
  end
  object sdqCargos: TSDQuery
    DatabaseName = 'dbPrincipal'
    Options = []
    SQL.Strings = (
      'SELECT TB_CODIGO, TB_DESCRIPCION'
      'FROM CTB_TABLAS'
      'WHERE TB_CLAVE = '#39'USCAR'#39
      'ORDER BY 2')
    Left = 84
    Top = 67
  end
  object dsCargos: TDataSource
    DataSet = sdqCargos
    Left = 112
    Top = 67
  end
  object ImageListSectores: TImageList
    Left = 268
    Top = 128
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F70084ADC6004284
      A50094B5C600FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEE7EF0042849C0008638C00106B
      9400005A8C005A8CAD00EFF7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7F7FF0031739C00186B940039A5C60031B5
      DE0029ADCE0000638C0073A5BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00F7F7EF006394B500106B94004AB5D60063D6EF0029C6
      E70042D6EF000884AD00297B9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00DECEBD00BDA57B009C845200425239004A7373006BD6EF0042E7FF0039EF
      F7005ADEEF00007BAD0063A5BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFF7F700B59C
      6B008C6300009C6B0800A5731000A56B00008C520000737B520039DEE70073FF
      FF0021ADCE000873AD00D6E7EF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD9C6300A573
      0800D69C2100EFB53100EFBD3900E7B53100C68C1800945200007B7B4A0018AD
      D6000073AD0094C6DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DECEAD00A56B0000E7AD
      4200F7BD4200F7C64200F7C64200FFCE4A00FFCE4200D6A52100945200003163
      6B008CBDDE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD7B2900CE9C3900F7BD
      6300E7AD4200E7AD3900E7AD3100EFB53100F7CE4200F7CE4200AD7B1000A584
      4200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD6B0000EFBD7B00F7BD
      6B00EFAD5200E7AD4A00E7A53900E7A52900E7B53100F7C63900C69C2100A573
      3100FFFFF7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5730800EFC68400FFD6
      A500F7B56300EFB56300EFAD4A00E7A53100E7A52900EFB53100C69418009C73
      3100FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6AD6B00DEA54200FFF7
      EF00FFD69C00F7B56300EFAD5200E7A53900E7A52900E7AD2100A5730800B59C
      6B00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFF7EF00D6943100EFC6
      8400FFFFF700FFDEB500F7C67B00F7B55A00EFAD4A00BD841000946B1800EFEF
      E700000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7EFDE00D69C
      3900D6A54A00E7BD7B00EFBD7B00DEA54A00B57B1000A57B3100EFDECE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF7
      EF00DEB58400BD842900AD6B0000AD7B2100C6A57300F7EFE700000000000000
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
      000000000000000000000000FFFFFF00FF83000000000000FF01000000000000
      FE01000000000000F801000000000000E001000000000000C001000000000000
      C0030000000000008007000000000000800F0000000000008007000000000000
      8007000000000000800F000000000000800F000000000000C01F000000000000
      E03F000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
