unit unExpediente;

interface

uses
  {$IFDEF VER180} rxPlacemnt, rxToolEdit, JvExtComponent, {$ELSE} Placemnt, ToolEdit, {$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  unSinForm, SDEngine, Db, unArtFrame, unFraCodigoDescripcion,
  unfraCtbTablas, StdCtrls, DateComboBox, Mask, PatternEdit,
  DateTimeEditors, ExtCtrls, unArtDBAwareFrame, unArtDbFrame,
  unFraTrabajador, unFraCIE10, unFraUsuario, artSeguridad, XPMenu,
  DBCtrls, RXDBCtrl, unFraStaticCodigoDescripcion, unFraStaticCodDesc,
  unFraTipoSiniestro, JvgGroupBox, DBPatternEdit, JvExExtCtrls,
  JvComponent, JvDBRadioPanel, unFraSTC_TIPOGRAVEDAD_CIE10,
  unFraCDG_DIAGNOSTICO, unFraSTG_TIPOGRAVEDAD, ComCtrls, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker, Variants, QuickRpt, QRCtrls,
  ActnList, CheckLst, ARTCheckListBox, unFraCodDesc, Buttons, ToolWin,
  SinEdit, FormPanel, JvExtComponent, RxToolEdit, RxPlacemnt;

type
  TfrmExpediente = class(TSinForm)
    Bevel2: TBevel;
    chkEX_ACCIDENTETRANSITO: TDBCheckBox;
    chkEX_ADDENDA: TDBCheckBox;
    chkEX_INTERCURRENCIA: TDBCheckBox;
    chkEX_PLURIEMPLEO: TDBCheckBox;
    chkEX_POSIBLERECHAZO: TDBCheckBox;
    chkEX_POSIBLERECUPERO: TDBCheckBox;
    chkEX_RECHAZADO: TCheckBox;
    chkEX_SINIESTROMULTIPLE: TDBCheckBox;
    chkEX_SUSPENSIONPLAZO: TDBCheckBox;
    clbExpedienteART: TARTCheckListBox;
    cmbEX_FECHACARGA: TDBDateEdit;
    cmbEX_FECHARECEPCION: TDBDateEdit;
    cmbNL_FDICTDESMARCA: TDBDateEdit;
    cmbNL_FDICTMARCA: TDBDateEdit;
    edEX_BREVEDESCRIPCION: TDBMemo;
    edEX_DIAGNOSTICO: TDBMemo;
    edEX_FECHAACCIDENTE: TDBDateEdit;
    edEX_FECHAEXPUESTO: TDBDateEdit;
    edEX_FECHAMANIFESTACION: TDBDateEdit;
    edEX_FECHARECAIDA: TDBDateEdit;
    edEX_HORAACCIDENTE: TTimeEditor;
    edEX_OBSERVACIONES: TDBMemo;
    edNL_AGENTE: TDBMemo;
    edNL_ENFERMEDAD: TDBMemo;
    edNL_OBSDESMARCA: TDBMemo;
    edNL_OBSMARCA: TDBMemo;
    edNL_TAREA: TDBMemo;
    edRS_DESTINATARIO: TEdit;
    edRS_OBSERVACIONES: TMemo;
    fraDestinatario: TfraCodigoDescripcion;
    fraEX_DIAGNOSTICOOMS: TfraCDG_DIAGNOSTICO;
    fraEX_GRAVEDAD: TfraSTG_TIPOGRAVEDAD;
    fraEX_IDTRABAJADOR: TfraTrabajador;
    fraEX_TIPO: TfraTipoSiniestro;
    fraEX_USUALTA: TfraUsuarios;
    fraPI_IDGRAVEDAD_CIE10: TfraSTC_TIPOGRAVEDAD_CIE10;
    fraRS_TDESTINATARIO: TfraCtbTablas;
    gbAdicionales: TJvgGroupBox;
    gbDatos1: TJvgGroupBox;
    gbDestinatario: TGroupBox;
    gbNoListada: TGroupBox;
    gbNoListadas: TJvgGroupBox;
    gbSiListada: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label35: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    rpEX_ESTADOCRONICO: TJvDBRadioPanel;
    rpEX_PRESUPINCAPACIDAD: TJvDBRadioPanel;
    rpNL_MARCADO: TJvDBRadioPanel;
    sdqDatosEX_ACCIDENTETRANSITO: TStringField;
    sdqDatosEX_ADDENDA: TStringField;
    sdqDatosEX_ALTAMEDICA: TDateTimeField;
    sdqDatosEX_BAJAMEDICA: TDateTimeField;
    sdqDatosEX_BREVEDESCRIPCION: TStringField;
    sdqDatosEX_CAUSAFIN: TStringField;
    sdqDatosEX_CUIL: TStringField;
    sdqDatosEX_CUIT: TStringField;
    sdqDatosEX_DELEGACION: TStringField;
    sdqDatosEX_DIAGNOSTICO: TStringField;
    sdqDatosEX_DIAGNOSTICOOMS: TStringField;
    sdqDatosEX_ESTADO: TStringField;
    sdqDatosEX_ESTADOCRONICO: TStringField;
    sdqDatosEX_FECHAACCIDENTE: TDateTimeField;
    sdqDatosEX_FECHAALTA: TDateTimeField;
    sdqDatosEX_FECHACARGA: TDateTimeField;
    sdqDatosEX_FECHAEXPUESTO: TDateTimeField;
    sdqDatosEX_FECHAFIN: TDateTimeField;
    sdqDatosEX_FECHAMANIFESTACION: TDateTimeField;
    sdqDatosEX_FECHAMODIF: TDateTimeField;
    sdqDatosEX_FECHAREASIGNACION: TDateTimeField;
    sdqDatosEX_FECHARECAIDA: TDateTimeField;
    sdqDatosEX_FECHARECEPCION: TDateTimeField;
    sdqDatosEX_FRECHAZOMED: TDateTimeField;
    sdqDatosEX_FRECHAZOSIN: TDateTimeField;
    sdqDatosEX_FSUSPMED: TDateTimeField;
    sdqDatosEX_FSUSPSIN: TDateTimeField;
    sdqDatosEX_GRAVEDAD: TStringField;
    sdqDatosEX_GRAVEDADCIE10: TStringField;
    sdqDatosEX_GTRABAJO: TStringField;
    sdqDatosEX_HORAACCIDENTE: TStringField;
    sdqDatosEX_ID: TFloatField;
    sdqDatosEX_IDDIAGNOSTICO: TFloatField;
    sdqDatosEX_IDTRABAJADOR: TFloatField;
    sdqDatosEX_INTERCURRENCIA: TStringField;
    sdqDatosEX_MDELEGACION: TStringField;
    sdqDatosEX_MTRABAJO: TStringField;
    sdqDatosEX_OBSERVACIONES: TStringField;
    sdqDatosEX_ORDEN: TFloatField;
    sdqDatosEX_ORDENRED: TFloatField;
    sdqDatosEX_PLURIEMPLEO: TStringField;
    sdqDatosEX_POSIBLERECHAZO: TStringField;
    sdqDatosEX_POSIBLERECUPERO: TStringField;
    sdqDatosEX_PRESTADOR: TFloatField;
    sdqDatosEX_PRESUPINCAPACIDAD: TStringField;
    sdqDatosEX_PROTOCOLO: TStringField;
    sdqDatosEX_RECAIDA: TFloatField;
    sdqDatosEX_RECAIDARED: TFloatField;
    sdqDatosEX_RECHAZO: TStringField;
    sdqDatosEX_RECHAZOLEG: TStringField;
    sdqDatosEX_RECHAZOMED: TStringField;
    sdqDatosEX_RECHAZOSIN: TStringField;
    sdqDatosEX_RED: TStringField;
    sdqDatosEX_SECTOR: TStringField;
    sdqDatosEX_SINIESTRO: TFloatField;
    sdqDatosEX_SINIESTROMULTIPLE: TStringField;
    sdqDatosEX_SINIESTRORED: TFloatField;
    sdqDatosEX_SUSPENSIONPLAZO: TStringField;
    sdqDatosEX_SUSPPLAZOLEG: TStringField;
    sdqDatosEX_SUSPPLAZOMED: TStringField;
    sdqDatosEX_SUSPPLAZOSIN: TStringField;
    sdqDatosEX_TIPO: TStringField;
    sdqDatosEX_USUALTA: TStringField;
    sdqDatosEX_USUARIORECHAZOLEG: TStringField;
    sdqDatosEX_USUARIORECHAZOMED: TStringField;
    sdqDatosEX_USUARIORECHAZOSIN: TStringField;
    sdqDatosEX_USUARIOSUSPLEG: TStringField;
    sdqDatosEX_USUARIOSUSPMED: TStringField;
    sdqDatosEX_USUARIOSUSPSIN: TStringField;
    sdqDatosEX_USUMODIF: TStringField;
    sdqDatosEX_VENCIMRECHAZO: TDateTimeField;
    sdqDatosEX_VENCIMSUSPENSION: TDateTimeField;
    sdqDatosNL_AGENTE: TStringField;
    sdqDatosNL_ENFERMEDAD: TStringField;
    sdqDatosNL_FDICTDESMARCA: TDateTimeField;
    sdqDatosNL_FDICTMARCA: TDateTimeField;
    sdqDatosNL_ID: TFloatField;
    sdqDatosNL_MARCADO: TStringField;
    sdqDatosNL_OBSDESMARCA: TStringField;
    sdqDatosNL_OBSMARCA: TStringField;
    sdqDatosNL_TAREA: TStringField;
    sdqDatosRS_DESTINATARIO: TStringField;
    sdqDatosRS_OBSERVACIONES: TStringField;
    sdqDatosRS_TDESTINATARIO: TStringField;
    sdqExpedienteART: TSDQuery;
    sdqExpedienteARTAR_ARTWEB: TStringField;
    sdqExpedienteARTAR_CALLE: TStringField;
    sdqExpedienteARTAR_CODAREAFAX: TStringField;
    sdqExpedienteARTAR_CODAREATELEFONOS: TStringField;
    sdqExpedienteARTAR_CODIGOSRT: TStringField;
    sdqExpedienteARTAR_CPOSTAL: TStringField;
    sdqExpedienteARTAR_CPOSTALA: TStringField;
    sdqExpedienteARTAR_DEPARTAMENTO: TStringField;
    sdqExpedienteARTAR_FAX: TStringField;
    sdqExpedienteARTAR_FECHAALTA: TDateTimeField;
    sdqExpedienteARTAR_FECHABAJA: TDateTimeField;
    sdqExpedienteARTAR_FECHAMODIF: TDateTimeField;
    sdqExpedienteARTAR_ID: TFloatField;
    sdqExpedienteARTAR_IDUBICACION: TFloatField;
    sdqExpedienteARTAR_LOCALIDAD: TStringField;
    sdqExpedienteARTAR_NOMBRE: TStringField;
    sdqExpedienteARTAR_NUMERO: TStringField;
    sdqExpedienteARTAR_OBSERVACIONES: TStringField;
    sdqExpedienteARTAR_PISO: TStringField;
    sdqExpedienteARTAR_PROVINCIA: TStringField;
    sdqExpedienteARTAR_TELEFONOS: TStringField;
    sdqExpedienteARTAR_USUALTA: TStringField;
    sdqExpedienteARTAR_USUBAJA: TStringField;
    sdqExpedienteARTAR_USUMODIF: TStringField;
    sdqExpedienteARTEA_FECHAALTA: TDateTimeField;
    sdqExpedienteARTEA_ID: TFloatField;
    sdqExpedienteARTEA_IDART: TFloatField;
    sdqExpedienteARTEA_IDEXPEDIENTE: TFloatField;
    sdqExpedienteARTEA_USUALTA: TStringField;
    Shape1: TShape;
    sdqDatosRS_IDREF: TFloatField;
    Bevel1: TBevel;
    btnObservacionesIncapacidades: TSpeedButton;
    fpObservIncap: TFormPanel;
    gbAclaraciones: TJvgGroupBox;
    JvgGroupBox2: TJvgGroupBox;
    clbObservIncap: TARTCheckListBox;
    JvgGroupBox1: TJvgGroupBox;
    memoObservaciones: TMemo;
    Panel1: TPanel;
    edSiniestro: TSinEdit;
    memoAclaraciones: TMemo;
    Panel2: TPanel;
    btnAceptarObservIncap: TBitBtn;
    btnCerrarObservIncap: TBitBtn;
    Label27: TLabel;
    Bevel3: TBevel;
    chkNL_ENFNOLISTADA: TDBCheckBox;
    chkNL_HIPOACUSIA: TDBCheckBox;
    sdqDatosNL_ENFNOLISTADA: TStringField;
    sdqDatosNL_HIPOACUSIA: TStringField;
    btnMinFecha: TSpeedButton;
    fpMinFAccid: TFormPanel;
    edSiniestroMin: TSinEdit;
    Label31: TLabel;
    Label32: TLabel;
    Bevel4: TBevel;
    btnCerrarMin: TBitBtn;
    edMINFECHAACCID: TDateComboBox;
    sdqDatosEX_EXAMENPERIODICO: TStringField;
    chkEX_EXAMENPERIODICO: TDBCheckBox;
    sdqDatosEX_OBSERV_ERRORCARGA: TStringField;
    fpObservErrCarga: TFormPanel;
    Bevel5: TBevel;
    btnCancelarObservErrCarga: TBitBtn;
    MemoObservErrorCarga: TMemo;
    btnAceptarObservErrCarga: TBitBtn;
    btnObservErrCarga: TSpeedButton;
    chkEX_POSIBLEFRAUDE: TDBCheckBox;
    sdqDatosEX_POSIBLEFRAUDE: TStringField;
    chkEX_EMPLEADOPCP: TDBCheckBox;
    sdqDatosEX_EMPLEADOPCP: TStringField;
    chkEX_ABIERTOPORJUICIO: TDBCheckBox;
    edSiniestroIntercurrencia: TSinEdit;
    btnRelacionarSinInterc: TBitBtn;
    sdqDatosEX_ABIERTOPORJUICIO: TStringField;
    sdqDatosEX_IDEXPINTERCURRENCIA: TFloatField;
    procedure chkEX_INTERCURRENCIAClick(Sender: TObject);
    procedure chkEX_PLURIEMPLEOClick(Sender: TObject);
    procedure chkEX_POSIBLERECUPEROClick(Sender: TObject);
    procedure dsDatosDataChange(Sender: TObject; Field: TField);
    procedure dsDatosUpdateData(Sender: TObject);
    procedure fraDestinatarioChange(Sender: TObject);
    procedure fraEX_TIPOOnChange(Sender: TObject);
    procedure fraRS_TDESTINATARIOedCodigoChange(Sender: TObject);
    procedure FSFormCreate(Sender: TObject);
    procedure rpNL_MARCADOChange(Sender: TObject);
    procedure sdqDatosNewRecord(DataSet: TDataSet);
    procedure Validar(DataSet: TDataSet);
    procedure btnObservacionesIncapacidadesClick(Sender: TObject);   // TK 6624
    procedure btnCerrarObservIncapClick(Sender: TObject);
    procedure btnAceptarObservIncapClick(Sender: TObject);
    procedure btnMinFechaClick(Sender: TObject);            // TK 6624
    procedure fraEX_TIPOEnter(Sender: TObject);
    procedure btnAceptarObservErrCargaClick(Sender: TObject);
    procedure btnCancelarObservErrCargaClick(Sender: TObject);
    procedure btnObservErrCargaClick(Sender: TObject);
    procedure fpObservErrCargaBeforeShow(Sender: TObject);
    procedure btnRelacionarSinIntercClick(Sender: TObject);

  private
    procedure EvaluarPluriempleo;
    procedure Do_cargarAclaraciones;  // TK 6624
    procedure Do_cargarItemsObserv;   // TK 6624
    procedure Do_guardarObservIncap;  // TK 6624
    function GetOrden: integer;
    function GetRecaida: integer;
    function GetSiniestro: integer;
    function PermitirDesmarcarRecupero(Siniestro, Orden: integer): boolean;
    function Es_GP_Cronico(sGrupoTrab:String): boolean;    // TK 14839
    procedure Do_guardarObservErrorCarga;    // TK 55650
    property Orden     : integer read GetOrden;
    property Recaida   : integer read GetRecaida;
    property Siniestro : integer read GetSiniestro;
  protected
    function GetAddButtonVisible: boolean; override;
  public
    procedure Cancel(ASinPreguntar: Boolean = False); override;
    procedure Edit; override;
    procedure LoadData; override;
    procedure Print; override;
    function  Save: boolean; override;
  end;

var
  frmExpediente: TfrmExpediente; tipo_siniestro: string;

implementation

uses
  VCLExtra, unSiniestros, unDmPrincipal, unArt, unSesion, CustomDlgs,
  unRptResumen, unComunes, DateTimeFuncs, AnsiSql, General, unAdmSiniestros;

{$R *.DFM}

procedure TfrmExpediente.chkEX_INTERCURRENCIAClick(Sender: TObject);
begin
  if sdqDatos.State = dsEdit then
  begin
    if (Recaida > 0) and (not chkEX_INTERCURRENCIA.Checked) then
    begin
      sdqDatos.FieldByName('EX_TIPO').AsString := TipoAccidente;
      fraEX_TIPO.Codigo := TipoAccidente;
      VCLExtra.LockControls(fraEX_TIPO, True);
    end else
      VCLExtra.LockControls(fraEX_TIPO, False);
  end;

  if chkEX_INTERCURRENCIA.Checked then
    VCLExtra.LockControls([edSiniestroIntercurrencia, btnRelacionarSinInterc], False)
  else
    VCLExtra.LockControls([edSiniestroIntercurrencia, btnRelacionarSinInterc], True);
end;

procedure TfrmExpediente.chkEX_PLURIEMPLEOClick(Sender: TObject);
begin
  if sdqDatos.State = dsEdit then
    VCLExtra.LockControls([clbExpedienteART], not chkEX_PLURIEMPLEO.Checked);
end;

procedure TfrmExpediente.chkEX_POSIBLERECUPEROClick(Sender: TObject);
var
  sSQL: string;
begin
  inherited;
  //Solo busco los datos si est� tildado el check, sin� no (aunque puedan existir en la tabla)
  if chkEX_POSIBLERECUPERO.Checked then
  begin
    sSQL := 'SELECT RS_TDESTINATARIO, RS_DESTINATARIO, RS_OBSERVACIONES, RS_IDREFTIPO ' +
             ' FROM LRS_RECUPEROSINIESTROS' +
            ' WHERE RS_SINIESTRO = :Siniestro' +
              ' AND RS_ORDEN = :Orden';

    with GetQueryEx(sSQL, [Siniestro, Orden]) do
    try
      if IsEmpty then
      begin
        fraRS_TDESTINATARIO.Clear;
        edRS_DESTINATARIO.Clear;
        edRS_OBSERVACIONES.Lines.Clear;
        fraDestinatario.Clear;
      end else
      begin
        fraRS_TDESTINATARIO.Value     := FieldByName('RS_TDESTINATARIO').AsString;
        edRS_DESTINATARIO.Text        := FieldByName('RS_DESTINATARIO').AsString;
        edRS_OBSERVACIONES.Lines.Text := FieldByName('RS_OBSERVACIONES').AsString;

        fraRS_TDESTINATARIOedCodigoChange(nil);

        if not AreIn(fraRS_TDESTINATARIO.Value, ['E', 'T']) then
          fraDestinatario.Codigo := FieldByName('RS_IDREFTIPO').AsString
        else
          fraDestinatario.Clear;
      end
    finally
      Free;
    end;
  end else
  begin
    fraRS_TDESTINATARIO.Clear;
    edRS_DESTINATARIO.Clear;
    edRS_OBSERVACIONES.Lines.Clear;
    fraDestinatario.Clear;
  end;

  if sdqDatos.State = dsEdit then
    VCLExtra.LockControls(gbDestinatario, not chkEX_POSIBLERECUPERO.Checked);

  fraRS_TDESTINATARIOedCodigoChange(nil);
end;

procedure TfrmExpediente.dsDatosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not Assigned(Field) then
  with sdqDatos do
  begin
    edEX_HORAACCIDENTE.Time := StrToTimeDef(sdqDatos.FieldByName('EX_HORAACCIDENTE').AsString, 0);
    fraEX_IDTRABAJADOR.CUIL := FieldByName('EX_CUIL').AsString;
    fraEX_USUALTA.Codigo    := FieldByName('EX_USUALTA').AsString;

    with GetQueryEx('select ex_siniestro, ex_orden, ex_recaida ' +
                    '  from art.sex_expedientes ' +
                    ' where ex_id = :idexp ', [sdqDatos.FieldByName('EX_IDEXPINTERCURRENCIA').AsInteger]) do
    begin
      //if FieldByName('ex_siniestro').AsInteger > 0 then
        edSiniestroIntercurrencia.SetValues(FieldByName('ex_siniestro').AsString,
                                            FieldByName('ex_orden').AsString,
                                            FieldByName('ex_recaida').AsString);
    end;

  end;
end;

procedure TfrmExpediente.dsDatosUpdateData(Sender: TObject);
begin
  inherited;
  with sdqDatos do
  begin
    FieldByName('EX_HORAACCIDENTE').AsString := FormatDateTime('hh:mm', edEX_HORAACCIDENTE.Time);
    FieldByName('EX_CUIL').AsString := fraEX_IDTRABAJADOR.CUIL;
    FieldByName('RS_TDESTINATARIO').AsString := fraRS_TDESTINATARIO.Value;
    FieldByName('RS_DESTINATARIO').AsString := edRS_DESTINATARIO.Text;
    FieldByName('RS_IDREF').AsInteger := iif(fraRS_TDESTINATARIO.Codigo = 'E',
                                             EmpresaSeleccionada.Value,
                                             iif(fraRS_TDESTINATARIO.Codigo = 'T',
                                                 fraEX_IDTRABAJADOR.Value,
                                                 iif(fraDestinatario.IsSelected,
                                                     fraDestinatario.Value,
                                                     0)));
    FieldByName('RS_OBSERVACIONES').AsString := edRS_OBSERVACIONES.Lines.Text;
    FieldByName('EX_USUALTA').AsString := fraEX_USUALTA.Codigo;

    if State = dsEdit then
      FieldByName('EX_USUMODIF').AsString := Sesion.UserID;
  end;
end;

procedure TfrmExpediente.fraDestinatarioChange(Sender: TObject);
begin
  inherited;
  if fraDestinatario.IsSelected and (edRS_DESTINATARIO.Text <> fraDestinatario.Descripcion) then
    edRS_DESTINATARIO.Text := fraDestinatario.Descripcion;

  VCLExtra.LockControls([edRS_DESTINATARIO], fraDestinatario.IsSelected);
end;

procedure TfrmExpediente.fraEX_TIPOOnChange(Sender: TObject);
begin
  if ((ValorSqlEx('select art.liq.get_importeliquidadoilp(:sin, :ord, :rec, ''S'') from dual', [Siniestro, Orden, Recaida]) > 0) or
     (ValorSqlEx('select art.liq.get_importeliquidadomortales(:sin, :ord, :rec, ''S'') from dual', [Siniestro, Orden, Recaida]) > 0)) and
     (not(Owner as TfrmAdmSiniestros).Seguridad.Claves.IsActive('Expediente_CambiaTipoSiniestro')) and (Sender <> nil) and (sdqDatos.State = dsEdit)then
  begin
    InvalidHint(fraEX_TIPO, 'No se puede cambiar el tipo de accidente ya que el siniestro posee liquidaciones de Prestaciones Dinerarias');
    if fraEX_TIPO.Codigo <> tipo_siniestro then
      fraEX_TIPO.Codigo := tipo_siniestro;
  end;

  if fraEX_TIPO.IsSelected and (fraEX_TIPO.Codigo <> '3') then
  with sdqDatos do
  begin
    FieldByName('EX_FECHAMANIFESTACION').Clear;
    FieldByName('EX_FECHAEXPUESTO').Clear;
  end;

  VCLExtra.LockControls([edEX_FECHAMANIFESTACION, edEX_FECHAEXPUESTO], not CanSaveCancel or (fraEX_TIPO.IsSelected and (fraEX_TIPO.Codigo <> '3')));
end;

procedure TfrmExpediente.fraRS_TDESTINATARIOedCodigoChange(Sender: TObject);
begin
  if fraRS_TDESTINATARIO.IsSelected then
  begin
    case fraRS_TDESTINATARIO.Codigo[1] of
      'E': edRS_DESTINATARIO.Text := EmpresaSeleccionada.RazonSocial;
      'T': edRS_DESTINATARIO.Text := fraEX_IDTRABAJADOR.Nombre;
      'O': with fraDestinatario do
           begin
             TableName      := 'cos_osocial';
             FieldID        := 'os_codigo';
             FieldCodigo    := 'os_codigo';
             FieldDesc      := 'os_descripcion';
             ExtraCondition := '';
             ExtraFields    := '';           
           end;
      'A': with fraDestinatario do
           begin
             TableName      := 'afi.aar_art';
             FieldID        := 'ar_id';
             FieldCodigo    := 'ar_id';
             FieldDesc      := 'ar_nombre';
             ExtraCondition := '';
             ExtraFields    := '';
           end;
      'P': with fraDestinatario do
           begin
             TableName      := 'art.cpr_prestador';
             FieldID        := 'ca_identificador';
             FieldCodigo    := 'ca_identificador';
             FieldDesc      := 'ca_descripcion';
             ExtraCondition := '';
             ExtraFields    := ' , ca_clave as "CUIT" ';
           end;
      else with fraDestinatario do
           begin
             TableName      := 'legales.lcs_ciaseguro';
             FieldID        := 'cs_id';
             FieldCodigo    := 'cs_id';
             FieldDesc      := 'cs_descripcion';
             ExtraFields    := '';           
             ExtraCondition := ' AND cs_tipo LIKE ' + SqlValue ('%' + fraRS_TDESTINATARIO.Codigo[1] + '%');
           end;
    end;

    fraDestinatario.Visible := not (fraRS_TDESTINATARIO.Codigo[1] in ['E', 'T']);
    VCLExtra.LockControls([edRS_DESTINATARIO], (sdqDatos.State <> dsEdit) or ((fraRS_TDESTINATARIO.Codigo[1] in ['E', 'T']) or fraDestinatario.IsSelected));

    if not fraDestinatario.Visible then
      fraDestinatario.Clear;
  end;

  VCLExtra.LockControls([fraDestinatario], (sdqDatos.State <> dsEdit) or (not fraRS_TDESTINATARIO.IsSelected));
end;

procedure TfrmExpediente.FSFormCreate(Sender: TObject);
begin
  inherited;
  acEliminar.Enabled        := False;
  fraRS_TDESTINATARIO.Clave := 'TDEST';
  btnObservacionesIncapacidades.Visible := False;
  memoAclaraciones.ReadOnly := True;
  fraEX_USUALTA.ShowBajas   := True;

  with fraDestinatario do
  begin
    TableName   := 'legales.lcs_ciaseguro';
    FieldID     := 'cs_id';
    FieldCodigo := 'cs_id';
    FieldDesc   := 'cs_descripcion';
    ShowBajas   := True;
    OnChange := fraDestinatarioChange;
  end;
  //fraEX_TIPO.cmbDescripcion.OnEnter := fraEX_TIPOEnter;
end;

procedure TfrmExpediente.rpNL_MARCADOChange(Sender: TObject);
begin
  if sdqDatos.State in [dsInsert, dsEdit] then
  begin
    VCLExtra.LockControls([cmbNL_FDICTMARCA, edNL_TAREA, edNL_ENFERMEDAD, edNL_AGENTE,
                           edNL_OBSMARCA, chkNL_ENFNOLISTADA, chkNL_HIPOACUSIA],
                          (rpNL_MARCADO.ItemIndex <> 0));
    VCLExtra.LockControls([cmbNL_FDICTDESMARCA, edNL_OBSDESMARCA],
                          (rpNL_MARCADO.ItemIndex <> 1));
    if (rpNL_MARCADO.ItemIndex <> 0) then
    begin
      chkNL_ENFNOLISTADA.Checked := False;
      chkNL_HIPOACUSIA.Checked   := False;
    end;
  end;
end;

procedure TfrmExpediente.sdqDatosNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    // No se dan de alta expedientes...
  end;
end;

procedure TfrmExpediente.Validar(DataSet: TDataSet);
var
  dFechaAux: TDateTime;
  sSql :String;
  bMarcando: Boolean;
begin
  Verificar(edEX_FECHAACCIDENTE.Date = 0, edEX_FECHAACCIDENTE, 'Debe indicar la fecha del accidente.');
  Verificar(edEX_FECHAACCIDENTE.Date > dHoy, edEX_FECHAACCIDENTE, Format('La fecha del accidente no puede ser posterior a la de hoy %s.', [DateToStr(dHoy)]));
  Verificar(edEX_FECHAACCIDENTE.Date < SIN_ART_MINFECHA, edEX_FECHAACCIDENTE, Format('La fecha del accidente no puede ser anterior a la del inicio de actividades de la ART %s.', [DateToStr(SIN_ART_MINFECHA)]));
  Verificar(edEX_FECHAACCIDENTE.Date > FechaAlta, edEX_FECHAACCIDENTE, Format('La fecha del accidente no puede ser mayor que la fecha de carga del expediente %s.', [DateToStr(FechaAlta)]));
  Verificar((FechaRecepcion = 0) and (cmbEX_FECHARECEPCION.Date > FechaAlta), cmbEX_FECHARECEPCION, Format('La fecha de recepci�n no puede ser posterior a la fecha de carga del siniestro %s.', [DateToStr(FechaAlta)]));    // TK 22620

  if Recaida > 0 then
  begin
    FFechaAccidenteRecaida := edEX_FECHARECAIDA.Date;
    Verificar(edEX_FECHARECAIDA.Date = 0, edEX_FECHARECAIDA, 'Si se trata de una reca�da, debe indicar la fecha de ocurrencia de la misma.');
    Verificar(edEX_FECHARECAIDA.Date > dHoy, edEX_FECHARECAIDA, Format('La fecha de reca�da no puede ser posterior a hoy %s.', [DateToStr(dHoy)]));
    Verificar(edEX_FECHARECAIDA.Date <= edEX_FECHAACCIDENTE.Date, edEX_FECHARECAIDA, Format('La fecha de reca�da no puede ser anterior o igual a la fecha del accidente %s.', [DateToStr(edEX_FECHAACCIDENTE.Date)]));

    dFechaAux := Get_MaxFechaAltaMedica_x_Recaida(Siniestro, Orden, Recaida);
    Verificar(not(chkEX_INTERCURRENCIA.Checked) and (dFechaAux > 0) and
              (dFechaAux > edEX_FECHARECAIDA.Date), edEX_FECHARECAIDA, Format('La m�xima fecha de egreso %s para reca�das anteriores a la actual es posterior a la fecha de reca�da que se est� ingresando.', [DateToStr(dFechaAux)]));
  end else
  begin
    FFechaAccidenteRecaida := edEX_FECHAACCIDENTE.Date;
  end;

  Verificar((FechaBajaMedica > 0) and (edEX_FECHAACCIDENTE.Date > FechaBajaMedica), edEX_FECHAACCIDENTE, Format('La fecha del accidente no puede ser posterior a la de baja m�dica %s.', [DateToStr(FechaBajaMedica)]));
  Verificar((FechaBajaMedica > 0) and (edEX_FECHARECAIDA.Date > FechaBajaMedica), edEX_FECHARECAIDA, Format('La fecha del reca�da no puede ser posterior a la de baja m�dica %s.', [DateToStr(FechaBajaMedica)]));
  Verificar((FechaAltaMedica > 0) and (edEX_FECHAACCIDENTE.Date > FechaAltaMedica), edEX_FECHAACCIDENTE, Format('La fecha del accidente no puede ser posterior a la de alta m�dica %s.', [DateToStr(FechaAltaMedica)]));
  Verificar((FechaAltaMedica > 0) and (edEX_FECHARECAIDA.Date > FechaAltaMedica), edEX_FECHARECAIDA, Format('La fecha del reca�da no puede ser posterior a la de alta m�dica %s.', [DateToStr(FechaAltaMedica)]));
  Verificar(fraEX_TIPO.IsEmpty, fraEX_TIPO.edCodigo, Msg_70);

  if fraEX_TIPO.EsEnfermedadProfesional then
  begin
    Verificar(edEX_FECHAMANIFESTACION.Date = 0, edEX_FECHAMANIFESTACION, 'Si se trata de una enfermedad profesional, debe indicar la fecha de primera manifestaci�n.');
    Verificar(edEX_FECHAMANIFESTACION.Date > dHoy, edEX_FECHAMANIFESTACION, Format('La fecha de primera manifestaci�n no puede ser posterior a hoy %s.', [DateToStr(dHoy)]));
    Verificar(edEX_FECHAMANIFESTACION.Date > FechaAccidenteRecaida, edEX_FECHAMANIFESTACION, Format('La fecha de primera manifestaci�n no puede ser posterior a la del accidente/reca�da %s.', [DateToStr(FechaAccidenteRecaida)]));
    Verificar(edEX_FECHAMANIFESTACION.Date < SIN_ART_MINFECHA, edEX_FECHAMANIFESTACION, Format('La fecha de primera manifestaci�n no puede ser anterior a la del inicio de actividades de la ART %s.', [DateToStr(SIN_ART_MINFECHA)]));
    Verificar(edEX_FECHAEXPUESTO.Date = 0, edEX_FECHAEXPUESTO, 'Si se trata de una enfermedad profesional, debe indicar la fecha de exposici�n.');
    Verificar(edEX_FECHAEXPUESTO.Date > edEX_FECHAACCIDENTE.Date, edEX_FECHAEXPUESTO, Format('La fecha de exposici�n no puede ser posterior a la fecha del accidente %s.', [DateToStr(edEX_FECHAACCIDENTE.Date)]));
    Verificar(edEX_FECHAEXPUESTO.Date > edEX_FECHAMANIFESTACION.Date, edEX_FECHAEXPUESTO, Format('La fecha de exposici�n no puede ser posterior a la fecha de primera manifestaci�n %s.', [DateToStr(edEX_FECHAMANIFESTACION.Date)]));
  end;

  Verificar(fraEX_IDTRABAJADOR.IsEmpty, fraEX_IDTRABAJADOR.mskCUIL, 'Debe indicar el trabajador.');
  Verificar(not Is_RelacionLaboralActual_o_Historica(EmpresaSeleccionada.CUIT, fraEX_IDTRABAJADOR.CUIL), fraEX_IDTRABAJADOR.mskCUIL,
            'El trabajador no pertenece ni perteneci� nunca a la empresa ' + EmpresaSeleccionada.NombreEmpresa + ' en nuestra base de datos.');
  Verificar((cmbEX_FECHARECEPCION.Date <> 0) and (cmbEX_FECHARECEPCION.Date < FechaAccidenteRecaida), edEX_FECHAACCIDENTE, Format('La fecha del accidente/reca�da %s no puede ser mayor que la fecha de recepci�n.', [DateToStr(FechaAccidenteRecaida)]));
  Verificar(Is_ExisteSiniestro(EmpresaSeleccionada.CUIT, fraEX_IDTRABAJADOR.CUIL, FechaAccidenteRecaida, IdExpediente), fraEX_IDTRABAJADOR.mskCUIL, 'Para el CUIT, nro. de documento del trabajador y fecha de accidente indicados, ya existe un expediente.');

  Verificar(chkEX_EMPLEADOPCP.Checked and not(ExisteRelaLugarTrabajo(fraEX_IDTRABAJADOR.IdTrabajador)), chkEX_EMPLEADOPCP, 'No se puede chequear Empleado PCP debido a que no existe la relaci�n laboral con el establecimiento.' );  // TK 46558

  Verificar(chkEX_POSIBLERECUPERO.Checked and fraRS_TDESTINATARIO.IsEmpty, fraRS_TDESTINATARIO.edCodigo, 'Si se trata de un posible recupero, debe indicar el tipo de destinatario.');

  sSql      := 'SELECT NVL(MAX(nl_marcado), ''N'') ' +
                ' FROM sin.snl_enfermedadnolistada ' +
               ' WHERE nl_idexpediente = :IdExped ' +
                 ' AND nl_fechabaja IS NULL ';
  bMarcando := (rpNL_MARCADO.ItemIndex = 0) and (ValorSqlEx(sSql, [IdExpediente]) = 'N');

  Verificar(bMarcando and AreIn(sdqDatosEX_ESTADO.AsString, ['99', '22', '07']), rpNL_MARCADO,
            'No se puede marcar como enfermedad no listada a siniestros con �ste estado.');
  Verificar((rpNL_MARCADO.ItemIndex = 0) and (chkNL_ENFNOLISTADA.Checked = true) and (strtodate(sdqDatosEX_FECHAACCIDENTE.AsString) < StrToDate(FECHA_LIQ)), rpNL_MARCADO,
            'No se puede marcar como enfermedad no listada a siniestros con fecha de accidente anterior a ' + FECHA_LIQ + '.');
  Verificar(bMarcando and (sdqDatosEX_TIPO.AsString <> '3'), rpNL_MARCADO,
            'No se puede marcar como enfermedad no listada a siniestros con �ste tipo de contingencia.');

  sSql := 'SELECT 1 ' +
           ' FROM SIN.sei_eventoincapacidad, art.sev_eventosdetramite ' +
          ' WHERE ev_codigo = ei_codigo ' +
            ' AND ei_tipoevento IN(1, 7) ' +
            ' AND ev_evento > 0 ' +
            ' AND ev_idexpediente = :idexped ';
  Verificar(bMarcando and not(ExisteSqlEx(sSql, [IdExpediente])), rpNL_MARCADO,
            'No se puede marcar como enfermedad no listada a siniestros sin dictamen de incapacidad.');

  sSql := 'SELECT 1 FROM sin.snl_enfermedadnolistada ' +
          ' WHERE nl_idexpediente = :IdExped ' +
            ' AND nl_fechabaja IS NULL ';
  Verificar((rpNL_MARCADO.ItemIndex = 1) and not(ExisteSqlEx(sSql, [IdExpediente])),
             rpNL_MARCADO, 'No se puede desmarcar como enfermedad no listada si todav�a no fu� marcada como tal.');
  Verificar((rpNL_MARCADO.ItemIndex = 0) and (cmbNL_FDICTMARCA.Date = 0), cmbNL_FDICTMARCA, 'Debe ingresar la fecha del dictamen.');
  Verificar((rpNL_MARCADO.ItemIndex = 0) and (not chkNL_ENFNOLISTADA.Checked) and (not chkNL_HIPOACUSIA.Checked), chkNL_ENFNOLISTADA, 'Debe seleccionar el tipo de enfermedad.');
  Verificar((rpNL_MARCADO.ItemIndex = 0) and chkNL_ENFNOLISTADA.Checked and chkNL_HIPOACUSIA.Checked, chkNL_ENFNOLISTADA, 'No se pueden seleccionar ambos tipos de enfermedad a la vez.');
 // Verificar((rpNL_MARCADO.ItemIndex = 0) and (edNL_TAREA.Text = ''), edNL_TAREA, 'Debe ingresar la tarea.');      // Lu a pedido de Pau 03/02/10
  Verificar((rpNL_MARCADO.ItemIndex = 0) and (edNL_ENFERMEDAD.Text = ''), edNL_ENFERMEDAD, 'Debe ingresar la enfermedad.');
//  Verificar((rpNL_MARCADO.ItemIndex = 0) and (edNL_AGENTE.Text = ''), edNL_AGENTE, 'Debe ingresar el agente.');   // Lu a pedido de Pau 03/02/10
  Verificar((rpNL_MARCADO.ItemIndex = 0) and (edNL_OBSMARCA.Text = ''), edNL_OBSMARCA, 'Debe ingresar observacion.');
  Verificar((rpNL_MARCADO.ItemIndex = 1) and (cmbNL_FDICTDESMARCA.Date = 0), cmbNL_FDICTDESMARCA, 'Debe ingresar la fecha del dictamen.');
  Verificar((rpNL_MARCADO.ItemIndex = 1) and (edNL_OBSDESMARCA.Text = ''), edNL_OBSDESMARCA, 'Debe ingresar observacion.');

  inherited;
end;

procedure TfrmExpediente.EvaluarPluriempleo;   // Lu WF 8213
var
  i: Integer;
begin
  if chkEX_PLURIEMPLEO.Checked then
  begin
    DoGenerarAvisoPluriempleo(IntToStr(Siniestro), IntToStr(Orden), IntToStr(Recaida), PL_MARCAPL, '');     // TK 9505 agrego Orden y recaida (por separado)

    EjecutarSQLEx('UPDATE SIN.SEA_EXPEDIENTEART ' +
                     'SET EA_FECHABAJA = SYSDATE, ' +
                         'EA_USUBAJA = :USER ' +
                   'WHERE EA_FECHABAJA IS NULL ' +
                     'AND EA_IDEXPEDIENTE = :IDEXPEDIENTE ' +
                     'AND EA_IDART NOT IN (' + clbExpedienteART.CheckedValues.CommaText + ')', [Sesion.UserID, IdExpediente]);

    for i := 0 to clbExpedienteART.CheckedValues.Count - 1 do
      EjecutarSQLEx('INSERT INTO SIN.SEA_EXPEDIENTEART ' +
                     '(EA_ID, EA_IDEXPEDIENTE, EA_IDART, EA_FECHAALTA, EA_USUALTA) ' +
                    'SELECT SIN.SEQ_SEA_ID.NEXTVAL, :IDEXPEDIENTE, :IDART, SYSDATE, :USER ' +
                      'FROM DUAL ' +
                     'WHERE NOT EXISTS(SELECT 1 ' +
                                        'FROM SIN.SEA_EXPEDIENTEART ' +
                                       'WHERE EA_IDEXPEDIENTE = :IDEXPEDIENTE ' +
                                         'AND EA_FECHABAJA IS NULL ' +
                                         'AND EA_IDART = :IDART)', [IdExpediente,
                                                                    clbExpedienteART.CheckedValues[i],
                                                                    Sesion.UserID,
                                                                    IdExpediente,
                                                                    clbExpedienteART.CheckedValues[i]]);
  end;
end;

function TfrmExpediente.GetOrden: integer;
begin
  if sdqDatos.Active and not sdqDatos.IsEmpty then
    Result := sdqDatos.FieldByName('EX_ORDEN').AsInteger
  else
    Result := ART_EMPTY_ID;
end;

function TfrmExpediente.GetRecaida: integer;
begin
  if sdqDatos.Active and not sdqDatos.IsEmpty then
    Result := sdqDatos.FieldByName('EX_RECAIDA').AsInteger
  else
    Result := ART_EMPTY_ID;
end;

function TfrmExpediente.GetSiniestro: integer;
begin
  if sdqDatos.Active and not sdqDatos.IsEmpty then
    Result := sdqDatos.FieldByName('EX_SINIESTRO').AsInteger
  else
    Result := ART_EMPTY_ID;
end;

function TfrmExpediente.PermitirDesmarcarRecupero(Siniestro, Orden: integer): boolean;
var
  sSQL: string;
begin
  sSQL := 'SELECT LEGALES.Is_TieneRecupero(:Siniestro, :Orden) FROM DUAL';
  Result := ValorSQLEx(sSQL, [Siniestro, Orden]) = 'N';
end;

function TfrmExpediente.GetAddButtonVisible: boolean;
begin
  // no quiero llamar a inherited;
  Result := False;
end;

{ TfrmExpedientes }

procedure TfrmExpediente.Cancel(ASinPreguntar: Boolean = False);
begin
  inherited;
end;

procedure TfrmExpediente.Edit;
var
  sSQL: string;
  bCondicion: boolean;
begin
  inherited;
  fraEX_TIPOOnChange(nil);
  bCondicion := Seguridad.Activar(chkEX_POSIBLERECUPERO) and
                chkEX_POSIBLERECUPERO.Checked and
                not PermitirDesmarcarRecupero(Siniestro, Orden);

  VCLExtra.LockControls(gbDestinatario, not chkEX_POSIBLERECUPERO.Enabled);
  VCLExtra.LockControls(edEX_FECHARECAIDA, Recaida = 0);
  VCLExtra.LockControls(edEX_FECHAACCIDENTE, Recaida > 0);
  //VCLExtra.LockControls(chkEX_INTERCURRENCIA, (Recaida = 0));
  //VCLExtra.LockControls(edSiniestroIntercurrencia, (Recaida = 0));
  //VCLExtra.LockControls(btnRelacionarSinInterc, (Recaida = 0));
  VCLExtra.LockControls(rpEX_ESTADOCRONICO, not(Seguridad.Activar(rpEX_ESTADOCRONICO)) or
                                            not Es_GP_Cronico(sdqDatosEX_GTRABAJO.AsString) ); //cronicos  // TK 14839

  btnObservacionesIncapacidades.Visible := Seguridad.Activar(btnObservacionesIncapacidades);    // TK 6624

  if Recaida = 0 then
    edEX_FECHARECAIDA.Clear;

  chkEX_POSIBLERECUPEROClick(nil);
  chkEX_INTERCURRENCIAClick(nil);
  chkEX_PLURIEMPLEOClick(nil);

  if bCondicion then
    VCLExtra.LockControl(chkEX_POSIBLERECUPERO, True);

  if fraEX_TIPO.IsEmpty and (Recaida > 0) then
    sdqDatos.FieldByName('EX_TIPO').AsString := Get_TipoAccidenteRecaidaAnterior(Siniestro, Orden, Recaida);

  sSQL := 'SELECT 1 ' +
            'FROM AEM_EMPRESA, ACO_CONTRATO, SEX_EXPEDIENTES ' +
           'WHERE EX_SINIESTRO = :SINIESTRO ' +
             'AND EX_ORDEN = :ORDEN ' +
             'AND EX_RECAIDA = :RECAIDA ' +
             'AND EX_CUIT = EM_CUIT ' +
             'AND EM_ID = CO_IDEMPRESA ' +
             'AND CO_CONTRATO = AFILIACION.GET_CONTRATOVIGENTE (EX_CUIT, EX_FECHAACCIDENTE) ' +
             'AND CO_ADDENDA = :Valor ';

  VCLExtra.LockControl(chkEX_ADDENDA, not (Seguridad.Activar(chkEX_ADDENDA) and ExisteSQLEx(sSQL, [Siniestro, Orden, Recaida, 'S'])));
  VCLExtra.LockControls([chkEX_RECHAZADO, edEX_DIAGNOSTICO, fraEX_GRAVEDAD,
                         fraEX_DIAGNOSTICOOMS, fraPI_IDGRAVEDAD_CIE10,
                         rpEX_PRESUPINCAPACIDAD, fraEX_USUALTA, cmbEX_FECHACARGA,
                         cmbEX_FECHARECEPCION], True);

  bCondicion := not(Seguridad.Activar(rpNL_MARCADO)) or Is_SiniestroDeGobernacion(IdExpediente);
  VCLExtra.LockControl(rpNL_MARCADO, bCondicion);
  VCLExtra.LockControls([cmbNL_FDICTMARCA, edNL_TAREA, edNL_ENFERMEDAD, edNL_AGENTE,
                         edNL_OBSMARCA, chkNL_ENFNOLISTADA, chkNL_HIPOACUSIA],
                         bCondicion or (rpNL_MARCADO.ItemIndex <> 0));
  VCLExtra.LockControls([cmbNL_FDICTDESMARCA, edNL_OBSDESMARCA],
                         bCondicion or (rpNL_MARCADO.ItemIndex <> 1));

  try
    if (Sesion.Sector = 'CEM') and not fraEX_TIPO.IsSelected then
    begin
      sSQL := 'SELECT *' +
              '  FROM (SELECT MO_ID_TRABAJADOR, MO_TRABAJADOR_EXTERNO, MO_MECANISMOACCIDENTOLOGICO, MO_PEDIDO_FECHAHORA,' +
              '               DECODE(MO_TIPO_ACCIDENTE, 0, 1, 2, 2, NULL) AS TIPO, MO_ID, ' +
              '               NVL((SELECT TJ_CUIL' +
              '                      FROM CTJ_TRABAJADOR' +
              '                     WHERE TJ_ID = MO_ID_TRABAJADOR' +
              '                       AND TJ_CUIL = :CUIL' +
              '                       AND MO_TRABAJADOR_EXTERNO = ''N''), (SELECT TJ_CUIL' +
              '                                                            FROM CTJ_TRABAJADOR_EXT' +
              '                                                           WHERE TJ_ID = MO_ID_TRABAJADOR' +
              '                                                             AND TJ_CUIL = :CUIL' +
              '                                                             AND MO_TRABAJADOR_EXTERNO = ''S'')) AS CUIL, ' +
              '               NVL((SELECT TJ_NOMBRE' +
              '                      FROM CTJ_TRABAJADOR' +
              '                     WHERE TJ_ID = MO_ID_TRABAJADOR' +
              '                       AND TJ_CUIL = :CUIL' +
              '                       AND MO_TRABAJADOR_EXTERNO = ''N''), (SELECT TJ_NOMBRE' +
              '                                                            FROM CTJ_TRABAJADOR_EXT' +
              '                                                           WHERE TJ_ID = MO_ID_TRABAJADOR' +
              '                                                             AND TJ_CUIL = :CUIL' +
              '                                                             AND MO_TRABAJADOR_EXTERNO = ''S'')) AS TRABAJADOR, ' +
              '              EM_CUIT AS CUIT, EM_NOMBRE AS EMPRESA, MO_FECHA_ACCIDENTE' +
              '         FROM CEM.CMO_MOVIMIENTOS, AEM_EMPRESA' +
              '        WHERE EM_CUIT(+) = :CUIT' +
              '          AND TRUNC(MO_FECHA_ACCIDENTE) = :FECHA' +
              '          AND MO_ID_EMPRESA = EM_ID(+))' +
              ' WHERE CUIL IS NOT NULL';

      with GetQueryEx(sSQL, [CUIL, CUIL, CUIL, CUIL, CUIT, TDateTimeEx.Create(FechaAccidenteRecaida)]) do
      try
        if not IsEmpty then
        begin
          MostrarAlarma('CEM', Format('Se encontr� registro de un movimiento para %s de %s accidentado/a el %s.',
                                     [FieldByName('TRABAJADOR').AsString,
                                      FieldByName('EMPRESA').AsString,
                                      FormatDateTime('dd/mm/yyyy' , FieldByName('MO_FECHA_ACCIDENTE').AsDateTime)]));
          fraEX_TIPO.Codigo := FieldByName('TIPO').AsString;
          sdqDatos.FieldByName('EX_TIPO').AsString := FieldByName('TIPO').AsString;
          edEX_HORAACCIDENTE.Time := FieldByName('MO_FECHA_ACCIDENTE').AsDateTime;
          edEX_BREVEDESCRIPCION.Lines.Text := FieldByName('MO_MECANISMOACCIDENTOLOGICO').AsString;
          sdqDatos.FieldByName('EX_BREVEDESCRIPCION').AsString := edEX_BREVEDESCRIPCION.Lines.Text;
          edEX_OBSERVACIONES.Lines.Text := 'CECAP N�' + FieldByName('MO_ID').AsString + #13#10 + 'Fecha y hora de recepci�n de la denuncia: ' + FormatDateTime('dd/mm/yyyy HH:nn', FieldByName('MO_PEDIDO_FECHAHORA').AsdateTime) + ' hs.';
          sdqDatos.FieldByName('EX_OBSERVACIONES').AsString := edEX_OBSERVACIONES.Lines.Text;
        end
      finally
        Free;
      end;
    end;
  except
    InfoHint(fraEX_TIPO.edCodigo, 'Ocurri� un error al recuperar ciertos datos del CEM, por favor avise a Sistemas.');
  end;

end;

procedure TfrmExpediente.LoadData;
begin
  sdqDatos.Params[0].AsInteger := FIdExpediente;
  OpenQuery(sdqDatos);

  with GetQueryEx('SELECT EA_IDART ' +
                    'FROM SIN.SEA_EXPEDIENTEART ' +
                   'WHERE EA_IDEXPEDIENTE = :ID ' +
                     'AND EA_FECHABAJA IS NULL', [FIdExpediente]) do
  try
    clbExpedienteART.ClearChecks;
    while not Eof do
    begin
      clbExpedienteART.Check(Fields[0].AsString);
      Next;
    end;
  finally
    Free;
  end;

  if fraEX_TIPO.IsEmpty and (Recaida > 0) then
    fraEX_TIPO.Codigo := Get_TipoAccidenteRecaidaAnterior(Siniestro, Orden, Recaida);

   btnObservErrCarga.Enabled := Is_SiniestroCerrado_x_ErroDeCarga(IdExpediente) and ((Owner as TfrmAdmSiniestros).Seguridad.Claves.IsActive('GuardaObservaciones_ErrorCarga'));    // TK 55650

  //fraEX_TIPO.OnEnter := fraEX_TIPOEnter;
end;

procedure TfrmExpediente.Print;
begin
  inherited;
  with TrptResumen.Create(Self) do
  try
    Imprimir(SiniestroCompleto, IdExpediente, Siniestro);
  finally
    Free;
  end;
end;

function TfrmExpediente.Save: boolean;
begin
  Result := False;
  if sdqDatos.Active Then
  begin
    if sdqDatos.State in [dsInsert, dsEdit] then
    begin
      sdqDatos.Post;
    end;

    Result := inherited Save;
    EvaluarPluriempleo;  // Lu WF 8213
    sdqDatos.Refresh;
  end;
end;

procedure TfrmExpediente.btnObservacionesIncapacidadesClick(Sender: TObject);  // TK 6624
begin
  edSiniestro.SetValues(Siniestro, Orden, Recaida);
  Do_cargarItemsObserv;
  Do_cargarAclaraciones;
  memoAclaraciones.ReadOnly := True;
  memoAclaraciones.Color    := clSilver;
  LockControls(btnAceptarObservIncap, memoObservaciones.ReadOnly);

  if (fpObservIncap.ShowModal = MrOk) then
  begin
     //
  end;
end;

procedure TfrmExpediente.btnCerrarObservIncapClick(Sender: TObject);          // TK 6624
begin
  fpObservIncap.ModalResult := mrCancel;
end;

procedure TfrmExpediente.btnAceptarObservIncapClick(Sender: TObject);         // TK 6624
begin
  Do_guardarObservIncap;
  fpObservIncap.ModalResult := mrOk;
end;

procedure TfrmExpediente.Do_cargarAclaraciones;       // TK 6624
var sSql: string;
begin
  sSql := ' Select ob_id || '' - '' || ob_aclaracion aclaracion ' +
            ' From sin.sob_observacionincapacidad ';
  with GetQuery(sSQL) do
  try
    memoAclaraciones.Lines.Clear;
    while not eof do
    begin
      memoAclaraciones.Lines.Add(FieldByName('ACLARACION').AsString);
      next;
    end;
  finally
    Free;
  end;
end;

procedure TfrmExpediente.Do_guardarObservIncap;     // TK 6624
var i, iUlt: integer;
begin

  iUlt := 0;
  // doy de baja a todos los registros con ese idexpediente
  EjecutarSQLEx('UPDATE SIN.sos_siniobservincap ' +
                     'SET os_fechabaja = SYSDATE, ' +
                         'os_usubaja = :USER ' +
                   'WHERE os_fechabaja IS NULL ' +
                     'AND os_idexpediente = :IDEXPEDIENTE ', [Sesion.UserID, IdExpediente]);

  for i := 0 to (clbObservIncap.CheckedValues.Count - 1) do
  begin
    EjecutarSQLEx('INSERT INTO SIN.sos_siniobservincap ' +
                   '(os_idexpediente, os_idobservincap, os_usualta, os_fechaalta) VALUES ' +
                   ' (:IDEXPEDIENTE, :IDOBSEVINCAP, :USER, ART.ACTUALDATE )',
                   [IdExpediente, clbObservIncap.CheckedValues[i], Sesion.UserID]);
    iUlt := i;     // pongo esta variable porque me da un warning si quiero usar la var i fuera del loop.
  end;

  // Para guardar las observaciones (tengo que ponerlo en un solo registro con el mismo idexpediente) as� que elijo el ultimo:
  if (Trim(memoObservaciones.text) <> '') then
    EjecutarSQLEx('UPDATE SIN.sos_siniobservincap ' +
                    ' SET os_observ = :OBSERV ' +
                  ' WHERE os_idexpediente = :IDEXPEDIENTE ' +
                    ' AND os_fechabaja IS NULL ' +
                    ' AND os_idobservincap = :IDOBSEVINCAP ',
                    [memoObservaciones.Text, IdExpediente, clbObservIncap.CheckedValues[iUlt]]);
end;

procedure TfrmExpediente.Do_cargarItemsObserv;      // TK 6624
begin
  clbObservIncap.SQL := 'SELECT OB_ID || '' - '' || OB_OBSERVACION OB_OBSERVACION, OB_ID ' +
                         ' FROM SIN.SOB_OBSERVACIONINCAPACIDAD ' +
                        ' WHERE OB_FECHABAJA IS NULL ' +
                        ' ORDER BY OB_ID ' ;

  with GetQueryEx('SELECT os_idobservincap ' +
                    'FROM SIN.sos_siniobservincap ' +
                   'WHERE os_idexpediente = :IDEXP ' +
                     'AND os_fechabaja IS NULL', [IdExpediente]) do
  try
    clbObservIncap.ClearChecks;
    while not Eof do
    begin
      clbObservIncap.Check(Fields[0].AsString);
      Next;
    end;
  finally
    Free;
  end;

  memoObservaciones.Text := ValorSqlEx('SELECT os_observ ' +
                                        ' FROM SIN.sos_siniobservincap ' +
                                       ' WHERE os_idexpediente = :IDEXP' +
                                         ' AND os_fechabaja IS NULL ' +
                                         ' and os_observ IS NOT NULL ', [IdExpediente]);
end;

function TfrmExpediente.Es_GP_Cronico(sGrupoTrab: String): boolean;     // TK 14839
var sSql: string;
begin
  sSql := ' SELECT gp_cronico ' +
            ' FROM art.mgp_gtrabajo ' +
           ' WHERE gp_codigo = :sCodigo ';
  Result := (ValorSqlEx(sSql, [sGrupoTrab]) = 'S');
end;

procedure TfrmExpediente.btnMinFechaClick(Sender: TObject);
var
  sSql: String;
begin
  Verificar(IdExpediente = 0, Nil, 'Debe seleccionar el siniestro.');
  sSql := 'SELECT art.siniestro.get_minfechaaccidente(:idex)' +
           ' FROM dual';
  edMINFECHAACCID.Date := ValorSqlDateTimeEx(sSql, [IdExpediente]);
  edSiniestroMin.SetValues(Siniestro, Orden, Recaida);
  btnCerrarMin.Enabled := True;
  fpMinFAccid.ShowModal;
end;

procedure TfrmExpediente.fraEX_TIPOEnter(Sender: TObject);
begin
  tipo_siniestro := fraEX_TIPO.Codigo;
end;

procedure TfrmExpediente.btnAceptarObservErrCargaClick(Sender: TObject);   // TK 55650
begin
  Verificar(MemoObservErrorCarga.Lines.Text = '', MemoObservErrorCarga, 'Debe ingresar las observaciones.');
  Do_guardarObservErrorCarga;
  fpObservErrCarga.ModalResult := mrOk;
end;

procedure TfrmExpediente.btnCancelarObservErrCargaClick(Sender: TObject);  // TK 55650
begin
  fpObservErrCarga.ModalResult := mrCancel;
end;

procedure TfrmExpediente.btnObservErrCargaClick(Sender: TObject);         // TK 55650
begin
  fpObservErrCarga.ShowModal;
end;

procedure TfrmExpediente.btnRelacionarSinIntercClick(Sender: TObject);
var ssql: string;
begin

  Verificar(edSiniestroIntercurrencia.IsEmpty, edSiniestroIntercurrencia, 'Debe ingresar un siniestro');
  Verificar((not edSiniestroIntercurrencia.IsEmpty) and ExisteSqlEx('select 1 from sex_expedientes where ex_siniestro = :sin and ex_orden = :ord and ex_recaida = :rec and ex_causafin in (''99'', ''95'', ''02'')',
            [edSiniestroIntercurrencia.Siniestro, edSiniestroIntercurrencia.Orden, edSiniestroIntercurrencia.Recaida]),
            edSiniestroIntercurrencia, 'Siniestro cerrado o rechazado');

  Verificar((not edSiniestroIntercurrencia.IsEmpty) and (fraEX_IDTRABAJADOR.CUIL <> ValorSqlEx('select ex_cuil from sex_expedientes where ex_siniestro = :sin and ex_orden = :ord and ex_recaida = :rec',
            [edSiniestroIntercurrencia.Siniestro, edSiniestroIntercurrencia.Orden, edSiniestroIntercurrencia.Recaida])),
            edSiniestroIntercurrencia, 'El siniestro intercurrente debe corresponder al mismo CUIL');

  ssql := ' update sex_expedientes ' +
          '    set ex_idexpintercurrencia = :idexpint ' +
          '  where ex_id = :idexp ';

  EjecutarSqlEx(ssql, [ValorSqlEx('select art.siniestro.get_idexpediente(:sin, :ord, :rec) from dual',
               [edSiniestroIntercurrencia.Siniestro, edSiniestroIntercurrencia.Orden, edSiniestroIntercurrencia.Recaida]), IdExpediente]);

  InfoHint(btnRelacionarSinInterc, 'Siniestro relacionado correctamente');

end;

procedure TfrmExpediente.Do_guardarObservErrorCarga;     // TK 55650
var sSql: string;
begin
  try
    BeginTrans;
    sSql := 'UPDATE art.sex_expedientes ' +
              ' SET ex_observ_errorcarga = ' + SqlValue(MemoObservErrorCarga.Lines.Text) +
            ' WHERE ex_id = ' + SqlInt(IdExpediente);

    EjecutarSqlST(sSql);
    CommitTrans;
  except
    on E: Exception do
    begin
      RollBack;
      MsgBox('Ocurrio un error al guardar los datos.' + CRLF + E.Message);
    end;
  end;

end;

procedure TfrmExpediente.fpObservErrCargaBeforeShow(Sender: TObject);
begin
  inherited;
  VCLExtra.LockControls([MemoObservErrorCarga, btnAceptarObservErrCarga, btnCancelarObservErrCarga], False);
  MemoObservErrorCarga.Lines.Text := ValorSqlEx('SELECT ex_observ_errorcarga FROM art.sex_expedientes WHERE ex_id = :idexped ', [IdExpediente]);
end;

end.
