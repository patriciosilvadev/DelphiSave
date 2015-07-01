unit unABMOrigenDemanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, unfraAbogadosLegales, PatternEdit,
  unFraCodigoDescripcion, StdCtrls, Mask, unArtDbFrame, unFraEmpresa, Buttons, ToolEdit, DateComboBox, unArtFrame,
  unArtDBAwareFrame, unFraStaticCodigoDescripcion, unFraStaticCTB_TABLAS, unFraTrabajador, CurrEdit, Grids, DBGrids,
  ComCtrls, ToolWin, CheckPanel, ExtCtrls, DB, JvMemoryDataset, SDEngine, unfraCPR_PRESTADOR, unDmLegales,
  unfraCtbTablas, CUIT, RxToolEdit, RxCurrEdit, unFraDomicilio;

type
  TfrmAbmOrigenDemanda = class(TForm)
    btnAceptarOrigenDemanda: TButton;
    btnCancelarOrigenDemanda: TButton;
    nbOrigenDemanda: TNotebook;
    pnTrabajador: TPanel;
    chkOrigenDemanda: TCheckPanel;
    lblPorcentajeIncapacidad: TLabel;
    CoolBar1: TCoolBar;
    tbOrigenDemandaSiniestro: TToolBar;
    tbBusquedaSiniestros: TToolButton;
    tbEliminarSiniestroSeleccionado: TToolButton;
    ToolButton8: TToolButton;
    tbLimpiarTodo: TToolButton;
    dbgSiniestros: TDBGrid;
    edPorcentajeIncapacidad: TCurrencyEdit;
    grpTrabajador: TGroupBox;
    fraTrabajadorOrigenDemanda: TfraTrabajador;
    pnEmpresaAfiliada: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    lblFechaBajaContrato: TLabel;
    lblMotivoBajaContrato: TLabel;
    fraCO_ESTADO: TfraStaticCTB_TABLAS;
    cmbCO_FECHABAJA: TDateComboBox;
    fraCO_MOTIVOBAJA: TfraStaticCTB_TABLAS;
    btnMasDatosEmpresa: TBitBtn;
    grbVigenciaContrato: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    cmbCO_VIGENCIADESDE: TDateComboBox;
    cmbCO_VIGENCIAHASTA: TDateComboBox;
    GroupBox2: TGroupBox;
    gbOrigenEmpresa: TGroupBox;
    lbCUIT: TLabel;
    lbRSocial: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    lblRepresentanteLegal: TLabel;
    edCuitEmpresa: TMaskEdit;
    edtRazonSocialEmpresa: TEdit;
    edtTelefonoEmpresa: TEdit;
    mDomicilioEmpresa: TMemo;
    edtRepresentanteLegalEmpresa: TEdit;
    gbPersona: TGroupBox;
    lblNombre: TLabel;
    lblTelefono: TLabel;
    lblDomicilioPersona: TLabel;
    lblCuil: TLabel;
    lblTipoDocumento: TLabel;
    lblDNI: TLabel;
    edCuilPersona: TMaskEdit;
    edNombrePersona: TEdit;
    edTelefonoPersona: TEdit;
    mDomicilioPersona: TMemo;
    edNroDocumentoPersona: TPatternEdit;
    GroupBox6: TGroupBox;
    gbContratoOrigenDemandaPrestador: TGroupBox;
    GroupBox8: TGroupBox;
    gbContratoOrigenDemandaProveedor: TGroupBox;
    gbReclamanteOrigenDemanda: TGroupBox;
    lblReclamante: TLabel;
    fraReclamante: TfraCodigoDescripcion;
    GroupBox4: TGroupBox;
    gbLetradoReclamante: TGroupBox;
    lblAbogadoOrigenDemanda: TLabel;
    fraAbogadosParteActora: TfraAbogadosLegales;
    tbEdicionAbogadosOpositores: TToolBar;
    tbEdicionAbogados: TToolButton;
    bvSeparador: TBevel;
    Label1: TLabel;
    sdqDatosContrato: TSDQuery;
    sdqSiniestroJuicioEnTramite: TSDQuery;
    fraCaracter: TfraCodigoDescripcion;
    fraEmpresaDemandante: TfraEmpresa;
    lblCuitEmpresa: TLabel;
    fraEmpresaPrestador: TfraCPR_PRESTADOR;
    fraEmpresaProveedor: TfraCPR_PRESTADOR;
    dsSiniestrosOrigenDemanda: TDataSource;
    sdqBusqueda: TSDQuery;
    sdqBusquedaEX_SINIESTRO: TFloatField;
    sdqBusquedaEX_ORDEN: TFloatField;
    sdqBusquedaEX_RECAIDA: TFloatField;
    sdqBusquedaCODSINI: TStringField;
    sdqBusquedaEX_SINIESTRORED: TFloatField;
    sdqBusquedaMP_CONTRATO: TFloatField;
    sdqBusquedaMP_CUIT: TStringField;
    sdqBusquedaMP_NOMBRE: TStringField;
    sdqBusquedaTJ_CUIL: TStringField;
    sdqBusquedaTJ_NOMBRE: TStringField;
    sdqBusquedaEX_DIAGNOSTICO: TStringField;
    sdqBusquedaEX_FECHAACCIDENTE: TDateTimeField;
    sdqBusquedaEX_BAJAMEDICA: TDateTimeField;
    sdqBusquedaEX_FECHARECAIDA: TDateTimeField;
    sdqBusquedaEX_ALTAMEDICA: TDateTimeField;
    sdqBusquedaTB_DESCRIPCION: TStringField;
    chkCumpleNormasHySContrato: TCheckBox;
    chkBoxCumpleHS: TCheckBox;
    edHechoGeneradorDemanda: TDateComboBox;
    Label2: TLabel;
    fraTipoDocumento: TfraCtbTablas;
    edSalarioDeclarado: TCurrencyEdit;
    lbSalarioDemandado: TLabel;
    ToolBar1: TToolBar;
    tbSalario: TToolButton;
    gbMedico: TGroupBox;
    Label4: TLabel;
    ToolBar2: TToolBar;
    tbNuevoMedico: TToolButton;
    fraMedico: TfraCodigoDescripcion;
    gbPresentacion: TGroupBox;
    cbEstudiosMedicos: TCheckBox;
    cbCertificadosMedicos: TCheckBox;
    Label5: TLabel;
    cbMasculino: TCheckBox;
    cbFemenino: TCheckBox;
    lbSexo: TLabel;
    fraEmpresaPersonaFisica: TfraEmpresa;
    Label6: TLabel;
    edFechaNacimiento: TDateComboBox;
    Label8: TLabel;
    edFechaAccidente: TDateComboBox;
    gbDomicilioLetrado: TGroupBox;
    fraDomicilioLetrado: TfraDomicilio;
    sdqDomicilioLetrado: TSDQuery;
    sdqConsulta: TSDQuery;
    procedure tbBusquedaSiniestrosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fraEmpresaDemandanteExit(Sender: TObject);
    procedure rxmSiniestrosOrigenDemandaAfterPost(DataSet: TDataSet);
    procedure btnAceptarOrigenDemandaClick(Sender: TObject);
    procedure tbEdicionAbogadosClick(Sender: TObject);
    procedure tbEliminarSiniestroSeleccionadoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbSalarioClick(Sender: TObject);
    procedure tbNuevoMedicoClick(Sender: TObject);
    procedure cbMasculinoClick(Sender: TObject);
    procedure cbFemeninoClick(Sender: TObject);
  private
    FIdJuicioEnTramite : integer;
    FIdOrigenDemanda : integer;
    FModoOrigenDemanda : TModoEjecucion;
    FTipoParte : Boolean;
    FFechaNotificacion: TDateTime;

    procedure BuscarSiniestros;
    procedure CargarSiniestros;
    procedure PosicionarOrigenDemanda;
    procedure Init;

    procedure CargarDatosOrigenDemanda(Campos: TFields);
    procedure GuardarOrigenDemanda;
    procedure GuardarSiniestro(Siniestro: TFields);
    procedure LimpiarCamposOrigenDemanda;
    procedure CargarDatosEmpresaDemandante(Contrato: Integer);
    procedure OnfraReclamanteChange(Sender: TObject);
    procedure CalcularPorcentaje;
    procedure EliminarDatosTemporales;
    procedure SetFechaNotificacion(const Value: TDateTime);

    procedure CargarDomicilioLetrado;
    function  AltaDomicilioLegal: boolean;
    function ActualizarDomicilioLegal: Boolean;
    function TieneDomicilioLegal: Boolean;

  public
    function  AltaOrigenDemanda(AIdJuicioEnTramite : integer): boolean;
    function  ModificacionOrigenDemanda(const DataSet: TSDQuery): boolean;
    procedure EliminarOrigenDemanda(AIdOrigenDemanda : integer);
    property  TipoParte : Boolean read FTipoParte write FTipoParte; // true parteActora
    property FechaNotificacion: TDateTime read FFechaNotificacion write SetFechaNotificacion;
  end;

const
  OD_TRABAJADOR = 0;
  OD_EMPRESAAFILIADA  = 1;
  OD_EMPRESA  = 2;
  OD_PERSONA = 3;
  OD_PRESTADOR = 4;
  OD_PROVEEDOR  = 5;

  REC_TRABAJADOR = 1;
  REC_DERECHOHABIENTE = 2;
  REC_FAMILIARNODERECHOHABIENTE = 3;
  REC_EMPRESA = 4;
  REC_PRESTADOR = 5;
  REC_EMPRESANOAFILIADA = 6;
  REC_PROVEEDOR = 7;
  REC_PERSONAFISICA = 8;

var
  frmAbmOrigenDemanda: TfrmAbmOrigenDemanda;

implementation

uses
	unDmPrincipal, unCustomDataModule, unBusqSini, CustomDlgs, AnsiSql, SqlFuncs, unPrincipal, DateUtils, unSesion,
  unManAbogados, StdConvs, unManMedicos;

{$R *.dfm}

{--------------------------------------------------------------------------------}
function TfrmAbmOrigenDemanda.ActualizarDomicilioLegal: Boolean;
var
  dmid: Integer;
begin
  //Ticket 62709

  dmid := StrToIntDef(
          ValorSql('SELECT DM_ID  FROM  ' +
                    '( SELECT NVL(dm_id, 0) DM_ID FROM   legales.ldm_domiciliolegal  where dm_idorigendemanda = ' + SqlValue(FIdOrigenDemanda) +
                    ' AND DM_FECHABAJA IS NULL ORDER BY DM_FECHALALTA DESC ' +
                    ' ) where  ROWNUM = 1 ' ), 0);

  if dmid > 0 then
  begin
    EjecutarSqlST(' update LEGALES.ldm_domiciliolegal ' +
                  ' set  dm_idubicacion = ' + SqlValue(fraDomicilioLetrado.Ubicacion) + ', ' +
                  ' dm_numero = ' + SqlValue(fraDomicilioLetrado.Numero) + ', ' +
                  ' dm_departamento = ' + SqlValue(fraDomicilioLetrado.Departamento) + ', ' +
                  ' dm_cpostala = ' + SqlValue(fraDomicilioLetrado.CPA) + ', ' +
                  ' dm_piso = ' + SqlValue(fraDomicilioLetrado.Piso) + ', ' +
                  ' dm_fechabaja = null, dm_usubaja = null, ' +
                  ' dm_fechamodif = sysdate, dm_usumodif = ' + SqlValue(Sesion.LoginName) +
                  ' where dm_id = ' + SqlValue(dmid));
  end
  else begin
    AltaDomicilioLegal;
  end;

  Result := True;
end;

function TfrmAbmOrigenDemanda.AltaDomicilioLegal: boolean;
var
  fIdSEQ_LDM_ID: integer;
begin
  //Ticket 62709
  if(TieneDomicilioLegal) then
  begin
    fIdSEQ_LDM_ID := GetSecNextVal('LEGALES.SEQ_LDM_ID');

    EjecutarSqlST('INSERT INTO LEGALES.ldm_domiciliolegal (dm_id,dm_idorigendemanda,dm_idubicacion,dm_numero,dm_departamento,dm_cpostala,dm_piso,dm_fechalalta,dm_usualta,dm_fechamodif,dm_usumodif,dm_fechabaja,dm_usubaja) ' +
                  ' VALUES(' + SqlValue(fIdSEQ_LDM_ID) + ', ' +
                               SqlValue(FIdOrigenDemanda) + ', ' +
                               SqlValue(fraDomicilioLetrado.Ubicacion) + ', ' +
                               SqlValue(fraDomicilioLetrado.Numero) + ', ' +
                               SqlValue(fraDomicilioLetrado.Departamento) + ', ' +
                               SqlValue(fraDomicilioLetrado.CPA) + ', ' +
                               SqlValue(fraDomicilioLetrado.Piso) + ', ' +
                               ' SYSDATE , ' +
                               SqlValue(Sesion.LoginName) + ', '  +
                               ' NULL, NULL ,  NULL,  NULL ) ' );
  end;
  Result := True;

end;

function TfrmAbmOrigenDemanda.AltaOrigenDemanda(AIdJuicioEnTramite : integer): boolean;
var
  i: integer;
begin
  FIdJuicioEnTramite := AIdJuicioEnTramite;

  FIdOrigenDemanda := GetSecNextVal('LEGALES.SEQ_LOD_ID');

  EjecutarSqlST('INSERT INTO LEGALES.LOD_ORIGENDEMANDA (od_id, OD_IDJUICIOENTRAMITE, OD_IDRECLAMANTE, od_fechaalta, od_usualta) ' +
                ' VALUES(' + SqlValue(FIdOrigenDemanda) + ', ' + SqlValue(FIdJuicioEnTramite) + ', 1 ,sysdate, ' + SqlValue(Sesion.LoginName) + ')');


  CargarSiniestros;

  LimpiarCamposOrigenDemanda;
  if TipoParte then
  begin
    lblReclamante.Caption := 'Reclamado: ';
//    fraReclamante.ExtraCondition :=  ' AND re_tipoparte LIKE ''%A%'' ';
    chkCumpleNormasHySContrato.Visible := False;
    nbOrigenDemanda.PageIndex := 1;
    fraReclamante.Clear;
    fraReclamante.Codigo := '4';
    gbMedico.Visible := False;
    gbPresentacion.Visible := False;
    for i:=0 to dbgSiniestros.Columns.Count-1 do
      if (dbgSiniestros.Columns[i].FieldName = 'NROEXP') then
        dbgSiniestros.Columns[i].Visible := false;
  end
  else
  begin
    lblReclamante.Caption := 'Reclamante: ';
    chkCumpleNormasHySContrato.Visible := True;
    fraReclamante.ExtraCondition :=  '';
    gbMedico.Visible := True;
    gbPresentacion.Visible := True;
  end;
  FModoOrigenDemanda := meAlta;
  result :=  ShowModal = mrOK;
end;


function TfrmAbmOrigenDemanda.ModificacionOrigenDemanda(const DataSet: TSDQuery): boolean;
begin
  result := true;
  if DataSet.RecordCount > 0 then
  begin
    LimpiarCamposOrigenDemanda;
    if TipoParte then
    begin
      lblReclamante.Caption := 'Reclamado: ';
//      fraReclamante.ExtraCondition :=  ' AND re_tipoparte LIKE ''%A%'' ';
      chkCumpleNormasHySContrato.Visible := False;
      nbOrigenDemanda.PageIndex := 2;
      edHechoGeneradorDemanda.Visible := False;
      edSalarioDeclarado.Visible := False;
      ToolBar1.Visible := False;
      Label2.Visible := False;
      lbSalarioDemandado.Visible := False;
      chkOrigenDemanda.Caption := 'Con Siniestro Asociado';
      edPorcentajeIncapacidad.Visible := False;
      lblPorcentajeIncapacidad.Visible := False;
      gbMedico.Visible := False;
      gbPresentacion.Visible := False;
    end
    else
    begin
      lblReclamante.Caption := 'Reclamante: ';
      chkCumpleNormasHySContrato.Visible := True;
      fraReclamante.ExtraCondition :=  '';
      gbMedico.Visible := True;
      gbPresentacion.Visible := True;
    end;
    FModoOrigenDemanda := meModificacion;
    FIdOrigenDemanda := DataSet.Fields.FieldByName('od_id').AsInteger;
    FIdJuicioEnTramite := DataSet.Fields.FieldByName('od_idjuicioentramite').AsInteger;
    CargarDatosOrigenDemanda(DataSet.Fields);
    result :=  ShowModal = mrOK;
  end;
end;

procedure TfrmAbmOrigenDemanda.EliminarOrigenDemanda(AIdOrigenDemanda : integer);
begin
  //
end;

{--------------------------------------------------------------------------------}
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.FormCreate(Sender: TObject);
begin
  //Ticket 65384
  Self.SetFechaNotificacion(0);

  with fraMedico do
  begin
    TableName   := 'LEGALES.LMD_MEDICO';
    FieldID     := 'MD_ID';
    FieldCodigo := 'MD_ID';
    FieldDesc   := 'MD_NOMBRE || '' '' ||MD_APELLIDO ';
    FieldBaja   := 'MD_FECHABAJA';
    Showbajas   := True;
  end;
  fraEmpresaPersonaFisica.ShowBajas := True;
  fraEmpresaPrestador.ShowBajas := True;
  fraEmpresaPersonaFisica.ExtraCondition := '     AND co_contrato = '+
                               ' (SELECT MAX (b.co_contrato) '+
                               '    FROM aco_contrato b '+
                               '   WHERE b.co_idempresa = em_id) ';

  fraDomicilioLetrado.Clear;

  Init;
end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.btnAceptarOrigenDemandaClick(Sender: TObject);
begin
  GuardarOrigenDemanda;
end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.tbBusquedaSiniestrosClick(Sender: TObject);
begin
  BuscarSiniestros;
end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.rxmSiniestrosOrigenDemandaAfterPost(
  DataSet: TDataSet);
begin
  CalcularPorcentaje;
end;
procedure TfrmAbmOrigenDemanda.SetFechaNotificacion(const Value: TDateTime);
begin
  //Ticket 65384
  FFechaNotificacion := Value;
end;

{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.CalcularPorcentaje;
var
 b : TBookmark;
 sumatoria : Extended;
 porcentaje : Extended;
begin
  b := sdqSiniestroJuicioEnTramite.GetBookmark;
  sdqSiniestroJuicioEnTramite.DisableControls;
  sumatoria := 0;
  try
    edPorcentajeIncapacidad.Value := 0;
    sdqSiniestroJuicioEnTramite.First;
    while not sdqSiniestroJuicioEnTramite.Eof do
    begin
      porcentaje := StrToFloat(ValorSql('SELECT NVL(liq.GetPorcIncapacidadSiniestro(' +
                sdqSiniestroJuicioEnTramite.FieldByName('ex_Siniestro').AsString + ', ' +
                sdqSiniestroJuicioEnTramite.FieldByName('ex_Orden').AsString  + ' ), 0) Porc  FROM dual'));
      sumatoria := sumatoria +   porcentaje;
      sdqSiniestroJuicioEnTramite.Next;
    end;
  finally
    sdqSiniestroJuicioEnTramite.GotoBookmark(b);
    sdqSiniestroJuicioEnTramite.EnableControls;
    edPorcentajeIncapacidad.Value := sumatoria;

  end;
end;

procedure TfrmAbmOrigenDemanda.fraEmpresaDemandanteExit(Sender: TObject);
begin
  if fraEmpresaDemandante.IsSelected then
    CargarDatosEmpresaDemandante(fraEmpresaDemandante.Contrato);
  fraEmpresaDemandante.FrameExit(Sender);
end;
{--------------------------------------------------------------------------------}
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.CargarDomicilioLetrado;
begin
  {Ticket 62709}
  try
    if sdqDomicilioLetrado.Active then
      sdqDomicilioLetrado.Close;

      sdqDomicilioLetrado.ParamByName('dm_idorigendemanda').AsInteger := FIdOrigenDemanda;
      sdqDomicilioLetrado.Open;
      if sdqDomicilioLetrado.RecordCount > 0 then begin

          if sdqConsulta.Active then sdqConsulta.Close;
          sdqConsulta.SQL.Text := ' SELECT UB_CALLE, UB_LOCALIDAD,UB_PROVINCIA, UB_CPOSTAL,UB_GBA,UB_IDDELEGACION ' +
                                  ' FROM CUB_UBICACION ' +
                                  ' WHERE UB_ID = ' + sdqDomicilioLetrado.FieldByName('DM_IDUBICACION').AsString;
          sdqConsulta.Open;

          if sdqConsulta.RecordCount > 0 then
            with fraDomicilioLetrado do
            begin
              Ubicacion := sdqDomicilioLetrado.FieldByName('DM_IDUBICACION').AsInteger;
              //CodigoPostal := sdqDomicilioLetrado.FieldByName('dm_cpostala').AsString;
              Numero := sdqDomicilioLetrado.FieldByName('dm_numero').AsString;
              Piso := sdqDomicilioLetrado.FieldByName('dm_piso').AsString;
              Departamento := sdqDomicilioLetrado.FieldByName('dm_departamento').AsString;
              CPA := sdqDomicilioLetrado.FieldByName('dm_cpostala').AsString;
            end;

                       {
          fraDomicilioLetrado.Cargar(
                sdqConsulta.FieldByName('UB_CALLE').AsString,
                sdqDomicilioLetrado.FieldByName('dm_cpostala').AsString,
                sdqConsulta.FieldByName('UB_LOCALIDAD').AsString,

                sdqDomicilioLetrado.FieldByName('dm_numero').AsString,
                sdqDomicilioLetrado.FieldByName('dm_piso').AsString,
                sdqDomicilioLetrado.FieldByName('dm_departamento').AsString,
                sdqConsulta.FieldByName('UB_PROVINCIA').AsString,
                sdqDomicilioLetrado.FieldByName('dm_cpostala').AsString);
                }
      end else begin
                  fraDomicilioLetrado.Clear;
      end;

  finally
    sdqDomicilioLetrado.Close;
  end;
end;

procedure TfrmAbmOrigenDemanda.BuscarSiniestros;
var
	i: Integer;
 	F: TFields;
begin
  with TdlgBusqSini.Create(self) do
  try
    //Ticket 65384
    FechaNotificacion := Self.FechaNotificacion;
    if MostrarSiniestros(fraTrabajadorOrigenDemanda.mskCUIL.Text) then
      for i := 0 to dbgBusqueda.SelectedRows.Count - 1 do
      begin
        F := SiniestroSeleccionado(i);
        GuardarSiniestro(F);
      end;
  finally
    Free;
    if sdqSiniestroJuicioEnTramite.Active then
      sdqSiniestroJuicioEnTramite.Refresh
    else
      CargarSiniestros;
    fraTrabajadorOrigenDemanda.CUIL := sdqSiniestroJuicioEnTramite.fieldbyname('TJ_CUIL').AsString;
    CalcularPorcentaje;
    if (edSalarioDeclarado.Value = 0) then
      edSalarioDeclarado.Value := StrToFloat(ValorSql('select nvl(art.legales.Get_IngresoBaseMensual(' + SqlValue(FIdJuicioEnTramite) + '), 0) from dual', '0'));
  end;
end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.PosicionarOrigenDemanda;
var
 Reclamante : integer;
begin
 if fraReclamante.IsSelected then
 begin
  nbOrigenDemanda.Enabled := true;
  Reclamante := strtoint(fraReclamante.Codigo);
  case Reclamante of
    REC_TRABAJADOR                : nbOrigenDemanda.PageIndex := OD_TRABAJADOR;
    REC_DERECHOHABIENTE           : nbOrigenDemanda.PageIndex := OD_PERSONA;
    REC_FAMILIARNODERECHOHABIENTE : nbOrigenDemanda.PageIndex := OD_PERSONA;
    REC_EMPRESA                   : nbOrigenDemanda.PageIndex := OD_EMPRESAAFILIADA;
    REC_EMPRESANOAFILIADA         : nbOrigenDemanda.PageIndex := OD_EMPRESA;
    REC_PRESTADOR                 : nbOrigenDemanda.PageIndex := OD_PRESTADOR;
    REC_PROVEEDOR                 : nbOrigenDemanda.PageIndex := OD_PROVEEDOR;
    REC_PERSONAFISICA             : nbOrigenDemanda.PageIndex := OD_PERSONA;
  end;
 end else nbOrigenDemanda.Enabled := false;
end;
{--------------------------------------------------------------------------------}

procedure TfrmAbmOrigenDemanda.GuardarOrigenDemanda;
var
   sSqlTrans : TSql;
begin
  VerificarMultiple(['Validaci�n de Origen de Demanda',
        fraReclamante,
        fraReclamante.IsSelected,
        'Debe seleccionar un Reclamante',
        fraAbogadosParteActora,
        fraAbogadosParteActora.IsSelected,
        'Debe seleccionar un Abogado',
        fraCaracter,
        fraCaracter.IsSelected,
        'Debe seleccionar el Caracter del Abogado']);

    if( TieneDomicilioLegal )
    then begin


      VerificarMultiple(['Validaci�n de Origen de Demanda',
            fraDomicilioLetrado,
            ( not fraDomicilioLetrado.IsEmpty),
            'Debe completar el domicilio.',
            fraDomicilioLetrado,
            ( fraDomicilioLetrado.IsValid),
            'El domicilio no es v�lido.']);
    end;

  Verificar((cbEstudiosMedicos.Checked or cbCertificadosMedicos.Checked) and not fraMedico.IsSelected,fraMedico,
            'Si esta marcado estudio o certificado debe ingresar un medico.');

  sSqlTrans := TSql.Create('LEGALES.LOD_ORIGENDEMANDA');
  try
    sSqlTrans.Fields.AddInteger('OD_IDRECLAMANTE', fraReclamante.Value);
    sSqlTrans.Fields.AddInteger('OD_IDABOGADO', fraAbogadosParteActora.Codigo);
    sSqlTrans.Fields.Add('OD_IDMEDICO', fraMedico.Codigo);
    if cbEstudiosMedicos.Checked then
      sSqlTrans.Fields.Add('OD_PRESESTUDIOSMEDICOS', 'S')
    else
      sSqlTrans.Fields.Add('OD_PRESESTUDIOSMEDICOS', 'N');

    if cbCertificadosMedicos.Checked then
      sSqlTrans.Fields.Add('OD_PRESCERTIFICADOSMEDICOS', 'S')
    else
      sSqlTrans.Fields.Add('OD_PRESCERTIFICADOSMEDICOS', 'N');

    sSqlTrans.Fields.Add('OD_IDCARACTERABOGADO', fraCaracter.Codigo);

    case nbOrigenDemanda.PageIndex of
        OD_TRABAJADOR      : begin
                              VerificarMultiple(['Validaci�n de Origen de Demanda',
                                                  fraTrabajadorOrigenDemanda,
                                                  fraTrabajadorOrigenDemanda.IsSelected,
                                                  'Debe seleccionar un trabajador.',
                                                  chkOrigenDemanda,
                                                  ((chkOrigenDemanda.Checked) and (sdqSiniestroJuicioEnTramite.RecordCount > 0) or (not chkOrigenDemanda.Checked) and (sdqSiniestroJuicioEnTramite.RecordCount = 0)),
                                                  'Si la demanda es dentro del r�gimen debe especificar siniestros.',
                                                  chkOrigenDemanda,
                                                  ((not chkOrigenDemanda.Checked) and (sdqSiniestroJuicioEnTramite.RecordCount = 0) or (chkOrigenDemanda.Checked) and (sdqSiniestroJuicioEnTramite.RecordCount > 0)),
                                                  'Si la demanda no es dentro del r�gimen no debe especificar siniestros.',
                                                  edSalarioDeclarado,
                                                  (edSalarioDeclarado.Value <> 0),
                                                  'Debe especificar el Salario Declarado']);

                               sSqlTrans.Fields.AddString( 'OD_CUITCUIL', fraTrabajadorOrigenDemanda.CUIL, false);
                               sSqlTrans.Fields.Add( 'OD_DENTRODELREGIMEN', chkOrigenDemanda.Checked);
                               sSqlTrans.Fields.Add( 'OD_PORCENTAJEINCAPACIDADCALC', edPorcentajeIncapacidad.Value, 2, true);
                               sSqlTrans.Fields.Add( 'OD_FECHACALCULOINCAPACIDAD', exDateTime);
                               sSqlTrans.Fields.Add( 'OD_NOMBRE', fraTrabajadorOrigenDemanda.cmbNombre.Text);
                               sSqlTrans.Fields.Add( 'OD_CONTRATO', fraTrabajadorOrigenDemanda.Contrato);
                               sSqlTrans.Fields.AddDateTime('OD_FECHAHECHOGENERADOR', edHechoGeneradorDemanda.Date, true);
                               sSqlTrans.Fields.AddExtended('OD_SALARIODECLARADO', edSalarioDeclarado.Value, 2, true);

                               if chkBoxCumpleHS.Checked then
                                    sSqlTrans.Fields.Add( 'OD_CUMPLENORMASHYS', 'S')
                               else sSqlTrans.Fields.Add( 'OD_CUMPLENORMASHYS', 'N');
                            end;
      OD_EMPRESAAFILIADA : begin
                              VerificarMultiple(['Validaci�n de Origen de Demanda - Empresa Afiliada',
                                                  fraEmpresaDemandante,
                                                  fraEmpresaDemandante.IsSelected,
                                                  'Debe seleccionar una empresa.']);

                               sSqlTrans.Fields.Add( 'OD_CUITCUIL', fraEmpresaDemandante.mskCUIT.text);
                               sSqlTrans.Fields.Add( 'OD_NOMBRE', fraEmpresaDemandante.cmbRSocial.Text);
                               sSqlTrans.Fields.AddInteger( 'OD_CONTRATO', fraEmpresaDemandante.edContrato.Value, 'N', False);
                               if chkBoxCumpleHS.Checked then
                                    sSqlTrans.Fields.Add( 'OD_CUMPLENORMASHYS', 'S')
                               else sSqlTrans.Fields.Add( 'OD_CUMPLENORMASHYS', 'N');
                           end;
      OD_EMPRESA         : begin
                             VerificarMultiple(['Validaci�n de Origen de Demanda - Empresa No Afiliada',
                                                  edCuitEmpresa,
                                                  edCuitEmpresa.Text <> '',
                                                  'Debe completar el CUIT de empresa.',
                                                  edCuitEmpresa,
                                                  IsCuit(edCuitEmpresa.Text),
                                                  'El CUIT no es Valido.',
                                                  edtRazonSocialEmpresa,
                                                  trim(edtRazonSocialEmpresa.Text) <> '',
                                                  'Debe completar la raz�n social de la empresa.'
                                                  ]);

                             sSqlTrans.Fields.AddString('OD_CUITCUIL', edCuitEmpresa.Text, true);
                             sSqlTrans.Fields.AddString('OD_NOMBRE', Trim(edtRazonSocialEmpresa.Text), true);
                             sSqlTrans.Fields.AddString('OD_REPRESENTANTELEGAL', Trim(edtRepresentanteLegalEmpresa.Text), true);
                             sSqlTrans.Fields.AddString('OD_TELEFONO', Trim(edtTelefonoEmpresa.Text), true);
                             sSqlTrans.Fields.AddString('OD_DOMICILIOLEGALCONSTITUIDO', Trim(mDomicilioEmpresa.Text), true);
                           end;
      OD_PERSONA         : begin
                             VerificarMultiple([
                                    'Validaci�n de Origen de Demanda - Persona',
                                    edNroDocumentoPersona,
                                    (Trim(edNroDocumentoPersona.Text) <> '') or (Trim(edCuilPersona.Text) <> ''),
                                    'Debe completar un nro de documento o un cuil',
                                    edNroDocumentoPersona,
                                    ( (Trim(edNroDocumentoPersona.Text) <> '') and fraTipoDocumento.IsSelected) or
                                    ( (Trim(edNroDocumentoPersona.Text) = '') and not fraTipoDocumento.IsSelected),
                                    'Nro de Documento y Tipo documento debe completarse conjuntamente',
                                    edNombrePersona,
                                    edNombrePersona.Text <> '',
                                    'Debe especificar una Nombre para la Persona Demandante',
                                    mDomicilioPersona,
                                    trim(mDomicilioPersona.Text) <> '',
                                    'Debe completar el domicilio de la persona']);
                             Verificar((not cbMasculino.Checked) and (not cbFemenino.Checked), cbMasculino,'Debe Indicar el sexo del trabajador');
                             Verificar(edFechaNacimiento.IsEmpty, edFechaNacimiento,'Debe ingresar la fecha de nacimiento.');
                             sSqlTrans.Fields.AddString('OD_CUITCUIL', edCuilPersona.Text, true);
                             sSqlTrans.Fields.Add('OD_NOMBRE', edNombrePersona.Text);
                             sSqlTrans.Fields.AddInteger('OD_NUMERODOCUMENTO', edNroDocumentoPersona.Text, true);
                             sSqlTrans.Fields.Add('OD_IDTIPODOCUMENTO', fraTipoDocumento.Value, true);
                             sSqlTrans.Fields.Add('OD_DOMICILIOLEGALCONSTITUIDO', mDomicilioPersona.Text);
                             sSqlTrans.Fields.Add('OD_TELEFONO', edTelefonoPersona.Text);
                             if cbMasculino.Checked then
                               sSqlTrans.Fields.Add('OD_SEXO', 'M');
                             if cbFemenino.Checked then
                               sSqlTrans.Fields.Add('OD_SEXO', 'F');
                             sSqlTrans.Fields.Add('OD_CUITEMPRESA', fraEmpresaPersonaFisica.CUIT);
                             sSqlTrans.Fields.Add('OD_FECHANACIMIENTO', edFechaNacimiento.Date);
                             sSqlTrans.Fields.Add('OD_FECHAACCIDENTE', edFechaAccidente.Date);
                           end;
      OD_PRESTADOR       : begin
                             VerificarMultiple([
                                    'Validaci�n de Origen de Demanda - Prestador',
                                    fraEmpresaPrestador,
                                    fraEmpresaPrestador.IsSelected,
                                    'Debe seleccionar un Prestador']);

                             sSqlTrans.Fields.Add('OD_CUITCUIL',   fraEmpresaPrestador.mskCA_CLAVE.Text);
                             sSqlTrans.Fields.Add( 'OD_NOMBRE',    fraEmpresaPrestador.cmbCA_DESCRIPCION.Text);
                           end;
      OD_PROVEEDOR       : begin
                             VerificarMultiple([
                                    'Validaci�n de Origen de Demanda - Prestador',
                                    fraEmpresaProveedor,
                                    fraEmpresaProveedor.IsSelected,
                                    'Debe seleccionar un Proveedor']);

                             sSqlTrans.Fields.Add('OD_CUITCUIL', fraEmpresaProveedor.mskCA_CLAVE.Text);
                             sSqlTrans.Fields.Add( 'OD_NOMBRE', fraEmpresaProveedor.cmbCA_DESCRIPCION.Text);
                           end;
    end;

    sSqlTrans.SqlType := stUpdate;
    sSqlTrans.PrimaryKey.Add('OD_ID', FIdOrigenDemanda );

    if FModoOrigenDemanda = meModificacion then
    begin
        sSqlTrans.Fields.Add('OD_USUMODIF', Sesion.LoginName );
        sSqlTrans.Fields.Add('OD_FECHAMODIF', 'Sysdate', False );
        //Ticket 62709
        ActualizarDomicilioLegal();
    end
    else if FModoOrigenDemanda = meAlta then
    begin
      //Ticket 62709
      AltaDomicilioLegal;
    end;

    EjecutarSQLST(sSqlTrans.Sql, tmNone);
    Self.ModalResult := mrOk;
    //self.Close;
 finally
   sSqlTrans.Free;
 end;
end;

{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.CargarDatosOrigenDemanda(Campos : TFields);
begin

    fraReclamante.Codigo := Campos.FieldByName('OD_IDRECLAMANTE').AsString;
    PosicionarOrigenDemanda;

    fraAbogadosParteActora.Codigo := Campos.FieldByName('OD_IDABOGADO').AsString;

    fraMedico.Codigo := Campos.FieldByName('OD_IDMEDICO').AsString;
    cbEstudiosMedicos.Checked := Campos.FieldByName('OD_PRESESTUDIOSMEDICOS').AsString = 'S';
    cbCertificadosMedicos.Checked := Campos.FieldByName('OD_PRESCERTIFICADOSMEDICOS').AsString = 'S';

    fraCaracter.Codigo := Campos.FieldByName('OD_IDCARACTERABOGADO').AsString;

    {Ticket 62709}
    CargarDomicilioLetrado();

    //FIME .. falta llenar el resto de los campos segun el origen.
    case nbOrigenDemanda.PageIndex of
      OD_TRABAJADOR      :  begin
                              fraTrabajadorOrigenDemanda.CUIL := Campos.FieldByName('OD_CUITCUIL').asstring;
                              chkOrigenDemanda.Checked := Campos.FieldByName('OD_DENTRODELREGIMEN').asstring = 'S';
                              edHechoGeneradorDemanda.Date := Campos.FieldByName('OD_FECHAHECHOGENERADOR').asdatetime;
                              edSalarioDeclarado.Value := Campos.FieldByName('OD_SALARIODECLARADO').AsFloat;

                              //if chkOrigenDemanda.Checked then
                              ///begin
                                  chkBoxCumpleHS.Checked := Campos.FieldByName('OD_CUMPLENORMASHYS').asstring = 'S';
                                  CargarSiniestros;
                              //end;
                            end;
       OD_EMPRESAAFILIADA : begin
                              fraEmpresaDemandante.Contrato := Campos.FieldByName('OD_CONTRATO').asInteger;
                              chkBoxCumpleHS.Checked := Campos.FieldByName('OD_CUMPLENORMASHYS').asstring = 'S';
                              CargarDatosEmpresaDemandante(Campos.FieldByName('OD_CONTRATO').asInteger);
                            end;
       OD_EMPRESA         : begin
                              edCuitEmpresa.Text                := Campos.FieldByName('OD_CUITCUIL').asstring;
                              edtRazonSocialEmpresa.Text        := Campos.FieldByName('OD_NOMBRE').asstring;
                              edtRepresentanteLegalEmpresa.Text := Campos.FieldByName('OD_REPRESENTANTELEGAL').asstring;
                              edtTelefonoEmpresa.Text           := Campos.FieldByName('OD_TELEFONO').asstring;
                              mDomicilioEmpresa.Text            := Campos.FieldByName('OD_DOMICILIOLEGALCONSTITUIDO').asstring;
                            end;
       OD_PERSONA         : begin
                              edNroDocumentoPersona.Text     := Campos.FieldByName('OD_NUMERODOCUMENTO').AsString;
                              fraTipoDocumento.Codigo        := Campos.FieldByName('OD_IDTIPODOCUMENTO').AsString;
                              edCuilPersona.Text             := Campos.FieldByName('OD_CUITCUIL').AsString;
                              edFechaNacimiento.Date         := Campos.FieldByName('OD_FECHANACIMIENTO').AsDateTime;
                              edFechaAccidente.Date          := Campos.FieldByName('OD_FECHAACCIDENTE').AsDateTime;
                              edNombrePersona.Text           := Campos.FieldByName('OD_NOMBRE').asstring;
                              edTelefonoPersona.Text         := Campos.FieldByName('OD_TELEFONO').AsString;
                              mDomicilioPersona.Text         := Campos.FieldByName('OD_DOMICILIOLEGALCONSTITUIDO').AsString;
                              cbMasculino.Checked := ExisteSql( 'SELECT 1'+
                                                                '  FROM legales.lod_origendemanda '+
                                                                ' WHERE od_sexo = ''M'' '+
                                                                '   AND od_id = '+SqlValue(Campos.FieldByName('OD_ID').AsInteger));
                              cbFemenino.Checked := ExisteSql( 'SELECT 1'+
                                                                '  FROM legales.lod_origendemanda '+
                                                                ' WHERE od_sexo = ''F'' '+
                                                                '   AND od_id = '+SqlValue(Campos.FieldByName('OD_ID').AsInteger));

                              fraEmpresaPersonaFisica.CUIT := ValorSql( 'SELECT OD_CUITEMPRESA'+
                                                                '  FROM legales.lod_origendemanda '+
                                                                ' WHERE od_id = '+SqlValue(Campos.FieldByName('OD_ID').AsInteger));
                            end;
       OD_PRESTADOR       : begin
//FIXME .. Completar el frame de prestador.
                              fraEmpresaPrestador.Value := ValorSqlInteger('Select CA_IDENTIFICADOR FROM cpr_prestador WHERE ca_clave ='+SqlValue(Campos.FieldByName('OD_CUITCUIL').AsString));
                            end;
       OD_PROVEEDOR       : begin
//FIXME .. Completar el frame de proveedor.
                              fraEmpresaProveedor.Value := ValorSqlInteger('Select CA_IDENTIFICADOR FROM cpr_prestador WHERE ca_clave ='+SqlValue(Campos.FieldByName('OD_CUITCUIL').AsString));
                            end;
     end;
end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.LimpiarCamposOrigenDemanda;
begin
  fraReclamante.Codigo := '1';
  fraAbogadosParteActora.Codigo := '';

  fraMedico.Clear;
  cbEstudiosMedicos.Checked := False;
  cbCertificadosMedicos.Checked := False;

  nbOrigenDemanda.PageIndex := 0;
  edHechoGeneradorDemanda.Date := 0;

  fraTrabajadorOrigenDemanda.Clear;
  chkOrigenDemanda.Checked := false;
  edPorcentajeIncapacidad.Value := 0;
  fraEmpresaDemandante.CUIT := '';

  cmbCO_FECHABAJA.Text := '';
  cmbCO_VIGENCIADESDE.Text := '';
  cmbCO_VIGENCIAHASTA.Text := '';
  fraCO_ESTADO.Value := '';
  fraCO_MOTIVOBAJA.Value := '';

  edCuitEmpresa.Text := '';
  edtRazonSocialEmpresa.Text := '';
  edtRepresentanteLegalEmpresa.Text := '';
  edtTelefonoEmpresa.Text := '';
  mDomicilioEmpresa.Text := '';



  edNroDocumentoPersona.Text := '';
  fraTipoDocumento.Codigo := '';
  edCuilPersona.Text := '';
  edNombrePersona.Text := '';
  edTelefonoPersona.Text := '';
  mDomicilioPersona.Text := '';
  cbMasculino.Checked := False;
  cbFemenino.Checked := False;
  edFechaNacimiento.Clear;
  edFechaAccidente.Clear;
  fraEmpresaPersonaFisica.Clear;

end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.Init;
begin

  fraEmpresaDemandante.ShowBajas := True;

(*
  with fraTipoDocumento do
  begin
    TableName   := 'ctb_tablas';
    FieldID     := 'TB_CODIGO';
    FieldCodigo := 'TB_CODIGO';
    FieldDesc   := 'Tb_descripcion';
    FieldBaja   := 'TB_FECHABAJA';
    ExtraFields := ', TB_CLAVE, TB_ESPECIAL1, TB_ESPECIAL2 ';
    ExtraCondition := ' AND TB_CLAVE = ' + SqlString('TDOC', True) + ' ' ;
  end;
*)

  fraTipoDocumento.Clave := 'TDOC';

  with fraReclamante do
  begin
    TableName   := 'legales.lre_reclamante';
    FieldID     := 're_id';
    FieldCodigo := 're_id';
    FieldDesc   := 're_descripcion';
  end;

  with fraCaracter do
  begin
    TableName   := 'legales.lca_caracterabogado';
    FieldID     := 'ca_id';
    FieldCodigo := 'ca_id';
    FieldDesc   := 'ca_descripcion';
  end;

  fraAbogadosParteActora.Parte := paContraria;
  fraReclamante.OnChange := OnfraReclamanteChange;
end;
{--------------------------------------------------------------------------------}
procedure TfrmAbmOrigenDemanda.CargarDatosEmpresaDemandante(Contrato : Integer);
begin
  sdqDatosContrato.ParamByName('CONTRATO').AsInteger := Contrato;
  try
    sdqDatosContrato.Open;
    if sdqDatosContrato.RecordCount > 0 then begin
      cmbCO_VIGENCIADESDE.Date := sdqDatosContrato.FieldByName('HC_VIGENCIADESDE').AsDateTime;
      cmbCO_VIGENCIAHASTA.Date := sdqDatosContrato.FieldByName('HC_VIGENCIAHASTA').AsDateTime;
      fraCO_ESTADO.Value := sdqDatosContrato.FieldByName('HC_ESTADO').AsString;
      cmbCO_FECHABAJA.Date := sdqDatosContrato.FieldByName('HC_FECHABAJA').AsDateTime;
      fraCO_MOTIVOBAJA.Value := sdqDatosContrato.FieldByName('HC_MOTIVOBAJA').AsString;
    end;
  finally
    sdqDatosContrato.close;
  end;
end;

procedure TfrmAbmOrigenDemanda.OnfraReclamanteChange(Sender: TObject);
begin
  PosicionarOrigenDemanda;
end;

procedure TfrmAbmOrigenDemanda.CargarSiniestros;
begin
  sdqSiniestroJuicioEnTramite.ParamByName('id').AsInteger := FIdOrigenDemanda;
  sdqSiniestroJuicioEnTramite.Open;
  CalcularPorcentaje;
end;

procedure TfrmAbmOrigenDemanda.tbEdicionAbogadosClick(Sender: TObject);
var
 f : TfrmManAbogados;
begin
  f := TfrmManAbogados.Create(self);
  f.FormStyle := fsNormal;

end;

procedure TfrmAbmOrigenDemanda.tbEliminarSiniestroSeleccionadoClick(
  Sender: TObject);
begin
  if (not sdqSiniestroJuicioEnTramite.IsEmpty) and
      sdqSiniestroJuicioEnTramite.FieldByName('sj_fechabaja').IsNull and
      (MsgBox('�Desea dar de baja el siniestro seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then
  begin
    EjecutarSqlST(' update LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE ' +
                    ' set sj_fechabaja = sysdate, sj_usubaja = ' + SqlValue(Sesion.LoginName) +
                    ' where sj_id = ' + sdqSiniestroJuicioEnTramite.FieldByName('sj_id').AsString);

    sdqSiniestroJuicioEnTramite.Refresh;
    CalcularPorcentaje;
  end;
end;

procedure TfrmAbmOrigenDemanda.GuardarSiniestro(Siniestro: TFields);
var
  FidSiniestroJuicioEnTramite: string;
begin

  try
      FidSiniestroJuicioEnTramite := ValorSql('SELECT * FROM LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE LSJ WHERE LSJ.sj_idorigendemanda = ' + SqlValue(FIdOrigenDemanda) +
                                              ' AND LSJ.sj_siniestro = ' + SqlValue(Siniestro.FieldByName('EX_SINIESTRO').AsInteger) +
                                              ' AND LSJ.sj_orden = ' + SqlValue(Siniestro.FieldByName('EX_ORDEN').AsInteger) +
                                              ' AND LSJ.sj_recaida = ' + SqlValue(Siniestro.FieldByName('EX_RECAIDA').AsInteger), '');

      if (trim(FidSiniestroJuicioEnTramite) <> '') then
      begin
        EjecutarSqlST(' update LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE ' +
                        ' set sj_fechabaja = null, sj_usubaja = null, ' +
                        ' sj_fechamodif = sysdate, sj_usumodif = ' + SqlValue(Sesion.LoginName) +
                        ' where sj_id = ' + SqlValue(FidSiniestroJuicioEnTramite));

      end
      else begin
        EjecutarSqlST(' INSERT INTO LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE(SJ_ID, sj_siniestro, sj_orden, sj_recaida, sj_fechaalta, sj_usualta, SJ_IDORIGENDEMANDA) ' +
                        ' Values( LEGALES.SEQ_LSJ_ID.NEXTVAL, ' + Siniestro.FieldByName('ex_siniestro').AsString + ', ' +
                        Siniestro.FieldByName('ex_orden').AsString + ', ' +
                        Siniestro.FieldByName('ex_recaida').AsString + ', sysdate, ' + SqlValue(Sesion.LoginName) + ', ' + SqlValue(FIdOrigenDemanda) + ')');
      end;
  except
    on E : Exception do begin
       raise Exception.Create('Error al guardar el siniestro: ' + E.Message);
    end;
  end;

end;

procedure TfrmAbmOrigenDemanda.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (FModoOrigenDemanda = meAlta) and (ModalResult = mrCancel) then EliminarDatosTemporales;
end;

procedure TfrmAbmOrigenDemanda.EliminarDatosTemporales;
begin
    EjecutarSqlST(' DELETE FROM LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE ' +
                    ' where SJ_IDORIGENDEMANDA = ' + SqlValue(FIdOrigenDemanda)) ;

    EjecutarSqlST(' DELETE FROM LEGALES.LOD_ORIGENDEMANDA ' +
                    ' where OD_ID = ' + SqlValue(FIdOrigenDemanda)) ;
end;

procedure TfrmAbmOrigenDemanda.tbSalarioClick(Sender: TObject);
begin
  edSalarioDeclarado.Value := StrToFloat(ValorSql('select nvl(art.legales.Get_IngresoBaseMensual(' + SqlValue(FIdJuicioEnTramite) + '), 0) from dual', '0'));
end;

function TfrmAbmOrigenDemanda.TieneDomicilioLegal: Boolean;
begin
    {Ticket 62709}
    if( (fraDomicilioLetrado.Calle <> '' )
    or (fraDomicilioLetrado.CodigoPostal <> '' )
    or (fraDomicilioLetrado.CPA <> '' )
    or (fraDomicilioLetrado.Localidad <> '' )
    or (fraDomicilioLetrado.Ubicacion > 0 )
    or (fraDomicilioLetrado.Numero <> DOM_SINNUMERO )
    or (fraDomicilioLetrado.Departamento <> '' )
    or (fraDomicilioLetrado.Piso <> '' )  )
    then begin
      Result := true;
    end else begin
      Result := false;
    end;

end;

procedure TfrmAbmOrigenDemanda.tbNuevoMedicoClick(Sender: TObject);
begin
  with TfrmManMedico.Create(Self) do
  try
    FormStyle := fsNormal;
    Visible := False;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmAbmOrigenDemanda.cbMasculinoClick(Sender: TObject);
begin
  if cbFemenino.Checked and cbMasculino.Checked then
    cbFemenino.Checked := False;
end;

procedure TfrmAbmOrigenDemanda.cbFemeninoClick(Sender: TObject);
begin
  if cbFemenino.Checked and cbMasculino.Checked then
    cbMasculino.Checked := False;
end;

end.
