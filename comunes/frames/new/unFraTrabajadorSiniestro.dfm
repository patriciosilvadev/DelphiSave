inherited fraTrabajadorSiniestro: TfraTrabajadorSiniestro
  Width = 498
  Height = 21
  ParentFont = False
  ExplicitWidth = 498
  ExplicitHeight = 21
  DesignSize = (
    498
    21)
  object lbSiniestro: TLabel [0]
    Left = 332
    Top = 3
    Width = 41
    Height = 13
    Anchors = [akTop, akRight]
    Caption = 'Siniestro'
  end
  object lvSiniestros: TListView [1]
    Left = 924
    Top = 3
    Width = 98
    Height = 145
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Columns = <
      item
        Caption = 'S'
        Width = 52
      end
      item
        Caption = 'O'
        Width = 27
      end
      item
        Caption = 'R'
        Width = 19
      end>
    ColumnClick = False
    FlatScrollBars = True
    GridLines = True
    RowSelect = True
    SortType = stData
    TabOrder = 3
    ViewStyle = vsReport
    Visible = False
  end
  inherited mskCUIL: TMaskEdit
    ParentFont = False
    OnExit = mskCUILExit
  end
  inherited cmbNombre: TArtComboBox
    Width = 245
    ParentFont = False
    Columns = <
      item
        Expanded = False
        FieldName = 'CUIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Apellido y Nombre'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EM_CUIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'CUIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Contrato'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ES_NROESTABLECI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Estab.'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ES_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nombre'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EM_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Raz'#243'n Social'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SINIESTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Siniestro'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EX_FECHAACCIDENTE'
        Title.Caption = 'Accidente'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EX_FECHARECAIDA'
        Title.Caption = 'Reca'#237'da'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_ALTAMEDICA'
        Title.Caption = 'Alta Medica'
        Visible = True
      end>
    ExplicitWidth = 245
  end
  object edSiniestro: TSinEdit [4]
    Left = 397
    Top = 0
    Width = 100
    Height = 21
    Hint = 'C'#243'digo de Siniestro '
    Anchors = [akTop, akRight]
    TabOrder = 2
    OnSelect = edSiniestroSelect
  end
  object ToolBar: TToolBar [5]
    Left = 374
    Top = -1
    Width = 23
    Height = 22
    Align = alNone
    Anchors = [akTop, akRight]
    AutoSize = True
    DisabledImages = ImageList
    HotImages = ImageList
    Images = ImageList
    TabOrder = 4
    object tbLimpiar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Limpiar el siniestro, dejando el trabajador (Ctrl+Alt+L)'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = tbLimpiarClick
    end
  end
  object ImageList: TImageList
    Left = 56
    Top = 24
    Bitmap = {
      494C010101000400080010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666006666660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000066666600E3E3E300A4A0A00066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000066666600E3E3E300A4A0A000E3E3E300A4A0A000666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000808000A4A0A000E3E3E300CCCCCC00D7D7D700B2B2B2006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000066666600B2B2B200E3E3E300CCCCCC00D7D7D700E3E3E300A4A0A000E3E3
      E300666666000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800066666600E3E3E300CCCCCC00D7D7D700E3E3E300A4A0A000E3E3E300A4A0
      A000C0C0C0006666660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800066666600CCCCCC00D7D7D700E3E3E300A4A0A000E3E3E300A4A0A000C0C0
      C000C0C0C000B2B2B20066666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      80008080800066666600B2B2B200A4A0A000E3E3E300A4A0A000C0C0C000C0C0
      C000B2B2B2000066660022222200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000A4A0A0008080800066666600E3E3E300B2B2B200C0C0C000C0C0C000A4A0
      A000666666003939390000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A4A0
      A000B2B2B200B2B2B2008080800066666600B2B2B20033999900666666006666
      6600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000096969600C0C0
      C000B2B2B200B2B2B20080808000808080006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000096969600B2B2B2008686
      8600969696000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096969600A4A0A000868686009696
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008686860086868600969696000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FE7F000000000000
      FC3F000000000000F81F000000000000F80F000000000000F007000000000000
      E003000000000000E001000000000000E001000000000000E003000000000000
      E00F000000000000C03F00000000000087FF0000000000000FFF000000000000
      1FFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object sdqMensajes: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    SQL.Strings = (
      'SELECT CASE'
      
        '         WHEN NVL(ex_causafin, '#39' '#39') IN('#39'95'#39', '#39'99'#39') THEN '#39'Siniest' +
        'ro cerrado ('#39' || ex_causafin || '#39' - '#39
      
        '                                                        || causa' +
        '_fin.tb_descripcion || '#39')'#39
      '         ELSE CASE'
      '         WHEN pe_fechaaltamedica IS NULL THEN '#39#39
      
        '         ELSE '#39'Fecha de alta M'#233'dica: '#39' || TO_CHAR(pe_fechaaltame' +
        'dica, '#39'dd/mm/yyyy'#39')'
      '              || CASE'
      
        '                WHEN(pe_fechaaltamedica > TO_DATE('#39'01/01/2008'#39', ' +
        #39'dd/mm/yyyy'#39'))'
      '                AND EXISTS(SELECT 1'
      '                             FROM art.sex_expedientes'
      '                            WHERE ex_causafin <> '#39'02'#39
      '                              AND ex_id = pe_idexpediente'
      
        '                              AND ex_fechaceseilt IS NULL) THEN ' +
        'CHR(13) || CHR(10) || '#39'Falta formulario de cese de ILT'#39
      '                ELSE '#39#39
      '              END'
      '              || DECODE(tipo_egreso.tb_descripcion,'
      '                        NULL, '#39#39','
      
        '                        CHR(13) || CHR(10) || '#39'Tipo de Egreso: '#39 +
        ' || tipo_egreso.tb_descripcion)'
      '       END'
      '       END'
      
        '       || (SELECT DISTINCT CHR(13) || CHR(10) || '#39'Existe al meno' +
        's una reca'#237'da posterior al siniestro seleccionado'#39
      '                      FROM art.sex_expedientes otros'
      '                     WHERE otros.ex_siniestro = sex.ex_siniestro'
      '                       AND otros.ex_orden = sex.ex_orden'
      '                       AND otros.ex_recaida > sex.ex_recaida'
      '                       AND otros.ex_causafin IS NULL) AS texto,'
      '       CASE'
      '         WHEN NVL(ex_causafin, '#39' '#39') IN('#39'95'#39', '#39'99'#39') THEN 1'
      '         WHEN EXISTS(SELECT 1'
      '                       FROM art.sex_expedientes otros'
      
        '                      WHERE otros.ex_siniestro = sex.ex_siniestr' +
        'o'
      '                        AND otros.ex_orden = sex.ex_orden'
      '                        AND otros.ex_recaida > sex.ex_recaida'
      '                        AND otros.ex_causafin IS NULL) THEN 2'
      '         ELSE 0'
      '       END AS estado'
      
        '  FROM SIN.spe_partedeegreso, art.sex_expedientes sex, art.ctb_t' +
        'ablas causa_fin, art.ctb_tablas tipo_egreso'
      ' WHERE ex_id = :idexpediente'
      '   AND ex_id = pe_idexpediente(+)'
      '   AND tipo_egreso.tb_clave(+) = '#39'TEGRE'#39
      '   AND tipo_egreso.tb_codigo(+) = pe_idtipodeegreso'
      '   AND causa_fin.tb_clave(+) = '#39'CATER'#39
      '   AND causa_fin.tb_codigo(+) = ex_causafin')
    Left = 84
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idexpediente'
        ParamType = ptInput
      end>
  end
end