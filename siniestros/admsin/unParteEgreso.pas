unit unParteEgreso;

interface

uses
  {$IFDEF VER180} rxPlacemnt, rxToolEdit, rxCurrEdit, {$ELSE} Placemnt, ToolEdit, CurrEdit, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unSinForm, SDEngine, DB, unFraSDA_DETALLEARCHIVO, DateTimeEditors,
  PatternEdit, DBPatternEdit, DBCtrls, unFraStaticCTB_TABLAS, unFraStaticCodigoDescripcion,
  unArtFrame, unArtDBAwareFrame, unArtDbFrame, unfraCPR_PRESTADOR, StdCtrls, Mask,
  DateComboBox, ExtCtrls, unFraSTC_TIPOGRAVEDAD_CIE10, unFraStaticCodDesc, unFraCDG_DIAGNOSTICO,
  RXDBCtrl, artSeguridad, XPMenu, JvExExtCtrls, JvComponent, JvDBRadioPanel, unFraTipoEgreso,
  unFraTipoTratamiento, JvgGroupBox, unFraTipoSiniestro, unFraCodigoDescripcion, unFraCodDesc,
  unFraSTG_TIPOGRAVEDAD, unFraSMC_MOTIVONOCARGA, unFraPrestadorFueraDeContrato, ActnList,
  unFraMAU_AUDITORES, FormPanel, unRptCeseDeILT, ansisql, RxToolEdit,
  JvExtComponent, RxPlacemnt;

type
  TModoEg = (mAlta, mModif, mBaja, mNone);
  TfrmParteEgreso = class(TSinForm)
    gbPrestador: TJvgGroupBox;
    fraPE_IDPRESTADOR: TfraPrestadorFueraDeContrato;
    gbDatos1: TJvgGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    fraPE_IDTIPODEEGRESO: TfraTipoEgreso;
    fraPE_IDDIAGNOSTICO: TfraCDG_DIAGNOSTICO;
    fraPE_IDGRAVEDAD_CIE10: TfraSTC_TIPOGRAVEDAD_CIE10;
    edPE_DIAGNOSTICO: TDBMemo;
    edPE_FECHAALTALABORAL: TDBDateEdit;
    gbTratamiento: TJvgGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label23: TLabel;
    edPE_TRATAMINSTITUCION: TDBEdit;
    edPE_TRATAMUBICACION: TDBEdit;
    edPE_HISTORIACLINICA: TDBEdit;
    edPE_MEDICO: TDBEdit;
    Label25: TLabel;
    edPE_FECHABAJAMEDICA: TDBDateEdit;
    Label2: TLabel;
    edPE_DIASBAJATOTALES: TDBPatternEdit;
    Label3: TLabel;
    edPE_FECHAREINICIO: TDBDateEdit;
    Label30: TLabel;
    edPE_FECHAALTAMEDICA: TDBDateEdit;
    sdqDatosPE_ID: TFloatField;
    sdqDatosPE_IDEXPEDIENTE: TFloatField;
    sdqDatosPE_IDPRESTADOR: TFloatField;
    sdqDatosPE_IDTIPODEEGRESO: TFloatField;
    sdqDatosPE_IDGRAVEDAD: TFloatField;
    sdqDatosPE_DIAGNOSTICO: TStringField;
    sdqDatosPE_IDDIAGNOSTICO: TFloatField;
    sdqDatosPE_PRESUPINCAPACIDAD: TStringField;
    sdqDatosPE_OBSERVACIONES: TStringField;
    sdqDatosPE_TRATAMIENTO: TStringField;
    sdqDatosPE_TRATAMINSTITUCION: TStringField;
    sdqDatosPE_TRATAMUBICACION: TStringField;
    sdqDatosPE_INTERNADODESDE: TDateTimeField;
    sdqDatosPE_INTERNADOHASTA: TDateTimeField;
    sdqDatosPE_INTERNADODIAS: TFloatField;
    sdqDatosPE_FECHABAJAMEDICA: TDateTimeField;
    sdqDatosPE_FECHAALTALABORAL: TDateTimeField;
    sdqDatosPE_FECHAALTAMEDICA: TDateTimeField;
    sdqDatosPE_FECHAREINICIO: TDateTimeField;
    sdqDatosPE_DIASBAJATOTALES: TFloatField;
    sdqDatosPE_FECHARECONSULTA: TDateTimeField;
    sdqDatosPE_HISTORIACLINICA: TStringField;
    sdqDatosPE_MEDICO: TStringField;
    sdqDatosPE_RECALIFICACION: TStringField;
    sdqDatosPE_FECHARECEPCION: TDateTimeField;
    sdqDatosPE_USUALTA: TStringField;
    sdqDatosPE_FECHAALTA: TDateTimeField;
    sdqDatosPE_USUMODIF: TStringField;
    sdqDatosPE_FECHAMODIF: TDateTimeField;
    sdqDatosPE_FCONFORME: TStringField;
    sdqDatosPE_OBRASOCIAL: TStringField;
    sdqDatosPE_IDGRAVEDAD_CIE10: TFloatField;
    sdqDatosPE_FECHACARGA: TDateTimeField;
    sdqDatosPE_CIE10REVISADO: TStringField;
    sdqDatosPE_USUARIOREVISION: TStringField;
    sdqDatosPE_FECHAREVISION: TDateTimeField;
    sdqDatosPE_CPAPEL: TFloatField;
    Label36: TLabel;
    edPE_OBSERVACIONES: TDBMemo;
    gbArchivo: TJvgGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    fraSDA_DETALLEARCHIVOpme: TfraSDA_DETALLEARCHIVO;
    edPE_FECHARECEPCION: TDBDateEdit;
    edSector: TDBEdit;
    edPE_FECHAALTA: TDBDateEdit;
    chkPE_TRATAMIENTO: TDBCheckBox;
    sdqDatosSE_SECTOR: TStringField;
    sdqDatosFACCREC: TDateTimeField;
    sdqDatosEX_FECHAALTA: TDateTimeField;
    sdqDatosEX_FECHAACCIDENTE: TDateTimeField;
    sdqDatosEX_TIPO: TStringField;
    sdqDatosEX_FECHARECEPCION: TDateTimeField;
    sdqDatosDA_OPCION: TStringField;
    sdqDatosDA_HOJAS: TFloatField;
    Label16: TLabel;
    rpPE_PRESUPINCAPACIDAD: TJvDBRadioPanel;
    Label26: TLabel;
    rpPE_RECALIFICACION: TJvDBRadioPanel;
    fraPE_IDTIPOTRATAMIENTO: TfraTipoTratamiento;
    Label13: TLabel;
    sdqDatosPE_IDTIPOTRATAMIENTO: TFloatField;
    sdqDatosPE_IDMOTIVONOCARGA: TFloatField;
    Label34: TLabel;
    Label35: TLabel;
    fraPE_IDMOTIVONOCARGA: TfraSMC_MOTIVONOCARGA;
    fraPE_IDGRAVEDAD: TfraSTG_TIPOGRAVEDAD;
    Label14: TLabel;
    edPE_FECHARECONSULTA: TDBDateEdit;
    edPE_INTERNADODESDE: TDBDateEdit;
    Label17: TLabel;
    edPE_INTERNADOHASTA: TDBDateEdit;
    Label18: TLabel;
    edPE_INTERNADODIAS: TDBPatternEdit;
    chkPE_INTERNADO: TDBCheckBox;
    sdqDatosPE_INTERNADO: TStringField;
    sdqDatosPE_PRESTADOR_NOMBRE: TStringField;
    sdqDatosPE_PRESTADOR_TELEFONOS: TStringField;
    sdqDatosPE_PRESTADOR_CALLE: TStringField;
    sdqDatosPE_PRESTADOR_NUMERO: TStringField;
    sdqDatosPE_PRESTADOR_PISO: TStringField;
    sdqDatosPE_PRESTADOR_DEPARTAMENTO: TStringField;
    sdqDatosPE_PRESTADOR_LOCALIDAD: TStringField;
    sdqDatosPE_PRESTADOR_CPOSTAL: TStringField;
    sdqDatosPE_PRESTADOR_CPOSTALA: TStringField;
    sdqDatosPE_PRESTADOR_PROVINCIA: TStringField;
    rpPE_OBRASOCIAL: TJvDBRadioPanel;
    Label15: TLabel;
    rpPE_FCONFORME: TJvDBRadioPanel;
    Label19: TLabel;
    Label20: TLabel;
    edEX_FECHACESEILT: TDBDateEdit;
    sdqDatosEX_FECHACESEILT: TDateTimeField;
    fraPE_MEDICOAUDITOR: TfraMAU_AUDITORES;
    Label21: TLabel;
    sdqDatosPE_MEDICOAUDITOR: TFloatField;
    fraSDA_DETALLEARCHIVOci: TfraSDA_DETALLEARCHIVO;
    sdqDatosDA_OPCIONCI: TStringField;
    sdqDatosDA_HOJASCI: TFloatField;
    fpAbm: TFormPanel;
    BevelAbm: TBevel;
    Label24: TLabel;
    btnAceptar: TButton;
    btnCancelar: TButton;
    edPV_FECHACONTROL: TDateEdit;
    edPV_OBSERVACIONES: TMemo;
    Label22: TLabel;
    sdqDatosPV_FECHACONTROL: TDateTimeField;
    sdqDatosPV_OBSERVACIONES: TStringField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    edPE_FECHAABMIXTO: TDBDateEdit;
    Label27: TLabel;
    sdqDatosPE_ABANDONOMIXTO: TStringField;
    sdqDatosPE_FECHAABMIXTO: TDateTimeField;
    chkPE_ABANDONOMIXTO: TDBCheckBox;
    Label28: TLabel;
    edFINCULPABLE: TDateComboBox;
    Label29: TLabel;
    edPE_ALTAODONTDEF: TDBDateEdit;
    Bevel3: TBevel;
    sdqDatosPE_ALTAODONTDEF: TDateTimeField;
    chkPsiquiatria: TDBCheckBox;
    sdqDatosPE_PSIQUIATRIA: TStringField;
    chkPE_CONTPA_ODONTOL: TDBCheckBox;
    Bevel4: TBevel;
    chkPE_CONTPA_DERMAT: TDBCheckBox;
    Label31: TLabel;
    edPE_ALTADERMATDEF: TDBDateEdit;
    Bevel5: TBevel;
    chkPE_CONTPA_PSICOL: TDBCheckBox;
    Label32: TLabel;
    edPE_ALTAPSICOLDEF: TDBDateEdit;
    sdqDatosPE_CONTPA_ODONTOL: TStringField;
    sdqDatosPE_CONTPA_DERMAT: TStringField;
    sdqDatosPE_CONTPA_PSICOL: TStringField;
    sdqDatosPE_ALTADERMATDEF: TDateTimeField;
    sdqDatosPE_ALTAPSICOLDEF: TDateTimeField;
    sdqDatosPE_PRESTAC_MANTENIM: TStringField;
    Label33: TLabel;
    rpPE_PRESTAC_MANTENIM: TJvDBRadioPanel;
    edUsuAlta: TDBEdit;
    Label37: TLabel;
    procedure FSFormCreate(Sender: TObject);
    procedure sdqDatosNewRecord(DataSet: TDataSet);
    procedure Validar(DataSet: TDataSet);
    procedure chkPE_TRATAMIENTOClick(Sender: TObject);
    procedure ValidacionMuerto(Sender: TObject);
    procedure CalculoDias(Sender: TObject);
    procedure fraPE_IDTIPOTRATAMIENTOPropiedadesDBAwareChange(Sender: TObject);
    procedure fraPE_IDTIPODEEGRESOPropiedadesDBAwareChange(Sender: TObject);
    procedure chkPE_INTERNADOClick(Sender: TObject);
    procedure CalcularDias(Sender: TObject);
    procedure dsDatosUpdateData(Sender: TObject);
    procedure edPE_MEDICOChange(Sender: TObject);
    procedure fraPE_MEDICOAUDITORPropiedadesChange(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure fpAbmShow(Sender: TObject);
    procedure chkPE_ABANDONOMIXTOClick(Sender: TObject);
    procedure sdqDatosAfterClose(DataSet: TDataSet);
    procedure edPE_FECHAALTAMEDICAChange(Sender: TObject);
    procedure chkPE_CONTPA_ODONTOLClick(Sender: TObject);
    procedure chkPE_CONTPA_DERMATClick(Sender: TObject);
    procedure chkPE_CONTPA_PSICOLClick(Sender: TObject);
    procedure fraPE_IDTIPOTRATAMIENTOedCodigoChange(Sender: TObject);
    procedure rpPE_RECALIFICACIONChange(Sender: TObject);
  private
    FFechaAltaRecalificacion: TDateTime;
    function Get_TrabajadorMuerto: boolean;
    procedure Bajas(AValue: Boolean);
    procedure Do_HabilitacionesPE_TRATAMIENTO;
    function AlgunOtroCambio: Boolean;
    function Es_ValorCie10Permitido(sCodCie10: string):boolean; // TK 16355
    function Es_SiniestroRechazado: boolean;                    // TK 16355
    function EsPacienteInternado: boolean;                      // TK 24587
    procedure Do_Habilitar_BajaMedica;                          // TK 43664
    procedure Do_habilitarControlesPostAlta;                    // TK 63624
    function Is_PostAlta(sCod:string):boolean;
  public
    procedure LoadData; override;
    procedure GetAltaLabSinReinicio;
    function  Save: boolean; override;
    procedure Cancel(ASinPreguntar: Boolean = False); override;
    procedure Delete; override;
    procedure Edit; override;
    procedure Print; override;
    procedure Insert; override;
  end;

const
  RECHAZO = '02';

var
  frmParteEgreso: TfrmParteEgreso;
  vTratamientoDeschequeado: Boolean;  // TK 9390
  vIdPrestador: Integer;
  AltaLabSinReinicio: TDateTime;
  vModo: TModoEg;

implementation

uses
  VCLExtra, unDmPrincipal, CustomDlgs, DbFuncs, unArt, unSesion, unSiniestros,
  unRptParteEgreso, unComunes, Strfuncs, unRtti, unAdmSiniestros;

{$R *.dfm}

{ TfrmParteEgreso }

procedure TfrmParteEgreso.Cancel(ASinPreguntar: Boolean = False);
begin
  inherited;
  LoadData;
  vModo := mNone;
end;

procedure TfrmParteEgreso.Edit;
begin
  vModo := mModif;
  if not Inserting then
    Bajas(True);

  inherited;
  fraSDA_DETALLEARCHIVOpme.Clear;
  fraSDA_DETALLEARCHIVOci.Clear;
  VCLExtra.LockControls([edPE_FECHAALTALABORAL, edPE_FECHAREINICIO, edPE_DIASBAJATOTALES{, edFINCULPABLE}], True);    // TK 44287
  VCLExtra.LockControls([edPE_FECHAALTAMEDICA], Editing and not Seguridad.Activar(edPE_FECHAALTAMEDICA));
  VCLExtra.LockControls([edPE_FECHAABMIXTO], not chkPE_ABANDONOMIXTO.Checked);   // TK 20581

  Do_HabilitacionesPE_TRATAMIENTO;   // lo cambie pero hace lo mismo que el click (por TK 9390)

  chkPE_INTERNADOClick(nil);
  Do_habilitarControlesPostAlta;
end;

procedure TfrmParteEgreso.LoadData;
begin
  fraSDA_DETALLEARCHIVOpme.Clear;
  fraSDA_DETALLEARCHIVOci.Clear;
  Bajas(True);

  sdqDatos.Params[0].AsInteger := FIdExpediente;
  OpenQuery(sdqDatos);

  if not sdqDatos.IsEmpty then
    sdqDatos.Last;

  if sdqDatos.RecordCount > 1 then
    InfoHint(edPE_DIAGNOSTICO, 'La consulta devolvi� mas de un parte de egreso. Si este dato no es correcto consulte a sistemas.');

  fraPE_IDTIPODEEGRESO.ShowBajas := True;
  FFechaAltaRecalificacion := Get_FechaAltaRecalificacion(Siniestro, Orden, Recaida);

  if edPE_FECHAALTALABORAL.Date = 0 then
    edPE_FECHAALTALABORAL.Date := FFechaAltaRecalificacion;

  vTratamientoDeschequeado := False;

//  edFINCULPABLE.Date  := Get_FechaInculpable(FIdExpediente);       // lo comento por ticket 44287
end;

procedure TfrmParteEgreso.GetAltaLabSinReinicio;
begin
  AltaLabSinReinicio := ValorSqlDateTimeEx('select art.reca.Get_UltimoAltaSinReinicio(:sin, :ord) from dual ', [Siniestro, orden]);
  if AltaLabSinReinicio <> 0 then
  begin
    edPE_FECHAALTALABORAL.Date := AltaLabSinReinicio;
    InfoHint(edPE_FECHAALTALABORAL, 'Alta de recalificaci�n');
  end;
end;

procedure TfrmParteEgreso.Bajas(AValue: Boolean);
begin
  fraPE_IDPRESTADOR.ShowBajas := AValue;
end;

function TfrmParteEgreso.Save: boolean;
var
  IdExpRelacionado, SiniPluriemp:string;
begin
  Result := False;
  IdExpRelacionado := '';
  SiniPluriemp  := '';
  if sdqDatos.Active then
  begin
    if sdqDatos.State in [dsInsert, dsEdit] then
    begin
      fraPE_IDPRESTADOR.Change;
      ValidacionMuerto(nil);
      sdqDatos.Post;
    end;

    with TDataCycler.Create(sdqDatos) do
      try
        repeat
          if sdqDatos.FieldByName('PE_ID').AsInteger = ART_EMPTY_ID Then
          begin
            sdqDatos.Edit;
            sdqDatos.FieldByName('PE_ID').AsInteger := GetSecNextVal('SIN.SEQ_SPE_ID');
            sdqDatos.Post;
          end;
        until not Cycle;
      finally
        Free;
      end;

    Result := inherited Save;

    IdExpRelacionado := Get_ExpedPluriempleo(sdqDatosPE_IDEXPEDIENTE.AsString);
    if IdExpRelacionado <> '' then  // Lu WF 8139
    begin
      SiniPluriemp := ValorSQLEx('SELECT ART.SINIESTRO.get_siniestrocompleto(:IdExp) FROM DUAL', [IdExpRelacionado]);
      MsgBox('El Siniestro posee Pluriempleo. Se enviara un mail al Sector responsable.', MB_ICONINFORMATION + MB_OK);
      DoGenerarAvisoPluriempleo(IntToStr(Siniestro), IntToStr(Orden), IntToStr(Recaida), PL_PEGRESO, SiniPluriemp);  // TK 9505 se agrego Orden y Recaida
    end;
  end;
  vTratamientoDeschequeado := False;
  vModo := mNone;
end;

procedure TfrmParteEgreso.FSFormCreate(Sender: TObject);
begin
  inherited;
  with fraPE_IDPRESTADOR do
  begin
    AutoSize := False;
    Anchors := Anchors + [akRight];
    DataSource := Self.dsDatos; { No quitar el Self }
    DataField := 'PE_IDPRESTADOR';
    PrefijoTabla := 'PE_';
  end;
  Bajas(True);
  vTratamientoDeschequeado := False;
  vModo := mNone;

end;

procedure TfrmParteEgreso.sdqDatosNewRecord(DataSet: TDataSet);
var
  sSQL: string;
begin
  with DataSet do
  begin
    Bajas(False);

    FieldByName('PE_ID').AsInteger := ART_EMPTY_ID;
    FieldByName('PE_IDEXPEDIENTE').AsInteger := FIdExpediente;
    FieldByName('PE_USUALTA').AsString := Sesion.UserID;
    FieldByName('PE_FECHAALTA').AsDateTime := dHoy;
    FieldByName('PE_FECHACARGA').AsDateTime := dHoy;

    FieldByName('PE_PRESUPINCAPACIDAD').AsString := '?';
    FieldByName('PE_RECALIFICACION').AsString    := '?';
    FieldByName('PE_FCONFORME').AsString         := '?';
    FieldByName('PE_OBRASOCIAL').AsString        := '?';
    FieldByName('PE_PRESTAC_MANTENIM').AsString  := '?';
    FieldByName('PE_TRATAMIENTO').AsString       := 'N';
    FieldByName('PE_INTERNADO').AsString         := 'N';
    FieldByName('PE_ABANDONOMIXTO').AsString     := 'N';   // TK 18603
    FieldByName('PE_PSIQUIATRIA').AsString       := 'N';

    FieldByName('PE_CONTPA_ODONTOL').AsString    := 'N';     // TK 63624
    FieldByName('PE_CONTPA_DERMAT').AsString     := 'N';
    FieldByName('PE_CONTPA_PSICOL').AsString     := 'N';


    sSQL := 'SELECT PI_DIAGNOSTICO, PI_IDDIAGNOSTICO, PI_FECHABAJAMEDICA, PI_IDGRAVEDAD_CIE10, ' +
                   'ART.SINIESTRO.GET_IDCIE10(EX_ID) as IDCIE10, ' +                     // TK 12140 cambie la funcion
                   'ART.SINIESTRO.get_IDCIE10GRAVEDAD(EX_ID) as IDGRAVEDAD_CIE10, ' +    // TK 12140 idem
                   'PI_IDPRESTADOR ' +
              'FROM SEX_EXPEDIENTES ' +
         'LEFT JOIN SIN.SPI_PARTEDEINGRESO ON PI_IDEXPEDIENTE = EX_ID ' +
             'WHERE EX_ID = :ID';

    with GetQueryEx(sSQL, [FIdExpediente]) do
    try
      if not IsEmpty then
      begin
        sdqDatos.FieldByName('PE_DIAGNOSTICO').AsString       := FieldByName('PI_DIAGNOSTICO').AsString;
      //  sdqDatos.FieldByName('PE_FECHABAJAMEDICA').AsDateTime := FieldByName('PI_FECHABAJAMEDICA').AsDateTime;
        sdqDatos.FieldByName('PE_IDGRAVEDAD_CIE10').Value     := FieldByName('IDGRAVEDAD_CIE10').Value;    // TK 12140    estos son IDs.
        sdqDatos.FieldByName('PE_IDDIAGNOSTICO').Value        := FieldByName('IDCIE10').Value;             // TK 12140    estos son IDs.
        sdqDatos.FieldByName('PE_IDPRESTADOR').Value          := FieldByName('PI_IDPRESTADOR').Value;
      end;
    finally
      Free;
    end;

    fraPE_IDTIPODEEGRESO.ShowBajas := False;
    VCLExtra.LockControls([edPE_FECHAALTAMEDICA], False);
  end;
  VCLExtra.LockControls([edPE_FECHAABMIXTO], not chkPE_ABANDONOMIXTO.Checked);   // TK 20581
end;

procedure TfrmParteEgreso.Validar(DataSet: TDataSet);
{
const
  Msg_01 = 'Debe indicar la gravedad si selecciona un diagn�stico.';
  Msg_02 = 'Debe completar la descripci�n del hecho.';
  Msg_03 = 'La fecha de recepci�n es obligatoria.';
  Msg_04 = 'La fecha de recepci�n no puede ser posterior a la de hoy %s.';
  Msg_05 = 'La fecha de recepci�n no puede ser posterior a la fecha de carga del siniestro, para el primer parte ingresado %s.';
  Msg_06 = 'La fecha de recepci�n no puede ser anterior a la fecha del accidente/reca�da %s.';
  Msg_07 = 'La fecha de recepci�n no puede ser posterior a la de alta %s del parte.';
  Msg_08 = 'La fecha de antig�edad en el puesto no puede ser posterior a la de hoy %s.';
  Msg_09 = 'La fecha de antig�edad en el puesto no puede ser posterior a la del accidente %s.';
  Msg_10 = 'La cantidad de meses en el puesto es incorrecta.';
  Msg_11 = 'La fecha de baja m�dica no puede ser posterior a la de hoy %s.';
  Msg_12 = 'La fecha de baja m�dica no puede ser anterior a la fecha del accidente/reca�da %s.';
  Msg_13 = 'La fecha de baja m�dica no puede ser posterior a la de alta del documento %s.';
  Msg_14 = 'La fecha de recepci�n no puede ser anterior a la fecha de baja m�dica %s.';
  Msg_16 = 'Debe indicar el prestador.';
  Msg_17 = 'La fecha de baja m�dica no puede ser mayor que la m�nima fecha desde de liquidaci�n de ILT (menos los d�as de franquicia) %s.';
  Msg_18 = 'Recuerde que falta cargar la fecha de alta m�dica de al menos una de las reca�das anteriores.';
  Msg_19 = 'La fecha de baja m�dica es anterior a la fecha de alta m�dica de una reca�da anterior %s.';
  Msg_20 = 'La fecha reconsulta no puede ser anterior a la fecha de baja m�dica %s.';
  Msg_21 = 'La fecha de baja m�dica es obligatoria.';
  Msg_22 = 'El tipo de alta (egreso) es obligatorio.';
  Msg_23 = 'Debe indicar el tipo de tratamiento.';
  Msg_24 = 'La fecha de recepci�n no puede ser anterior a la fecha de egreso (alta M�dica) %s.';
  Msg_25 = 'La cantidad de d�as de baja m�dica deben ser mayores o iguales que 0.';
  Msg_26 = 'La gravedad no puede ser leve, dados los d�as de baja del siniestro %s';
  Msg_27 = 'Debe indicar si corresponde o no una recalificaci�n.';
  Msg_28 = 'La fecha de egreso (alta m�dica) es obligatoria.';
  Msg_29 = 'La fecha de egreso (alta m�dica) no puede ser posterior a la de hoy %s.';
  Msg_30 = 'La fecha de egreso (alta m�dica) no puede ser anterior a la fecha de baja m�dica %s.';
  Msg_31 = 'La fecha de egreso (alta m�dica) no puede ser menor que la m�xima fecha hasta de liquidaci�n de ILT %s.';
  Msg_32 = 'Debe completar la fecha de reinicio laboral, completando el alta m�dica.';
  Msg_33 = 'La fecha de egreso no puede ser posterior a la fecha de reinicio laboral %s.';
  Msg_34 = 'La fecha de inicio de internaci�n no es correcta.';
  Msg_35 = 'La fecha de fin de internaci�n no es correcta.';
  Msg_36 = 'La fecha de inicio de internaci�n no puede ser anterior a la fecha de baja m�dica %s.';
  Msg_37 = 'La fecha de inicio de internaci�n no puede ser posterior a la de hoy %s.';
  Msg_38 = 'La fecha de fin de internaci�n no puede ser anterior a la fecha de inicio del mismo %s.';
  Msg_39 = 'La fecha de fin de internaci�n no puede ser posterior a la fecha de egreso %s.';
  Msg_40 = 'Debe indicar si el paciente ha sido derivado a una Obra Social o no.';
  Msg_41 = 'Debe indicar si el paciente firm� conforme o no.';
  Msg_59 = 'La fecha de alta m�dica %s no puede ser posterior a la m�nima fecha de reca�da (%s) para reca�das posteriores a la actual.';
}
var
  dFecha :TDateTime;
  sSQL, sSQLMix, sInterc :string;
  iNroParte: integer;
begin
  {Cuando estoy dando de baja el egreso y volvando a evolutivo omito las validaciones}
  if not sdqDatos.FieldByName('PV_FECHACONTROL').IsNull then
    Exit;

  Verificar(EsPacienteInternado, nil, 'No se puede ingresar el Parte de Egreso: El paciente a�n se encuentra internado.');  // TK 24587

//  IniciarEspera('Validando...');
  try
    sdqDatos.FieldByName('PE_USUMODIF').AsString := Sesion.UserID;

    inherited;
    Verificar(fraPE_IDPRESTADOR.IsEmpty, fraPE_IDPRESTADOR.edCA_IDENTIFICADOR, Msg_16);
    Verificar((edPE_FECHABAJAMEDICA.Date = 0), edPE_FECHABAJAMEDICA, Msg_21);
    Verificar((edPE_FECHABAJAMEDICA.Date <> 0) and (edPE_FECHABAJAMEDICA.Date > dHoy), edPE_FECHABAJAMEDICA, Format(Msg_11, ['baja m�dica', DateToStr(dHoy)]));
    Verificar((edPE_FECHABAJAMEDICA.Date <> 0) and (edPE_FECHABAJAMEDICA.Date < FechaAccidenteRecaida), edPE_FECHABAJAMEDICA, Format(Msg_12, [DateToStr(FechaAccidenteRecaida)]));
//    Verificar((edPE_FECHABAJAMEDICA.Date <> 0) and (edPE_FECHABAJAMEDICA.Date > FechaAltaDocumento), edPE_FECHABAJAMEDICA, Format(Msg_13, [DateToStr(FechaAltaDocumento)]));

    dFecha := Obtener_MinFechaLiquidacionILT(IdExpediente);
    Verificar((dFecha > 0) and (edPE_FECHABAJAMEDICA.Date > dFecha), edPE_FECHABAJAMEDICA, Format(Msg_17, [DateToStr(dFecha)]));

    if Recaida > 0 then
    begin
      sSQL := 'SELECT 1 ' +
                'FROM SEX_EXPEDIENTES ' +
               'WHERE EX_SINIESTRO = :SIN ' +
                 'AND EX_ORDEN = :ORD ' +
                 'AND EX_RECAIDA < :REC ' +
                 'AND EX_ALTAMEDICA IS NULL';
      if ExisteSQLEx(sSQL, [Siniestro, Orden, Recaida]) then
        MsgBox(Msg_18, MB_ICONEXCLAMATION + MB_OK, 'Informaci�n');

      sSQL := 'SELECT MAX(EX_ALTAMEDICA) ' +
                'FROM SEX_EXPEDIENTES ' +
               'WHERE EX_SINIESTRO = :SIN ' +
                 'AND EX_ORDEN = :ORD ' +
                 'AND EX_RECAIDA < :REC ' +
                 'AND EX_INTERCURRENCIA <> ''S'' ' +
                 'AND NVL(ex_causafin, ''0'') NOT IN(''95'', ''99'') ';  // por TK 57931
      dFecha := ValorSQLDateTimeEx(sSQL, [Siniestro, Orden, Recaida]);

      sSQL := 'SELECT NVL(EX_INTERCURRENCIA, ''N'') ' +
                'FROM SEX_EXPEDIENTES ' +
               'WHERE EX_SINIESTRO = :SIN ' +
                 'AND EX_ORDEN = :ORD ' +
                 'AND EX_RECAIDA = :REC ';
      sInterc := ValorSqlEx(sSQL, [Siniestro, Orden, Recaida]);

      Verificar((sInterc <> 'S') and (dFecha > 0) and
                (edPE_FECHABAJAMEDICA.Date < dFecha), edPE_FECHABAJAMEDICA, Format(Msg_19, [DateToStr(dFecha)]));
    end;

    Verificar((edPE_FECHAALTAMEDICA.Date = 0), edPE_FECHAALTAMEDICA, Msg_28);

    sSQL := 'SELECT MAX(pv_fechacontrol) ' +
              'FROM art.spv_parteevolutivo, art.sex_expedientes ' +
             'WHERE pv_siniestro = ex_siniestro ' +
               'AND pv_orden = ex_orden ' +
               'AND pv_recaida = ex_recaida ' +
               'AND ex_siniestro = :SIN ' +
               'AND ex_orden = :ORD ' +
               'AND ex_recaida = :REC ' +
               'AND ex_gtrabajo <> ''24'' ' +
               'AND pv_fechabaja IS NULL ' +
               'AND pv_tipoparte IN(''E'', ''D'')';

    sSQLMix := 'SELECT DECODE(ex_sinmixserol, ''S'', ''S'', DECODE(ex_sinmixodont, ''S'', ''S'', ''N'')) ' +
                 'FROM art.sex_expedientes ' +
                'WHERE ex_id = :IdExped';

    dFecha := ValorSQLDateTimeEx(sSQL, [Siniestro, Orden, Recaida]);
    Verificar((fraPE_IDDIAGNOSTICO.Codigo <> 'Z20.9') and
              (fraPE_IDTIPOTRATAMIENTO.Codigo <> '2') and      // excluyo los siniestros serologicos (tienen controles, partes evolutivos post-alta)
              (ValorSqlEx(sSQLMix, [IdExpediente]) <> 'S') and  // excluyo los siniestros mixtos de la validaci�n.  TK 18874
              (dFecha > 0) and (TRUNC(dFecha) > edPE_FECHAALTAMEDICA.Date) and
              vTratamientoDeschequeado and AlgunOtroCambio,            // TK 9390
              edPE_FECHAALTAMEDICA, Format(Msg_71, [DateToStr(dFecha), DateToStr(edPE_FECHAALTAMEDICA.Date)]));

    sSQL := 'SELECT pi_fechabajamedica ' +
              'FROM sin.spi_partedeingreso ' +
             'WHERE pi_idexpediente = :id ';
    dFecha := ValorSQLDateTimeEx(sSQL, [IdExpediente]);
    Verificar((dFecha > 0) and (edPE_FECHAALTAMEDICA.Date < dFecha), edPE_FECHAALTAMEDICA, Format(Msg_30, [DateToStr(dFecha) + ' especificada en el PMI']));

    Verificar((edPE_FECHAALTAMEDICA.Date > dHoy), edPE_FECHAALTAMEDICA, Format(Msg_77, [DateToStr(edPE_FECHAALTAMEDICA.Date), DateToStr(dHoy)]));
    dFecha := Get_MinFechaRecaida_x_Recaida(Siniestro, Orden, Recaida);
    Verificar((dFecha > 0) and (edPE_FECHAALTAMEDICA.Date > dFecha), edPE_FECHAALTAMEDICA, Format(Msg_59, [DateToStr(edPE_FECHAALTAMEDICA.Date), DateToStr(dFecha)]));

    Verificar(fraPE_IDDIAGNOSTICO.IsEmpty, fraPE_IDDIAGNOSTICO.edCodigo, Msg_89);  // TK 34934
    Verificar(not Es_ValorCie10Permitido(fraPE_IDDIAGNOSTICO.Codigo), fraPE_IDDIAGNOSTICO.edCodigo, Msg_82); // TK 16355
    Verificar(fraPE_IDGRAVEDAD_CIE10.IsEmpty and fraPE_IDDIAGNOSTICO.IsSelected, fraPE_IDGRAVEDAD_CIE10.edCodigo, Msg_01);

    if (rpPE_PRESUPINCAPACIDAD.ItemIndex <> 0) and
       (rpPE_RECALIFICACION.ItemIndex <> 0) and
       (fraPE_IDTIPODEEGRESO.Codigo <> '3') then
    begin
      iNroParte := ValorSqlIntegerEx('SELECT MAX(pv_nroparte) ' +
                                      'FROM art.spv_parteevolutivo ' +
                                     'WHERE pv_idexpediente = :idexp ' +
                                      ' AND pv_fechabaja IS NULL ' +
                                      ' AND pv_tipoparte = ''H'' ', [IdExpediente]);
      Verificar((iNroParte > 0), rpPE_PRESUPINCAPACIDAD, Format(msg_87, [IntToStr(iNroParte)]));
    end;


    Verificar(chkPE_TRATAMIENTO.Checked and fraPE_IDTIPOTRATAMIENTO.IsEmpty, fraPE_IDTIPOTRATAMIENTO.edCodigo, Msg_23);
    Verificar(fraPE_IDTIPODEEGRESO.IsEmpty, fraPE_IDTIPODEEGRESO.edCodigo, Msg_22);
    Verificar(fraPE_IDTIPODEEGRESO.IsBaja, fraPE_IDTIPODEEGRESO.edCodigo, Msg_62);

    Verificar((edPE_FECHARECONSULTA.Date <> 0) and (edPE_FECHARECONSULTA.Date < edPE_FECHABAJAMEDICA.Date), edPE_FECHARECONSULTA, Format(Msg_20, ['baja m�dica', DateToStr(edPE_FECHABAJAMEDICA.Date)]));
    Verificar((fraPE_IDGRAVEDAD.Codigo = '1') and (edPE_DIASBAJATOTALES.Field.Value >= 15), fraPE_IDGRAVEDAD.edCodigo, Format(Msg_26, [VarToStr(edPE_DIASBAJATOTALES.Field.Value)]));
    Verificar(rpPE_RECALIFICACION.ItemIndex = 2, rpPE_RECALIFICACION, Msg_27);
    Verificar(rpPE_PRESTAC_MANTENIM.ItemIndex = 2, rpPE_PRESTAC_MANTENIM, Msg_90);     // TK 63627

    if rpPE_RECALIFICACION.ItemIndex = 1 then // No sugiere recalificaci�n...
      dFecha := edPE_FECHAALTAMEDICA.Date
    else
      dFecha := edPE_FECHAALTALABORAL.Date;

    Verificar((dFecha > 0) and (dFecha > dHoy), edPE_FECHAALTAMEDICA, Format(Msg_29, [DateToStr(dHoy)]));
    Verificar(dFecha < edPE_FECHABAJAMEDICA.Date, edPE_FECHAALTAMEDICA, Format(Msg_30, [DateToStr(edPE_FECHABAJAMEDICA.Date)]));

    if rpPE_RECALIFICACION.ItemIndex = 1 then // No sugiere recalificaci�n...
    begin
      dFecha := Obtener_MaxFechaLiquidacionILT(Siniestro, Orden, Recaida);
      Verificar((dFecha > 0) and (edPE_FECHAALTAMEDICA.Date < dFecha) and
                (not ExisteSqlEx('select 1 from sin.sji_justificacionilt where ji_idexpediente = :idexp and ji_fechabaja is null and ' +
                                                    ' to_date(:dia, ''dd/mm/yyyy'') BETWEEN ji_fdesde1 and ji_fhasta1', [IdExpediente, DateToStr(edPE_FECHAALTAMEDICA.Date)])),
                edPE_FECHAALTAMEDICA, Format(Msg_31, [DateToStr(dFecha)]));
    end;

    Verificar(edPE_DIASBAJATOTALES.Field.Value <= 0, edPE_DIASBAJATOTALES, Msg_25);
    Verificar((fraPE_IDGRAVEDAD.Codigo <> '5') and (rpPE_RECALIFICACION.ItemIndex = 1) and (edPE_FECHAREINICIO.Date = 0), edPE_FECHAALTAMEDICA, Msg_32);
    Verificar((rpPE_RECALIFICACION.ItemIndex = 1) and (edPE_FECHAREINICIO.Date <> 0) and (edPE_FECHAALTAMEDICA.Date >= edPE_FECHAREINICIO.Date), edPE_FECHAALTAMEDICA, Format(Msg_33, [DateToStr(edPE_FECHAREINICIO.Date)]));

    if chkPE_INTERNADO.Checked then
    begin
      Verificar(edPE_INTERNADODESDE.Date = 0, edPE_INTERNADODESDE, Msg_34);
      Verificar(edPE_INTERNADODESDE.Date < edPE_FECHABAJAMEDICA.Date, edPE_INTERNADODESDE, Format(Msg_36, [DateToStr(edPE_FECHABAJAMEDICA.Date)]));
      Verificar(edPE_INTERNADODESDE.Date > dHoy, edPE_INTERNADODESDE, Format(Msg_37, [DateToStr(dHoy)]));

      Verificar(edPE_INTERNADOHASTA.Date = 0, edPE_INTERNADOHASTA, Msg_35);
      Verificar(edPE_INTERNADOHASTA.Date < edPE_INTERNADODESDE.Date, edPE_INTERNADOHASTA, Format(Msg_38, [DateToStr(edPE_INTERNADODESDE.Date)]));
      Verificar(edPE_INTERNADOHASTA.Date > edPE_FECHAALTAMEDICA.Date, edPE_INTERNADOHASTA, Format(Msg_39, [DateToStr(edPE_FECHAALTAMEDICA.Date)]));
    end;

    Verificar(rpPE_OBRASOCIAL.ItemIndex = 2, rpPE_OBRASOCIAL, Msg_40);
    Verificar(rpPE_FCONFORME.ItemIndex = 2, rpPE_FCONFORME, Msg_41);
    Verificar(chkPE_ABANDONOMIXTO.Checked and (edPE_FECHAABMIXTO.Date = 0), edPE_FECHAABMIXTO, Msg_83);      // TK 20581
    Verificar((edPE_FECHAABMIXTO.Date > 0) and (edPE_FECHAABMIXTO.Date > dHoy), edPE_FECHAABMIXTO, Msg_84);  // TK 20581

    Verificar( Is_PostAlta(fraPE_IDTIPOTRATAMIENTO.edCodigo.Text) and (fraPE_IDTIPOTRATAMIENTO.edCodigo.Text <> '1') and
              (not chkPE_CONTPA_ODONTOL.Checked) and
              (not chkPE_CONTPA_DERMAT.Checked) and
              (not chkPE_CONTPA_PSICOL.Checked), chkPE_CONTPA_ODONTOL,
              'Si selecciona Tipo de Tratamiento (Controles Post. Alta), entonces debe chequear una de estas tres opciones de Controles.');

    Verificar ((edPE_ALTAODONTDEF.Date > 0)  and (edPE_ALTAODONTDEF.Date < edPE_FECHAALTAMEDICA.Date),  edPE_ALTAODONTDEF,  'La Fecha de Alta Odontol�gica Definitiva, no puede ser menor a la Fecha de Alta M�dica.');
    Verificar ((edPE_ALTADERMATDEF.Date > 0) and (edPE_ALTADERMATDEF.Date < edPE_FECHAALTAMEDICA.Date), edPE_ALTADERMATDEF, 'La Fecha de Alta Dermatol�gica Definitiva, no puede ser menor a la Fecha de Alta M�dica.');
    Verificar ((edPE_ALTAPSICOLDEF.Date > 0) and (edPE_ALTAPSICOLDEF.Date < edPE_FECHAALTAMEDICA.Date), edPE_ALTAPSICOLDEF, 'La Fecha de Alta Psicol�gica Definitiva, no puede ser menor a la Fecha de Alta M�dica.');

    Verificar(edPE_FECHARECEPCION.Date = 0, edPE_FECHARECEPCION, Msg_03);
    Verificar(edPE_FECHARECEPCION.Date > dHoy, edPE_FECHARECEPCION, Format(Msg_04, [DateToStr(dHoy)]));
    Verificar((edPE_FECHABAJAMEDICA.Date <> 0) and (edPE_FECHARECEPCION.Date < edPE_FECHABAJAMEDICA.Date), edPE_FECHARECEPCION, Format(Msg_14, ['baja m�dica', DateToStr(edPE_FECHABAJAMEDICA.Date)]));
    Verificar(edPE_FECHARECEPCION.Date < edPE_FECHAALTAMEDICA.Date, edPE_FECHARECEPCION, Format(Msg_24, [DateToStr(edPE_FECHAALTAMEDICA.Date)]));
    Verificar((sdqDatos.State = dsEdit) and (edPE_FECHARECEPCION.Date > sdqDatosPE_FECHAALTA.AsDateTime), edPE_FECHARECEPCION, Format(Msg_07, [sdqDatosPE_FECHAALTA.AsString]));
    Verificar((FechaRecepcion = 0) and (edPE_FECHARECEPCION.Date > FechaAlta), edPE_FECHARECEPCION, Format(Msg_05, [DateToStr(FechaAlta)]));

    ValidacionMuerto(nil);
    fraSDA_DETALLEARCHIVOpme.Validate;
    if (edEX_FECHACESEILT.Date > 0) then
    begin
      Verificar((rpPE_RECALIFICACION.ItemIndex = 0), edEX_FECHACESEILT, Msg_78);
      fraSDA_DETALLEARCHIVOci.Validate;
    end
    else
      fraSDA_DETALLEARCHIVOci.Clear;

    sSQL := 'SELECT DECODE(ex_sinmixserol, ''S'', ''S'', DECODE(ex_sinmixodont, ''S'', ''S'', ''N'')) ' +
              'FROM art.sex_expedientes ' +
             'WHERE ex_id = :IdExped';

    if Inserting and not(chkPE_TRATAMIENTO.Checked) and (ValorSqlEx(sSQL, [IdExpediente]) = 'S') and
       MsgAsk('El siniestro seleccionado es mixto, �Desea marcar el tratamiento post-alta?') then
      InfoHint(chkPE_TRATAMIENTO, 'Marcar tratamiento post-alta.', True);
  finally
//    DetenerEspera;
  end;
end;

procedure TfrmParteEgreso.chkPE_TRATAMIENTOClick(Sender: TObject);
begin
  Do_HabilitacionesPE_TRATAMIENTO;
  vTratamientoDeschequeado := not chkPE_TRATAMIENTO.Checked;      // TK 9390
end;

procedure TfrmParteEgreso.Do_HabilitacionesPE_TRATAMIENTO;
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    VCLExtra.LockControls([edPE_TRATAMINSTITUCION, edPE_TRATAMUBICACION,
                           fraPE_IDTIPOTRATAMIENTO
                           ], not chkPE_TRATAMIENTO.Checked);

    if not chkPE_TRATAMIENTO.Checked then
    begin
      edPE_TRATAMINSTITUCION.Clear;
      edPE_TRATAMUBICACION.Clear;
      fraPE_IDTIPOTRATAMIENTO.Clear;
      sdqDatosPE_IDTIPOTRATAMIENTO.Clear;   // Lu 16/09/2009
    end;
  end;
end;

procedure TfrmParteEgreso.Do_habilitarControlesPostAlta;   // TK 63624
begin
  if (Is_PostAlta(fraPE_IDTIPOTRATAMIENTO.Codigo)) and (vModo in [mAlta, mModif]) then
    VCLExtra.LockControls([chkPE_CONTPA_ODONTOL, chkPE_CONTPA_DERMAT, chkPE_CONTPA_PSICOL], False)
  else begin
    chkPE_CONTPA_ODONTOL.Checked := False;
    chkPE_CONTPA_DERMAT.Checked  := False;
    chkPE_CONTPA_PSICOL.Checked  := False;
    edPE_ALTAODONTDEF.Date       := 0;
    edPE_ALTADERMATDEF.Date      := 0;
    edPE_ALTAPSICOLDEF.Date      := 0;
    VCLExtra.LockControls([chkPE_CONTPA_ODONTOL, chkPE_CONTPA_DERMAT, chkPE_CONTPA_PSICOL], True);
  end;
  VCLExtra.LockControls([edPE_ALTAODONTDEF], not(chkPE_CONTPA_ODONTOL.Enabled and chkPE_CONTPA_ODONTOL.Checked));
  VCLExtra.LockControls([edPE_ALTADERMATDEF], not(chkPE_CONTPA_DERMAT.Enabled and chkPE_CONTPA_DERMAT.Checked));
  VCLExtra.LockControls([edPE_ALTAPSICOLDEF], not(chkPE_CONTPA_PSICOL.Enabled and chkPE_CONTPA_PSICOL.Checked));
end;

function TfrmParteEgreso.Is_PostAlta(sCod:string): boolean;
var sSql: string;
begin
  sSql := 'SELECT tt_postalta ' +
           ' FROM sin.STT_TIPOTRATAMIENTO ' +
          ' WHERE tt_codigo = :cod ';
  Result := (ValorSqlEx(sSql, [sCod]) = 'S')
end;

function TfrmParteEgreso.AlgunOtroCambio: Boolean;    // TK 9390
var
  i: Integer;
  sValor: String;
begin
  Result := False;  // en este caso se puede guardar
  i := 0;
  if Editing then
  begin
    while (i < ComponentCount - 1) and not Result do
    begin
      if ExistsProperty(Components[i], 'DATAFIELD') then
      begin
        GetPropByName(Components[i], 'DATAFIELD', sValor);
        if (Components[i] <> fraPE_IDTIPOTRATAMIENTO) and
           (Components[i] <> chkPE_TRATAMIENTO) and
           (Components[i] <> chkPE_INTERNADO) and
           (Components[i] <> chkPE_ABANDONOMIXTO) and   // TK 20581
           (Components[i] <> edSector) and
           (Copy(sValor, 1, 2) = 'PE') and
           (Components[i] <> edPE_TRATAMINSTITUCION) and
           (Components[i] <> edPE_TRATAMUBICACION) and
           (Components[i] <> edPE_FECHARECONSULTA) and
           (Components[i] <> edPE_FECHAABMIXTO) and     // TK 20581
           (Components[i] <> edPE_INTERNADODESDE) and
           (Components[i] <> edPE_INTERNADOHASTA) and
           (Components[i] <> edPE_INTERNADODIAS) and
           (Components[i] <> edPE_MEDICO) and
           (Components[i] <> fraPE_MEDICOAUDITOR) and
           (Components[i] <> edPE_HISTORIACLINICA) and
           (sdqDatos.FieldByName(sValor).AsString <> ValorSQLEx(Format('SELECT %s ' +
                                                                         'FROM SIN.SPE_PARTEDEEGRESO ' +
                                                                        'WHERE PE_IDEXPEDIENTE = :ID', [sValor]),
                                                                [IdExpediente])) then
          Result := True;   // en este caso salta la validacion y no se puede guardar.
      end;

      Inc(i);
    end;
  end;
end;
procedure TfrmParteEgreso.ValidacionMuerto(Sender: TObject);
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    rpPE_PRESUPINCAPACIDAD.Enabled := not Get_TrabajadorMuerto;
    rpPE_RECALIFICACION.Enabled := not Get_TrabajadorMuerto;

    if Get_TrabajadorMuerto then
    with sdqDatos do
    begin
      FieldByName('PE_PRESUPINCAPACIDAD').AsString := 'N';
      FieldByName('PE_RECALIFICACION').AsString    := 'N';
      FieldByName('PE_OBRASOCIAL').AsString        := 'N';
      FieldByName('PE_FCONFORME').AsString         := 'N';
      FieldByName('PE_FECHAREINICIO').Clear;
      FieldByName('PE_FECHAALTALABORAL').Clear;

      edPE_DIASBAJATOTALES.Field.Value := Calcular_Dias(edPE_FECHABAJAMEDICA.Date, edPE_FECHAALTAMEDICA.Date, 9999);

      if fraPE_IDGRAVEDAD.IsSelected and (fraPE_IDGRAVEDAD.Codigo <> '5') then
        FieldByName('PE_IDTIPODEEGRESO').Clear
      else
        FieldByName('PE_IDGRAVEDAD').AsString := '5'; //Mortal

      if fraPE_IDTIPODEEGRESO.IsSelected and (Pos(fraPE_IDTIPODEEGRESO.Codigo{FieldByName('PE_IDTIPODEEGRESO').AsString}, '456') = 0) then
      begin
        FieldByName('PE_IDTIPODEEGRESO').AsString := '4'; //Defunci�n
        //if MostrarAyudasVisuales then
          InfoHint(fraPE_IDGRAVEDAD.edCodigo, 'Cuando el trabajador fallece no hay fecha de alta laboral, ni fecha de reinicio laboral, se omiten algunas preguntas y el tipo de alta es alta por defunci�n.');
      end else
        if Pos(fraPE_IDTIPODEEGRESO.Codigo{FieldByName('PE_IDTIPODEEGRESO').AsString}, '456') = 0 then
          InfoHint(fraPE_IDTIPODEEGRESO.edCodigo, 'El tipo de egreso no puede ser defunci�n cuando la gravedad no es mortal.');
    end else
    begin
      if (FFechaAltaRecalificacion > 0) or (AltaLabSinReinicio > 0) then
      begin
        if (AltaLabSinReinicio > 0) then
          edPE_FECHAALTALABORAL.Date := AltaLabSinReinicio
        else
          edPE_FECHAALTALABORAL.Date := FFechaAltaRecalificacion;
        rpPE_RECALIFICACION.ItemIndex := 0;
        rpPE_RECALIFICACION.Enabled := False;
      end else
        rpPE_RECALIFICACION.Enabled := not Get_TrabajadorMuerto;

      if (FFechaAltaRecalificacion = 0) and (AltaLabSinReinicio = 0) or
         (FFechaAltaRecalificacion < edPE_FECHAALTAMEDICA.Date) and (AltaLabSinReinicio < edPE_FECHAALTAMEDICA.Date) then
        edPE_FECHAALTALABORAL.Date := edPE_FECHAALTAMEDICA.Date;

      if (edPE_FECHAALTALABORAL.Date <> 0) or (edPE_FECHAALTAMEDICA.Date <> 0) then
      begin
        if edPE_FECHAALTAMEDICA.Date > edPE_FECHAALTALABORAL.Date then
          edPE_FECHAREINICIO.Date := edPE_FECHAALTAMEDICA.Date + 1
        else
          edPE_FECHAREINICIO.Date := edPE_FECHAALTALABORAL.Date + 1;
      end
      else
        sdqDatos.FieldByName('PE_FECHAREINICIO').Clear;

      edPE_DIASBAJATOTALES.Field.Value := Calcular_Dias(edPE_FECHABAJAMEDICA.Date, edPE_FECHAALTALABORAL.Date, 9999);
    end;
  end;
end;

function TfrmParteEgreso.Get_TrabajadorMuerto: boolean;
begin
  Result := sdqDatos.Active and (sdqDatos.State in [dsEdit, dsInsert]) and
            ((fraPE_IDGRAVEDAD.Codigo = '5') or
             (fraPE_IDTIPODEEGRESO.Codigo = '4') or
             (fraPE_IDTIPODEEGRESO.Codigo = '5') or
             (fraPE_IDTIPODEEGRESO.Codigo = '6'));
end;

procedure TfrmParteEgreso.CalculoDias(Sender: TObject);
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    if (edPE_INTERNADODESDE.Date <> 0) and (edPE_INTERNADOHASTA.Date <> 0) and (edPE_INTERNADOHASTA.Date < edPE_INTERNADODESDE.Date) then
    begin
      if Sender = edPE_INTERNADODESDE then
        edPE_INTERNADOHASTA.Date := edPE_INTERNADODESDE.Date
      else
        edPE_INTERNADODESDE.Date := edPE_INTERNADOHASTA.Date;
    end;

    edPE_INTERNADODIAS.Field.Value := Calcular_Dias(edPE_INTERNADODESDE.Date, edPE_INTERNADOHASTA.Date, 9999);
  end;
end;

procedure TfrmParteEgreso.fraPE_IDTIPOTRATAMIENTOedCodigoChange(Sender: TObject);
begin
  Do_habilitarControlesPostAlta;
end;

procedure TfrmParteEgreso.fraPE_IDTIPOTRATAMIENTOPropiedadesDBAwareChange(Sender: TObject);
begin
  fraPE_IDTIPOTRATAMIENTO.PropiedadesDBAwareChange(Sender);
end;

procedure TfrmParteEgreso.fraPE_IDTIPODEEGRESOPropiedadesDBAwareChange(Sender: TObject);
begin
  fraPE_IDTIPODEEGRESO.PropiedadesDBAwareChange(Sender);
end;

procedure TfrmParteEgreso.chkPE_INTERNADOClick(Sender: TObject);
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    VCLExtra.LockControls([edPE_INTERNADODESDE, edPE_INTERNADOHASTA,
                           edPE_INTERNADODIAS
                           ], not chkPE_INTERNADO.Checked);
    if not chkPE_INTERNADO.Checked then
    begin
      edPE_INTERNADODESDE.Clear;
      edPE_INTERNADOHASTA.Clear;
      edPE_INTERNADODIAS.Clear;
    end;
  end;
end;

procedure TfrmParteEgreso.CalcularDias(Sender: TObject);
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    edPE_DIASBAJATOTALES.Field.Value := Calcular_Dias(edPE_FECHABAJAMEDICA.Date, edPE_FECHAALTAMEDICA.Date, 9999);
    if (Screen.ActiveControl <> edPE_FECHAALTAMEDICA) then
      ValidacionMuerto(nil);
  end;
end;

procedure TfrmParteEgreso.dsDatosUpdateData(Sender: TObject);
begin
  inherited;
  with sdqDatos do
  begin
    FieldByName('DA_OPCION').AsString   := fraSDA_DETALLEARCHIVOpme.Opcion;
    FieldByName('DA_HOJAS').AsInteger   := fraSDA_DETALLEARCHIVOpme.edDA_HOJAS.Value;
    FieldByName('DA_OPCIONCI').AsString := fraSDA_DETALLEARCHIVOci.Opcion;
    FieldByName('DA_HOJASCI').AsInteger := fraSDA_DETALLEARCHIVOci.edDA_HOJAS.Value;
  end;
end;

procedure TfrmParteEgreso.Print;
begin
  inherited;

  with TrptParteEgreso.Create(Self) do
  try
    Imprimir(SiniestroCompleto, IdExpediente, Siniestro);
  finally
    Free;
  end;

  if MessageDlg('Desea imprimir el Formulario de Cese de ILT?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  //if MsgAsk('Desea imprimir el Formulario de Cese de ILT?') then
  begin
    with TrptCeseDeILT.Create(Self) do
    try
      Imprimir(IdExpediente);
    finally
      Free;
    end;
  end;
end;

procedure TfrmParteEgreso.rpPE_RECALIFICACIONChange(Sender: TObject);
begin
  if rpPE_RECALIFICACION.ItemIndex = 0 then
  begin
    fraPE_IDTIPODEEGRESO.Codigo := '12';
    fraPE_IDTIPODEEGRESO.cmbDescripcionCloseUp(sender);
  end;

end;

procedure TfrmParteEgreso.Insert;
begin
  inherited;
  vModo := mAlta;
  edPE_FECHABAJAMEDICA.Date := ValorSqlDateTimeEx('select art.siniestro.getbajamedica(:idexp) from dual', [IdExpediente]);
  sdqDatos.FieldByName('PE_FECHABAJAMEDICA').AsDateTime := edPE_FECHABAJAMEDICA.Date;
 // if Inserting then                  // TK 43664
    Do_Habilitar_BajaMedica;
end;

procedure TfrmParteEgreso.edPE_MEDICOChange(Sender: TObject);
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    VCLExtra.LockControls(fraPE_MEDICOAUDITOR, Trim(edPE_MEDICO.Text) > '');
    if Trim(edPE_MEDICO.Text) > '' then
    begin
      fraPE_MEDICOAUDITOR.Clear;
      sdqDatos.FieldByName('PE_MEDICOAUDITOR').Clear;
    end;
  end;
end;

procedure TfrmParteEgreso.fraPE_MEDICOAUDITORPropiedadesChange(Sender: TObject);
begin
  if (sdqDatos.State in [dsEdit, dsInsert]) then
  begin
    VCLExtra.LockControls(edPE_MEDICO, fraPE_MEDICOAUDITOR.IsSelected);
    if fraPE_MEDICOAUDITOR.IsSelected then
      edPE_MEDICO.Clear;
  end;
end;

procedure TfrmParteEgreso.Delete;
begin
  if MsgAsk('�Desea eliminar el parte de egreso del siniestro seleccionado?' + CRLF + CRLF +
            'Tenga en cuenta que se generar� un parte evolutivo con la informaci�n del mismo.') then
  begin
    vModo := mBaja;
    if fpABM.ShowModal = mrOK then
    begin
      sdqDatos.Delete;
      DoAplicarUpdates(sdqDatos);
      dsDatosStateChange(nil);
    end;
  end;
end;

procedure TfrmParteEgreso.btnAceptarClick(Sender: TObject);
begin
  Verificar(edPV_FECHACONTROL.Date = 0, edPV_FECHACONTROL, 'Debe seleccionar una fecha de control.');
  Verificar(edPV_FECHACONTROL.Date > dHoy, edPV_FECHACONTROL, Format('La fecha de control no puede ser posterior a hoy %s.', [DateToStr(dHoy)]));
  Verificar(edPV_FECHACONTROL.Date < FechaAccidenteRecaida, edPV_FECHACONTROL, Format('La fecha de control no puede ser anterior a la del accidente/reca�da %s.', [DateToStr(FechaAccidenteRecaida)]));
  Verificar(IsEmptyString(edPV_OBSERVACIONES.Lines.Text), edPV_OBSERVACIONES, 'El motivo de la baja es obligatorio.');

  with sdqDatos do
  begin
    Edit;
    FieldByName('PV_FECHACONTROL').AsDateTime := edPV_FECHACONTROL.Date;
    FieldByName('PV_OBSERVACIONES').AsString  := edPV_OBSERVACIONES.Lines.Text;
    Post;
  end;

  fpABM.ModalResult := mrOK;
end;

procedure TfrmParteEgreso.fpAbmShow(Sender: TObject);
begin
  VCLExtra.LockControls([edPV_FECHACONTROL, edPV_OBSERVACIONES, btnAceptar, btnCancelar], False);
  edPV_FECHACONTROL.Clear;
  edPV_OBSERVACIONES.Lines.Clear;
end;

function TfrmParteEgreso.Es_ValorCie10Permitido(sCodCie10: string): boolean;  // TK 16355
var sSql: string;
begin
  Result := True;  // pongo el result en true porque si es = '' esta permitido.
  if (sCodCie10 <> '') and not(Es_SiniestroRechazado) then
  begin
    sSql := 'SELECT dg_cie10permitido ' +
             ' FROM art.cdg_diagnostico ' +
            ' WHERE dg_codigo = :CodCie10 ';
    Result := (ValorSqlEx(sSql, [sCodCie10]) = 'S');
  end;
end;

function TfrmParteEgreso.Es_SiniestroRechazado: boolean;   // por TK 16355
var sSql: string;
begin
  sSql := 'SELECT NVL(ex_causafin, '' '') ' +
           ' FROM art.sex_expedientes ' +
          ' WHERE ex_id = :idexped ';
  Result := (ValorSqlEx(sSql, [FIdExpediente]) = RECHAZO);
end;

procedure TfrmParteEgreso.chkPE_CONTPA_DERMATClick(Sender: TObject);
begin
  if Inserting or Editing then
    LockControl(edPE_ALTADERMATDEF, not chkPE_CONTPA_DERMAT.Checked);
  if not chkPE_CONTPA_DERMAT.Checked then
  begin
    edPE_ALTADERMATDEF.Clear;
    edPE_ALTADERMATDEF.Date := 0;
  end;
end;

procedure TfrmParteEgreso.chkPE_CONTPA_ODONTOLClick(Sender: TObject);
begin
  if Inserting or Editing then
    LockControl(edPE_ALTAODONTDEF, not chkPE_CONTPA_ODONTOL.Checked);
  if not chkPE_CONTPA_ODONTOL.Checked then
  begin
    edPE_ALTAODONTDEF.Clear;
    edPE_ALTAODONTDEF.Date := 0;
  end;
end;

procedure TfrmParteEgreso.chkPE_CONTPA_PSICOLClick(Sender: TObject);
begin
  if Inserting or Editing then
    LockControl(edPE_ALTAPSICOLDEF, not chkPE_CONTPA_PSICOL.Checked);
  if not chkPE_CONTPA_PSICOL.Checked then
  begin
    edPE_ALTAPSICOLDEF.Clear;
    edPE_ALTAPSICOLDEF.Date := 0;
  end;
end;


procedure TfrmParteEgreso.chkPE_ABANDONOMIXTOClick(Sender: TObject);
begin
  if Inserting or Editing then
    VCLExtra.LockControls([edPE_FECHAABMIXTO], not chkPE_ABANDONOMIXTO.Checked);   // TK 20581
  if not chkPE_ABANDONOMIXTO.Checked then
    edPE_FECHAABMIXTO.Clear;
end;

procedure TfrmParteEgreso.sdqDatosAfterClose(DataSet: TDataSet);
begin
  inherited;
 // edFINCULPABLE.Clear;   // TK 44287
end;

function TfrmParteEgreso.EsPacienteInternado: boolean;
var
  sSql: string;
begin
  sSql := 'SELECT 1 ' +
           ' FROM amed.msi_siniestro_internado A ' +
          ' WHERE A.si_idexpediente = :idexp ' +
            ' AND A.si_fechabaja IS NULL ' +
            ' AND A.si_internadohasta IS NULL ' +
            ' AND A.si_id = (SELECT MAX(B.si_id) ' +
                             ' FROM amed.msi_siniestro_internado B' +
                            ' WHERE B.si_idexpediente = A.si_idexpediente ' +
                              ' AND B.si_fechabaja IS NULL) ';
  Result := ExisteSqlEx(sSql, [IdExpediente]);
end;

procedure TfrmParteEgreso.edPE_FECHAALTAMEDICAChange(Sender: TObject);
begin
  CalcularDias(Sender);
  GetAltaLabSinReinicio;
end;

procedure TfrmParteEgreso.Do_Habilitar_BajaMedica;
begin
  if (edPE_FECHABAJAMEDICA.Date > 0) then   // cambio hecho por ticket 44665 (es parte de la solucion, no toda...)
    VCLExtra.LockControls([edPE_FECHABAJAMEDICA], not (Owner as TfrmAdmSiniestros).Seguridad.Claves.IsActive('ParteEgreso_ModifFechaBajaMed'));  // TK 43664
end;

end.
