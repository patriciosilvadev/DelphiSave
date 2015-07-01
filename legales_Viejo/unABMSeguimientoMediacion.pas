unit unABMSeguimientoMediacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PatternEdit, unfraCodigoDescripcionExt, StdCtrls, IntEdit,
  unFraDomicilio, unfraAbogadosLegales, Mask, ToolEdit, DateComboBox,
  ComCtrls, ToolWin, unArtFrame, unArtDBAwareFrame, unFraCodigoDescripcion,
  CurrEdit, unFraPuntosRevision, AdvEdit, ExtCtrls, FormPanel, Grids,
  DBGrids, RXDBCtrl, SinEdit, unArtDbFrame, unFraTrabajador, unFraEmpresa,
  PeriodoPicker, DB, unDmLegales, unDmPrincipal, AnsiSql, CustomDlgs, SqlFuncs,
  VCLExtra, SDEngine, unManAbogados, unManMediador, unArt,unHistoricoImportes,
  unFraTrabajadorSiniestro, unHistoricoEstadosMediacion, ArtComboBox,
  ExComboBox, DateTimeEditors, DBClient, Placemnt, SortDlg, RxPlacemnt,
  RxToolEdit, RxCurrEdit;

type
  TfrmABMSeguimientoMediacion = class(TForm)
    gbDatosMediador: TGroupBox;
    lblMediador: TLabel;
    fraDomicilioMediador: TfraDomicilio;
    ToolBar1: TToolBar;
    tbSeleccionMediador: TToolButton;
    gbReclamo: TGroupBox;
    fraMotivoReclamo: TfraCodigoDescripcion;
    lblMotivo: TLabel;
    fraDiagnostico: TfraCodigoDescripcion;
    lblDiagnostico: TLabel;
    fraObjetoReclamo: TfraCodigoDescripcion;
    Label3: TLabel;
    edHecho: TMemo;
    lblHecho: TLabel;
    chkIncapacidadIndeterminada: TCheckBox;
    lblPorcentajeIncapacidadDemanda: TLabel;
    edPorcentajeIncapacidadDemanda: TCurrencyEdit;
    Label2: TLabel;
    edPorcentajeIncapacidadSegunPerito: TCurrencyEdit;
    pnDetalle: TPanel;
    pgDetalles: TPageControl;
    tbOrigenSiniestro: TTabSheet;
    tbEventosSeguimiento: TTabSheet;
    dbgEventosJuicioEnTramite: TRxDBGrid;
    cbEventos: TCoolBar;
    tbrEventos: TToolBar;
    tbNuevoEvento: TToolButton;
    tbModificarEvento: TToolButton;
    tbEliminarEvento: TToolButton;
    fpEventoSeguimiento: TFormPanel;
    lbAccion: TLabel;
    bvSeparadorBotonesEventos: TBevel;
    lblFechaEvento: TLabel;
    lblVencimientoEvento: TLabel;
    lblObservacuinesEvento: TLabel;
    fraTipoEvento: TfraCodigoDescripcion;
    btnAccAceptar: TButton;
    btnAccCancelar: TButton;
    mObservacionesEvento: TRichEdit;
    tsPagos: TTabSheet;
    dbgPagosEfectuados: TRxDBGrid;
    cbEdicionPagosEfectudos: TCoolBar;
    tbPagos: TToolBar;
    tbIngresoPago: TToolButton;
    tbEdicionPago: TToolButton;
    tbEliminarPago: TToolButton;
    tbSeparadorPagos: TToolButton;
    tbImprimirPagos: TToolButton;
    tbObtenerEstadoPago: TToolButton;
    tbseparator4: TToolButton;
    plTotalesPago: TPanel;
    tbGestionDeuda: TToolBar;
    tbSeparador0: TToolButton;
    tbGuardar: TToolButton;
    tbSeparador: TToolButton;
    tbSalir: TToolButton;
    chkAseguradoProvinciaART: TCheckBox;
    pcOrigenDemanda: TPageControl;
    tbAsegurado: TTabSheet;
    tbOtro: TTabSheet;
    ToolBar2: TToolBar;
    tbSiniestro: TToolButton;
    edFechaAccidente: TDateComboBox;
    lblFechaAccidente: TLabel;
    lblFechaIngreso: TLabel;
    edFechaIngreso: TDateComboBox;
    Label4: TLabel;
    edFechaEgreso: TDateComboBox;
    lblFechaNacimiento: TLabel;
    edFechaNacimiento: TDateComboBox;
    edSalario: TCurrencyEdit;
    lbSalario: TLabel;
    fraEmpresaTrabajador: TfraEmpresa;
    lblCuit: TLabel;
    edTarea: TEdit;
    lblTarea: TLabel;
    chkDemandaEmpleador: TCheckBox;
    chkComisionMedica: TCheckBox;
    ToolBar3: TToolBar;
    tbAbogadoActora: TToolButton;
    fraAbogadoActora: TfraAbogadosLegales;
    lblAbogadoActora: TLabel;
    fraAbogadoEmpresa: TfraAbogadosLegales;
    lblAbogadoEmpresa: TLabel;
    ToolBar4: TToolBar;
    tbAbogadoEmpresa: TToolButton;
    chkAceptaRevisacionMedica: TCheckBox;
    CoolBar1: TCoolBar;
    ToolBar5: TToolBar;
    tbNuevoOrigen: TToolButton;
    tbModificarOrigenDemanda: TToolButton;
    tbEliminarOrigenDemanda: TToolButton;
    dbgRelcamante: TRxDBGrid;
    tbImportes: TTabSheet;
    edMontoOfrecido: TCurrencyEdit;
    lblMontoOfrecido: TLabel;
    lblFechaOfrecimiento: TLabel;
    edFechaOfrecimiento: TDateComboBox;
    ToolBar6: TToolBar;
    tbHistoricosImportes: TToolButton;
    lblHonorarioActora: TLabel;
    edHonorarioActora: TCurrencyEdit;
    lblMontoAcordado: TLabel;
    edMontoAcordado: TCurrencyEdit;
    lblHonorarioMediador: TLabel;
    edHonorarioMediador: TCurrencyEdit;
    lblMulta: TLabel;
    edMulta: TCurrencyEdit;
    pnlImportes: TPanel;
    cbEdicionImportesRegulados: TCoolBar;
    tbImportesRegulados: TToolBar;
    tbIngresoValor: TToolButton;
    tbEdicionValor: TToolButton;
    tbEliminarValor: TToolButton;
    dbgImportesRegulados: TRxDBGrid;
    fraNombreMediador: TfraCodigoDescripcion;
    sdqEventoMediacion: TSDQuery;
    sdqOrigenDemanda: TSDQuery;
    sdqImportes: TSDQuery;
    edFechaRevisacionMed: TDateComboBox;
    lbFRevMedica: TLabel;
    fpOrigenDemanda: TFormPanel;
    Bevel1: TBevel;
    lbDNI: TLabel;
    btnAceptarOrigenDemanda: TButton;
    btnCancelarOrigenDemanda: TButton;
    edNroDocumentoOrigenDemanda: TPatternEdit;
    edNombreOrigenDemanda: TEdit;
    lbNombre: TLabel;
    fpImportes: TFormPanel;
    Bevel2: TBevel;
    btAceptaraImportes: TButton;
    btCancelarImportes: TButton;
    dsOrigenDemanda: TDataSource;
    dsEventoMediacion: TDataSource;
    dsImportes: TDataSource;
    sdqPagos: TSDQuery;
    dsPagos: TDataSource;
    lblDetalle: TLabel;
    lblAplicacion: TLabel;
    edDetalleImportes: TEdit;
    gbLiquidacion: TGroupBox;
    lblImporteSRet: TLabel;
    lblImporteSinRet: TLabel;
    edImporteSinRet: TCurrencyEdit;
    edImporteConRet: TCurrencyEdit;
    GroupBox1: TGroupBox;
    fraDomicilioOrigenDemanda: TfraDomicilio;
    fraTrabajador: TfraTrabajadorSiniestro;
    CUIL: TLabel;
    Label5: TLabel;
    fraAbogadoEventos: TfraAbogadosLegales;
    cbAplicacionImportes: TExComboBox;
    Panel1: TPanel;
    gbDetalleJuicio: TGroupBox;
    lblEstadoJuicio: TLabel;
    Label1: TLabel;
    lblExpediente: TLabel;
    lblNroCaja: TLabel;
    lblSemestre: TLabel;
    fraEstado: TfraCodigoDescripcion;
    tbExplorarHistoricoEstado: TToolBar;
    tbHistoricoEstados: TToolButton;
    edFECHAFINJUICIO: TDateComboBox;
    chkGPBA: TCheckBox;
    edExpediente: TPatternEdit;
    edNroCaja: TPatternEdit;
    edSemestre: TPeriodoPicker;
    gbJuicio: TGroupBox;
    lblTipoMediacion: TLabel;
    lbFechaInicio: TLabel;
    lbAbogado: TLabel;
    lblCaratula: TLabel;
    lblFechaAsignacion: TLabel;
    lblFolio: TLabel;
    lblContra: TLabel;
    fraTipoMediacion: TfraCodigoDescripcion;
    edFechaInicio: TDateComboBox;
    fraAbogadosPropios: TfraAbogadosLegales;
    tbEdicionAbogado: TToolBar;
    tbNuevoAbogado: TToolButton;
    edFECHAASIGNADO: TDateComboBox;
    edNroCarpeta: TIntEdit;
    edDemandante: TEdit;
    edDemandado: TEdit;
    fraUsuarioLegal: TfraCodigoDescripcion;
    Label6: TLabel;
    fraUsuarioLegalesEvento: TfraCodigoDescripcion;
    Label7: TLabel;
    lblAviso: TLabel;
    edMontoReclamado: TCurrencyEdit;
    Label8: TLabel;
    tbReserva: TTabSheet;
    GroupBox2: TGroupBox;
    ToolBar7: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolBar8: TToolBar;
    tbHistoricoReserva: TToolButton;
    Label10: TLabel;
    Label11: TLabel;
    edReservaCapital: TCurrencyEdit;
    edReservaHonorarios: TCurrencyEdit;
    edHora: TDateTimePicker;
    edFechaEventoDesde: TDateComboBox;
    chkNoSiniestro: TCheckBox;
    fraNoSiniestro: TfraCodigoDescripcion;
    sduPago: TSDUpdateSQL;
    pnConceptoDuplicado: TPanel;
    lbConceptoDuplicado: TLabel;
    lbColorConceptoDuplicado: TLabel;
    tbAprobacionConceptosDuplicados: TToolButton;
    pnAprobacionConDup: TFormPanel;
    lbMotivo: TLabel;
    btnAceptarAprobConDup: TButton;
    btnCancelarAprobConDup: TButton;
    gbAprobacion: TGroupBox;
    cbAprobadoConDup: TCheckBox;
    cbRechazadoConDup: TCheckBox;
    edMotivo: TMemo;
    lblArchivosAsociados: TLabel;
    edtArchivosAsociados: TEdit;
    tbrVerArchivosAsociados: TToolBar;
    tbSeleccionArchivosAsociar: TToolButton;
    cdsArchivosAsociados: TClientDataSet;
    sdqArchivosAsociados: TSDQuery;
    tbVerImagenes: TToolButton;
    Label9: TLabel;
    fraJurisdiccion: TfraCodigoDescripcion;
    Panel2: TPanel;
    lbSumatoria: TLabel;
    tbBloquearPagosSiniestros: TToolButton;
    tbAsignarDoc: TToolButton;
    tbOrdenarEventos: TToolButton;
    SortDialogEvento: TSortDialog;
    FormStorage: TFormStorage;
    Label12: TLabel;
    edRSPLILP: TCurrencyEdit;
    Label13: TLabel;
    edRSPLMuertes: TCurrencyEdit;
    Label14: TLabel;
    edTotalReservas: TCurrencyEdit;
    lblSumatoriaPagosConRet: TEdit;
    lblSumatoriaPagosSinRet: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure tbGuardarClick(Sender: TObject);
    procedure tbNuevoEventoClick(Sender: TObject);
    procedure pgDetallesChange(Sender: TObject);
    procedure chkAceptaRevisacionMedicaClick(Sender: TObject);
    procedure tbNuevoOrigenClick(Sender: TObject);
    procedure tbModificarEventoClick(Sender: TObject);
    procedure tbEliminarEventoClick(Sender: TObject);
    procedure tbModificarOrigenDemandaClick(Sender: TObject);
    procedure tbEliminarOrigenDemandaClick(Sender: TObject);
    procedure btnAceptarOrigenDemandaClick(Sender: TObject);
    procedure btnAccAceptarClick(Sender: TObject);
    procedure tbIngresoValorClick(Sender: TObject);
    procedure btAceptaraImportesClick(Sender: TObject);
    procedure tbEdicionValorClick(Sender: TObject);
    procedure tbEliminarValorClick(Sender: TObject);
    procedure tbNuevoAbogadoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tbSalirClick(Sender: TObject);
    procedure dbgRelcamanteGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dbgEventosJuicioEnTramiteGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dbgImportesReguladosGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dbgPagosEfectuadosGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure tbSeleccionMediadorClick(Sender: TObject);
    procedure tbAbogadoActoraClick(Sender: TObject);
    procedure tbAbogadoEmpresaClick(Sender: TObject);
    procedure tbSiniestroClick(Sender: TObject);
    procedure tbHistoricosImportesClick(Sender: TObject);
    procedure tbHistoricoEstadosClick(Sender: TObject);
    procedure dbgEventosJuicioEnTramiteDblClick(Sender: TObject);
    procedure dbgImportesReguladosDblClick(Sender: TObject);
    procedure dbgRelcamanteDblClick(Sender: TObject);
    procedure chkIncapacidadIndeterminadaClick(Sender: TObject);
    procedure edMontoReclamadoChange(Sender: TObject);
    procedure chkGPBAClick(Sender: TObject);
    procedure chkNoSiniestroClick(Sender: TObject);
    procedure tbIngresoPagoClick(Sender: TObject);
    procedure tbEdicionPagoClick(Sender: TObject);
    procedure tbEliminarPagoClick(Sender: TObject);
    procedure tbObtenerEstadoPagoClick(Sender: TObject);
    procedure tbImprimirPagosClick(Sender: TObject);
    procedure tbAprobacionConceptosDuplicadosClick(Sender: TObject);
    procedure cbRechazadoConDupClick(Sender: TObject);
    procedure cbAprobadoConDupClick(Sender: TObject);
    procedure btnAceptarAprobConDupClick(Sender: TObject);
    procedure tbSeleccionArchivosAsociarClick(Sender: TObject);
    procedure tbVerImagenesClick(Sender: TObject);
    procedure tbBloquearPagosSiniestrosClick(Sender: TObject);
    procedure edExpedienteChange(Sender: TObject);
    procedure tbAsignarDocClick(Sender: TObject);
    procedure tbOrdenarEventosClick(Sender: TObject);
    procedure dbgPagosEfectuadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
    FNroFolio : Integer;
    FIdMediacion : Integer;
    FModo: TModoEjecucion;
    FIdEventoMediacion: Integer;
    FIdImporte : Integer;
    FIdOrigenDemanda: Integer;
    FModoEventosSeguimientos: TModoEjecucion;
    FModoImportes: TModoEjecucion;
    FModoOrigenDemanda : TModoEjecucion;
    procedure DoCargarDatos(AQuery : TDataSet);
    procedure GuardarOrigenDeDemanda;
    procedure GuardarImporte;
    procedure GuardarEventos;
    function Alta: boolean;
    function Validar: boolean;
    function ValidarOrigenDeDemanda: boolean;
    function ValidarEventosSeguimientos: boolean;
    procedure LimpiarCampos;
    procedure Guardar;
    function AltaEvento : Boolean;
    function AltaOrigenDemanda : Boolean;
    procedure LimpiarCamposEvento;
    function ObtenerNroFolio : Integer;
    procedure LimpiarCamposOrigenDemanda;
    function ModificacionEvento: boolean;
    procedure CargarDatosEvento(Campos: TFields);
    function ModificacionOrigenDemanda: boolean;
    procedure CargarDatosOrigenDemanda(Campos: TFields);
    function AltaImporte: Boolean;
    procedure LimpiarCamposImporte;
    procedure ModificarImporte;
    procedure CargarImportes;
    procedure fraNombreMediadorOnChange(Sender: TObject);
    procedure fraEstadoOnChange(Sender : TObject);
    procedure fraTrabajadorOnChange(Sender: TObject);
    procedure ObtieneComision;
    procedure fraUsuarioLegalesEventoOnChange(Sender: TObject);
    procedure fraUsuarioLegalOnChange(Sender: TObject);
    procedure ActivarControlesAlta(activar: boolean);
    procedure CargarFinancialsDatosPago;
    procedure MostrarArchivosAsociados;
    procedure RecargarArchivosAsociados(
      cdsArchivosAsociados: TClientDataSet);
    procedure CargarArchivos;
    procedure SumatoriaImportes;
    procedure CalcControlWidthLeft;
  public
    { Public declarations }
    procedure Modificacion(Tabla: TSDQuery);
    procedure ConsultarMediacion(Tabla: TSDQuery);
    function AltaMediacion : Boolean;
  protected
    FarId: TTableId;
  end;

var
  frmABMSeguimientoMediacion: TfrmABMSeguimientoMediacion;

resourcestring
  LJT_GESTION_ALTA = 'Alta... (Administraci�n de Mediaciones)';
  LJT_GESTION_MODIF = 'Modificaci�n... (Administraci�n de Mediaciones)';

implementation

uses
  unSesion, unCustomDataModule, unDlgBusSiniestro, Math, unFrmPagoMediacion, unComunes,
  unDmFinancials, unEspera, StrFuncs, Cuit, unImpresionConceptoPago, unArchivosAsociados,
  unComunesArchivo,unConstantArchivo, unFrmDetalleArchivo, unBloqueoPagosSiniestrosMediacion,
  unCustomConsulta;

{$R *.dfm}

{ TfrmABMSeguimientoMediacion }

function TfrmABMSeguimientoMediacion.AltaMediacion: Boolean;
begin
  Caption := LJT_GESTION_ALTA;
  fraUsuarioLegal.ShowBajas := False;
  fraAbogadosPropios.ShowBajas := False;
  fraAbogadoActora.ShowBajas := False;
  fraAbogadoEmpresa.ShowBajas := False;
  edExpediente.OnChange := edExpedienteChange;
  result := Alta;
end;

procedure TfrmABMSeguimientoMediacion.LimpiarCampos;
begin
  edNroCarpeta.Text := '';
  edFechaInicio.Date := 0;
  edFechaInicio.MaxDate := DBDate;
  edFechaInicio.ErrorMessage := 'La fecha debe ser menor o igual a la fecha actual';

  fraTipoMediacion.Clear;
  edDemandante.Clear;
  edDemandado.Clear;
  fraAbogadosPropios.Clear;
  edFECHAASIGNADO.Clear;

  fraEstado.Clear;
  edExpediente.Clear;
  chkGPBA.Checked := False;
  edFECHAFINJUICIO.Clear;
  edNroCaja.Clear;
  edSemestre.Clear;

  fraNombreMediador.Clear;
  fraDomicilioMediador.Clear;

  fraMotivoReclamo.Clear;
  fraJurisdiccion.Clear;
  fraDiagnostico.Clear;
  fraObjetoReclamo.Clear;
  chkIncapacidadIndeterminada.Checked := False;
  edPorcentajeIncapacidadDemanda.Clear;
  edPorcentajeIncapacidadSegunPerito.Clear;

  chkNoSiniestro.Checked := False;
  fraNoSiniestro.Clear;
  chkAseguradoProvinciaART.Checked := False;
  fraTrabajador.Clear;
  edFechaAccidente.Clear;
  edFechaIngreso.Clear;
  edFechaEgreso.Clear;
  edFechaNacimiento.Clear;
  edSalario.Clear;
  chkComisionMedica.Checked := False;
  edTarea.Clear;
  chkAceptaRevisacionMedica.Checked := False;
  fraEmpresaTrabajador.Clear;
  chkDemandaEmpleador.Checked := False;
  fraAbogadoActora.Clear;
  fraAbogadoEmpresa.Clear;

  edMontoOfrecido.Clear;
  edFechaOfrecimiento.Clear;
  edMontoAcordado.Clear;
  edHonorarioActora.Clear;
  edHonorarioMediador.Clear;
  edMulta.Clear;
end;

function TfrmABMSeguimientoMediacion.Alta: boolean;
begin
//  BeginTrans(True);

  FModo := meAlta;
  ActivarControlesAlta(false);

  LimpiarCampos;

  fraEstado.ShowBajas := false;
  pgDetallesChange(nil);
  chkIncapacidadIndeterminadaClick(nil);
  Result := (ShowModal = mrOK);
end;

procedure TfrmABMSeguimientoMediacion.DoCargarDatos(AQuery: TDataSet);
var
  dReservaMuertes, dReservaILP : Double;
begin
  edNroCarpeta.Text                         := AQuery.FieldByName('me_numerofolio').AsString;
  edFechaInicio.Date                        := AQuery.FieldByName('me_fechainicio').AsDateTime;
  fraTipoMediacion.Codigo                   := AQuery.FieldByName('me_idtipo').AsString;
  edDemandante.Text                         := AQuery.FieldByName('me_demandante').AsString;
  edDemandado.Text                          := AQuery.FieldByName('me_demandado').AsString;
  fraAbogadosPropios.Codigo                 := AQuery.FieldByName('me_idabogado').AsString;
  fraUsuarioLegal.Value                     := AQuery.FieldByName('me_idusuariolegal').AsInteger;
  edFECHAASIGNADO.Date                      := AQuery.FieldByName('me_fechaasignacion').AsDateTime;
  edMontoOfrecido.Value                     := AQuery.FieldByName('me_montoofrecido').AsFloat;
  edFechaOfrecimiento.Date                  := AQuery.FieldByName('me_fechaofrecimiento').AsDateTime;

  fraEstado.Codigo                          := AQuery.FieldByName('me_idestado').AsString;
  edExpediente.Text                         := AQuery.FieldByName('me_expediente').AsString;
  chkGPBA.Checked                           := AQuery.FieldByName('me_gpba').AsString = 'S';
  edFECHAFINJUICIO.Date                     := AQuery.FieldByName('me_fechafin').AsDateTime;
  edNroCaja.Text                            := AQuery.FieldByName('me_numerocaja').AsString;
  edSemestre.Text                           := AQuery.FieldByName('me_semestre').AsString;

  fraNombreMediador.Codigo                  := AQuery.FieldByName('me_idmediador').AsString;
  fraMotivoReclamo.Codigo                   := AQuery.FieldByName('me_idmotivoreclamo').AsString;
  fraJurisdiccion.Codigo                    := AQuery.FieldByName('me_idjurisdiccion').AsString;
  fraDiagnostico.Codigo                     := AQuery.FieldByName('me_iddiagnostico').AsString;
  fraObjetoReclamo.Codigo                   := AQuery.FieldByName('me_idreclamo').AsString;
  chkIncapacidadIndeterminada.Checked       := AQuery.FieldByName('me_incapindeterminada').AsString = 'S';
  edPorcentajeIncapacidadDemanda.Value      := AQuery.FieldByName('me_incapacidad').AsFloat;
  edPorcentajeIncapacidadSegunPerito.Value  := AQuery.FieldByName('me_incaprevisacionmed').AsFloat;
  edHecho.Text                              := AQuery.FieldByName('me_hecho').AsString;
  edTarea.Text                              := AQuery.FieldByName('me_tarea').AsString;
  edFechaIngreso.Date                       := AQuery.FieldByName('me_fechaingreso').AsDateTime;
  edFechaEgreso.Date                        := AQuery.FieldByName('me_fechaegreso').AsDateTime;
  edFechaNacimiento.Date                    := AQuery.FieldByName('me_fechanacimiento').AsDateTime;
  edSalario.Value                           := AQuery.FieldByName('me_salario').AsFloat;
  chkAceptaRevisacionMedica.Checked         := AQuery.FieldByName('me_aceptarevisacionmed').AsString = 'S';
  edFechaRevisacionMed.Date                 := AQuery.FieldByName('me_fecharevisacionmed').AsDateTime;
  fraTrabajador.IdSiniestro                 := AQuery.FieldByName('me_idexpediente').AsInteger;
  chkAseguradoProvinciaART.Checked          := AQuery.FieldByName('me_aseguradoart').AsString = 'S';
  chkNoSiniestro.Checked                    := AQuery.FieldByName('me_nosiniestro').AsString = 'S';
  fraNoSiniestro.Codigo                     := AQuery.FieldByName('me_idnosiniestro').AsString;
  chkDemandaEmpleador.Checked               := AQuery.FieldByName('me_demandaempleador').AsString = 'S';

  fraAbogadoActora.Codigo                   := AQuery.FieldByName('me_idabogadoactora').AsString;
  fraAbogadoEmpresa.Codigo                  := AQuery.FieldByName('me_idabogadoempresa').AsString;
  edMontoReclamado.Value                    := AQuery.FieldByName('me_montoreclamado').AsFloat;
  edReservaCapital.Value                    := AQuery.FieldByName('me_reservacapital').AsFloat;
  edReservaHonorarios.Value                 := AQuery.FieldByName('me_reservahonorarios').AsFloat;

  dReservaMuertes              := ValorSql(' SELECT NVL (SUM (rm_res_art), 0) '+
                                           '   FROM actuarial.urm_reservamortal, legales.lme_mediacion, '+
                                           '        art.sex_expedientes '+
                                           '  WHERE rm_siniestro = ex_siniestro '+
                                           '    AND rm_orden = ex_orden '+
                                           '    AND me_idexpediente = ex_id '+
                                           '    AND me_id = '+SqlValue(FIdMediacion)+
                                           '    AND rm_periodo = (SELECT MAX (b.rm_periodo) '+
                                           '                        FROM actuarial.urm_reservamortal b)');
  edRSPLMuertes.Text           := FloatToStr(dReservaMuertes);
  dReservaILP                  := ValorSql(' SELECT NVL (SUM (rp_res_art), 0) '+
                                           '   FROM actuarial.urp_reservaincapacidad, '+
                                           '        legales.lme_mediacion, '+
                                           '        art.sex_expedientes '+
                                           '  WHERE rp_siniestro = ex_siniestro '+
                                           '    AND rp_orden = ex_orden '+
                                           '    AND me_idexpediente = ex_id '+
                                           '    AND me_id = '+SqlValue(FIdMediacion)+
                                           '    AND rp_periodo = (SELECT MAX (b.rp_periodo) '+
                                           '                        FROM actuarial.urp_reservaincapacidad b)');
  edRSPLILP.Text               := FloatToStr(dReservaILP);


  edTotalReservas.Text         := FloatToStr(dReservaMuertes+dReservaILP+AQuery.FieldByName('me_reservacapital').AsFloat+AQuery.FieldByName('me_reservahonorarios').AsFloat);


  edMontoAcordado.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''A'' ');
  edHonorarioActora.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''H'' ');
  edHonorarioMediador.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''M'' ');
  edMulta.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''U'' ');
  chkNoSiniestroClick(nil);
  fraTrabajadorOnChange(nil);
  fraNombreMediadorOnChange(nil);
  chkIncapacidadIndeterminadaClick(nil);
  pgDetallesChange(nil);
  fraUsuarioLegalOnChange(nil);
  fraEstadoOnChange(nil);
  chkGPBAClick(nil);

  if sdqOrigenDemanda.IsEmpty then
    pcOrigenDemanda.ActivePageIndex := 0
  else
    pcOrigenDemanda.ActivePageIndex := 1;
  SumatoriaImportes;
end;

procedure TfrmABMSeguimientoMediacion.FormCreate(Sender: TObject);
begin
  with fraMotivoReclamo do
  begin
    TableName   := 'LEGALES.LMR_MOTIVORECLAMO';
    FieldID     := 'mr_id';
    FieldCodigo := 'mr_id';
    FieldDesc   := 'mr_descripcion';
    FieldBaja   := 'mr_fechabaja';
    Showbajas   := True;
  end;
  with fraJurisdiccion do
  begin
    TableName   := 'LEGALES.LJU_JURISDICCION';
    FieldID     := 'JU_ID';
    FieldCodigo := 'JU_ID';
    FieldDesc   := 'JU_DESCRIPCION';
    FieldBaja   := 'JU_FECHABAJA';
    Showbajas   := True;
  end;
  with fraNoSiniestro do
  begin
    TableName   := 'LEGALES.LMS_MEDIACIONNOSINIESTRO';
    FieldID     := 'ms_id';
    FieldCodigo := 'ms_id';
    FieldDesc   := 'ms_descripcion';
    FieldBaja   := 'ms_fechabaja';
    Showbajas   := True;
  end;
  with fraUsuarioLegal do
  begin
    TableName   := 'art.use_usuarios';
    FieldID     := 'SE_ID';
    FieldCodigo := 'SE_USUARIO';
    FieldDesc   := 'SE_NOMBRE';
    FieldBaja   := 'se_fechabaja';
    ExtraCondition := ' AND se_sector IN (''LEGAL'', ''UACR'') AND SE_USUARIOGENERICO = ''N'' ';
    Showbajas   := True;
    OnChange    := fraUsuarioLegalOnChange;
  end;
  with fraUsuarioLegalesEvento do
  begin
    TableName   := 'art.use_usuarios';
    FieldID     := 'SE_ID';
    FieldCodigo := 'SE_USUARIO';
    FieldDesc   := 'SE_NOMBRE';
    FieldBaja   := 'se_fechabaja';
    ExtraCondition := ' AND se_sector IN (''LEGAL'', ''UACR'') AND SE_USUARIOGENERICO = ''N'' ';
    Showbajas   := True;
    OnChange    := fraUsuarioLegalesEventoOnChange;
  end;
  with fraNombreMediador do
  begin
    TableName   := 'legales.LMD_MEDIADOR';
    FieldID     := 'md_id';
    FieldCodigo := 'md_id';
    FieldDesc   := 'md_nombre';
    FieldBaja   := 'md_fechabaja';
    Showbajas   := True;
    OnChange    := fraNombreMediadorOnChange;
  end;
  with fraTipoMediacion do
  begin
    TableName   := 'legales.ltm_tipomediacion';
    FieldID     := 'tm_id';
    FieldCodigo := 'tm_id';
    FieldDesc   := 'TM_DESCRIPCION';
    FieldBaja   := 'tm_fechabaja';
    Showbajas   := True;
  end;
  with fraEstado do
  begin
    TableName   := 'legales.LEJ_ESTADOJUICIO';
    FieldID     := 'EJ_ID';
    FieldCodigo := 'EJ_ID';
    FieldDesc   := 'EJ_DESCRIPCION';
    FieldBaja   := 'EJ_FECHABAJA';
    Showbajas   := True;
    ExtraCondition := ' AND ej_etapa LIKE ''%M%''';
    OnChange    := fraEstadoOnChange;
  end;
  with fraDiagnostico do
  begin
    TableName   := 'art.cdg_diagnostico';
    FieldID     := 'DG_ID';
    FieldCodigo := 'DG_ID';
    FieldDesc   := 'dg_descripcion';
    FieldBaja   := 'dg_fechabaja';
    Showbajas   := True;
  end;
  with fraObjetoReclamo do
  begin
    TableName   := 'legales.lrc_reclamo';
    FieldID     := 'RC_ID';
    FieldCodigo := 'RC_ID';
    FieldDesc   := 'RC_DESCRIPCION';
    FieldBaja   := 'RC_FECHABAJA';
    ExtraCondition := ' AND RC_ETAPA LIKE ''%M%''';
    Showbajas   := True;
  end;
  with fraTipoEvento do
  begin
    TableName   := 'legales.lte_tipoevento';
    FieldID     := 'te_id';
    FieldCodigo := 'te_id';
    FieldDesc   := 'te_descripcion';
    FieldBaja   := 'te_fechabaja';
    ExtraCondition := ' AND te_etapa LIKE ''%M%''';
    Showbajas   := True;
  end;
  with fraTrabajador do
  begin
    Showbajas   := True;
    OnChange    := fraTrabajadorOnChange;
  end;
  with fraEmpresaTrabajador do
  begin
    ShowBajas := True;
  end;

  fraEmpresaTrabajador.ExtraCondition := '     AND co_contrato = '+
                                         ' (SELECT MAX (b.co_contrato) '+
                                         '    FROM aco_contrato b '+
                                         '   WHERE b.co_idempresa = em_id '+
                                         '     AND NOT EXISTS (SELECT 1 '+
                                         '    FROM art.abc_bajadecontrato '+
                                         '   WHERE b.co_contrato = bc_contrato)) ';

  FarId := ART_EMPTY_ID;

  fraAbogadosPropios.FieldBaja := 'bo_fechabaja';
  fraAbogadosPropios.OnChange := fraUsuarioLegalOnChange;
  fraAbogadosPropios.ShowBajas := True;

  fraAbogadoActora.FieldBaja := 'bo_fechabaja';
  fraAbogadoActora.ShowBajas := True;
  fraAbogadoActora.ExtraCondition := ' AND BO_PARTE = ''O'' ';

  fraAbogadoEmpresa.FieldBaja := 'bo_fechabaja';
  fraAbogadoEmpresa.ShowBajas := True;
  fraAbogadoEmpresa.ExtraCondition := ' AND BO_PARTE = ''O'' ';

  fraAbogadoEventos.FieldBaja := 'bo_fechabaja';
  fraAbogadoEventos.OnChange := fraUsuarioLegalesEventoOnChange;
  fraAbogadoEventos.ShowBajas := True;

  vclExtra.LockControl(fraDomicilioMediador,True);
  vclExtra.LockControl(edFechaAccidente, True);
  vclExtra.LockControl(chkComisionMedica,True);
  vclExtra.LockControl(fraEmpresaTrabajador,True);

  pgDetalles.ActivePageIndex := 0;
  pcOrigenDemanda.ActivePageIndex := 0;
end;


procedure TfrmABMSeguimientoMediacion.tbGuardarClick(Sender: TObject);
begin
  if Validar then
  begin
    Guardar;
    if (FModo <> meAlta) then
      ModalResult := mrOk
    else begin
      FModo := meModificacion;
      ActivarControlesAlta(true);
    end;
  end;
end;

procedure TfrmABMSeguimientoMediacion.Guardar;
var
	sSqlTrans: TSql;
begin
  //Guardo en el hist�rico de Estados
  //GuardarCambioEstado;

  //Guardo el Hist�rico de Reservas
  //GuardarCambioReserva;

  if (FModo = meAlta) then
  begin
    FIdMediacion := GetSecNextVal('LEGALES.SEQ_LME_ID');
    FNroFolio := ObtenerNroFolio;

    EjecutarSqlST(
      'INSERT INTO legales.lme_mediacion '+
      '        (me_id, me_numerofolio, me_demandante, me_demandado, '+
      '         me_demandaempleador, me_aseguradoart, me_aceptarevisacionmed, '+
      '         me_idestado, me_fechainicio '+
      '        ) '+
      ' VALUES ('+SqlValue(FIdMediacion)+','+SqlValue(FNroFolio)+', ''DEMANDANTE'', ''DEMANDADO'', '+
      '         ''N'', ''N'', ''N'', '+
      '         ''2'', SYSDATE '+
      '        )');
  end;
  sSqlTrans := TSql.Create('legales.lme_mediacion');
  sSqlTrans.SqlType := stUpdate;

  try
    edMontoReclamadoChange(nil);
    fraEstadoOnChange(nil);
    chkGPBAClick(nil);
    sSqlTrans.Fields.Add('me_expediente', edExpediente.Text);
    sSqlTrans.Fields.Add('me_demandante', edDemandante.Text);
    sSqlTrans.Fields.Add('me_demandado', edDemandado.Text);
    sSqlTrans.Fields.Add('me_fechaingreso', edFechaIngreso.Date);
    sSqlTrans.Fields.Add('me_fechaegreso', edFechaEgreso.Date);
    sSqlTrans.Fields.Add('me_salario', edSalario.Value);
    sSqlTrans.Fields.Add('me_tarea', edTarea.Text);
    sSqlTrans.Fields.Add('me_fechanacimiento', edFechaNacimiento.Date);
    sSqlTrans.Fields.Add('me_iddiagnostico', fraDiagnostico.Codigo);
    sSqlTrans.Fields.Add('me_idreclamo', fraObjetoReclamo.Codigo);
    sSqlTrans.Fields.Add('me_hecho', edHecho.Text);
    sSqlTrans.Fields.Add('me_montoofrecido', edMontoOfrecido.Value);
    sSqlTrans.Fields.Add('me_fechaofrecimiento', edFechaOfrecimiento.Date);
    sSqlTrans.Fields.Add('me_montoreclamado', edMontoReclamado.Value);
    sSqlTrans.Fields.Add('me_reservacapital', edReservaCapital.Value);
    sSqlTrans.Fields.Add('me_reservahonorarios', edReservaHonorarios.Value);

    if chkDemandaEmpleador.Checked then
      sSqlTrans.Fields.Add('me_demandaempleador', 'S')
    else
      sSqlTrans.Fields.Add('me_demandaempleador', 'N');

    if chkAseguradoProvinciaART.Checked then
      sSqlTrans.Fields.Add('me_aseguradoart', 'S')
    else
      sSqlTrans.Fields.Add('me_aseguradoart', 'N');

    if chkNoSiniestro.Checked then
      sSqlTrans.Fields.Add('me_nosiniestro', 'S')
    else
      sSqlTrans.Fields.Add('me_nosiniestro', 'N');

    sSqlTrans.Fields.Add('me_idnosiniestro', fraNoSiniestro.Codigo);
    sSqlTrans.Fields.Add('me_idmotivoreclamo', fraMotivoReclamo.Codigo);
    sSqlTrans.Fields.Add('me_idjurisdiccion', fraJurisdiccion.Codigo);

    sSqlTrans.Fields.Add('ME_FECHAASIGNACION', edFECHAASIGNADO.Date);
    sSqlTrans.Fields.Add('me_fecharevisacionmed', edFechaRevisacionMed.Date);
    sSqlTrans.Fields.Add('me_incaprevisacionmed', edPorcentajeIncapacidadSegunPerito.Value);
    sSqlTrans.Fields.Add('me_idtipo', fraTipoMediacion.Codigo);
    sSqlTrans.Fields.Add('me_incapacidad', edPorcentajeIncapacidadDemanda.Value);
    if not fraTrabajador.IsEmpty then
      sSqlTrans.Fields.Add('me_idexpediente', fraTrabajador.IdSiniestro)
    else
      sSqlTrans.Fields.Add('me_idexpediente', exNull);

    if chkIncapacidadIndeterminada.Checked then
      sSqlTrans.Fields.Add('me_incapindeterminada', 'S')
    else
      sSqlTrans.Fields.Add('me_incapindeterminada', 'N');

    sSqlTrans.Fields.Add('me_idabogadoactora', fraAbogadoActora.Codigo);
    sSqlTrans.Fields.Add('me_idabogado', fraAbogadosPropios.Codigo);
    sSqlTrans.Fields.Add('ME_IDUSUARIOLEGAL', fraUsuarioLegal.Value);
    sSqlTrans.Fields.Add('me_idabogadoempresa', fraAbogadoEmpresa.Codigo);

    if chkAceptaRevisacionMedica.Checked then
      sSqlTrans.Fields.Add('me_aceptarevisacionmed', 'S')
    else
      sSqlTrans.Fields.Add('me_aceptarevisacionmed', 'N');

    sSqlTrans.Fields.Add('me_idmediador', fraNombreMediador.Codigo);

    sSqlTrans.Fields.Add('me_idestado', fraEstado.Codigo);
    sSqlTrans.Fields.Add('me_fechainicio', edFechaInicio.Date);
    sSqlTrans.Fields.Add('me_fechafin', edFECHAFINJUICIO.Date);

    if chkGPBA.Checked then
      sSqlTrans.Fields.Add('me_gpba', 'S')
    else
      sSqlTrans.Fields.Add('me_gpba', 'N');

    sSqlTrans.Fields.Add('me_numerocaja', edNroCaja.Text);
    sSqlTrans.Fields.Add('me_semestre', edSemestre.Text);

    if Fmodo = meAlta then
    begin
      sSqlTrans.PrimaryKey.Add('me_id', FIdMediacion);
     	//ObtenerNumeroFolio;
      sSqlTrans.Fields.AddDateTime('me_fechaalta',DBDateTime);
      sSqlTrans.Fields.Add('me_usualta', Sesion.LoginName);
    end
    else
    begin
      sSqlTrans.PrimaryKey.Add('me_id', FIdMediacion);
      sSqlTrans.Fields.AddDateTime ('me_fechamodif', DBDateTime);
      sSqlTrans.Fields.Add ('me_usumodif', Sesion.LoginName);
    end;
    EjecutarSQL(sSqlTrans.Sql);
  except
    on E: Exception do
    	raise Exception.Create('Error al guardar la Mediaci�n: ' + E.Message);
  end;
end;

function TfrmABMSeguimientoMediacion.Validar: boolean;
begin
  Verificar(edFechaInicio.Date = 0, edFechaInicio,'Debe Ingresar la Fecha de Notificaci�n.' );
  Verificar(not fraTipoMediacion.IsSelected,fraTipoMediacion, 'Debe Seleccionar Tipo Mediaci�n');
  Verificar(not fraEstado.IsSelected, fraEstado,'Debe Seleccionar un estado.' );
  Verificar(edDemandante.Text = '', edDemandante,'Debe Ingresar el Demandante.' );
  Verificar(edDemandado.Text = '', edDemandado,'Debe Ingresar el Demandado.' );
//  Verificar(not fraProceso.IsSelected, fraProceso,'Debe seleccionar el Proceso.' );
  Verificar(not fraAbogadosPropios.IsSelected and not fraUsuarioLegal.IsSelected, fraAbogadosPropios,'Debe seleccionar el Abogado o usuario asignado.' );
  Verificar(edFECHAASIGNADO.Date = 0, edFECHAASIGNADO,'Debe Ingresar la Fecha de Asignaci�n.' );
  Verificar(not fraMotivoReclamo.IsSelected, fraMotivoReclamo,'Debe seleccionar el Motivo de Reclamo.' );
  Verificar(not fraObjetoReclamo.IsSelected, fraObjetoReclamo,'Debe seleccionar el Objeto de Reclamo.' );
  Verificar((edExpediente.Text = '') and (fraTipoMediacion.Codigo = '2') , edExpediente,'Debe Ingresar el Nro. de Expediente.' );
  Verificar(((fraEstado.Codigo = '93') or (fraEstado.Codigo = '94')or (fraEstado.Codigo = '95') ) and (edFECHAFINJUICIO.Date = 0), edFECHAFINJUICIO,'Debe Existir fecha de Fin.');
  Verificar((fraEstado.Codigo = '93') and (edMontoAcordado.Value = 0),edMontoAcordado, 'Debe tener Monto Acordado.');
  Verificar(chkAceptaRevisacionMedica.Checked and (edFechaRevisacionMed.Date = 0), edFechaRevisacionMed, 'Debe cargar la fecha de Revisacion Medica.');
  Verificar(not(fraNoSiniestro.IsSelected) and chkNoSiniestro.Checked,fraNoSiniestro,'Debe seleccionar una opci�n.');
  if fraTrabajador.IsSelected then
    Verificar((fraTrabajador.IdSiniestro = 0), tbSiniestro, 'Debe Seleccionar el Siniestro.');
  Result := True;
end;

procedure TfrmABMSeguimientoMediacion.tbNuevoEventoClick(Sender: TObject);
begin
  AltaEvento;
end;

function TfrmABMSeguimientoMediacion.AltaEvento : Boolean;
begin
  LimpiarCamposEvento;
  FModoEventosSeguimientos := meAlta;
  sdqEventoMediacion.ParamByName('idmediacion').AsInteger := FIdMediacion;
  FIdEventoMediacion := -1;
  fraTipoEvento.ShowBajas := false;
  fraTipoEvento.Codigo := '581';
  fraAbogadoEventos.ShowBajas := False;
  fraAbogadoEventos.Codigo := fraAbogadosPropios.Codigo;
  fraUsuarioLegalesEvento.ShowBajas := False;
  fraUsuarioLegalesEvento.Codigo := fraUsuarioLegal.Codigo;
  fraUsuarioLegalesEventoOnChange(nil);
  result :=  fpEventoSeguimiento.ShowModal = mrOK;
  sdqEventoMediacion.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.LimpiarCamposEvento;
begin
  fraTipoEvento.Codigo := '';
  edFechaEventoDesde.Date := 0;
  edHora.Time := 0;
  mObservacionesEvento.Lines.Clear;
  edtArchivosAsociados.Text := '';
//  edFechaEventoDesde.MaxDate := DBDate;
end;

procedure TfrmABMSeguimientoMediacion.pgDetallesChange(Sender: TObject);
begin
case pgDetalles.ActivePageIndex of
  	0:
    begin
    	with sdqOrigenDemanda do
      	if not Active then
        begin
        	ParamByName('idMediacion').AsInteger := FIdMediacion;
          Open;
        end;
    end;
		1:
    begin
    	with sdqEventoMediacion do
      	if not Active then
        begin
        	ParamByName('idMediacion').AsInteger := FIdMediacion;
          Open;
        end;
    end;
		2:
    begin
    	with sdqImportes do
      	if not Active then
        begin
        	ParamByName('idMediacion').AsInteger := FIdMediacion;
          Open;
        end;
    end;
    4:
    begin
    	with sdqPagos do
      	if not Active then
        begin
        	ParamByName('idMediacion').AsInteger := FIdMediacion;
          Open;
        end;
    end;
  end;
end;

procedure TfrmABMSeguimientoMediacion.chkAceptaRevisacionMedicaClick(Sender: TObject);
begin
  If chkAceptaRevisacionMedica.Checked then
  begin
    lbFRevMedica.Visible := True;
    edFechaRevisacionMed.Visible := True;
  end
  else
  begin
    lbFRevMedica.Visible := False;
    edFechaRevisacionMed.Visible := False;
    edFechaRevisacionMed.Date := 0;
  end;
end;

procedure TfrmABMSeguimientoMediacion.Modificacion(Tabla: TSDQuery);
begin
  FModo := meModificacion;
  FIdMediacion := Tabla.FieldByName('me_id').AsInteger;

  LimpiarCampos;
//  BeginTrans(True);
  Caption := LJT_GESTION_MODIF;

  fraEstado.ExtraCondition := ' AND ej_etapa LIKE ''%M%''';
  fraUsuarioLegal.ShowBajas := True;
  fraAbogadosPropios.ShowBajas := True;
  fraAbogadoActora.ShowBajas := True;
  fraAbogadoEmpresa.ShowBajas := True;
  DoCargarDatos(Tabla);
  edExpediente.OnChange := edExpedienteChange;
  ShowModal;
end;

procedure TfrmABMSeguimientoMediacion.ConsultarMediacion(Tabla: TSDQuery);
begin
  FModo := meConsulta;
  FIdMediacion := Tabla.FieldByName('me_id').AsInteger;

  LimpiarCampos;

  DoCargarDatos(Tabla);

  ShowModal;
end;

function TfrmABMSeguimientoMediacion.ObtenerNroFolio: Integer;
var
  nroFolio : Integer;
begin
  nroFolio := ValorSql('SELECT art.legales.getproximanrofolio '+
           '  FROM dual');
   MessageDlg('Se gener� el N� de Folio ' + Inttostr(nroFolio), mtInformation, [mbOK], 0);
   edNroCarpeta.Text := Inttostr(nroFolio);      
  Result := nroFolio;
end;

procedure TfrmABMSeguimientoMediacion.tbNuevoOrigenClick(Sender: TObject);
begin
  AltaOrigenDemanda;
end;

procedure TfrmABMSeguimientoMediacion.LimpiarCamposOrigenDemanda;
begin
  edNroDocumentoOrigenDemanda.Clear;
  edNombreOrigenDemanda.Clear;
  fraDomicilioOrigenDemanda.Clear;
end;

function TfrmABMSeguimientoMediacion.AltaOrigenDemanda: Boolean;
begin
  LimpiarCamposOrigenDemanda;
  FModoOrigenDemanda := meAlta;
  sdqOrigenDemanda.ParamByName('idmediacion').AsInteger := FIdMediacion;
  //FIdEventoMediacion := -1;
  result :=  fpOrigenDemanda.ShowModal = mrOK;
  sdqOrigenDemanda.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.tbModificarEventoClick(Sender: TObject);
begin
  if sdqEventoMediacion.IsEmpty then
    Exit;

  if not sdqEventoMediacion.FieldByName('em_fechabaja').IsNull then
  begin
    MsgBox('El evento est� dado de baja.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  ModificacionEvento;
end;

function TfrmABMSeguimientoMediacion.ModificacionEvento : boolean ;
begin
  result := false;
  if sdqEventoMediacion.RecordCount > 0 then
  begin
   LimpiarCamposEvento;
   FModoEventosSeguimientos := meModificacion;
   FIdEventoMediacion := sdqEventoMediacion.Fields.FieldByName('em_id').AsInteger;
   CargarDatosEvento(sdqEventoMediacion.Fields);
   fraUsuarioLegalesEventoOnChange(nil);
   result :=  fpEventoSeguimiento.ShowModal = mrOK;
   sdqEventoMediacion.Refresh;
  end;
end;

procedure TfrmABMSeguimientoMediacion.CargarDatosEvento(Campos : TFields);
begin
  fraTipoEvento.ShowBajas           := true;
  fraTipoEvento.Codigo              := Campos.FieldByName('EM_IDTIPOEVENTO').asstring;
  fraTipoEvento.ShowBajas           := fraTipoEvento.IsBaja;
  edFechaEventoDesde.Date           := Campos.FieldByName('EM_FECHA').AsDateTime;
  edHora.DateTime                   := Campos.FieldByName('EM_FECHA').AsDateTime;
  mObservacionesEvento.Text         := Campos.FieldByName('EM_OBSERVACIONES').AsString;
  fraAbogadoEventos.ShowBajas       := True;
  fraAbogadoEventos.Codigo          := Campos.FieldByName('EM_IDABOGADO').AsString;
  fraUsuarioLegalesEvento.ShowBajas := True;
  fraUsuarioLegalesEvento.Value     := Campos.FieldByName('EM_IDUSUARIOLEGAL').AsInteger;
  CargarArchivos;

  edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                               ' Archivos Asociados.';
end;

procedure TfrmABMSeguimientoMediacion.CalcControlWidthLeft;
var
  I, sumWidth: Integer;
begin
    // Ticket 66098
    sumWidth := 20;
    for I := 0 to dbgPagosEfectuados.Columns.Count -1 do begin

      if dbgPagosEfectuados.Columns[I].FieldName = 'PM_IMPORTECONRETENCION' then  begin
        lblSumatoriaPagosConRet.Left := sumWidth;
        lblSumatoriaPagosConRet.Width := dbgPagosEfectuados.Columns[I].Width;
      end;
      if dbgPagosEfectuados.Columns[I].FieldName = 'PM_IMPORTEPAGO' then  begin
        lblSumatoriaPagosSinRet.Left := sumWidth;
        lblSumatoriaPagosSinRet.Width := dbgPagosEfectuados.Columns[I].Width;
      end;
      sumWidth := sumWidth + dbgPagosEfectuados.Columns[I].Width;

    end;
end;

procedure TfrmABMSeguimientoMediacion.CargarArchivos;
var
 i : integer;
begin
  try
    sdqArchivosAsociados.ParamByName('IdEventoMediacion').AsInteger := FIdEventoMediacion;
    sdqArchivosAsociados.Open;
    cdsArchivosAsociados.EmptyDataSet;
    if not (FModoEventosSeguimientos = meAlta) then
    begin
      while not sdqArchivosAsociados.Eof do
      begin
        cdsArchivosAsociados.Append;

        for i := 0 to sdqArchivosAsociados.Fields.count - 1 do
          cdsArchivosAsociados.fields[i].Value := sdqArchivosAsociados.Fields[i].Value;

        cdsArchivosAsociados.FieldByName('STATE').AsString := 'V';
        cdsArchivosAsociados.Post;
        sdqArchivosAsociados.Next;
      end;
    end;
  finally
    sdqArchivosAsociados.Close;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbEliminarEventoClick(Sender: TObject);
begin
  if sdqEventoMediacion.IsEmpty then
    Exit;

  if not sdqEventoMediacion.FieldByName('em_fechabaja').IsNull then
  begin
    MsgBox('El evento ya est� dado de baja.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if MsgBox('�Desea dar de baja el evento seleccionado?', MB_ICONQUESTION + MB_YESNO) <> IDYES then
    Exit;

  EjecutarSqlST('UPDATE legales.lem_eventomediacion ' +
                '   SET em_fechabaja = sysdate, em_usubaja = ' + SqlValue(Sesion.LoginName) +
                ' WHERE em_id = ' + sdqEventoMediacion.FieldByName('em_id').AsString);

  sdqEventoMediacion.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.tbModificarOrigenDemandaClick(Sender: TObject);
begin
  if sdqOrigenDemanda.IsEmpty then
    Exit;

  FModoOrigenDemanda := meBaja;
  ModificacionOrigenDemanda;
end;

function TfrmABMSeguimientoMediacion.ModificacionOrigenDemanda : boolean ;
begin
  result := false;
  if sdqOrigenDemanda.RecordCount > 0 then
  begin
   LimpiarCamposOrigenDemanda;
   FModoOrigenDemanda := meModificacion;
   FIdOrigenDemanda := sdqOrigenDemanda.Fields.FieldByName('om_id').AsInteger;
   CargarDatosOrigenDemanda(sdqOrigenDemanda.Fields);
   result :=  fpOrigenDemanda.ShowModal = mrOK;
   sdqOrigenDemanda.Refresh;
  end;
end;

procedure TfrmABMSeguimientoMediacion.CargarDatosOrigenDemanda(Campos : TFields);
begin
  edNroDocumentoOrigenDemanda.Text       := Campos.FieldByName('OM_DNI').AsString;
  edNombreOrigenDemanda.Text             := Campos.FieldByName('OM_NOMBRE').AsString;
  fraDomicilioOrigenDemanda.Calle        := Campos.FieldByName('OM_CALLE').AsString;
  fraDomicilioOrigenDemanda.Numero       := Campos.FieldByName('OM_NUMERO').AsString;
  fraDomicilioOrigenDemanda.Piso         := Campos.FieldByName('OM_PISO').AsString;
  fraDomicilioOrigenDemanda.Departamento := Campos.FieldByName('OM_DEPARTAMENTO').AsString;
  fraDomicilioOrigenDemanda.CodigoPostal := Campos.FieldByName('OM_CPOSTAL').AsString;
  fraDomicilioOrigenDemanda.CPA          := Campos.FieldByName('OM_CPA').AsString;
  fraDomicilioOrigenDemanda.Prov         := StrToIntDef(Campos.FieldByName('OM_PROVINCIA').AsString, -1);
  fraDomicilioOrigenDemanda.Provincia    := Campos.FieldByName('PV_DESCRIPCION').AsString;
end;

procedure TfrmABMSeguimientoMediacion.tbEliminarOrigenDemandaClick(Sender: TObject);
begin
  if sdqOrigenDemanda.IsEmpty then
    Exit;

  if not sdqOrigenDemanda.FieldByName('om_fechabaja').IsNull then
  begin
    MsgBox('El Origen de Demanda ya est� dado de baja.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if MsgBox('�Desea dar de baja el Origen de Demanda seleccionado?', MB_ICONQUESTION + MB_YESNO) <> IDYES then
    Exit;

  EjecutarSqlST('UPDATE legales.lom_origenmediacion ' +
                '   SET OM_FECHABAJA = sysdate, OM_USUBAJA = ' + SqlValue(Sesion.LoginName) +
                ' WHERE OM_ID = ' + sdqOrigenDemanda.FieldByName('OM_ID').AsString);

  sdqEventoMediacion.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.btnAceptarOrigenDemandaClick(Sender: TObject);
begin
  GuardarOrigenDeDemanda;
end;

procedure TfrmABMSeguimientoMediacion.GuardarOrigenDeDemanda;
begin
  if ValidarOrigenDeDemanda then
  begin
    if FModoOrigenDemanda = meAlta then
    begin
      FIdOrigenDemanda := GetSecNextVal('LEGALES.SEQ_LOM_ID');
      EjecutarSqlST(' INSERT INTO LEGALES.LOM_ORIGENMEDIACION ' +
                    ' (om_id, om_idmediacion, om_dni, om_nombre, om_calle, '+
                    '  om_numero, om_piso, om_departamento, om_cpostal, '+
                    '  om_cpa, om_localidad, om_provincia, om_usualta, '+
                    '  om_fechaalta) ' +
                    ' VALUES (' + SqlValue(FIdOrigenDemanda) + ', ' +
                                SqlValue(FIdMediacion) + ', ' +
                                SqlValue(edNroDocumentoOrigenDemanda.Text) + ', ' +
                                SqlValue(edNombreOrigenDemanda.Text) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.Calle) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.Numero) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.Piso) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.Departamento) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.CodigoPostal) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.CPA) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.Localidad) + ', ' +
                                SqlValue(fraDomicilioOrigenDemanda.Prov) + ', ' +
                                SqlValue(Sesion.LoginName) + ', SYSDATE)');
    end
    else
    if FModoOrigenDemanda = meModificacion then
    begin
      EjecutarSqlST('UPDATE LEGALES.LOM_ORIGENMEDIACION ' +
                    '   SET om_dni = ' + SqlValue(edNroDocumentoOrigenDemanda.Text) + ' , ' +
                    '       om_nombre = ' + SqlValue(edNombreOrigenDemanda.Text) + ' , ' +
                    '       om_calle = ' + SqlValue(fraDomicilioOrigenDemanda.Calle) + ' , ' +
                    '       om_numero = ' + SqlValue(fraDomicilioOrigenDemanda.Numero) + ' , ' +
                    '       om_piso = ' + SqlValue(fraDomicilioOrigenDemanda.Piso) + ' , ' +
                    '       om_departamento = ' + SqlValue(fraDomicilioOrigenDemanda.Departamento) + ' , ' +
                    '       om_cpostal = ' + SqlValue(fraDomicilioOrigenDemanda.CodigoPostal) + ' , ' +
                    '       om_cpa = ' + SqlValue(fraDomicilioOrigenDemanda.CPA) + ' , ' +
                    '       om_localidad = ' + SqlValue(fraDomicilioOrigenDemanda.Localidad) + ' , ' +
                    '       om_provincia = ' + SqlValue(fraDomicilioOrigenDemanda.Prov) + ' , ' +
                    '       om_usumodif = ' + SqlValue(Sesion.LoginName) + ' , ' +
                    '       om_fechamodif = SYSDATE,' +
                    '       om_fechabaja = null, ' +
                    '       om_usubaja = null ' +
                    ' WHERE om_id = ' + SqlValue(FIdOrigenDemanda));
    end
    else
    if FModoOrigenDemanda = meAlta then
    begin
      EjecutarSqlST('UPDATE LEGALES.LOM_ORIGENMEDIACION ' +
                    '   SET om_fechabaja = sysdate, ' +
                    '       om_usubaja = ' +SqlValue(Sesion.LoginName)+
                    ' WHERE om_id = ' + SqlValue(FIdOrigenDemanda));
    end;
    sdqOrigenDemanda.Refresh;

    fpOrigenDemanda.Close;
  end;
end;

function TfrmABMSeguimientoMediacion.ValidarOrigenDeDemanda: boolean;
begin
  Verificar(edNroDocumentoOrigenDemanda.Text = '', edNroDocumentoOrigenDemanda, 'Debe existir el N�mero de Documento.');
  Verificar(edNombreOrigenDemanda.Text = '', edNombreOrigenDemanda, 'Debe existir el Nombre.');
  result := True;
end;

procedure TfrmABMSeguimientoMediacion.btnAccAceptarClick(Sender: TObject);
begin
  GuardarEventos;
end;

procedure TfrmABMSeguimientoMediacion.GuardarEventos;
var
  FAudiencia: TDateTime;
begin
  if ValidarEventosSeguimientos then
  begin
    if FModoEventosSeguimientos = meAlta then
    begin
      FAudiencia := edFechaEventoDesde.Date;
      ReplaceTime(FAudiencia, edHora.Time);
      FIdEventoMediacion := GetSecNextVal('LEGALES.SEQ_LEM_EVENTOMEDIACION_ID');
      EjecutarSqlST(' INSERT INTO legales.lem_eventomediacion ' +
                    ' ( em_id, em_idmediacion, em_idtipoevento, em_fecha, '+
                    '   em_observaciones, em_fechaalta, em_usualta, '+
                    '   em_idabogado, EM_IDUSUARIOLEGAL) ' +
                    ' VALUES (' + SqlValue(FIdEventoMediacion) + ', ' +
                                SqlValue(FIdMediacion) + ', ' +
                                SqlValue(fraTipoEvento.Codigo) + ', ' +
                                SqlDateTime(FAudiencia) + ', ' +
                                SqlValue(mObservacionesEvento.Text) + ', ' +
                                'sysdate, ' +
                                SqlValue(Sesion.LoginName) + ', ' +
                                SqlValue(fraAbogadoEventos.Codigo)+ ', '+
                                SqlValue(fraUsuarioLegalesEvento.Value)+ ')');
    end
    else
    if FModoEventosSeguimientos = meModificacion then
    begin
      FAudiencia := edFechaEventoDesde.Date;
      ReplaceTime(FAudiencia, edHora.Time);
      EjecutarSqlST('UPDATE legales.lem_eventomediacion ' +
                    '   SET em_idtipoevento = ' + SqlValue(fraTipoEvento.Codigo) + ' , ' +
                    '       em_fecha = ' + SqlDateTime(FAudiencia) + ' , ' +
                    '       em_observaciones = ' + SqlValue(mObservacionesEvento.Text) + ' , ' +
                    '       em_idabogado = ' + SqlValue(fraAbogadoEventos.Codigo)+ ', ' +
                    '       em_fechamodif = sysdate,' +
                    '       em_usumodif = ' + SqlValue(Sesion.LoginName) + ' , ' +
                    '       EM_IDUSUARIOLEGAL = ' + SqlValue(fraUsuarioLegalesEvento.Value) + ', ' +
                    '       em_fechabaja = null,' +
                    '       em_usubaja = null' +
                    ' WHERE em_id = ' + SqlValue(FIdEventoMediacion));
    end
    else
    if FModoEventosSeguimientos = meBaja then
    begin
      EjecutarSqlST('UPDATE legales.lem_eventomediacion ' +
                    '   SET em_fechabaja = sysdate, ' +
                    '       em_usubaja = ' +SqlValue(Sesion.LoginName)+
                    ' WHERE em_id = ' + SqlValue(FIdEventoMediacion));
    end;
    sdqEventoMediacion.Refresh;

    cdsArchivosAsociados.First;
    while not cdsArchivosAsociados.Eof do
    begin
      if cdsArchivosAsociados.FieldByName('STATE').AsString = 'I' then
      begin
        EjecutarSqlST('INSERT INTO legales.lae_archivoeventomediacion ' +
                      ' (ae_id, ae_descripcion, ae_patharchivo, ' +
                      '  ae_ideventomediacion, ae_usualta, ae_fechaalta) ' +
                      'VALUES (' + SqlValue(cdsArchivosAsociados.FieldByName('ID').AsInteger) + ',  ' +
                                   SqlValue(cdsArchivosAsociados.FieldByName('DESCRIPCION').AsString) + ', ' +
                                   SqlValue(cdsArchivosAsociados.FieldByName('PATHARCHIVO').AsString) + ', ' +
                                   SqlValue(FIdEventoMediacion) + ',' +
                                   SqlValue(Sesion.LoginName) + ', SYSDATE)');
      end;
      cdsArchivosAsociados.Next;
    end;

    fpEventoSeguimiento.Close;
  end;
end;

function TfrmABMSeguimientoMediacion.ValidarEventosSeguimientos: boolean;
begin
  Verificar(edFechaEventoDesde.Date = 0, edFechaEventoDesde, 'Debe existir la fecha del evento.');
  Verificar(fraTipoEvento.Codigo = '', fraTipoEvento, 'Debe existir el tipo de evento.');
  Result := True;
end;

procedure TfrmABMSeguimientoMediacion.tbIngresoValorClick(Sender: TObject);
begin
  AltaImporte;
end;

function TfrmABMSeguimientoMediacion.AltaImporte : Boolean;
begin
  LimpiarCamposImporte;
  FModoImportes := meAlta;
  sdqImportes.ParamByName('idmediacion').AsInteger := FIdMediacion;
  FIdImporte := -1;
  result :=  fpImportes.ShowModal = mrOK;
  sdqImportes.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.LimpiarCamposImporte;
begin
  edDetalleImportes.Clear;
  cbAplicacionImportes.ItemIndex := -1;
  edImporteSinRet.Clear;
  edImporteConRet.Clear;
end;

procedure TfrmABMSeguimientoMediacion.GuardarImporte;
var
 sSqlTrans : TSql;
begin
  sSqlTrans := TSql.Create('legales.lim_importemediacion');
  if FModoImportes = meBaja then
  begin
    sSqlTrans.SqlType := stUpdate;
    sSqlTrans.PrimaryKey.Add('im_id', FIdImporte);
    sSqlTrans.Fields.Add('im_usubaja', Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('im_fechabaja', DBDateTime);

  end
  else
  begin

    Verificar(edDetalleImportes.Text = '' ,edDetalleImportes, 'Debe especificar el detalle.');
    Verificar( cbAplicacionImportes.ItemIndex = -1,cbAplicacionImportes,'Debe especificar concepto de aplicaci�n.');
    Verificar(edImporteSinRet.Value < 0,edImporteSinRet, 'Debe especificar un monto no negativo.');
    Verificar(edImporteConRet.Value < 0,edImporteConRet, 'Debe especificar un monto no negativo.');
    Verificar((edImporteSinRet.Value = 0) and (edImporteConRet.Value = 0),gbLiquidacion,'Los 2 importes no pueden ser 0.');


    sSqlTrans.Fields.Add('im_idmediacion',FIdMediacion);
    sSqlTrans.Fields.Add('im_importesinret', edImporteSinRet.Value);
    sSqlTrans.Fields.Add('im_importe', edImporteConRet.Value);
    sSqlTrans.Fields.Add('im_detalle', edDetalleImportes.Text);
    sSqlTrans.Fields.Add('im_aplicacion', cbAplicacionImportes.Value);

    if FModoImportes = meAlta then
    begin
      sSqlTrans.SqlType := stInsert;
      FIdImporte := GetSecNextVal('LEGALES.SEQ_LIM_ID');

      sSqlTrans.Fields.Add('im_id', FIdImporte);
      sSqlTrans.Fields.Add('im_usualta', Sesion.LoginName);
      sSqlTrans.Fields.AddDateTime('im_fechaalta', DBDateTime);
    end else
    begin
      sSqlTrans.SqlType := stUpdate;

      sSqlTrans.PrimaryKey.Add('im_id', FIdImporte);
      sSqlTrans.Fields.Add('im_usumodif', Sesion.LoginName);
      sSqlTrans.Fields.AddDateTime('im_fechamodif', DBDateTime);
      sSqlTrans.Fields.Add('im_usubaja', exNull);
      sSqlTrans.Fields.Add('im_fechabaja', exNull);
    end;
  end;

  EjecutarSQLST(sSqlTrans.Sql, tmNone);
  sdqImportes.Refresh;
  IF FModoImportes <> meBAJA then
    fpImportes.Close;

  edMontoAcordado.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''A'' ');
  edHonorarioActora.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''H'' ');
  edHonorarioMediador.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''M'' ');
  edMulta.Text := ValorSql(
                  ' SELECT SUM(IM_IMPORTE)+ SUM(IM_IMPORTESINRET) '+
                  '   FROM legales.lim_importemediacion '+
                  '  WHERE im_idmediacion = '+ SqlValue(FIdMediacion)+
                  '    AND IM_FECHABAJA IS NULL '+
                  '    AND im_aplicacion = ''U'' ');
end;

procedure TfrmABMSeguimientoMediacion.btAceptaraImportesClick(Sender: TObject);
begin
  GuardarImporte;
end;

procedure TfrmABMSeguimientoMediacion.tbEdicionValorClick(Sender: TObject);
begin
  ModificarImporte;
end;

procedure TfrmABMSeguimientoMediacion.ModificarImporte;
begin
  if sdqImportes.RecordCount > 0 then
  begin
    FModoImportes := meModificacion;
    FIdImporte := sdqImportes.FieldByName('im_id').AsInteger;
    CargarImportes;
    fpImportes.ShowModal;
    sdqImportes.Refresh;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbEliminarValorClick(Sender: TObject);
begin
  if not sdqImportes.FieldByName('im_fechabaja').IsNull then
  begin
    ShowMessage ('El importe ya ha sido dado de baja.');
    Exit
  end;

  if sdqImportes.FieldByName('im_aplicacion').AsString = 'Capital' then
  begin
    ShowMessage ('El importe corresponde a una Sentencia a Reclamo.' + #13 +
                 'No puede darse de baja directamente.');
    Exit
  end;

  if sdqImportes.FieldByName('im_nropago').AsInteger > 0 then
  begin
    if ExisteSql ('SELECT * ' +
                  '  FROM legales.lpl_pagolegal ' +
                  ' WHERE pl_id = ' + SqlInt (sdqImportes.FieldByName('im_nropago').AsInteger) +
                  '   AND (   pl_importepago > 0 ' +
                  '        OR pl_importeconretencion > 0) ') then
    begin
      ShowMessage (Format ('El importe ha sido asignado al N� de Pago %d.' + #13 +
                           'No puede darse de baja.',
                           [sdqImportes.FieldByName('im_nropago').AsInteger]));
      Exit
    end
  end;
  FModoImportes := meBaja;
  FIdImporte := sdqImportes.FieldByName('im_id').AsInteger;
  GuardarImporte;
  sdqImportes.Refresh;
  //AsignarTotales;
end;

procedure TfrmABMSeguimientoMediacion.CargarImportes;
begin
  edImporteSinRet.Value           := sdqImportes.FieldByName('im_importesinret').AsFloat;
  edImporteConRet.Value           := sdqImportes.FieldByName('im_importe').AsFloat;
  cbAplicacionImportes.Value     := sdqImportes.FieldByName('im_aplicacion').AsString;
  edDetalleImportes.Text          := sdqImportes.FieldByName('im_detalle').AsString;
end;

procedure TfrmABMSeguimientoMediacion.tbNuevoAbogadoClick(Sender: TObject);
begin
  with TfrmManAbogados.Create(Self) do
  begin
    FormStyle := fsNormal;
    VerSeleccion;
    Visible := False;
    ShowModal;
    fraAbogadosPropios.Codigo := ObtenerAbogado;
  end;
end;

procedure TfrmABMSeguimientoMediacion.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult <> mrOk then
  begin
    if MessageDlg('Se descartar�n todas las modificaciones realizadas. �Continua?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      RollBackUpdates
    else
      CanClose := false
  end
end;

procedure TfrmABMSeguimientoMediacion.tbSalirClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmABMSeguimientoMediacion.fraNombreMediadorOnChange(Sender: TObject);
var
 sdqMediador : TSDQuery;
begin
  if fraNombreMediador.IsSelected then
  begin
    sdqMediador :=
      GetQuery(' SELECT md_calle, md_numero, md_piso, md_departamento, md_cpostal, md_cpostala, '+
               '        md_localidad, md_provincia '+
               '   FROM legales.lmd_mediador '+
               '  WHERE md_id = '+SqlValue(fraNombreMediador.Codigo));

    fraDomicilioMediador.Cargar(sdqMediador.FieldByName('md_calle').AsString,sdqMediador.FieldByName('md_cpostal').AsString,
                      sdqMediador.FieldByName('md_localidad').AsString, sdqMediador.FieldByName('md_numero').AsString,
                      sdqMediador.FieldByName('md_piso').AsString,sdqMediador.FieldByName('md_departamento').AsString,
                      sdqMediador.FieldByName('MD_PROVINCIA').AsString, sdqMediador.FieldByName('md_cpostal').AsString);
  end;
end;

procedure TfrmABMSeguimientoMediacion.dbgRelcamanteGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  IF (not sdqOrigenDemanda.FieldByName('OM_FECHABAJA').IsNull) THEN
    AFont.Color := clRed;
end;

procedure TfrmABMSeguimientoMediacion.dbgEventosJuicioEnTramiteGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  IF (not sdqEventoMediacion.FieldByName('EM_FECHABAJA').IsNull) THEN
    AFont.Color := clRed;
end;

procedure TfrmABMSeguimientoMediacion.dbgImportesReguladosGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  IF (not sdqImportes.FieldByName('IM_FECHABAJA').IsNull) THEN
    AFont.Color := clRed;
end;

procedure TfrmABMSeguimientoMediacion.dbgPagosEfectuadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  CalcControlWidthLeft;
end;

procedure TfrmABMSeguimientoMediacion.dbgPagosEfectuadosGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Field.DataSet.FieldByName('pm_estado').AsString = 'A') or
     (Field.DataSet.FieldByName('pm_estado').AsString = 'X') then
    AFont.Color := clRed
  else begin
    if (Field.DataSet.FieldByName('pm_importepago').AsFloat < 0) or
       (Field.DataSet.FieldByName('pm_importeconretencion').AsFloat < 0) then
      AFont.Color := clBlue
  end;
  if (Field.DataSet.FieldByName('pm_duplicado').AsString = 'S') then
    Background := clGreen;
end;

procedure TfrmABMSeguimientoMediacion.tbSeleccionMediadorClick(Sender: TObject);
begin
  with TfrmManMediador.Create(Self) do
  begin
    FormStyle := fsNormal;
    VerSeleccion;
    Visible := False;
    ShowModal;
    fraNombreMediador.Codigo := ObtenerMediador;
  end;
  fraNombreMediadorOnChange(nil);
end;

procedure TfrmABMSeguimientoMediacion.tbAbogadoActoraClick(Sender: TObject);
begin
  with TfrmManAbogados.Create(Self) do
  begin
    FormStyle := fsNormal;
    cmbTipoAbogado.ItemIndex := 1;
    tbRefrescarClick(nil);
    VerSeleccion;
    Visible := False;
    ShowModal;
    fraAbogadoActora.Codigo := ObtenerAbogado;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbAbogadoEmpresaClick(Sender: TObject);
begin
  with TfrmManAbogados.Create(Self) do
  begin
    FormStyle := fsNormal;
    VerSeleccion;
    Visible := False;
    ShowModal;
    fraAbogadoEmpresa.Codigo := ObtenerAbogado;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbSiniestroClick(Sender: TObject);
var
  iOldIdTrabajador, iNewIdTrabajador: integer;
begin
  iOldIdTrabajador := fraTrabajador.IdSiniestro;
  iNewIdTrabajador := GetIdSiniestro(fraEmpresaTrabajador.Value, fraTrabajador.Value, fraTrabajador.IdSiniestro, edFechaAccidente.Date, False, False);
  fraTrabajador.IdSiniestro := iNewIdTrabajador;
  if (fraTrabajador.IdSiniestro <> ART_EMPTY_ID) and (iOldIdTrabajador <> fraTrabajador.IdSiniestro) then
    fraTrabajadorOnChange(nil);

end;

procedure TfrmABMSeguimientoMediacion.fraTrabajadorOnChange(Sender: TObject);
var
  sdqSiniestro : TSDQuery;
begin
  sdqSiniestro :=
      GetQuery(' SELECT ex_fechaaccidente, ex_cuit, rl_fechaingreso fechaingreso, rl_sueldo sueldo, NULL fechaegreso, tj_fnacimiento, rl_tarea tarea'+
               '   FROM art.sex_expedientes, comunes.ctj_trabajador, comunes.crl_relacionlaboral '+
               '  WHERE ex_id = '+SqlValue(fraTrabajador.IdSiniestro)+
               '    AND ex_idtrabajador = tj_id '+
               '    AND rl_idtrabajador = tj_id '+
               '    AND ex_contrato = rl_contrato '+
               ' UNION ALL '+
               ' SELECT ex_fechaaccidente, ex_cuit, hl_fechaingreso fechaingreso, hl_sueldo sueldo, hl_fechaegreso fechaegreso, tj_fnacimiento, hl_tarea tarea'+
               '   FROM art.sex_expedientes, comunes.ctj_trabajador, comunes.chl_historicolaboral '+
               '  WHERE ex_id = '+SqlValue(fraTrabajador.IdSiniestro)+
               '    AND ex_idtrabajador = tj_id '+
               '    AND hl_idtrabajador = tj_id '+
               '    AND ex_contrato = hl_contrato ');

  edFechaAccidente.Date     := sdqSiniestro.FieldByName('EX_FECHAACCIDENTE').AsDateTime;
  fraEmpresaTrabajador.CUIT := sdqSiniestro.FieldByName('EX_CUIT').AsString;
  edFechaIngreso.Date       := sdqSiniestro.FieldByName('fechaingreso').AsDateTime;
  edFechaEgreso.Date        := sdqSiniestro.FieldByName('fechaegreso').AsDateTime;
  edFechaNacimiento.Date    := sdqSiniestro.FieldByName('tj_fnacimiento').AsDateTime;
  edSalario.AsInteger       := sdqSiniestro.FieldByName('sueldo').AsInteger;
  edTarea.Text              := sdqSiniestro.FieldByName('tarea').AsString;
  ObtieneComision;

//SqlValue(AQuery.FieldByName('me_idexpediente').AsString)
end;

procedure TfrmABMSeguimientoMediacion.tbHistoricosImportesClick(Sender: TObject);
begin
  with TfrmHistoricoImportes.Create(nil) do
  try
    MostrarHistorico(FIdMediacion);
    tbRefrescar.Visible := False;
    Visible := false;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbHistoricoEstadosClick(Sender: TObject);
begin
  with TfrmHistoricoEstadoMediacion.Create(nil) do
  try
    MostrarHistorico(FIdMediacion);
    tbRefrescar.Visible := False;
    Visible := false;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmABMSeguimientoMediacion.ObtieneComision;
begin
  chkComisionMedica.Checked := ExisteSql(
      '  SELECT 1 '+
      '    FROM art.sev_eventosdetramite, SIN.sei_eventoincapacidad '+
      '   WHERE ei_tipoevento = 12 '+
      '     AND ev_codigo = ei_codigo '+
      '     AND ev_evento > 0 '+
      '     AND EV_IDEXPEDIENTE = '+SqlValue(fraTrabajador.IdSiniestro)+
      '     AND ei_fechabaja IS NULL ');
end;

procedure TfrmABMSeguimientoMediacion.dbgEventosJuicioEnTramiteDblClick(Sender: TObject);
begin
  tbModificarEventoClick(nil);
end;

procedure TfrmABMSeguimientoMediacion.dbgImportesReguladosDblClick(Sender: TObject);
begin
  tbEdicionValorClick(nil);
end;

procedure TfrmABMSeguimientoMediacion.dbgRelcamanteDblClick(Sender: TObject);
begin
  tbModificarOrigenDemandaClick(nil);
end;

procedure TfrmABMSeguimientoMediacion.chkIncapacidadIndeterminadaClick(Sender: TObject);
begin
  if not chkIncapacidadIndeterminada.Checked then
  begin
    vclextra.LockControl(edPorcentajeIncapacidadDemanda, false);
  end
  else
  begin
    vclextra.LockControl(edPorcentajeIncapacidadDemanda, true);
    edPorcentajeIncapacidadDemanda.Clear;
  end;
end;

procedure TfrmABMSeguimientoMediacion.fraUsuarioLegalOnChange(Sender: TObject);
begin
  if fraUsuarioLegal.IsSelected then
  begin
    vclExtra.LockControl(fraAbogadosPropios, true );
    fraAbogadosPropios.Clear;
  end
  else
    vclExtra.LockControl(fraAbogadosPropios,false);

  if fraAbogadosPropios.IsSelected then
  begin
    vclExtra.LockControl(fraUsuarioLegal, true );
    fraUsuarioLegal.Clear;
  end
  else
    vclExtra.LockControl(fraUsuarioLegal,false);

  if fraAbogadosPropios.IsSelected and ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.lbo_abogado '+
      '  WHERE bo_id = '+SqlValue(fraAbogadosPropios.Codigo)+
      '    AND bo_direlectronica IS NULL') then
    InvalidMsg(fraAbogadosPropios,'El abogado no tiene email.','Aviso');
end;

procedure TfrmABMSeguimientoMediacion.fraUsuarioLegalesEventoOnChange(Sender: TObject);
begin
  if fraUsuarioLegalesEvento.IsSelected then
  begin
    vclExtra.LockControl(fraAbogadoEventos, true );
    fraAbogadoEventos.Clear;
  end
  else
    vclExtra.LockControl(fraAbogadoEventos,false);

  if fraAbogadoEventos.IsSelected then
  begin
    vclExtra.LockControl(fraUsuarioLegalesEvento, true );
    fraUsuarioLegalesEvento.Clear;
  end
  else
    vclExtra.LockControl(fraUsuarioLegalesEvento,false)
end;

procedure TfrmABMSeguimientoMediacion.ActivarControlesAlta(activar: boolean);
begin
  lblAviso.Visible := not activar;
  VclExtra.LockControls(pgDetalles, not activar);
  tbExplorarHistoricoEstado.Enabled := activar;
  vclExtra.LockControls(tbAsegurado,false);
  vclExtra.LockControls(chkAseguradoProvinciaART,false);
  vclExtra.LockControls(chkNoSiniestro,false);
end;

procedure TfrmABMSeguimientoMediacion.edMontoReclamadoChange(Sender: TObject);
begin
  edReservaCapital.Value := edMontoReclamado.Value * 0.15;
  edReservaHonorarios.Value := (edReservaCapital.Value * 0.10)+500;
end;

procedure TfrmABMSeguimientoMediacion.fraEstadoOnChange(Sender: TObject);
begin
  if (fraEstado.Codigo = '95') or (fraEstado.Codigo = '93') or
     (fraEstado.Codigo = '94') or (fraEstado.Codigo = '3')
  then
  begin
    vclExtra.LockControls([edReservaCapital,edReservaHonorarios], True);
    edReservaCapital.Value := 0;
    edReservaHonorarios.Value := 0;
  end
  else
    if not chkGPBA.Checked then
      vclExtra.LockControls([edReservaCapital,edReservaHonorarios], False);
end;

procedure TfrmABMSeguimientoMediacion.chkGPBAClick(Sender: TObject);
begin
  if chkGPBA.Checked then
  begin
    vclExtra.LockControls([edReservaCapital,edReservaHonorarios], True);
    edReservaCapital.Value := 0;
    edReservaHonorarios.Value := 0;
  end
  else
    if (fraEstado.Codigo <> '95') and (fraEstado.Codigo <> '93') and
     (fraEstado.Codigo <> '94') and (fraEstado.Codigo <> '3') then
    vclExtra.LockControls([edReservaCapital,edReservaHonorarios], False);
end;

procedure TfrmABMSeguimientoMediacion.chkNoSiniestroClick(Sender: TObject);
begin
  vclExtra.LockControls(fraNoSiniestro,not chkNoSiniestro.Checked);
  if not chkNoSiniestro.Checked then
    fraNoSiniestro.Clear;
end;

procedure TfrmABMSeguimientoMediacion.tbIngresoPagoClick(Sender: TObject);
begin
  with TfrmPagoMediacion.Create(self) do
  try
  	AltaPago(FIdMediacion);
    sdqPagos.ParamByName('idMediacion').AsInteger := FIdMediacion;
    sdqPagos.Refresh;
  finally
     free;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbEdicionPagoClick(Sender: TObject);
begin
  if sdqPagos.IsEmpty then
    Exit;

  if (sdqPagos.FieldByName('PM_DUPLICADO').AsString = 'S') and
     (sdqPagos.FieldByName('PM_ESTADODUPLICIDAD').IsNull) then
  begin
    MsgBox('El pago est� duplicado y pendiente de aprobacion.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagos.FieldByName('PM_ESTADODUPLICIDAD').AsString = 'R') then
  begin
    MsgBox('El pago est� rechazado por duplicado.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;             

  if (sdqPagos.FieldByName('PM_ESTADO').AsString = 'A') or
     (sdqPagos.FieldByName('PM_ESTADO').AsString = 'X') then
  begin
    MsgBox('El pago est� dado de baja.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if sdqPagos.FieldByName('PM_ESTADO').AsString = 'E' then
  begin
    MsgBox('El pago ha sido aprobado.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagos.FieldByName('pm_importeconretencion').AsCurrency < 0) or
     (sdqPagos.FieldByName('pm_importepago').AsCurrency < 0) then
  begin
    if (sdqPagos.FieldByName('pm_estado').AsString = 'E') then
      MsgBox('El pago corresponde a una anulaci�n previa ya aprobada.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK)
    else
      MsgBox('El pago corresponde a una anulaci�n previa.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  with TfrmPagoMediacion.Create(self) do
  try
    ModificacionPago(sdqPagos);
    sdqPagos.ParamByName('idMediacion').AsInteger := FIdMediacion;
    sdqPagos.Refresh;
  finally
    Free;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbEliminarPagoClick(Sender: TObject);
var
  IdPago,
  NumPago: integer;
begin
  if sdqPagos.IsEmpty then
    Exit;

  if (sdqPagos.FieldByName('pm_estado').AsString = 'A') or
     (sdqPagos.FieldByName('pm_estado').AsString = 'X') then
  begin
    MsgBox('El pago ya est� dado de baja.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagos.FieldByName('pm_importeconretencion').AsCurrency < 0) or
     (sdqPagos.FieldByName('pm_importepago').AsCurrency < 0) then
  begin
    if (sdqPagos.FieldByName('pm_estado').AsString = 'E') then
      MsgBox('El pago no puede darse de baja ' + #13 +
             'ya que corresponde a una anulaci�n previa ya autorizada.', MB_ICONERROR + MB_OK)
    else
      MsgBox('El pago no puede darse de baja ' + #13 +
             'ya que corresponde a una anulaci�n previa.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if MessageDlg('�Confirma la Cancelaci�n del Pago Seleccionado?',
                    mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
    Exit;

  //Si el estado es Cargada, cancelo y ya, sino tengo que generar un movimiento contrario.
  if sdqPagos.FieldByName('pm_estado').AsString = 'C' then
  begin
    // Cancelo el pago
    EjecutarSqlST('UPDATE legales.lpm_pagomediacion ' +
                  '   SET pm_estado = ''A'', ' +
                  '       pm_importeconretencion = NULL, ' +
                  '       pm_importepago = NULL, ' +
                  '       pm_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                  '       pm_fechamodif = SYSDATE ' +
                  ' WHERE pm_id = ' + SqlValue(sdqPagos.FieldByName('PM_ID').AsInteger)
                  , tmNone);

    // Desasigno el pago en legales.lim_importemediacion
    EjecutarSqlST('UPDATE legales.lim_importemediacion ' +
                  '   SET im_nropago = NULL ' +
                  ' WHERE im_nropago = ' + SqlValue(sdqPagos.FieldByName('PM_ID').AsInteger)
                  , tmNone);
  end
  else if sdqPagos.FieldByName('PM_ESTADO').AsString = 'E' then begin
    // Agrego el registro de movimiento contrario
    IdPago  := GetSecNextVal('LEGALES.seq_lpm_id');
    NumPago := Get_ProxNumPagoMediacion(FIdMediacion);

    EjecutarSqlST('INSERT INTO legales.lpm_pagomediacion ' +
                  '(pm_id, pm_numpago, pm_fechapago, pm_conpago, ' +
                  ' pm_fechaemision, pm_cuitcuil, pm_letrafactura, ' +
                  ' pm_situacionfactura, pm_numerofactura, pm_fechafactura, ' +
                  ' pm_importepago, pm_comentario, ' +
                  ' pm_estado, pm_fechavencimiento, pm_usuarioaprobado, ' +
                  ' pm_fechaaprobado, pm_importeconretencion, pm_chequenombre, ' +
                  ' pm_idmediacion, pm_idtipooperacion, ' +
                  ' pm_idbeneficiariopago, ' +
                  ' pm_detallebeneficiario, pm_fechavencimientopago, pm_paguesea, ' +
                  ' pm_iddetallebeneficiario, ' +
                  ' pm_usualta, pm_fechaalta) ' +
                  ' SELECT ' + SqlValue (IdPago) + ', ' + SqlValue (NumPago) + ', ' +
                  '        pm_fechapago, pm_conpago, ' +
                  '        pm_fechaemision, pm_cuitcuil, pm_letrafactura, ' +
                  '        pm_situacionfactura, pm_numerofactura, pm_fechafactura, ' +
                  '        nvl(pm_importepago, 0) * -1, pm_comentario, ' +
                  '        ''E'', pm_fechavencimiento, ' + SqlValue(Sesion.LoginName) + ', ' +
                  '        SYSDATE, NVL(pm_importeconretencion,0) * -1, pm_chequenombre, ' +
                  '        pm_idmediacion, pm_idtipooperacion, ' +
                  '        pm_idbeneficiariopago, ' +
                  '        pm_detallebeneficiario, pm_fechavencimientopago, pm_paguesea, ' +
                  '        pm_iddetallebeneficiario, ' + SqlValue(Sesion.LoginName) + ', SYSDATE ' +
                  '   FROM legales.lpm_pagomediacion ' +
                  '  WHERE pm_id = ' + sdqPagos.FieldByName('pm_id').AsString);

    // Cancelo el pago
    EjecutarSqlST('UPDATE legales.lpm_pagomediacion ' +
                  '   SET pm_estado = ''X'', ' +
                  '       pm_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                  '       pm_fechamodif = SYSDATE ' +
                  ' WHERE pm_id = ' + SqlValue(sdqPagos.FieldByName('pm_id').AsInteger)
                  , tmNone);

    // Desasigno el pago en legales.lim_importemediacion
    EjecutarSqlST('UPDATE legales.lim_importemediacion ' +
                  '   SET im_nropago = ' + SqlValue (IdPago) +
                  ' WHERE im_nropago = ' + SqlValue(sdqPagos.FieldByName('pm_id').AsInteger)
                  , tmNone);
  end
  else InvalidMsg(dbgPagosEfectuados, 'No se puede cancelar un pago en este estado.', 'Cancelaci�n de Pago');

  sdqPagos.ParamByName('idMediacion').AsInteger := FIdMediacion;
  sdqPagos.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.CargarFinancialsDatosPago;
//var
//  sdqFnclDatos: TSDQuery;
//  Bookmark: TBookmarkStr;
//  sSql: String;
begin
(*
  IniciarEspera;
  dmFinancials.Conectar;

  try
    sdqPagos.DisableControls;
    try
      Bookmark := sdqPagos.Bookmark;
      try
        sdqFnclDatos := TSDQuery.Create( Self );
        try
          sSql := 'SELECT ac.check_id ordennro, TRUNC (ac.check_date) ordenfecha, ' +
                  '       ac.check_number chequenro, TRUNC (ac.check_date) chequefecha ' +
                  '  FROM ap.ap_invoices_all ai, ' +
                  '       ap.ap_invoice_payments_all aip, ' +
                  '       ap.ap_checks_all ac ' +
                  ' WHERE ai.invoice_id = aip.invoice_id ' +
                  '   AND aip.check_id = ac.check_id ' +
                  '   AND ai.pay_group_lookup_code = ''LEGALES_SIART'' ' +
                  '   AND ac.status_lookup_code <> ''VOID'' ' +
                  '   AND ROWNUM = 1 ' +
                  '   AND ai.invoice_num = :pletrafactura || ''-'' || :psituacionfactura || ''-'' || :pnumerofactura ' +
                  '   AND ai.vendor_id = :vendor_id';

          sdqFnclDatos.DataBaseName := dmFinancials.sdbPrincipal.DatabaseName;
          sdqFnclDatos.SQL.Text := sSql;

          sdqPagos.First;

          while not sdqPagos.EOF do
          begin
            if not sdqPagos.FieldByName ('pm_cuitcuil').IsNull then
              begin
                sdqFnclDatos.ParamByName( 'pletrafactura' ).AsString    := 'A';
                sdqFnclDatos.ParamByName( 'psituacionfactura' ).AsString:= lPad(sdqPagos.FieldByName('pm_idbeneficiariopago').AsString, '0', 4);
                sdqFnclDatos.ParamByName( 'pnumerofactura' ).AsString   := lPad(sdqPagos.FieldByName('pm_idmediacion').AsString ,'0', 6) +
                                                                           lPad(sdqPagos.FieldByName('pm_numpago').AsString, '0', 2);
                sdqFnclDatos.ParamByName( 'vendor_id' ).AsInteger       := Get_VendorID (PonerGuiones (sdqPagos.FieldByName ('pm_cuitcuil').AsString), 'CUIT');

                dmFinancials.OpenQuery( sdqFnclDatos );
                {------------------------------------}
                sdqPagos.Edit;
                sdqPagos.FieldByName( 'OrdenNro' ).Value    :=  sdqFnclDatos.FieldByName( 'OrdenNro' ).Value;
                sdqPagos.FieldByName( 'OrdenFecha' ).Value  :=  sdqFnclDatos.FieldByName( 'OrdenFecha' ).Value;
                sdqPagos.FieldByName( 'ChequeNro' ).Value   :=  sdqFnclDatos.FieldByName( 'ChequeNro' ).Value;
                sdqPagos.FieldByName( 'ChequeFecha' ).Value :=  sdqFnclDatos.FieldByName( 'ChequeFecha' ).Value;
                sdqPagos.Post;
                {------------------------------------}
                sdqFnclDatos.Close;
              end;

            sdqPagos.Next;
          end;
        finally
          sdqFnclDatos.Free;
        end;
      finally
        sdqPagos.Bookmark := Bookmark;
      end;
    finally
      sdqPagos.EnableControls;
    end;
  finally
    dmFinancials.Desconectar;
    DetenerEspera;
  end;
*)  
end;

procedure TfrmABMSeguimientoMediacion.tbObtenerEstadoPagoClick(Sender: TObject);
begin
  CargarFinancialsDatosPago;
end;

procedure TfrmABMSeguimientoMediacion.tbImprimirPagosClick(Sender: TObject);
begin
  if sdqPagos.IsEmpty then
    Exit;

  if (sdqPagos.FieldByName('pm_duplicado').AsString = 'S') and
     sdqPagos.FieldByName('pm_estadoduplicidad').IsNull then
  begin
    MsgBox('El pago est� pendiente de aprobacion por duplicado.' + #13 +
           'No puede imprimirse su liquidaci�n.', MB_ICONERROR + MB_OK);
    Exit;
  end;

  if (sdqPagos.FieldByName('pm_estadoduplicidad').AsString = 'R') then
  begin
    MsgBox('El pago est� Rechazado.' + #13 +
           'No puede imprimirse su liquidaci�n.', MB_ICONERROR + MB_OK);
    Exit;
  end;

  if (sdqPagos.FieldByName('pm_estado').AsString = 'A') or
     (sdqPagos.FieldByName('pm_estado').AsString = 'X') then
  begin
    MsgBox('El pago est� dado de baja.' + #13 +
           'No puede imprimirse su liquidaci�n.', MB_ICONERROR + MB_OK);
    Exit
  end;

  with TfrmImpresionConceptoPago.Create(self) do
  try
    Tipo   := tMediacion;
    IdPago := sdqPagos.FieldByName('pm_id').AsInteger;

    Imprimir;
  finally
    free;
  end;

  sdqPagos.ParamByName('idMediacion').AsInteger := FIdMediacion;
  sdqPagos.Refresh
end;

procedure TfrmABMSeguimientoMediacion.tbAprobacionConceptosDuplicadosClick(
  Sender: TObject);
begin
  Verificar(not((sdqPagos.FieldByName('Pm_DUPLICADO').AsString = 'S') and
                sdqPagos.FieldByName('pm_estadoduplicidad').IsNull),tbAprobacionConceptosDuplicados,
            'Debe ser Duplicado y no estar rechazado o aprobado.');

  cbAprobadoConDup.Checked := False;
  cbRechazadoConDup.Checked := False;
  edMotivo.Clear;
  pnAprobacionConDup.ShowModal;
end;

procedure TfrmABMSeguimientoMediacion.cbRechazadoConDupClick(
  Sender: TObject);
begin
  if cbAprobadoConDup.Checked and cbRechazadoConDup.Checked then
    cbAprobadoConDup.Checked := False;
end;

procedure TfrmABMSeguimientoMediacion.cbAprobadoConDupClick(
  Sender: TObject);
begin
  if cbRechazadoConDup.Checked and cbAprobadoConDup.Checked then
    cbRechazadoConDup.Checked := False;
end;

procedure TfrmABMSeguimientoMediacion.btnAceptarAprobConDupClick(
  Sender: TObject);
var
  sSql : String;
  estado : String;
begin
  Verificar(not cbAprobadoConDup.Checked and not cbRechazadoConDup.Checked, gbAprobacion,'Se debe seleccionar si es Rechazado o Aprobado.');
  Verificar(edMotivo.Text = '', edMotivo, 'Debe ingresar un motivo.');

  if cbAprobadoConDup.Checked then
    estado := ' pm_estadoduplicidad = ''A'' '
  else if cbRechazadoConDup.Checked then
    estado := ' pm_estadoduplicidad = ''R'', pm_estado = ''X'' ';
  sSql := ' UPDATE legales.lpm_pagomediacion '+
          '    SET pm_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
          '        pm_fechaaprobacion = sysdate, '+
          '        pm_usuaprobacion = '+SqlValue(Sesion.LoginName)+','+estado+
          '  WHERE pm_id = '+sdqPagos.FieldByName('pm_id').AsString;

  EjecutarSqlST(ssql);
  pnAprobacionConDup.ModalResult := mrOk;
  sdqPagos.Refresh;
end;

procedure TfrmABMSeguimientoMediacion.tbSeleccionArchivosAsociarClick(
  Sender: TObject);
begin
  MostrarArchivosAsociados;
end;

procedure TfrmABMSeguimientoMediacion.MostrarArchivosAsociados;
begin
  with TfrmArchivosAsociados.Create(self) do
  try
    if (FModoEventosSeguimientos = meAlta) then
      cdsArchivosAsociados.EmptyDataSet;

      CargarArchivosAsociadosMediacion(FIdMediacion, FIdEventoMediacion, cdsArchivosAsociados);
      RecargarArchivosAsociados(cdsArchivosAsociados);
      edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                                   ' Archivos Asociados.';
  finally
    Free;
  end;
end;

procedure TfrmABMSeguimientoMediacion.RecargarArchivosAsociados(
  cdsArchivosAsociados: TClientDataSet);
begin
  cdsArchivosAsociados.First;
  while not cdsArchivosAsociados.Eof do
  begin
    if cdsArchivosAsociados.FieldByName('STATE').AsString = 'D' then
    begin
      EjecutarSqlST('UPDATE legales.lae_archivoeventomediacion ' +
                    '   SET ea_usubaja = ' + SqlValue(Sesion.LoginName) + ', ' +
                    '       ea_fechabaja = SYSDATE' +
                    ' WHERE ea_id = ' + SqlValue(cdsArchivosAsociados.FieldByName('ID').AsInteger));
      cdsArchivosAsociados.Delete;
    end
    else cdsArchivosAsociados.Next;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbVerImagenesClick(Sender: TObject);
var
  sSql, sIdArchivos: String;
begin
  if not VerificarClaveExiste(ID_CARPETA_MEDIACIONES, edNroCarpeta.Text, FarId) then
    MsgBox('La Carpeta no existe.', MB_ICONERROR)
  else
    begin
      sSql := 'SELECT LISTAGG(ARID, '', '') WITHIN GROUP (ORDER BY ARID) LISTA_ARID ' +
                'FROM (SELECT DISTINCT TRIM(TO_CHAR(AR_ID)) ARID ' +
                        'FROM LEGALES.LME_MEDIACION, LEGALES.LPM_PAGOMEDIACION, RCE_CHEQUEEMITIDO, ARCHIVO.RAR_ARCHIVO ' +
                       'WHERE PM_IDCHEQUEEMITIDO = CE_ID ' +
                         'AND PM_IDMEDIACION = ME_ID ' +
                         'AND ME_NUMEROFOLIO = :NroFolio ' +
                         'AND AR_CLAVE = ART.ARCHIVO.GETCLAVEARMADA(1, TO_CHAR(CE_ORDENPAGO), NULL, NULL, NULL) ' +
                         'AND AR_TIPO = :TipoTesoOP ' +
                       'UNION ALL ' +
                      'SELECT TRIM(TO_CHAR(AR_ID)) ARID ' +
                        'FROM ARCHIVO.RAR_ARCHIVO ' +
                       'WHERE AR_ID = :IdRAR)';
      sIdArchivos := ValorSqlEx(sSql, [edNroCarpeta.Text, ID_CARPETA_TESORERIA, FarId]);

      if not IsEmptyString(sIdArchivos) then
        TFrmDetalleArchivo.MostrarDetalleArchivos(Self, sIdArchivos, True, '', True, FarId);
    end;
end;

procedure TfrmABMSeguimientoMediacion.SumatoriaImportes;
begin
  CalcControlWidthLeft;

  lbSumatoria.Caption := 'Total Pagado : '+ValorSql(
    ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_importepagosmediacion('+SqlValue(FIdMediacion)+'), 0)'+
           ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
    '   FROM DUAL ');


    // Ticket 66098
    lblSumatoriaPagosConRet.Text := ValorSql(
    ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalretenidopagosme('+SqlValue(FIdMediacion)+'), 0)'+
           ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
    '   FROM DUAL ');


    lblSumatoriaPagosSinRet.Text := ValorSql(
    ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalpagosme('+SqlValue(FIdMediacion)+'), 0)'+
           ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
    '   FROM DUAL ');

end;

procedure TfrmABMSeguimientoMediacion.tbBloquearPagosSiniestrosClick(
  Sender: TObject);
begin
  if ExisteSQL ('SELECT 1 ' +
                    '  FROM legales.lme_mediacion ' +
                    ' WHERE me_idexpediente IS NULL ' +
                    '   AND me_id =  ' + SqlValue(FIdMediacion)) then
  begin
    MessageBox(0, 'El bloqueo de pagos no es aplicable a esta mediaci�n ya que no se '+#13+
                  'encontraron siniestros asociados a la misma.',
                  'Bloqueo de Pagos', MB_ICONINFORMATION or MB_OK);
    Exit
  end;

  TfrmBloqueoPagosSiniestrosMediacion.MostrarAbm(FIdMediacion, FModo);
end;


procedure TfrmABMSeguimientoMediacion.edExpedienteChange(Sender: TObject);
var
  folio: integer;
begin
  if Length(edExpediente.Text) > 2 then
  begin
    folio := ValorSqlIntegerEx('SELECT me_numerofolio FROM legales.lme_mediacion WHERE me_expediente = :expediente and me_id <> :id', [edExpediente.Text, FIdMediacion]);
    Verificar(folio <> 0, edExpediente, 'Este expediente se repite en la mediaci�n ' + IntToStr(folio) + '.');
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbAsignarDocClick(Sender: TObject);
begin
  with TfrmArchivosAsociados.Create(self) do
  try
    CargarDirectoArchivosAsociadosMediacion(FIdMediacion, FIdEventoMediacion, cdsArchivosAsociados);
    RecargarArchivosAsociados(cdsArchivosAsociados);
    edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                                 ' Archivos Asociados.';
  finally
    Free;
  end;
end;

procedure TfrmABMSeguimientoMediacion.tbOrdenarEventosClick(Sender: TObject);
begin
  LoadDynamicSortFields(SortDialogEvento.SortFields, dbgEventosJuicioEnTramite.Columns);
  SortDialogEvento.Execute;
end;

end.

