inherited fraTipoAtencion: TfraTipoAtencion
  inherited cmbDescripcion: TComboGrid
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
    ShowBajas = True
    TableName = 'SIN.STD_TIPODEATENCION'
    FieldID = 'TD_ID'
    FieldCodigo = 'TD_CODIGO'
    FieldDesc = 'TD_DESCRIPCION'
    OrderBy = 'TD_CODIGO'
    IdType = ctInteger
  end
end
