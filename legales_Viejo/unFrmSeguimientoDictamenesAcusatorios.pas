unit unFrmSeguimientoDictamenesAcusatorios;

interface

uses
  {$IFNDEF VER150}
  RxPlacemnt, RxCurrEdit, RxToolEdit, JvComponentBase,
  {$ELSE}
  Placemnt, CurrEdit, ToolEdit,
  {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ShortCutControl, artSeguridad, ComCtrls, General,
  ToolWin, DateComboBox, StdCtrls, RXDBCtrl, Grids,
  DBGrids, unArtFrame, unFraCodigoDescripcion, unfraAbogadosLegales, Mask,
  unDmLegales, PatternEdit, DB, JvMemoryDataset, SDEngine, IntEdit, FieldHider,
  QueryPrint, SortDlg, ExtCtrls, unfraJuzgados, FormPanel, unFraNormaLegal,
  JvComponent, JvShellHook, ArtComboBox, ArtDBGrid, DBClient, JvExControls,
  JvEnterTab, unfraCodigoDescripcionExt, UnFrmHistoricoReservasSumarios, CUIT,
  unArtDBAwareFrame, unReasignacionAbogado, unBusqSini, MaskUtils, unEspera,
  unDmFinancials, unSesion, unCustomDataModule, unDmPrincipal, CustomDlgs,
  AnsiSql, SqlFuncs, unPrincipal, DateUtils, unConstLegales,  unManAbogados,
  StrFuncs, unVerAntecedentes, unArchivosAsociados, unAbmPatronesBusqueda,
  unPagoSumarios, unFijarImportesSentSumario, unLiquidacionPagoSumarios,
  Buttons, unRptEventoImpresoSumario,
  RxRichEd, unFraToolbarRTF;

type

  TFormulasReserva = record
     FormulaReservaCapital    : string;
     FormulaReservaHonorarios : string;
  end;

  TfrmSeguimientoDictamenesAcusatorios = class(TForm)
    tbGestionDeuda: TToolBar;
    tbSeparador0: TToolButton;
    tbGuardar: TToolButton;
    tbSeparador: TToolButton;
    tbImprimir: TToolButton;
    tbSeparador3: TToolButton;
    tbSalir: TToolButton;
    FormStorage: TFormStorage;
    Seguridad: TSeguridad;
    ShortCutControl: TShortCutControl;
    odAbrirArchivo: TOpenDialog;
    pmSeguimientoJuicios: TPopupMenu;
    ImprimirExpediente1: TMenuItem;
    mnuLiquidacion: TMenuItem;
    EvolucindeInstancias1: TMenuItem;
    mnuEventos: TMenuItem;
    mnuAgenda: TMenuItem;
    dsSiniestrosDictamenAcusatorio: TDataSource;
    sdqSiniestroDictamenAcusatorio: TSDQuery;
    sdqEventoSumario: TSDQuery;
    dsEventoSumario: TDataSource;
    dsAntecedentes: TDataSource;
    SortDialog: TSortDialog;
    QueryPrint: TQueryPrint;
    FieldHider: TFieldHider;
    sdqJuiciosRelacionados: TSDQuery;
    dsJuiciosRelacionados: TDataSource;
    sdqPagoSumario: TSDQuery;
    dsPagoSumario: TDataSource;
    sduPagoLegal: TSDUpdateSQL;
    tbCambiarAInstanciaJudicial: TToolButton;
    tbSeparador4: TToolButton;
    tbFijarSentecia: TToolButton;
    pgEtapasDictamen: TPageControl;
    tsAdministrativa: TTabSheet;
    gbGeneral: TGroupBox;
    lblNroExpedienteMediacion: TLabel;
    lblExpedienteSRT: TLabel;
    lblBarra: TLabel;
    lbAbogado: TLabel;
    lblEstadoJuicio: TLabel;
    lblArea: TLabel;
    lblFechaAbogadoSumariante: TLabel;
    lblAreaSRT: TLabel;
    lblFirmanteSRT: TLabel;
    edNroDictamen: TPatternEdit;
    edExpedienteSRT: TPatternEdit;
    fraAbogadosPropios: TfraAbogadosLegales;
    fraEstado: TfraCodigoDescripcion;
    tbExplorarHistoricoEstado: TToolBar;
    tbHistoricoEstados: TToolButton;
    fraAreas: TfraCodigoDescripcion;
    fraAbogadoSumariante: TfraAbogadosLegales;
    fraAreaSRT: TfraCodigoDescripcion;
    fraFirmanteSRT: TfraCodigoDescripcion;
    tsJudicial: TTabSheet;
    fraDatosJuzgadoAsignado: TfraJuzgados;
    gbSentencia: TGroupBox;
    lblSentencia: TLabel;
    lblDescripcionSentencia: TLabel;
    lblMulta: TLabel;
    lblFechaMulta: TLabel;
    lblMopresJuidicial: TLabel;
    lblCostasJudicial: TLabel;
    lblGastosJudicial: TLabel;
    lblTasaJusticia: TLabel;
    lblMultaTasaJusticia: TLabel;
    lblTotalCostosGastosDemanda: TLabel;
    fraTipoResultadoJuicio: TfraCodigoDescripcion;
    mSentencia: TMemo;
    edMultaJudicial: TCurrencyEdit;
    edMopresJudicial: TPatternEdit;
    edFechaSentencia: TDateComboBox;
    edCostasJudicial: TCurrencyEdit;
    edGastosJudicial: TCurrencyEdit;
    edTasaJusticia: TCurrencyEdit;
    edMultaTJ: TCurrencyEdit;
    edTotal: TCurrencyEdit;
    pgDetalle: TPageControl;
    tsSiniestros: TTabSheet;
    cbSiniestros: TCoolBar;
    tbOrigenDemandaSiniestro: TToolBar;
    tbBusquedaSiniestros: TToolButton;
    tbEliminarSiniestroSeleccionado: TToolButton;
    tbSeparador1Siniestros: TToolButton;
    tbLimpiarTodo: TToolButton;
    dbgSiniestros: TArtDBGrid;
    tsReclamos: TTabSheet;
    cbReclamos: TCoolBar;
    toolbarReclamos: TToolBar;
    tbNuevoReclamo: TToolButton;
    tbEditarReclamo: TToolButton;
    tbEliminarReclamo: TToolButton;
    tbSeparadorReclamo: TToolButton;
    tbImprimirReclamo: TToolButton;
    dbgReclamos: TArtDBGrid;
    fpReclamo: TFormPanel;
    bvSeparadorBotonesReclamo: TBevel;
    btnAceptarReclamo: TButton;
    btnCancelarReclamo: TButton;
    fraNormaLegalImputada: TfraNormaLegal;
    tsEventos: TTabSheet;
    dbgEventosDictamenAcusatorio: TArtDBGrid;
    cbEventos: TCoolBar;
    tbrEventos: TToolBar;
    tbNuevoEvento: TToolButton;
    tbModificarEvento: TToolButton;
    tbEliminarEvento: TToolButton;
    tbAccImprimir: TToolButton;
    lblEstadoSeguimiento: TStaticText;
    fpEventoSeguimiento: TFormPanel;
    lbAccion: TLabel;
    bvSeparadorBotonesEventos: TBevel;
    lblFechaEvento: TLabel;
    lblArchivosAsociados: TLabel;
    fraTipoEvento: TfraCodigoDescripcion;
    btnAccAceptar: TButton;
    btnAccCancelar: TButton;
    tbEdicionTiposEventos: TToolBar;
    tbEdicionTipoEvento: TToolButton;
    tbDetallesEvento: TToolButton;
    edFechaEventoDesde: TDateComboBox;
    edtArchivosAsociados: TEdit;
    tbrVerArchivosAsociados: TToolBar;
    tbSeleccionArchivosAsociar: TToolButton;
    nbObservacionesMesa: TNotebook;
    lblObservacuinesEvento: TLabel;
    mObservacionesEvento: TMemo;
    lblNroMGES: TLabel;
    lblFechaMGES: TLabel;
    lblUsuarioDestinatario: TLabel;
    lblMaterial: TLabel;
    edNroMGES: TEdit;
    fraUsuarioDestinatario: TfraCodigoDescripcion;
    fraMaterial: TfraCodigoDescripcion;
    edFechaMGES: TDateEdit;
    tsPagos: TTabSheet;
    cbEdicionPagosEfectudos: TCoolBar;
    tbPagos: TToolBar;
    tbIngresoPago: TToolButton;
    tbEdicionPago: TToolButton;
    tbEliminarPago: TToolButton;
    tbSeparadorPagos: TToolButton;
    tbImprimirPagos: TToolButton;
    tbImprimirConcepto: TToolButton;
    dbgPagosEfectuados: TArtDBGrid;
    tsAntecedentes: TTabSheet;
    dbgAntecedentes: TArtDBGrid;
    cbAntecedentes: TCoolBar;
    tbBarraAntecedentes: TToolBar;
    tbImprimirAntecedentes: TToolButton;
    pnAvisoEspera: TPanel;
    lblAdvertencia: TLabel;
    lblReferencia: TLabel;
    tsJuiciosRelacionados: TTabSheet;
    cbJuiciosRelacionados: TCoolBar;
    toolbarJuiciosRelacionados: TToolBar;
    tbNuevoJuicioRelacionado: TToolButton;
    tbEditarJuicioRelacionado: TToolButton;
    tbEliminarJuicioRelacionado: TToolButton;
    tbSeparatorRelacionados1: TToolButton;
    dbgJuiciosRelacionados: TArtDBGrid;
    tsReservas: TTabSheet;
    gbReservas: TGroupBox;
    lblReservaCapital: TLabel;
    lblReservaHonorarios: TLabel;
    lblEmbargos: TLabel;
    lblFechaEmbargo: TLabel;
    bvSeparadorEmbargo: TBevel;
    edReservaCapital: TCurrencyEdit;
    edReservaHonorarios: TCurrencyEdit;
    tbAprobacionDeReservas: TToolBar;
    tbHistoricoReservas: TToolButton;
    edEmbargos: TCurrencyEdit;
    edFechaEmbargo: TDateComboBox;
    sbEstado: TStatusBar;
    JvShellHook1: TJvShellHook;
    sdqReclamosSumarios: TSDQuery;
    dsReclamosSumarios: TDataSource;
    tbRefrescarAntecedentes: TToolButton;
    tbPatronesBusqueda: TToolButton;
    ToolButton1: TToolButton;
    edAnioExpedienteSRT: TPatternEdit;
    lblObservaciones: TLabel;
    mObservacionesReclamo: TMemo;
    StatusBar: TStatusBar;
    gbAdministrativa: TGroupBox;
    lblFechaNotificacion: TLabel;
    lblNroDac: TLabel;
    lblFechaDAC: TLabel;
    lblDispocisionSAL: TLabel;
    lblFechaSal: TLabel;
    lblNroResolucion: TLabel;
    lblFechaResolucion: TLabel;
    lblFechaNotificacionResolucion: TLabel;
    lblMultaSRT: TLabel;
    lblMopresAdministrativo: TLabel;
    lblFechaAudienciaDescargo: TLabel;
    Label1: TLabel;
    edFechaNotificacionDac: TDateComboBox;
    edNroDAC: TPatternEdit;
    edFechaDac: TDateComboBox;
    edDisposicionSAL: TPatternEdit;
    edFechaSal: TDateComboBox;
    edNroResolucion: TPatternEdit;
    edFechaResolucion: TDateComboBox;
    edFechaNotificacionResolucion: TDateComboBox;
    edMultaSRT: TCurrencyEdit;
    edMopres: TPatternEdit;
    edFechaAudienciaDescargo: TDateComboBox;
    fraTipoResultadoAdministrativa: TfraCodigoDescripcion;
    sduSiniestros: TSDUpdateSQL;
    cdsArchivosAsociados: TClientDataSet;
    sdqArchivosAsociados: TSDQuery;
    EnterAsTab: TJvEnterAsTab;
    sdqPatronesBusqueda: TSDQuery;
    sdqAntecedentesWF: TSDQuery;
    sdqAntecedentes: TSDQuery;
    btnEliminarAntecedente: TToolButton;
    btnVerEliminados: TToolButton;
    btnReactivarEliminado: TToolButton;
    btnVerAntecedente: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    fraEstudioJuridico: TfraCodigoDescripcionExt;
    lbEstudioJuridico: TLabel;
    tbUtilidadesReservas: TToolBar;
    tbRecalcularReservas: TToolButton;
    tbCopiarCalculo: TToolButton;
    Label2: TLabel;
    edFechaFin: TDateComboBox;
    tbSumatoria: TToolButton;
    spbConfirmarMulta: TSpeedButton;
    lblNotaAprobacion: TLabel;
    lblArts: TLabel;
    fraArts: TfraCodigoDescripcion;
    cbResponsabilidadProvart: TCheckBox;
    cbReservaCapital: TCheckBox;
    cbReservaHonorarios: TCheckBox;
    tbCalcularReserva: TToolButton;
    edFechaNotifSentencia: TDateComboBox;
    lbFechaNotifSentencia: TLabel;
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
    edFechaNotifBudi: TDateComboBox;
    Label3: TLabel;
    cbGPBAIncumplimiento: TCheckBox;
    tbGenerarArchivo: TToolButton;
    pnGenerarDocumento: TFormPanel;
    Label4: TLabel;
    btnAceptarGenerarDocumento: TButton;
    btnCancelGenerarDocumento: TButton;
    pnlInferior: TPanel;
    fraToolbarRTF: TfraToolbarRTF;
    edTextoDocumento: TRxRichEdit;
    tbVerImagenes: TToolButton;
    Label5: TLabel;
    edFechaIncumplimiento: TDateComboBox;
    fpJuicioRelacionado: TFormPanel;
    fraJuicioRelacionado: TfraCodigoDescripcion;
    Label6: TLabel;
    btnAceptarJuicioRelacionado: TButton;
    btnCancelarJuicioRelacionado: TButton;
    tsIncumplimientoEspecifico: TTabSheet;
    cbIncumplimientoEspecifico: TCoolBar;
    ToolBar1: TToolBar;
    tbNuevoIncumplimientoEspecifico: TToolButton;
    tbModificarIncumplimientoEspecifico: TToolButton;
    tbBajaIncumplimientoEspecifico: TToolButton;
    ToolButton7: TToolButton;
    dbgIncumplimientoEspecifico: TArtDBGrid;
    sdqIncumplimientoEspecifico: TSDQuery;
    dsIncumplimientoEspecifico: TDataSource;
    fpIncumplimientoEspecifico: TFormPanel;
    Label7: TLabel;
    fraIncumplimiento: TfraCodigoDescripcion;
    btnAceptarIncumpEspecifico: TButton;
    btnCancelIncumpEspecifico: TButton;
    tbAsociarDoc: TToolButton;
    plTotalesPago: TPanel;
    lbSumatoria: TLabel;
    lblValorMopresAdministrativo: TLabel;
    edValorMopres: TPatternEdit;
    procedure FormCreate(Sender: TObject);
    procedure tbBusquedaSiniestrosClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbgEventosDictamenAcusatorioGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure tbSalirClick(Sender: TObject);
    procedure pgDetalleChange(Sender: TObject);
    procedure tbGuardarClick(Sender: TObject);
    procedure tbIngresoPagoClick(Sender: TObject);
    procedure tbEdicionPagoClick(Sender: TObject);
    procedure tbEliminarPagoClick(Sender: TObject);
    procedure tbImprimirPagosClick(Sender: TObject);
    procedure tbNuevoReclamoClick(Sender: TObject);
    procedure tbEditarReclamoClick(Sender: TObject);
    procedure tbEliminarReclamoClick(Sender: TObject);
    procedure edMultaSRTChange(Sender: TObject);
    procedure tbCambiarAInstanciaJudicialClick(Sender: TObject);
    procedure btnCancelarReclamoClick(Sender: TObject);
    procedure btnAceptarReclamoClick(Sender: TObject);
    procedure tbEliminarSiniestroSeleccionadoClick(Sender: TObject);
    procedure dbgSiniestrosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dbgReclamosGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure dbgJuiciosRelacionadosGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure dbgReclamosDblClick(Sender: TObject);
    procedure tbLimpiarTodoClick(Sender: TObject);
    procedure tbImprimirReclamoClick(Sender: TObject);
    procedure tbNuevoEventoClick(Sender: TObject);
    procedure tbModificarEventoClick(Sender: TObject);
    procedure tbEliminarEventoClick(Sender: TObject);
    procedure tbAccImprimirClick(Sender: TObject);
    procedure btnAccAceptarClick(Sender: TObject);
    procedure btnAccCancelarClick(Sender: TObject);
    procedure tbSeleccionArchivosAsociarClick(Sender: TObject);
    procedure dbgEventosDictamenAcusatorioDblClick(Sender: TObject);
    procedure edCostasJudicialChange(Sender: TObject);
    procedure edMultaJudicialChange(Sender: TObject);
    procedure edMopresEnter(Sender: TObject);
    procedure edMopresChange(Sender: TObject);
    procedure edMultaSRTEnter(Sender: TObject);
    procedure tbPatronesBusquedaClick(Sender: TObject);
    procedure tbRefrescarAntecedentesClick(Sender: TObject);
    procedure btnEliminarAntecedenteClick(Sender: TObject);
    procedure fraDatosJuzgadoAsignadobtnInstanciasAnterioresClick(
      Sender: TObject);
    procedure dbgAntecedentesGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnVerEliminadosClick(Sender: TObject);
    procedure btnReactivarEliminadoClick(Sender: TObject);
    procedure btnVerAntecedenteClick(Sender: TObject);
    procedure tbAprobarReservasClick(Sender: TObject);
    procedure tbRecalcularReservasClick(Sender: TObject);
    procedure tbCopiarCalculoClick(Sender: TObject);
    procedure ceReservaCapitalChange(Sender: TObject);
    procedure tbHistoricoReservasClick(Sender: TObject);
    procedure tbSumatoriaClick(Sender: TObject);
    procedure tbFijarSenteciaClick(Sender: TObject);
    procedure tbImprimirConceptoClick(Sender: TObject);
    procedure sdqPagoSumarioAfterScroll(DataSet: TDataSet);
    procedure spbConfirmarMultaClick(Sender: TObject);
    procedure cbReservaCapitalClick(Sender: TObject);
    procedure tbCalcularReservaClick(Sender: TObject);
    procedure cbReservaHonorariosClick(Sender: TObject);
    procedure edMultaSRTExit(Sender: TObject);
    procedure edMopresExit(Sender: TObject);
    procedure dbgPagosEfectuadosGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure tbAprobacionConceptosDuplicadosClick(Sender: TObject);
    procedure cbAprobadoConDupClick(Sender: TObject);
    procedure cbRechazadoConDupClick(Sender: TObject);
    procedure btnAceptarAprobConDupClick(Sender: TObject);
    procedure tbHistoricoEstadosClick(Sender: TObject);
    procedure tbGenerarArchivoClick(Sender: TObject);
    procedure btnAceptarGenerarDocumentoClick(Sender: TObject);
    procedure tbVerImagenesClick(Sender: TObject);
    procedure tbNuevoJuicioRelacionadoClick(Sender: TObject);
    procedure tbEditarJuicioRelacionadoClick(Sender: TObject);
    procedure tbEliminarJuicioRelacionadoClick(Sender: TObject);
    procedure tbModificarIncumplimientoEspecificoClick(Sender: TObject);
    procedure tbBajaIncumplimientoEspecificoClick(Sender: TObject);
    procedure tbNuevoIncumplimientoEspecificoClick(Sender: TObject);
    procedure dbgIncumplimientoEspecificoGetCellParams(Sender: TObject;
      Field: TField; AFont: TFont; var Background: TColor;
      Highlight: Boolean);
    procedure tbAsociarDocClick(Sender: TObject);
    procedure edFechaIncumplimientoChange(Sender: TObject);
  private
    FHonorariosOponentes : Boolean;
    FNroDictamen : Integer;
    FNivelAccesoUsuario : integer;
    FIdSumario : Integer;
    FMulta : Double;
    FModo : TModoEjecucion;
    FModoReclamo : TModoEjecucion;
    FModoEventosSeguimientos : TModoEjecucion;
    FInstanciaAdministrativa : Boolean;
    FIdReclamoSumario : Integer;
    FIdEvento : integer;
    FIdEstado : String;
    FReservasAprobadas : Boolean;
    FModoCarga : Boolean;
    procedure BuscarSiniestros;
    procedure LimpiarCampos;
    procedure EstadoCargar(AIdSumario : Integer);
    procedure CargarDatos( AQuery : TDataSet );
    procedure GuardarDatos;
    function VerificarExpedienteExisteCargado : boolean;
    procedure CargarFinancialsDatosPago;
    procedure Inicializar;
    procedure AltaReclamo;
    procedure ModificacionReclamo;
    procedure LimpiarCamposReclamo;
    procedure CargarDatosReclamo(Campos: TFields);
    procedure SetearAdministrativa(AAdministrativa: Boolean);
    procedure GuardarReclamo;
    function VerificaNormaNoCargada(AIdNorma: Integer) : boolean;
    procedure EliminarSiniestro;
    procedure EliminarTodosLosSiniestros;
    procedure CargarWorkFlow;
    function AltaEvento: boolean;
    function ModificacionEvento: boolean;
    procedure CargarArchivos;
    procedure CargarDatosEvento(Campos: TFields);
    procedure GuardarEvento(aCloseForm: boolean = true);
    procedure LimpiarCamposEvento;
    procedure MostrarArchivosAsociados;
    procedure MostrarAntecedentes;
    procedure RecargarArchivosAsociados(
      cdsArchivosAsociados: TClientDataSet);
    procedure CalcularTotal;
    procedure AgregarAntecedentes;
    procedure CargarAntecedentes;
    procedure RefrescarAntecedentes;
    procedure fraEstudioJuridicoChange(Sender: TObject);
    procedure fraEstadoChange(Sender: TObject);
    function CargarEstudioJuridico(IdAbogado: string): string;
    procedure CalcularReservas;
    function GetFormula(AIdNorma: integer; articulo: integer;
      inciso: string; anexo:string; apartado:string): TFormulasReserva;
//    procedure GetImporteReservasCalculadas;
//    procedure LockControls(AControls: array of TControl; ALocked: boolean = True);
//    procedure CopiarValoresReservas;
    procedure DesaprobarReservas;
    procedure GuardarCambioReserva;
    procedure GuardarCambioEstado;
    procedure ChangefraArts(Sender: TObject);
    procedure GuardarReserva;
    procedure SumatoriaImportes;
    procedure RefreshValorMopres;

    { Private declarations }
  public
    { Public declarations }
    function AltaDictamen : boolean;
    function ModificacionDictamen(Tabla: TSDQuery) : boolean;
    function ConsultaDictamen(Tabla: TSDQuery) : boolean;
  end;

const
  CALCULANDORESERVADECAPITAL    = 0;
  CALCULANDORESERVADEHONORARIOS = 1;
  ESTADO_TERMINADO = 2;
  TIPO_COSTAS_EN_CONTRA = '2';


implementation

uses
  vclextra, Math, unComunes, unHistoricoEstadoSumario, unFrmDetalleArchivo, unArt,
  unComunesArchivo, unConstantArchivo, unArchivo, Numeros;

{$R *.dfm}
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.FormCreate(Sender: TObject);
begin
  pgDetalle.ActivePageIndex := 0;
  FHonorariosOponentes := False;
  fraToolbarRTF.Edit := edTextoDocumento;

  with fraEstudioJuridico do
  begin
    TableName := 'LEGALES.LEJ_ESTUDIOJURIDICO';
    FieldID     := 'ej_id';
    FieldCodigo := 'ej_id';
    FieldDesc   := 'ej_nombreestudio';
    FieldBaja   := 'ej_fechabaja';
    Showbajas   := true;
    fraEstudioJuridico.OnChange := fraEstudioJuridicoChange;
  end;

  with fraIncumplimiento do
  begin
    TableName := 'LEGALES.LTI_TIPOINCUMPLIMIENTO';
    FieldID     := 'TI_ID';
    FieldCodigo := 'TI_ID';
    FieldDesc   := 'TI_DESCRIPCION';
    FieldBaja   := 'TI_FECHABAJA';
    Showbajas   := true;
  end;

  fraAbogadosPropios.Parte := paPropia;
  fraAbogadosPropios.ExtraCondition := ' AND 1=2 ';

  fraAbogadoSumariante.Parte := paSumariante;

  with fraEstado do
  begin
    TableName   := 'legales.lej_estadojuicio';
    FieldID     := 'ej_id';
    FieldCodigo := 'ej_id';
    FieldDesc   := 'ej_descripcion';
    ExtraCondition := ' and (ej_etapa like ''%S%'') ';
    FieldBaja := 'ej_fechabaja';
    OnChange := fraEstadoChange;
    Showbajas   := false;
  end;

  with fraAreas do
  begin
    TableName   := 'ART.USC_SECTORES';
    FieldID     := 'SC_ID';
    FieldCodigo := 'sc_id';
    FieldDesc   := 'SC_DESCRIPCION';
    FieldBaja   := 'SC_FECHABAJA';
    ExtraCondition := ' AND EXISTS (SELECT 1 FROM legales.lss_sectorsumario WHERE  ss_fechabaja is null AND ss_idsector = sc_id) ';
    ShowBajas := true;
  end;

  with fraAreaSRT do
  begin
    TableName   := 'legales.las_areasrt';
    FieldID     := 'as_id';
    FieldCodigo := 'as_id';
    FieldDesc   := 'AS_AREASTR';
    FieldBaja   := 'as_fechabaja';
  end;

  with fraFirmanteSRT do
  begin
    TableName   := 'legales.lfs_firmantesrt';
    FieldID     := 'fs_id';
    FieldCodigo := 'fs_id';
    FieldDesc   := 'fs_firmantestr';
    FieldBaja   := 'fs_fechabaja';
  end;

  with fraTipoResultadoAdministrativa do
  begin
    TableName   := 'legales.ltr_tiporesultadosentencia';
    FieldID     := 'tr_id';
    FieldCodigo := 'tr_id';
    FieldDesc   := 'tr_descripcion';
    ExtraCondition := ' and (tr_etapa like ''%S%'') ';
    Showbajas   := true;
  end;


  with fraTipoResultadoJuicio do
  begin
    TableName   := 'legales.ltr_tiporesultadosentencia';
    FieldID     := 'tr_id';
    FieldCodigo := 'tr_id';
    FieldDesc   := 'tr_descripcion';
    ExtraCondition := ' and (tr_etapa like ''%S%'') ';
    Showbajas   := true;
  end;

  with fraTipoEvento do
  begin
    TableName   := 'legales.lte_tipoevento';
    FieldID     := 'te_id';
    FieldCodigo := 'te_id';
    FieldDesc   := 'te_descripcion';
    FieldBaja   := 'te_fechabaja';
    showbajas   := True;
    ExtraCondition := ' AND te_etapa like ''%S%''';
  end;

  with fraArts do
  begin
    TableName   := 'afi.aar_art';
    FieldID     := 'ar_id';
    FieldCodigo := 'ar_codigosrt';
    FieldDesc   := 'ar_nombre';
    ExtraCondition := ' AND ar_codigosrt IN(''00051'', ''50040'') ';
    FieldBaja   := 'ar_fechabaja';
    Showbajas   := false;
    OnChange    := ChangefraArts;
  end;

  with fraJuicioRelacionado do
  begin
    TableName   := 'legales.ljt_juicioentramite';
    FieldID     := 'jt_id';
    FieldCodigo := 'jt_numerocarpeta';
    FieldDesc   := 'NVL (jt_demandante, '''') || '' C/ '' '+
                   '|| NVL (jt_demandado, '''') || '' '' '+
                   '|| jt_caratula';
    FieldBaja   := 'jt_fechabaja';
    ExtraCondition := ' AND JT_ESTADOMEDIACION = ''J'' ';
    Showbajas   := True;
  end;

  fraDatosJuzgadoAsignado.Init(PERMITIREXPEDIENTE, NOPERMITIREXPEDIENTE);
  fraNormaLegalImputada.Init;
  Seguridad.Ejecutar;
end;
{--------------------------------------------------------------------------------}
function TfrmSeguimientoDictamenesAcusatorios.AltaDictamen : boolean;
begin
//  BeginTrans(True);

  pgEtapasDictamen.ActivePageIndex := 0;

  FModo := meAlta; //
  FIdSumario := GetSecNextVal('LEGALES.seq_lsu_id');
  FInstanciaAdministrativa := true;

  EjecutarSqlST('INSERT INTO legales.lsu_sumario (su_id, su_usualta, su_fechaalta)' +
                  ' VALUES ( ' + SqlValue(FIdSumario) + ', ' +
                                 SqlValue(Sesion.LoginName) +
                                 ', SysDate) ', tmNone);
  LimpiarCampos;
  Inicializar;

  edNroDictamen.Text := IntToStr(FNroDictamen);
  fraArts.Codigo := '00051';
  if cbReservaCapital.Checked then
    vclextra.LockControl(edReservaCapital, false)
  else
    vclextra.LockControl(edReservaCapital, true);
  if cbReservaHonorarios.Checked then
    vclextra.LockControl(edReservaHonorarios, false)
  else
    vclextra.LockControl(edReservaHonorarios, true);

  result := ShowModal = mrOK;
end;
{--------------------------------------------------------------------------------}
function TfrmSeguimientoDictamenesAcusatorios.ModificacionDictamen(Tabla : TSDQuery) : boolean;
begin
//  BeginTrans(True);

  FModo := meModificacion;
  FIdSumario := Tabla.FieldByName('SU_ID').AsInteger;
  LimpiarCampos;

  Inicializar;
  fraArts.Locked := true;
  CargarDatos(Tabla);

  if cbReservaCapital.Checked then
    vclextra.LockControl(edReservaCapital, false)
  else
    vclextra.LockControl(edReservaCapital, true);
  if cbReservaHonorarios.Checked then
    vclextra.LockControl(edReservaHonorarios, false)
  else
    vclextra.LockControl(edReservaHonorarios, true);

  result := showmodal = mrOK;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.edMultaSRTChange(
  Sender: TObject);
begin
  if FModoCarga and (edFechaIncumplimiento.Date = 0) then
  begin
    edMopres.Text := InttoStr(Round(edMultaSRT.Value / 80));
  end
  else
  begin
    Verificar(edFechaIncumplimiento.Date = 0, edFechaIncumplimiento, 'Debe especificar una fecha de incumplimiento.');
    edMopres.Text := InttoStr(Round(edMultaSRT.Value /
                              ValorSql(' SELECT am_valorampo '+
                                       '   FROM art.cam_topeampos cam '+
                                       '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                                       '                        FROM art.cam_topeampos a '+
                                       '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))')));
  end;
  spbConfirmarMulta.Enabled := True;
  lblNotaAprobacion.Visible := True;

end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbCambiarAInstanciaJudicialClick(
  Sender: TObject);
var
  dFechaFiltro : TDate;
  iCantidadEstados : Integer;
  iMaxNroOrden : Integer;
begin
  dFechaFiltro := ValorSqlDateTime(' SELECT NVL(MAX(TRUNC(hs_fechaalta)), art.actualdate) '+
                           '   FROM legales.lhs_historicoestadosumario, legales.lej_estadojuicio '+
                           '  WHERE hs_idsumario = '+SqlValue(FIdSumario)+
                           '    AND hs_idestadosumario = ej_id '+
                           '    AND ej_orden < 6 ');

  iCantidadEstados := ValorSql( 'SELECT COUNT(*) - 1 '+
                                '  FROM legales.lej_estadojuicio '+
                                ' WHERE ej_orden <> 99 '+
                                '   AND ej_fechaalta <= '+SqlValue(dFechaFiltro));

  iMaxNroOrden := ValorSql( 'SELECT max(ej_orden)'+
                            '  FROM legales.lej_estadojuicio '+
                            ' WHERE ej_orden <> 99 '+
                            '   AND ej_fechaalta <= '+SqlValue(dFechaFiltro));
  if fraEstado.Codigo = '104' then
  begin
    fraEstado.Codigo := '54';
  end;

  Verificar(ValorSql(
    ' SELECT COUNT(*) '+
    '   FROM (SELECT DISTINCT ej_orden '+
    '           FROM legales.lhs_historicoestadosumario, legales.lej_estadojuicio '+
    '          WHERE hs_idsumario = '+SqlValue(FIdSumario)+
    '            AND hs_idestadosumario = ej_id '+
    '            AND ej_orden < '+SqlValue(iMaxNroOrden)+
    '          UNION '+
    '         SELECT DISTINCT ej_orden '+
    '           FROM legales.lej_estadojuicio '+
    '          WHERE ej_id = '+SqlValue(fraEstado.Codigo)+
    '            AND ej_orden < '+SqlValue(iMaxNroOrden)+
    '          UNION '+
    '         SELECT DISTINCT ej_orden '+
    '           FROM legales.lsu_sumario, legales.lej_estadojuicio '+
    '          WHERE su_id = '+SqlValue(FIdSumario)+
    '            AND su_idestado = ej_id '+
    '            AND ej_orden < '+SqlValue(iMaxNroOrden)+') ') < iCantidadEstados, tbCambiarAInstanciaJudicial, ' Debe pasar por todas las etapas administrativas.');
  if FInstanciaAdministrativa then
  begin
    if (MessageBox(Self.Handle, '�Est� seguro que desea cambiar el sumario a Sede Judicial?', 'Cambio a Sede Judicial', MB_ICONQUESTION or MB_YESNO or MB_TOPMOST or MB_DEFBUTTON1) = idYes) then
      SetearAdministrativa(false);
  end;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.SetearAdministrativa(AAdministrativa : Boolean);
begin
(*fixme sacar cuando carguen todos los datos
  gbAdministrativa.Enabled := AAdministrativa;
  gbSentencia.Enabled := not AAdministrativa;
  tsJudicial.Enabled := not AAdministrativa;
*)

  tsAdministrativa.Highlighted := AAdministrativa;
  tsJudicial.Highlighted := not AAdministrativa;

  vclExtra.LockControls([fraDatosJuzgadoAsignado,gbSentencia],AAdministrativa);
  fraDatosJuzgadoAsignado.gbJuzgados.Color := clBtnFace;
  fraDatosJuzgadoAsignado.Color := clBtnFace;
  FInstanciaAdministrativa := AAdministrativa;
  pgEtapasDictamen.ActivePageIndex := Ord(not AAdministrativa);
  if not AAdministrativa then begin
    //Fixme todo lo que sigue debe estar en la tabla parametros
    if not fraDatosJuzgadoAsignado.IsSelected then fraDatosJuzgadoAsignado.Jurisdiccion := 24;
    if not fraDatosJuzgadoAsignado.IsSelected then fraDatosJuzgadoAsignado.Fuero := 9;
//    fraDatosJuzgadoAsignado.fraJuzgado.cmbDescripcion.SetFocus;
  end;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbSalirClick(
  Sender: TObject);
begin
  ModalResult := mrCancel;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.LimpiarCampos;
begin
{ Administrativa }
  edNroDictamen.Text := '';
  edExpedienteSRT.Text := '';
  edAnioExpedienteSRT.Text := '';

  fraEstado.Codigo := '';
  fraAreas.Codigo := '';
  fraEstudioJuridico.Codigo := '';
  fraAbogadosPropios.Codigo := '';
  fraAbogadoSumariante.Codigo := '';
  fraAreaSRT.Codigo := '';
  fraFirmanteSRT.Codigo := '';

  edNroDAC.Text := '';
  edFechaDac.Date := 0;
  edFechaNotificacionDac.Date := 0;

  edDisposicionSAL.Text := '';
  edFechaSal.Date := 0;
  edNroResolucion.Text := '';
  edFechaResolucion.Date := 0;
  edFechaNotificacionResolucion.Date := 0;
  edMultaSRT.Value := 0;
  edMopres.Text := '0';
  edFechaAudienciaDescargo.Date := 0;
  edFechaIncumplimiento.Date := 0;
  edFechaNotifBudi.Date := 0;
  cbGPBAIncumplimiento.Checked := False;

  fraDatosJuzgadoAsignado.Limpiar;
  fraTipoResultadoJuicio.Codigo := '';
  edfechaSentencia.Date := 0;
  edFechaNotifSentencia.Date := 0;
  mSentencia.Text := '';
  edMultaJudicial.Value := 0;
  edMopresJudicial.Text := '';
  edCostasJudicial.Value := 0;
  edGastosJudicial.Value := 0;
  edTasaJusticia.Value := 0;
  edMultaTJ.Value := 0;
  edTotal.Value := 0;
  FReservasAprobadas := false;

  pgEtapasDictamen.ActivePageIndex := 0;

  sdqSiniestroDictamenAcusatorio.Close;
  sdqEventoSumario.Close;
  sdqPagoSumario.Close;
  sdqJuiciosRelacionados.Close;
  sdqAntecedentes.Close;

  cbReservaCapital.Checked := False;
  cbReservaHonorarios.Checked := False;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.Inicializar;
begin
  FNivelAccesoUsuario := GetNivelAccesoUsuarioAJuicio;

  EstadoCargar(FIdSumario);
  sdqSiniestroDictamenAcusatorio.ParamByName('IdSumario').AsInteger := FIdSumario;
  sdqSiniestroDictamenAcusatorio.Open;

  sdqEventoSumario.ParamByName('IdSumario').AsInteger := FIdSumario;
  sdqEventoSumario.Open;

  sdqReclamosSumarios.ParamByName('IdSumario').AsInteger := FIdSumario;
  sdqReclamosSumarios.Open;

  sdqPagoSumario.ParamByName('IdSumario').AsInteger := FIdSumario;
  sdqPagoSumario.Open;

  sdqJuiciosRelacionados.ParamByName('IdSumario').AsInteger := FIdSumario;
  sdqJuiciosRelacionados.Open;

  sdqIncumplimientoEspecifico.ParamByName('IdSumario').AsInteger := FIdSumario;
  sdqIncumplimientoEspecifico.Open;

end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.CargarDatos(AQuery: TDataSet);
begin
  FModoCarga := True;
  edNroDictamen.Text := AQuery.FieldByName('SU_NUMEROSUMARIO').AsString;
  edNroDictamen.Color := clGradientInactiveCaption;
  edNroDictamen.Enabled := False;

  edExpedienteSRT.Text     := AQuery.FieldByName('SU_NUMEROEXPEDIENTE').AsString;
  edAnioExpedienteSRT.Text := AQuery.FieldByName('SU_ANIOEXPEDIENTE').AsString;
  fraArts.Value := AQuery.FieldByName('SU_IDART').AsInteger;
  fraEstado.Codigo := AQuery.FieldByName('SU_IDESTADO').AsString;
  FIdEstado := AQuery.FieldByName('SU_IDESTADO').AsString;

  if not AQuery.FieldByName('SU_AREA').IsNull then
    fraAreas.ExtraCondition := ' AND (EXISTS (SELECT 1 FROM legales.lss_sectorsumario WHERE  ss_fechabaja is null AND ss_idsector = sc_id) OR (sc_id = ' + SqlValue(AQuery.FieldByName('SU_AREA').AsInteger) + '))';
  fraAreas.Codigo := AQuery.FieldByName('SU_AREA').AsString;

  fraEstudioJuridico.Codigo    := CargarEstudioJuridico(AQuery.FieldByName('SU_ABOGADO').AsString);
  fraEstudioJuridico.OnChange(self);
  fraAbogadosPropios.Codigo := AQuery.FieldByName('SU_ABOGADO').AsString;
  fraAbogadoSumariante.Codigo := AQuery.FieldByName('SU_ABOGADOSUMARIANTE').AsString;
  fraAreaSRT.Codigo := AQuery.FieldByName('SU_AREASRT').AsString;
  fraFirmanteSRT.Codigo := AQuery.FieldByName('SU_FIRMANTESRT').AsString;
  cbGPBAIncumplimiento.Checked := AQuery.FieldByName('SU_GPBAINCUMPLIMIENTO').AsString = 'S'; 

  edNroDAC.Text :=  AQuery.FieldByName('SU_NUMERODAC').AsString;
  edFechaDac.Date := AQuery.FieldByName('SU_FECHADAC').AsDateTime;
  edFechaNotificacionDac.Date := AQuery.FieldByName('SU_FECHANOTIFICACIONDAC').AsDateTime;
  edDisposicionSAL.Text := AQuery.FieldByName('SU_DISPOSICIONSAL').AsString;
  edFechaSal.Date := AQuery.FieldByName('SU_FECHASAL').AsDateTime;
  edNroResolucion.Text := AQuery.FieldByName('SU_NUMERORESOLUCION').AsString;
  edFechaResolucion.Date := AQuery.FieldByName('SU_FECHARESOLUCION').AsDateTime;
  edFechaNotificacionResolucion.Date := AQuery.FieldByName('SU_FECHANOTIFRESOL').AsDateTime;
  edFechaIncumplimiento.Date := AQuery.FieldByName('SU_FECHAINCUMPLIMIENTO').AsDateTime;
  edMultaSRT.Value := AQuery.FieldByName('SU_MULTASRT').AsCurrency;

  if FModoCarga and (edFechaIncumplimiento.Date = 0) then
  begin
    edMopres.Text := InttoStr(Round(edMultaSRT.Value / 80));
  end
  else
  begin
    edMopres.Text := IntToStr(Round(edMultaSRT.Value /
                     ValorSql(' SELECT am_valorampo '+
                              '   FROM art.cam_topeampos cam '+
                              '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                              '                        FROM art.cam_topeampos a '+
                              '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))')));
  end;

  {Ticket 66768}
  RefreshValorMopres;

  edFechaAudienciaDescargo.Date := AQuery.FieldByName('SU_FECHAAUDIENCIADESCARGO').AsDateTime;
  fraTipoResultadoAdministrativa.Codigo :=  AQuery.FieldByName('SU_IDTIPORESULTADOADMINIS').AsString;
  edFechaNotifBudi.Date := AQuery.FieldByName('SU_FECHANOTIFBUDI').AsDateTime;
  fraDatosJuzgadoAsignado.Cargar(InttoStr(FIdSumario));

  fraTipoResultadoJuicio.Codigo := AQuery.FieldByName('SU_IDTIPORESULTADOSENTENCIA').AsString;
  edfechaSentencia.Date := AQuery.FieldByName('SU_FECHASENTENCIA').AsDateTime;
  edFechaNotifSentencia.Date := AQuery.FieldByName('SU_FECHANOTIFSENTENCIA').AsDateTime;
  mSentencia.Text := AQuery.FieldByName('SU_TEXTOSENTENCIA').AsString;
{----}
  edMultaJudicial.Value := AQuery.FieldByName('SU_MULTASENTECIA').AsCurrency;
  FMulta := edMultaJudicial.Value;

  if FModoCarga and (edFechaIncumplimiento.Date = 0) then
  begin
    edMopresJudicial.Text := InttoStr(Round(edMultaJudicial.Value / 80));
  end
  else
  begin
    edMopresJudicial.Text := IntToStr(Round(edMultaJudicial.Value /
                           ValorSql(' SELECT am_valorampo '+
                                    '   FROM art.cam_topeampos cam '+
                                    '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                                    '                        FROM art.cam_topeampos a '+
                                    '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))')));
  end;                                  
  edCostasJudicial.Value := AQuery.FieldByName('SU_COSTAS').AsCurrency;
  edGastosJudicial.Value := AQuery.FieldByName('SU_GASTOS').AsCurrency;
  edTasaJusticia.Value := AQuery.FieldByName('SU_TASASJUSTICIA').AsCurrency;
  edMultaTJ.Value := AQuery.FieldByName('SU_MULTATASASJUSTICIA').AsCurrency;
{----}
//  edFechaCalculo.Date := AQuery.FieldByName('').AsDateTime;
  edReservaCapital.Value := AQuery.FieldByName('su_importereserva').AsCurrency;
  edReservaHonorarios.Value := AQuery.FieldByName('su_importereservahonorarios').AsCurrency;
//  edFechaReserva.Date := AQuery.FieldByName('su_fechaaprobacionreservas').AsDateTime;
  edEmbargos.Value := AQuery.FieldByName('su_montoembargo').AsCurrency;
  edFechaEmbargo.Date := AQuery.FieldByName('su_fechaembargo').AsDateTime;
  FReservasAprobadas := not AQuery.FieldByName('SU_FECHAAPROBACIONRESERVAS').IsNull;
  edFechaFin.Date := AQuery.FieldByName('su_fechafin').AsDateTime;

  fraArts.Value := AQuery.FieldByName('SU_IDART').AsInteger;
  cbReservaCapital.Checked    := AQuery.FieldByName('SU_RESERVACAPITAL').AsString = 'S';
  cbReservaHonorarios.Checked := AQuery.FieldByName('SU_RESERVAHONORARIOS').AsString = 'S';
//  cbResponsabilidadProvart.Checked := AQuery.FieldByName('SU_RESPONSABILIDADPROVINCIA').AsString = 'S';
  ChangefraArts(nil);

  {----}
  SetearAdministrativa(AQuery.FieldByName('SU_INSTANCIAADMINISTRATIVA').AsString = SQL_TRUE);

  edReservaCapital.OnChange := ceReservaCapitalChange;
  edReservaHonorarios.OnChange := ceReservaCapitalChange;

  CalcularTotal;

  spbConfirmarMulta.Enabled := False;
  lblNotaAprobacion.Visible := False;
  FModoCarga := False;
  SumatoriaImportes;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.GuardarDatos;
var
  sSqlTrans : TSql;
  NroSumario : Integer;
  OrdenActual, NroOrdenMax : Integer;

begin
  VerificarMultiple(['Guardando Dictamen Acusatorio',
                    edExpedienteSRT,
                    not IsEmptyString(edExpedienteSRT.text),
                    'Debe especificar un n�mero de expediente para de la SRT.',
                    edAnioExpedienteSRT,
                    not IsEmptyString(edAnioExpedienteSRT.text),
                    'Debe especificar un a�o de expediente de la SRT.',
                    edAnioExpedienteSRT,
                    not IsEmptyString(edAnioExpedienteSRT.text) and (StrtoInt(edAnioExpedienteSRT.text) <= YearOf(DBDate)),
                    'Debe especificar un a�o menor o igual al a�o en curso.',
                    edAnioExpedienteSRT,
                    not IsEmptyString(edAnioExpedienteSRT.text) and (StrtoInt(edAnioExpedienteSRT.text) > 1996),
                    'Debe especificar un a�o no puede ser anterior al a�o de 1996.',
                    edExpedienteSRT,
                    (FModo = meModificacion) or ((FModo = meAlta) and VerificarExpedienteExisteCargado),
                    'El expediente ya se encuentra cargado.',
//                    fraTipoCostas,
//                    edHonorarioAbogadoOponente.Value = 0,
//                    'Tipo de Costas inv�lido. Existen Hon. a Abogados Oponentes cargados.',
  //                      edFechaInicio, edFechaInicio.Date > 0, 'Debe especificar una fecha de inicio del dictamen',
  //                      edFechaInicio, edFechaInicio.Date <= DBDate, 'Debe especificar una fecha de inicio anterior la actual',
  //                      edFechaInicio, edFechaInicio.Date <= DBDate, 'La fecha de fin debe ser anterior o igual a la actual',
                    fraArts,
                    fraArts.IsSelected,
                    'Debe seleccionar la ART a la que pertenece el Sumario.',
                    fraEstado,
                    fraEstado.IsSelected,
                    'Debe seleccionar un estado.',
                    fraAreas,
                    fraAreas.IsSelected,
                    'Debe seleccionar un �rea.',
                    fraAbogadosPropios,
                    fraAbogadosPropios.IsSelected,
                    'Debe seleccionar un abogado.',
                    edNroDAC,
                    not IsEmptyString(edNroDAC.Text),
                    'Debe especificar un N�mero de DAC',
                    edFechaDac,
                    edFechaDac.Date > 0,
                    'Debe especificar una Fecha de DAC',
                    edFechaDac,
                    edFechaDac.Date <= DBDate,
                    'La fecha DAC no puede ser posterior a la fecha de hoy.',
                    edFechaNotificacionDac,
                    ((edFechaDac.Date = 0) and (edFechaNotificacionDac.Date = 0)) or
                    ((edFechaDac.Date > 0) and (edFechaNotificacionDac.Date > 0) and (edFechaNotificacionDac.Date >= edFechaDac.Date)) or
                    ((edFechaDac.Date > 0) and (edFechaNotificacionDac.Date = 0)) ,
                    'Solo puede especificar una  Fecha de Notificaci�n DAC, si ha especificado una Fecha DAC',
                    edDisposicionSAL,
                    not IsEmptyString(edDisposicionSAL.Text),
                    'Debe especificar una N�mero de Disposici�n SAL',
                    edFechaSal,
                    edFechaSal.Date > 0,
                    'Debe especificar una Fecha para la Disposici�n SAL',
                    edFechaSal,
                    edFechaSal.Date <= DBDate,
                    'La fecha SAL no puede ser posterior a la fecha de hoy.',
                    edFechaFin,
                    not ((fraEstado.Value <> ESTADO_TERMINADO) and (edFechaFin.Date <> 0)),
                    'Debe especificar la fecha de fin s�lo en el estado Terminado.',
                    edFechaFin,
                    not ((fraEstado.Value = ESTADO_TERMINADO) and (edFechaFin.Date = 0)),
                    'Debe especificar la fecha de fin.',
                    edMultaTJ,
                    edMultaTJ.Value <= edTasaJusticia.Value / 2,
                    'La multa a TJ no debe superar el 50% de la Tasa de Justicia.',
                    edMultaSRT,
                    not spbConfirmarMulta.Enabled,
                    'Debe confirmar el importe para la Tasa de Justicia.'
                    ]);


   Verificar(edTasaJusticia.Value >   (edMultaSRT.Value * 15/1000), edTasaJusticia,
             'La Tasa de Justicia no debe superar el 1.5% de la Multa SRT.');

   NroOrdenMax := ValorSqlInteger(
    ' SELECT MAX(ej_orden) '+
    ' FROM( SELECT DISTINCT ej_orden '+
    '           FROM legales.lhs_historicoestadosumario, legales.lej_estadojuicio '+
    '          WHERE hs_idsumario = '+SqlInteger(FIdSumario, True)+
    '            AND hs_idestadosumario = ej_id '+
    '            AND ej_orden <> 99 '+
    '          UNION '+
    '         SELECT DISTINCT ej_orden '+
    '           FROM legales.lsu_sumario, legales.lej_estadojuicio '+
    '          WHERE su_id = '+SqlInteger(FIdSumario, True)+
    '            AND su_idestado = ej_id '+
    '            AND ej_orden <> 99 )');
   OrdenActual := ValorSql(
          ' SELECT ej_orden '+
          '   FROM legales.lej_estadojuicio '+
          '  WHERE ej_id = '+SqlValue(fraEstado.Codigo));

   Verificar((FModo = meAlta) and not ExisteSql('SELECT 1 FROM LEGALES.LIE_INCUMPLIMIENTOESPECIFICO WHERE IE_FECHABAJA is null'+
                                                '   AND IE_IDSUMARIO = '+SqlValue(FIdSumario)),tsIncumplimientoEspecifico,
             'Debe especificar un incumplimiento.');

   Verificar(
     not ((fraEstado.Codigo = '2')  or
          (fraEstado.Codigo = '3')  or
          (fraEstado.Codigo = '49') or
          (fraEstado.Codigo = '103'))
     and not (NroOrdenMax = (OrdenActual-1))
     and not((FModo = meAlta) and (fraEstado.Codigo = '48'))
     and (NroOrdenMax< OrdenActual)
     ,fraEstado, 'Debe ser el estado siguiente.');

  Verificar( ((fraTipoResultadoJuicio.Codigo = '3') or (fraTipoResultadoJuicio.Codigo = '2'))and
              (fraEstado.Codigo = '55') and (ValorSql(
                ' SELECT COUNT (*) '+
                '   FROM legales.lis_importesentenciasumario '+
                '  WHERE is_idsumario = '+SqlValue(FIdSumario)+' AND is_aplicacion = ''M'' '+
                '    AND is_fechabaja IS NULL')= 0),tbFijarSentecia,'Debe especificar el importe de sentencia.');

  Verificar(ValorSql(
            ' SELECT COUNT (*) '+
            '   FROM legales.lrs_reclamosumario '+
            '  WHERE rs_idsumario = '+SqlValue(FIdSumario)+' AND rs_fechabaja IS NULL')= 0, tsReclamos,'Debe tener Reclamos.');
  If fraAreas.IsSelected then
    Verificar(fraAreas.IsBaja, fraAreas, 'El Area Seleccionada no puede estar dada de baja.');

  if fraEstado.Codigo = '55' then
    Verificar(edFechaNotifSentencia.Date = 0, edFechaNotifSentencia, 'Debe Completar la Fecha de Notificacion de Sentencia.');



  if fraTipoResultadoAdministrativa.IsSelected then
  begin
    VerificarMultiple(['Guardando Dictamen Acusatorio',
                      edNroResolucion, (not IsEmptyString(edNroResolucion.Text) and (edFechaResolucion.Date > 0)),
                      'Si N�mero de Resoluci�n y Fecha Resoluci�n debe especificarse conjuntamente',
                      edFechaNotificacionResolucion, ((edFechaNotificacionResolucion.Date = 0) or ((edFechaNotificacionResolucion.Date > 0) and (not IsEmptyString(edNroResolucion.Text)))),
                      'Solo puede especificar la Fecha de Notificaci�n de la Resoluci�n si ha especificado el N�mero y Fecha de Resoluci�n']);
  end else
  begin
    VerificarMultiple(['Guardando Dictamen Acusatorio',
                      edNroResolucion, (IsEmptyString(edNroResolucion.Text) and (edFechaResolucion.Date = 0) and (edFechaNotificacionResolucion.Date = 0)),
                      'No puede fijar nro de resoluci�n y fecha resoluci�n si no se especific� el tipo de verificaci�n.'
                      ]);
  end;

  if not IsEmptyString(edNroResolucion.Text) and
    fraTipoResultadoAdministrativa.IsSelected and
    (fraTipoResultadoAdministrativa.Codigo = '3') then
    VerificarMultiple(['Guardando Dictamen Acusatorio',
                       edMultaSRT, edMultaSRT.Value > 0, 'Cuando especifica un Nro Resoluci�n debe especificar monto de Multa'])
  else
    VerificarMultiple(['Guardando Dictamen Acusatorio',
                       edMultaSRT, edMultaSRT.Value = 0, 'Si el resultado de sede administrativo no es Multa, no puede especificar un valor para esta.']);

  if not FInstanciaAdministrativa then begin
    fraDatosJuzgadoAsignado.validar('Guardando Sumario');
    fraDatosJuzgadoAsignado.ValidarSeleccionBajas('Guardando Sumario');
    VerificarMultiple(['Guardando Dictamen Acusatorio',
                        edMultaSRT, not ((edMultaSRT.Value = 0) and (edMultaJudicial.Value <> 0)), 'Debe especificar la multa de la etapa administrativa.'//,
                        //edMultaJudicial, (edMultaJudicial.Value <= edMultaSRT.Value), 'La multa judicial no puede ser mayor a la de la etapa administrativa.'
                      ]);
  end;

  if (fraTipoResultadoJuicio.IsSelected and (fraTipoResultadoJuicio.Codigo = '1'))
    or
     (fraEstado.IsSelected and (fraEstado.Codigo = '2'))
    then
  begin
    edReservaCapital.Value := 0;
    edReservaHonorarios.Value := 0;
  end;

  GuardarCambioReserva;

  GuardarCambioEstado;

   sSqlTrans := TSql.Create('legales.lsu_sumario');
   sSqlTrans.SqlType := stUpdate;
   sSqlTrans.PrimaryKey.Add('su_id', FIdSumario);

   NroSumario := 0;

   if (FModo = meAlta) then
   begin
     EjecutarStoreST('LOCK TABLE legales.lsu_sumario IN SHARE MODE;');
     NroSumario := ValorSql('select nvl(max(su_numerosumario), 0) + 1 from legales.lsu_sumario', '0');
   end;

   try
     if FModo = meAlta then
       sSqlTrans.Fields.AddString('SU_NUMEROSUMARIO', NroSumario);

     sSqlTrans.Fields.AddInteger('SU_NUMEROEXPEDIENTE',  edExpedienteSRT.Text, 'N', true);
     sSqlTrans.Fields.AddString('SU_ANIOEXPEDIENTE', edAnioExpedienteSRT.Text);
//     sSqlTrans.Fields.AddDate('SU_FECHAINICIO', edFechaInicio.Date, true);
     sSqlTrans.Fields.AddInteger('SU_ABOGADO', fraAbogadosPropios.Codigo, 'N', true);
     sSqlTrans.Fields.AddInteger('SU_ABOGADOSUMARIANTE', fraAbogadoSumariante.Codigo, 'N', true);
     sSqlTrans.Fields.AddString('SU_IDESTADO', fraEstado.Codigo, true);
     sSqlTrans.Fields.AddString('SU_AREA', fraAreas.Codigo, True);
     sSqlTrans.Fields.AddInteger('SU_AREASRT', fraAreaSRT.Codigo, 'N' ,True);
     sSqlTrans.Fields.AddInteger('SU_FIRMANTESRT', fraFirmanteSRT.Codigo, 'N' ,True);
     sSqlTrans.Fields.AddInteger('SU_NUMERODAC', edNroDAC.Text, 'N', true);
     sSqlTrans.Fields.AddDate('SU_FECHADAC', edFechaDac.Date, true);
     sSqlTrans.Fields.AddDate('SU_FECHANOTIFICACIONDAC', edFechaNotificacionDac.Date, true);
     sSqlTrans.Fields.AddInteger('SU_DISPOSICIONSAL', edDisposicionSAL.Text, 'N', true);
     sSqlTrans.Fields.AddDate('SU_FECHASAL', edFechaSal.Date);
     sSqlTrans.Fields.AddInteger('SU_NUMERORESOLUCION', edNroResolucion.Text, 'N', true);
     sSqlTrans.Fields.AddDate('SU_FECHARESOLUCION', edFechaResolucion.Date, true);
     sSqlTrans.Fields.AddDate('SU_FECHANOTIFRESOL', edFechaNotificacionResolucion.Date, true);
     sSqlTrans.Fields.AddExtended('SU_MULTASRT', edMultaSRT.Value, 2, true);
     sSqlTrans.Fields.AddDate('SU_FECHAAUDIENCIADESCARGO', edFechaAudienciaDescargo.Date, True);
     sSqlTrans.Fields.AddDate('SU_FECHAINCUMPLIMIENTO', edFechaIncumplimiento.Date, True);
     sSqlTrans.Fields.AddDate('SU_FECHANOTIFBUDI', edFechaNotifBudi.Date, True);
     sSqlTrans.Fields.AddInteger('SU_IDTIPORESULTADOADMINIS', fraTipoResultadoAdministrativa.Codigo, 'N', true);
     sSqlTrans.Fields.AddInteger('SU_IDART', fraArts.Value, true);

     if cbGPBAIncumplimiento.Checked then
       sSqlTrans.Fields.Add('SU_GPBAINCUMPLIMIENTO', 'S')
     else
       sSqlTrans.Fields.Add('SU_GPBAINCUMPLIMIENTO', 'N');

     if cbReservaCapital.Checked then
       sSqlTrans.Fields.Add('SU_RESERVACAPITAL', 'S')
     else
       sSqlTrans.Fields.Add('SU_RESERVACAPITAL', 'N');

     if cbReservaHonorarios.Checked then
       sSqlTrans.Fields.Add('SU_RESERVAHONORARIOS', 'S')
     else
       sSqlTrans.Fields.Add('SU_RESERVAHONORARIOS', 'N');

//     if cbResponsabilidadProvart.Enabled then
//       sSqlTrans.Fields.AddString('SU_RESPONSABILIDADPROVINCIA', iif(cbResponsabilidadProvart.Checked, 'S', 'N'));

     if not FInstanciaAdministrativa and fraDatosJuzgadoAsignado.IsSelected then
     begin
       sSqlTrans.Fields.AddInteger('su_idjurisdiccion', fraDatosJuzgadoAsignado.Jurisdiccion, 'N', true);
       sSqlTrans.Fields.AddInteger('su_idfuero', fraDatosJuzgadoAsignado.Fuero, 'N', true);
       sSqlTrans.Fields.AddInteger('su_idjuzgado', fraDatosJuzgadoAsignado.Juzgado, 'N', true);
       sSqlTrans.Fields.AddInteger('su_idsecretaria', fraDatosJuzgadoAsignado.Secretaria, 'N', true);
       sSqlTrans.Fields.AddString('SU_NROEXPEDIENTEJUICIO', fraDatosJuzgadoAsignado.NroExpediente);
       sSqlTrans.Fields.AddString('SU_ANIOEXPEDIENTEJUICIO', fraDatosJuzgadoAsignado.AnioExpediente);
       sSqlTrans.Fields.AddDate('SU_FECHAINGRESOEXPEDIENTE', fraDatosJuzgadoAsignado.FechaIngreso, true);
     end;

     sSqlTrans.Fields.AddInteger('SU_IDTIPORESULTADOSENTENCIA', fraTipoResultadoJuicio.Codigo, 'N', true);
     sSqlTrans.Fields.AddDate('SU_FECHASENTENCIA', edfechaSentencia.Date, true);
     sSqlTrans.Fields.AddDate('SU_FECHANOTIFSENTENCIA', edFechaNotifSentencia.Date, true);
     sSqlTrans.Fields.AddString('SU_TEXTOSENTENCIA', mSentencia.Text);
  {----}
     sSqlTrans.Fields.AddExtended('SU_MULTASENTECIA', edMultaJudicial.Value, 2, true);
//     sSqlTrans.Fields.AddDate('SU_FECHAMULTASENTENCIA', edFechaMultaJudicial.Date, true);
     sSqlTrans.Fields.AddExtended('SU_COSTAS', edCostasJudicial.Value, 2, true);
     sSqlTrans.Fields.AddExtended('SU_GASTOS', edGastosJudicial.Value, 2, true);
     sSqlTrans.Fields.AddExtended('SU_TASASJUSTICIA', edTasaJusticia.Value, 2, true);
     sSqlTrans.Fields.AddExtended('SU_MULTATASASJUSTICIA', edMultaTJ.Value, 2, true);
  {----}
     sSqlTrans.Fields.AddExtended('su_importereserva', edReservaCapital.Value, 2, true);
     sSqlTrans.Fields.AddExtended('su_importereservahonorarios', edReservaHonorarios.Value, 2, true);
//     sSqlTrans.Fields.AddDate('su_fechaaprobacionreservas', edFechaReserva.Date, true);
     sSqlTrans.Fields.AddExtended('su_montoembargo', edEmbargos.Value, 2, true);
     sSqlTrans.Fields.AddDate('su_fechaembargo', edFechaEmbargo.Date, true);
     sSqlTrans.Fields.AddDate('su_fechafin', edFechaFin.Date, true);

  {----}
     if Fmodo = meAlta then
     begin
       sSqlTrans.Fields.AddDate('su_fechaalta',Date, False);
       sSqlTrans.Fields.Add('su_usualta', Sesion.LoginName);
     end else
     begin
        sSqlTrans.Fields.Add('su_fechamodif', 'sysdate', False);
        sSqlTrans.Fields.Add('su_usumodif', Sesion.LoginName);
    end;

    sSqlTrans.Fields.Add('su_instanciaadministrativa', FInstanciaAdministrativa);

    EjecutarSQL(sSqlTrans.Sql);
    if ((edMultaSRT.Value > 0)
        and (((edTasaJusticia.Value ) / edMultaSRT.Value) > 0.25)) then
    begin
      MsgBox('La Tasa de Justicia m�s los Honorarios del Abogado Oponente supera el 25% de la Multa SRT.' + #13+ #10 +
      'Ver Art�culo 5 del C�digo Civil.', MB_ICONINFORMATION, 'Atenci�n')
    end;

  except
    on E : Exception do begin
       raise Exception.Create('Error al guardar el dictamen acusatorio. Mensaje: ' + E.Message);
    end;
  end;
  if FModo = meAlta then
    MessageBox(Self.Handle,PChar('Se gener� el Sumario Nro. ' + InttoStr(NroSumario)), 'Sumarios', MB_ICONINFORMATION or MB_OK);
  ModalResult := mrOk;
end;
{--------------------------------------------------------------------------------}
function TfrmSeguimientoDictamenesAcusatorios.VerificarExpedienteExisteCargado : boolean;
var
 SQL : String;
begin
   SQL :=       'SELECT COUNT(*)';
   SQL := SQL + '  FROM legales.lsu_sumario';
   SQL := SQL + ' WHERE SU_NUMEROEXPEDIENTE = '+ SqlInteger(edExpedienteSRT.Text, true);
   SQL := SQL + '   AND SU_ANIOEXPEDIENTE = '+ SqlInteger(edAnioExpedienteSRT.Text, true);
   result := ValorSql(Sql, '0') = 0;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.FormCloseQuery(
  Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult <> mrOk then
  begin
    if MessageDlg('Se descartar�n todas las modificaciones realizadas. �Continua?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      RollBackUpdates
    else CanClose := false;
  end;
end;
{--------------------------------------------------------------------------------}

{ Siniestros de Sumarios }
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbBusquedaSiniestrosClick(
  Sender: TObject);
begin
  BuscarSiniestros;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbEliminarSiniestroSeleccionadoClick(
  Sender: TObject);
begin
  EliminarSiniestro;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbLimpiarTodoClick(
  Sender: TObject);
begin
  EliminarTodosLosSiniestros;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.dbgSiniestrosGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if not Field.DataSet.FieldByName('ss_fechabaja').IsNull Then    AFont.Color := clRed;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.BuscarSiniestros;
var
 i,j : integer;
 F : TFields;
 Located : Boolean;
begin
  with TdlgBusqSini.Create(self) do
  try
    grpTrabajador.Enabled := true;
    if ShowModal = mrOk then
    begin
      for i := 0 to dbgBusqueda.SelectedRows.Count - 1 do
      begin
        F := SiniestroSeleccionado(i);
        Located := sdqSiniestroDictamenAcusatorio.Locate('EX_SINIESTRO;EX_ORDEN;EX_RECAIDA',
                        VarArrayOf([F.FieldByName('EX_SINIESTRO').Value,
                                    F.FieldByName('EX_ORDEN').Value,
                                    F.FieldByName('EX_RECAIDA').Value]),[]);

        if (not Located) or (Located and not sdqSiniestroDictamenAcusatorio.FieldByName('SS_FECHABAJA').IsNull) then
        begin
          sdqSiniestroDictamenAcusatorio.Insert;
          sdqSiniestroDictamenAcusatorio.FieldByName('ss_idsumario').AsInteger := FIdSumario;
          sdqSiniestroDictamenAcusatorio.FieldByName('ss_usualta').AsString := Sesion.LoginName;

          for j := 0 to sdqSiniestroDictamenAcusatorio.Fields.Count - 1 do
           sdqSiniestroDictamenAcusatorio.Fields[j].Required := false;

          for j := 0 to F.Count - 1 do
           sdqSiniestroDictamenAcusatorio.FieldByName(F.Fields[j].FieldName).value := F.Fields[j].Value;

          sdqSiniestroDictamenAcusatorio.Post;
        end;
      end;
    end;
  finally
    sdqSiniestroDictamenAcusatorio.ApplyUpdates;
    free;
  end;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.EliminarSiniestro;
begin
  if not sdqSiniestroDictamenAcusatorio.IsEmpty then
  begin
    sdqSiniestroDictamenAcusatorio.Edit;
    sdqSiniestroDictamenAcusatorio.FieldByName('ss_usubaja').AsString := Sesion.LoginName;
    sdqSiniestroDictamenAcusatorio.Post;
    sdqSiniestroDictamenAcusatorio.ApplyUpdates;
    sdqSiniestroDictamenAcusatorio.Refresh;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.EliminarTodosLosSiniestros;
var
  b: Tbookmark;
begin
  b := sdqSiniestroDictamenAcusatorio.GetBookmark;
  try
    sdqSiniestroDictamenAcusatorio.DisableControls;

    sdqSiniestroDictamenAcusatorio.First;
    while not sdqSiniestroDictamenAcusatorio.Eof do
    begin
      if sdqSiniestroDictamenAcusatorio.FieldByName('ss_fechabaja').Isnull then
        EliminarSiniestro;
      sdqSiniestroDictamenAcusatorio.Next;
    end;

  finally
    sdqSiniestroDictamenAcusatorio.Refresh;
    sdqSiniestroDictamenAcusatorio.GotoBookmark(b);
    sdqSiniestroDictamenAcusatorio.EnableControls;
    sdqSiniestroDictamenAcusatorio.FreeBookmark(b);
  end;
end;
{--------------------------------------------------------------------------------}
function TfrmSeguimientoDictamenesAcusatorios.VerificaNormaNoCargada(AIdNorma : Integer) : boolean;
var
  SQL: string;
begin
   SQL := 'select count(*) from legales.lrs_reclamosumario ' +
                      'where rs_idsumario = ' + SqlInteger(FIdSumario);
   if FModoReclamo <> meAlta then
      SQL := SQL + ' and rs_id <> ' + SqlInteger(sdqReclamosSumarios.fieldbyname('RS_ID').AsInteger);

   if fraNormaLegalImputada.Articulo <> 0  then
     SQL := SQL + ' and (rs_articulo = ' + SqlValue(fraNormaLegalImputada.Articulo)  + ' or rs_articulo is null )';

   if not IsEmptyString(fraNormaLegalImputada.Inciso) then
     SQL := SQL + ' and (rs_inciso = ' + SqlValue(fraNormaLegalImputada.Inciso)  + ' or rs_inciso is null )';

   SQL := SQL + ' and rs_idnorma   = ' + SqlInteger(AIdNorma);

   if not IsEmptyString(fraNormaLegalImputada.Apartado) then
     SQL := SQL + ' and (rs_apartado = ' + SqlValue(fraNormaLegalImputada.Apartado) + ' or rs_apartado is null )';

   if not IsEmptyString(fraNormaLegalImputada.Anexo) then
     SQL := SQL + ' and (rs_anexo = ' + SqlValue(fraNormaLegalImputada.Anexo) + ' or rs_anexo is null)';

   result := ValorSql(SQL) = 0;
end;
{--------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.pgDetalleChange(
  Sender: TObject);
begin
  CargarWorkflow;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbGuardarClick(
  Sender: TObject);
begin
  spbConfirmarMultaClick(Sender);
  GuardarDatos;
  tbCalcularReservaClick(nil);
  GuardarReserva;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.GuardarReserva;
begin
  EjecutarSql(
    ' UPDATE legales.lsu_sumario '+
    '    SET su_importereserva = '+SqlValue(edReservaCapital.Value)+', '+
    '        su_importereservahonorarios = '+ SqlValue(edReservaHonorarios.Value)+
    '  WHERE su_id = '+SqlValue(FIdSumario));
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbIngresoPagoClick(
  Sender: TObject);
begin
  with TfrmPagoSumarios.Create(self) do
  try
     AltaPago(FIdSumario, fraAreas.Codigo);
     sdqPagoSumario.Refresh;
  finally
     free;
  end;
  tbCalcularReservaClick(nil);
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbEdicionPagoClick(Sender: TObject);
begin
  if sdqPagoSumario.IsEmpty then
    Exit;

  if (sdqPagoSumario.FieldByName('PS_DUPLICADO').AsString = 'S') and
     (sdqPagoSumario.FieldByName('PS_ESTADODUPLICIDAD').IsNull) then
  begin
    MsgBox('El pago est� duplicado y pendiente de aprobacion.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagoSumario.FieldByName('PS_ESTADODUPLICIDAD').AsString = 'R') then
  begin
    MsgBox('El pago est� rechazado por duplicado.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;


  if (sdqPagoSumario.FieldByName('PS_ESTADO').AsString = 'A') or
     (sdqPagoSumario.FieldByName('PS_ESTADO').AsString = 'X') then
  begin
    MsgBox('El pago est� dado de baja.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagoSumario.FieldByName('ps_importeconretencion').AsCurrency < 0) or
     (sdqPagoSumario.FieldByName('ps_importepago').AsCurrency < 0) then
  begin
    if (sdqPagoSumario.FieldByName('ps_estado').AsString = 'E') then
      MsgBox('El pago corresponde a una anulaci�n previa ya aprobada.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK)
    else
      MsgBox('El pago corresponde a una anulaci�n previa.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  with TfrmPagoSumarios.Create(self) do
  try
     pnFactura.Enabled := sdqPagoSumario.FieldByName('PS_ESTADO').AsString <> 'E';

     ModificacionPago(sdqPagoSumario, fraAreas.Codigo);
     sdqPagoSumario.Refresh;
  finally
     free;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbEliminarPagoClick(
  Sender: TObject);
var
  IdPago,
  NumPago: integer;
begin
  if sdqPagoSumario.IsEmpty then
    Exit;

  if (sdqPagoSumario.FieldByName('ps_estado').AsString = 'A') or
     (sdqPagoSumario.FieldByName('ps_estado').AsString = 'X') then
  begin
    MsgBox('El pago ya est� dado de baja.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagoSumario.FieldByName('ps_importeconretencion').AsCurrency < 0) or
     (sdqPagoSumario.FieldByName('ps_importepago').AsCurrency < 0) then
  begin
    if (sdqPagoSumario.FieldByName('ps_estado').AsString = 'E') then
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
  if sdqPagoSumario.FieldByName('ps_estado').AsString = 'C' then
  begin
    // Cancelo el pago
    EjecutarSqlST('UPDATE legales.lps_pagosumario ' +
                  '   SET ps_estado = ''A'', ' +
                  '       ps_importeconretencion = NULL, ' +
                  '       ps_importepago = NULL, ' +
                  '       ps_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                  '       ps_fechamodif = SYSDATE ' +
                  ' WHERE ps_id = ' + SqlValue(sdqPagoSumario.FieldByName('ps_id').AsInteger)
                  , tmNone);

    // Desasigno el pago en legales.lis_importesentenciasumario
    EjecutarSqlST('UPDATE legales.lis_importesentenciasumario ' +
                  '   SET is_nropago = NULL ' +
                  ' WHERE is_nropago = ' + SqlValue(sdqPagoSumario.FieldByName('ps_id').AsInteger)
                  , tmNone);
  end
  else if sdqPagoSumario.FieldByName('ps_estado').AsString = 'E' then begin
    // Agrego el registro de movimiento contrario
    IdPago := GetSecNextVal('legales.seq_lps_id');
    NumPago := ValorSql('SELECT NVL(max(ps_numpago), 0) '+
                        '  FROM legales.lps_pagosumario ' +
                        ' WHERE ps_idsumario = ' + SqlValue(FIdSumario), '0') + 1;

    EjecutarSqlST('INSERT INTO legales.lps_pagosumario ' +
                  '(ps_id, ps_numpago, ps_fechapago, ps_conpago, ' +
                  ' ps_fechaemision, ps_cuitcuil, ps_letrafactura, ' +
                  ' ps_situacionfactura, ps_numerofactura, ps_fechafactura, ' +
                  ' ps_importepago, ps_comentario, ' +
                  ' ps_estado, ps_fechavencimiento, ps_usuarioaprobado, ' +
                  ' ps_fechaaprobado, ps_importeconretencion, ps_chequenombre, ' +
                  ' ps_idsumario, ps_idbeneficiariopago, ' +
                  ' ps_detallebeneficiario, ps_fechavencimientopago, ps_paguesea, ' +
                  ' ps_iddetallebeneficiario, ps_idsector, ps_comprobantepago, ' +
                  ' ps_budi, ps_nrofacturagenrada, ps_usualta, ps_fechaalta) ' +
                  ' SELECT ' + SqlValue (IdPago) + ', ' + SqlValue (NumPago) + ', ' +
                  '        ps_fechapago, ps_conpago, ' +
                  '        ps_fechaemision, ps_cuitcuil, ps_letrafactura, ' +
                  '        ps_situacionfactura, ps_numerofactura, ps_fechafactura, ' +
                  '        nvl(ps_importepago, 0) * -1, ps_comentario, ' +
                  '        ''C'', ps_fechavencimiento, NULL, ' +
                  '        NULL, nvl(ps_importeconretencion,0) * -1, ps_chequenombre, ' +
                  '        ps_idsumario, ps_idbeneficiariopago, ' +
                  '        ps_detallebeneficiario, ps_fechavencimientopago, ps_paguesea, ' +
                  '        ps_iddetallebeneficiario, ps_idsector, ps_comprobantepago, ' +
                  '        ps_budi, ps_nrofacturagenrada, ''' + Sesion.LoginName + ''', SYSDATE ' +
                  '   FROM legales.lps_pagosumario ' +
                  '  WHERE ps_id = ' + sdqPagoSumario.FieldByName('ps_id').AsString);

    // Cancelo el pago
    EjecutarSqlST('UPDATE legales.lps_pagosumario ' +
                  '   SET ps_estado = ''X'', ' +
                  '       ps_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                  '       ps_fechamodif = SYSDATE ' +
                  ' WHERE ps_id = ' + SqlValue(sdqPagoSumario.FieldByName('ps_id').AsInteger)
                  , tmNone);

    // Desasigno el pago en legales.lis_importesentenciasumario
    EjecutarSqlST('UPDATE legales.lis_importesentenciasumario ' +
                  '   SET is_nropago = ' + SqlValue (IdPago) +
                  ' WHERE is_nropago = ' + SqlValue(sdqPagoSumario.FieldByName('ps_id').AsInteger)
                  , tmNone);
  end
  else InvalidMsg(dbgPagosEfectuados, 'No se puede cancelar un pago en este estado.', 'Cancelaci�n de Pago');

  sdqPagoSumario.Refresh;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbImprimirPagosClick(
  Sender: TObject);
begin
  if sdqPagoSumario.IsEmpty then
    Exit;

  if (sdqPagoSumario.FieldByName('PS_DUPLICADO').AsString = 'S') and
     (sdqPagoSumario.FieldByName('PS_ESTADODUPLICIDAD').IsNull) then
  begin
    MsgBox('El pago est� duplicado y pendiente de aprobacion.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagoSumario.FieldByName('PS_ESTADODUPLICIDAD').AsString = 'R') then
  begin
    MsgBox('El pago est� rechazado por duplicado.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqPagoSumario.FieldByName('ps_estado').AsString = 'A') or
     (sdqPagoSumario.FieldByName('ps_estado').AsString = 'X') then
  begin
    MsgBox('El pago est� dado de baja.' + #13 +
           'No puede imprimirse su liquidaci�n.', MB_ICONERROR + MB_OK);
    Exit
  end;

  with TfrmLiquidacionPagoSumarios.Create(self) do
  try
    Imprimir(sdqPagoSumario.Fields);
  finally
    free;
  end;

  sdqPagoSumario.Refresh
end;

procedure TfrmSeguimientoDictamenesAcusatorios.CargarFinancialsDatosPago;
//var
//  sdqFnclDatos: TSDQuery;
//  Bookmark: TBookmarkStr;
//  sSql: String;
begin
(*
  IniciarEspera;
  dmFinancials.Conectar;

  try
    sdqPagoSumario.DisableControls;
    try
      Bookmark := sdqPagoSumario.Bookmark;
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

          sdqPagoSumario.First;

          while not sdqPagoSumario.EOF do
          begin
            sdqFnclDatos.ParamByName( 'pletrafactura' ).AsString    := 'A';
            sdqFnclDatos.ParamByName( 'psituacionfactura' ).AsString:= lPad(sdqPagoSumario.FieldByName('ps_idbeneficiariopago').AsString, '0', 4);
            sdqFnclDatos.ParamByName( 'pnumerofactura' ).AsString   := lPad(sdqPagoSumario.FieldByName('ps_idsumario').AsString ,'0', 6) +
                                                                       lPad(sdqPagoSumario.FieldByName('ps_numpago').AsString, '0', 2);
            sdqFnclDatos.ParamByName( 'vendor_id' ).AsInteger       := Get_VendorID (PonerGuiones (sdqPagoSumario.FieldByName ('ps_cuitcuil').AsString), 'CUIT');

            dmFinancials.OpenQuery( sdqFnclDatos );
            {------------------------------------}
            sdqPagoSumario.Edit;
            sdqPagoSumario.FieldByName( 'OrdenNro' ).Value    := sdqFnclDatos.FieldByName( 'OrdenNro' ).Value;
            sdqPagoSumario.FieldByName( 'OrdenFecha' ).Value  := sdqFnclDatos.FieldByName( 'OrdenFecha' ).Value;
            sdqPagoSumario.FieldByName( 'ChequeNro' ).Value   := sdqFnclDatos.FieldByName( 'ChequeNro' ).Value;
            sdqPagoSumario.FieldByName( 'ChequeFecha' ).Value := sdqFnclDatos.FieldByName( 'ChequeFecha' ).Value;
            sdqPagoSumario.Post;
            {------------------------------------}
            sdqFnclDatos.Close;
            sdqPagoSumario.Next;
          end;
        finally
          sdqFnclDatos.Free;
        end;
      finally
        sdqPagoSumario.Bookmark := Bookmark;
      end;
    finally
      sdqPagoSumario.EnableControls;
    end;
  finally
    dmFinancials.Desconectar;
    DetenerEspera;
  end;
*)  
end;

{---------------------------------------------------------------------------------------}
{  Reclamos                                                                             }
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbNuevoReclamoClick(
  Sender: TObject);
begin
  AltaReclamo;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbEditarReclamoClick(
  Sender: TObject);
begin
  if (not sdqReclamosSumarios.IsEmpty) and
      sdqReclamosSumarios.FieldByName('rs_fechabaja').IsNull then
  begin
    ModificacionReclamo;
  end;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbImprimirReclamoClick(
  Sender: TObject);
begin
//
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.AltaReclamo;
begin
  LimpiarCamposReclamo;
  FModoReclamo := meAlta;
  fpReclamo.ShowModal;
  sdqReclamosSumarios.Refresh;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.ModificacionReclamo;
begin
  if sdqReclamosSumarios.RecordCount > 0 then
  begin
   LimpiarCamposReclamo;
   FModoReclamo := meModificacion;
   FIdReclamoSumario := sdqReclamosSumarios.Fields.FieldByName('rs_id').AsInteger;
   CargarDatosReclamo(sdqReclamosSumarios.Fields);
   fpReclamo.ShowModal;
   sdqReclamosSumarios.Refresh;
  end;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.LimpiarCamposReclamo;
begin
  fraNormaLegalImputada.limpiar;
  mObservacionesReclamo.Text := '';
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbEliminarReclamoClick(
  Sender: TObject);
begin
  if (not sdqReclamosSumarios.IsEmpty) and
      sdqReclamosSumarios.FieldByName('rs_fechabaja').IsNull and
      (MsgBox('�Desea dar de baja el reclamo seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then
  begin
    EjecutarSqlST(' update LEGALES.lrs_reclamosumario ' +
                    ' set rs_fechabaja = sysdate, rs_usubaja = ' + SqlValue(Sesion.LoginName) +
                    ' where rs_id = ' + sdqReclamosSumarios.FieldByName('rs_id').AsString);
    sdqReclamosSumarios.Refresh;
  end;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.CargarDatosReclamo(Campos: TFields);
begin
  fraNormaLegalImputada.Cargar(FIdReclamoSumario);
  mObservacionesReclamo.Text := Campos.FieldByName('rs_observaciones').AsString;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.GuardarReclamo;
begin
  fraNormaLegalImputada.Validar;

  VerificarMultiple(['Guardando Reclamo',
                    fraNormaLegalImputada.fraNorma.edCodigo, VerificaNormaNoCargada(fraNormaLegalImputada.IdNorma),
                    'Un reclamo bajo esta norma ya fue cargado.']);
  if ValorSql(
      ' SELECT nr_validasector '+
      '   FROM legales.lnr_normareserva '+
      '  WHERE nr_idnorma = '+SqlValue(fraNormaLegalImputada.IdNorma)+
      '    AND (nvl(nr_articulo,0) = '+ SqlValue(fraNormaLegalImputada.Articulo)+' OR nr_articulo IS NULL)') = 'S' then
    Verificar(not ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.lnr_normareserva '+
      '  WHERE nr_idnorma = '+SqlValue(fraNormaLegalImputada.IdNorma)+
      '    AND (nvl(nr_articulo,0) = '+ SqlValue(fraNormaLegalImputada.Articulo)+
      '         OR nr_articulo IS NULL)'+
      '    AND nr_idsector = '+SqlValue(fraAreas.Codigo)),fraNormaLegalImputada,
      'El reclamo no tiene reserva asociada.')
  else
    Verificar(not ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.lnr_normareserva '+
      '  WHERE nr_idnorma = '+SqlValue(fraNormaLegalImputada.IdNorma)+
      '    AND (nvl(nr_articulo,0) = '+ SqlValue(fraNormaLegalImputada.Articulo)+' OR nr_articulo IS NULL)'),fraNormaLegalImputada,
      'El reclamo no tiene reserva asociada.');

  if FModoReclamo = meAlta then
  begin
    FIdReclamoSumario := GetSecNextVal('LEGALES.SEQ_LRS_ID');
    EjecutarSqlST(' INSERT      INTO legales.lrs_reclamosumario ' +
                  '(rs_id, rs_idsumario, rs_idnorma, rs_articulo, rs_inciso, ' +
                  ' rs_apartado, rs_anexo, rs_observaciones, rs_usualta, rs_fechaalta) ' +
                  ' VALUES ( ' + SqlInteger(FIdReclamoSumario) + ', ' +
                              SqlInteger(FIdSumario) + ' , ' +
                              SqlInteger(fraNormaLegalImputada.IdNorma) + ' , ' +
                              SqlInteger(fraNormaLegalImputada.Articulo, true) + ' , ' +
                              SqlString(fraNormaLegalImputada.Inciso, true, true) + ' , ' +
                              SqlString(fraNormaLegalImputada.Apartado, true, true) + ' , ' +
                              SqlString(fraNormaLegalImputada.Anexo, true, true) + ' , ' +
                              SqlValue(mObservacionesReclamo.Text)   + ' , ' +
                              SqlValue(Sesion.LoginName)   + ' , SysDate )');

  end
  else
    EjecutarSqlST('UPDATE  legales.lrs_reclamosumario ' +
                  ' SET                                      ' +
                  ' rs_idnorma =       ' + SqlInteger(fraNormaLegalImputada.IdNorma)   + ' , ' +
                  ' rs_articulo =      ' + SqlInteger(fraNormaLegalImputada.articulo)  + ' , ' +
                  ' rs_inciso =        ' + SqlValue(fraNormaLegalImputada.Inciso)    + ' , ' +
                  ' rs_apartado =      ' + SqlValue(fraNormaLegalImputada.Apartado)    + ' , ' +
                  ' rs_anexo =         ' + SqlValue(fraNormaLegalImputada.Anexo)    + ' , ' +
                  ' rs_observaciones = ' + SqlValue(mObservacionesReclamo.Text) + ' , ' +
                  ' rs_USUMODIF =      ' + SqlValue(Sesion.LoginName) + ' , ' +
                  ' rs_FECHAMODIF = SYSDATE ' +
                  ' WHERE RS_ID = ' + SqlInteger(FIdReclamoSumario));

  //Se actualiza el dato para que este disponible en el calculo de la reserva 
  EjecutarSqlSTEx('UPDATE legales.lsu_sumario ' +
                  'SET su_area = :area ' +
                  'WHERE su_id = :id ', [fraAreas.Codigo, FIdSumario]);

  sdqReclamosSumarios.Refresh;
  fpReclamo.Close;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.btnCancelarReclamoClick(
  Sender: TObject);
begin
  fpReclamo.close;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.btnAceptarReclamoClick(
  Sender: TObject);
begin
  GuardarReclamo;
  tbCalcularReservaClick(nil);
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.dbgReclamosGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if not Field.DataSet.FieldByName('rs_fechabaja').IsNull Then    AFont.Color := clRed;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.dbgJuiciosRelacionadosGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if not Field.DataSet.FieldByName('jt_fechabaja').IsNull Then    AFont.Color := clRed;
end;
{---------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.dbgReclamosDblClick(Sender: TObject);
begin
  tbEditarReclamoClick(self);
end;
{---------------------------------------------------------------------------------------}
{---------------------------------------------------------------------------------------}


{-------- Eventos ----}
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbNuevoEventoClick(
  Sender: TObject);
begin
  AltaEvento;
end;
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbModificarEventoClick(
  Sender: TObject);
begin
  ModificacionEvento;
end;
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbEliminarEventoClick(
  Sender: TObject);
begin
  if (not sdqEventoSumario.IsEmpty) and
      sdqEventoSumario.FieldByName('es_fechabaja').IsNull and
      (MsgBox('�Desea dar de baja el evento seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then
  begin
    EjecutarSqlST(' update LEGALES.les_eventosumario ' +
                    ' set es_fechabaja = sysdate, es_usubaja = ' + SqlValue(Sesion.LoginName) +
                    ' where es_id = ' + sdqEventoSumario.FieldByName('es_id').AsString);

    sdqEventoSumario.Refresh;
  end;
end;
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbAccImprimirClick(
  Sender: TObject);
begin
//
end;
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.btnAccAceptarClick(
  Sender: TObject);
begin
  GuardarEvento;
end;
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.btnAccCancelarClick(
  Sender: TObject);
begin
  //
end;
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.tbSeleccionArchivosAsociarClick(
  Sender: TObject);
begin
    MostrarArchivosAsociados;
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.dbgEventosDictamenAcusatorioDblClick(
  Sender: TObject);
begin
  ModificacionEvento;
end;
{------------------------------------------------------------------------------}
function TfrmSeguimientoDictamenesAcusatorios.ModificacionEvento : boolean ;
begin
  result := false;
  tbSeleccionArchivosAsociar.Enabled := True;
  //tbGenerarArchivo.Enabled := True;
  if (not sdqEventoSumario.IsEmpty) and sdqEventoSumario.FieldByName('es_fechabaja').IsNull then
  begin
    result := false;
    if sdqEventoSumario.RecordCount > 0 then
    begin
     LimpiarCamposEvento;
     FModoEventosSeguimientos := meModificacion;

     FIdEvento := sdqEventoSumario.Fields.FieldByName('es_id').AsInteger;
     CargarDatosEvento(sdqEventoSumario.Fields);
     result :=  fpEventoSeguimiento.ShowModal = mrOK;
     sdqEventoSumario.Refresh;
    end;
  end;
end;
{------------------------------------------------------------------------------}
function TfrmSeguimientoDictamenesAcusatorios.AltaEvento : boolean;
begin
  LimpiarCamposEvento;
  FModoEventosSeguimientos := meAlta;
  FIdEvento := -1;
  tbSeleccionArchivosAsociar.Enabled := False;
  fraTipoEvento.ExtraCondition := ' AND te_etapa like ''%S%'' AND te_fechabaja IS NULL'; 
  //tbGenerarArchivo.Enabled := False;

  result :=  fpEventoSeguimiento.ShowModal = mrOK;
  sdqEventoSumario.Refresh;
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.GuardarEvento(aCloseForm: boolean = true);
begin
  VerificarMultiple(['Administraci�n de Eventos',
                    edFechaEventoDesde,
                    edFechaEventoDesde.Date > 0,
                    'Debe especificar una fecha para el evento.',
                    edFechaEventoDesde,
                    edFechaEventoDesde.Date <= DBDate,
                    'La fecha para el evento no puede ser mayor que la actual.',
                    edFechaEventoDesde,
                    edFechaEventoDesde.Date >= edFechaDac.Date,
                    'La Fecha del evento no puede ser anterior a la fecha de inicio del juicio.',
                    fraTipoEvento,
                    fraTipoEvento.IsSelected,
                    'Debe seleccionar un Tipo de Reclamo']);

  if FModoEventosSeguimientos = meAlta then
  begin
    FIdEvento := ValorSql('select LEGALES.SEQ_LES_ID.NEXTVAL from dual');
    EjecutarSqlST(' INSERT INTO LEGALES.LES_EVENTOSUMARIO ( ' +
                  ' ES_ID, ES_IDSUMARIO, ES_FECHA,    ' +
                  ' ES_OBSERVACIONES, ' +
                  ' ES_IDTIPOEVENTO, ES_USUALTA, ES_FECHAALTA )         ' +
                  ' VALUES ( ' + SqlValue(FIdEvento) + ', ' +
                              SqlValue(FIdSumario) + ' , ' +
                              SqlDate(edFechaEventoDesde.Date) + ' , ' +
                              SqlValue(mObservacionesEvento.Text) + ' , ' +
                              SqlValue(strtoint(fraTipoEvento.Codigo))   + ' , ' +
                              SqlValue(Sesion.LoginName)   + ' , SysDate )')
  end
  else
    EjecutarSqlST('UPDATE  LEGALES.LES_EVENTOSUMARIO ' +
                  ' SET                                      ' +
                  ' ES_FECHA =        ' + SqlValue(edFechaEventoDesde.Date)        + ' , ' +
                  ' ES_OBSERVACIONES =      ' + SqlValue(mObservacionesEvento.Text)      + ' , ' +
                  ' ES_IDTIPOEVENTO =       ' + SqlValue(strtoint(fraTipoEvento.Codigo)) + ' , ' +
                  ' ES_USUMODIF =           ' + SqlValue(Sesion.LoginName) + ' , ' +
                  ' ES_FECHAMODIF = SYSDATE ' +
                  ' WHERE ES_ID = ' + SqlValue(FIdEvento));

  cdsArchivosAsociados.First;
  while not cdsArchivosAsociados.Eof do
  begin
    if cdsArchivosAsociados.FieldByName('STATE').AsString = 'I' then
    begin
      EjecutarSqlST('INSERT INTO legales.LAE_ARCHIVOEVENTOSUMARIO ' +
                  ' (ae_id, ae_descripcion, ae_patharchivo, ae_ideventosumario, ae_usualta, ae_fechaalta) ' +
                  ' VALUES (' + SqlValue(cdsArchivosAsociados.FieldByName('ID').AsInteger) + ',  ' +
                  SqlValue(cdsArchivosAsociados.FieldByName('DESCRIPCION').AsString) + ', ' +
                  SqlValue(cdsArchivosAsociados.FieldByName('PATHARCHIVO').AsString) + ', ' +
                  SqlValue(FIdEvento) + ',' +
                  SqlValue(Sesion.LoginName) + ', SysDate)');
    end;
    cdsArchivosAsociados.Next;
  end;
  sdqEventoSumario.Refresh;

  if aCloseForm then
    fpEventoSeguimiento.Close;
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.LimpiarCamposEvento;
begin
  fraTipoEvento.Codigo := '';
  edFechaEventoDesde.Date := 0;
  mObservacionesEvento.Text := '';
  edtArchivosAsociados.Text := '';
  edFechaEventoDesde.MaxDate := DBDate;
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.CargarDatosEvento(Campos : TFields);
begin
    fraTipoEvento.ExtraCondition := ' AND te_etapa like ''%S%'' AND (te_fechabaja IS NULL OR te_id = '+Campos.FieldByName('es_idtipoevento').asstring+')';
    fraTipoEvento.Codigo := Campos.FieldByName('es_idtipoevento').asstring;
    edFechaEventoDesde.Date :=  DateOf(Campos.FieldByName('es_fecha').AsDateTime);
    mObservacionesEvento.Text := Campos.FieldByName('es_observaciones').AsString;

    CargarArchivos;

    edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                                 ' Archivos Asociados.';
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.CargarArchivos;
var
 i : integer;
begin
  try
    sdqArchivosAsociados.ParamByName('IdEventoSumario').AsInteger := FIdEvento;
    sdqArchivosAsociados.Open;
    cdsArchivosAsociados.EmptyDataSet;
    while not sdqArchivosAsociados.Eof do
    begin
      cdsArchivosAsociados.Append;

      for i := 0 to sdqArchivosAsociados.Fields.count - 1 do
        cdsArchivosAsociados.fields[i].Value := sdqArchivosAsociados.Fields[i].Value;

      cdsArchivosAsociados.FieldByName('STATE').AsString := 'V';
      cdsArchivosAsociados.Post;
      sdqArchivosAsociados.Next;
    end;
  finally
   sdqArchivosAsociados.Close;
  end;
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.MostrarArchivosAsociados;
begin

  with TfrmArchivosAsociados.Create(self) do
  try
    CargarArchivosAsociadosSumarios(FIdSumario, FIdEvento, cdsArchivosAsociados);
    RecargarArchivosAsociados(cdsArchivosAsociados);
    edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                                 ' Archivos Asociados.';
  finally
    Free;
  end;
end;
{------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.RecargarArchivosAsociados(
  cdsArchivosAsociados: TClientDataSet);
begin
  cdsArchivosAsociados.First;
  while not cdsArchivosAsociados.Eof do
  begin
    if cdsArchivosAsociados.FieldByName('STATE').AsString = 'D' then
    begin
      EjecutarSqlST('UPDATE legales.lae_eventoarchivoasociado ' +
                  ' SET ae_usubaja = ' + SqlValue(Sesion.LoginName) + ', ' +
                  ' ae_fechabaja = SysDate' +
                  ' where ae_id = ' + SqlValue(cdsArchivosAsociados.FieldByName('ID').AsInteger));

      cdsArchivosAsociados.Delete;
    end
    else cdsArchivosAsociados.Next;
  end;
end;

{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.dbgEventosDictamenAcusatorioGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if not Field.DataSet.FieldByName('es_fechabaja').IsNull Then AFont.Color := clRed;
end;


procedure TfrmSeguimientoDictamenesAcusatorios.EstadoCargar(AIdSumario : Integer);
begin
  lblEstadoSeguimiento.Caption := ValorSql('SELECT nvl(ej_Descripcion, 0) ' +
                                           '  FROM legales.lej_estadojuicio lej, legales.les_eventosumario les ' +
                                           ' WHERE  les.es_idsumario = lej.ej_id ' +
                                           '   AND  les.es_id = (SELECT max(es_id) ' +
                                           '                     FROM  legales.les_eventosumario les ' +
                                           '                     WHERE les.es_idsumario = ' + SqlValue(AIdSumario) + ')','');
  if IsEmptyString(lblEstadoSeguimiento.Caption) then  lblEstadoSeguimiento.Caption := 'Sin Tramitar';
end;


{---------------------------------------------------------------------------------------------}
{---------------------------------------------------------------------------------------------}
procedure TfrmSeguimientoDictamenesAcusatorios.CargarWorkFlow;
begin
  if (pgDetalle.ActivePageIndex = 4) then
  begin
    pnAvisoEspera.Visible := true;
    if not dmLegales.dbWorkflow.Connected then
    begin
        try
          lblReferencia.Caption := 'Conectando a WorkFlow';
          Application.ProcessMessages;
          dmLegales.dbWorkflow.Open;
        except
          on E : Exception do begin
            MsgBox('No se pudo establecer conexi�n a la ' +
                          'base de dato de Requerimientos de SRT' + #13#10 + E.Message, MB_ICONERROR, '');
          end;
        end;
    end;

    if dmLegales.dbWorkflow.Connected then
    begin
      try
        try
            lblReferencia.Caption := 'Obteniendo Registros';
            Application.ProcessMessages;
            if (ValorSql('SELECT COUNT(*) FROM LEGALES.LAN_ANTECEDENTESUMARIO WHERE AN_IDSUMARIO = ' + SqlValue(FIdSumario))  = 0) then
                AgregarAntecedentes;
            CargarAntecedentes;
        except
          on E : Exception do begin
            MsgBox('Error al cargar los antecendentes ' + #13#10 + E.Message, MB_ICONERROR, '');
          end;
        end;
      finally
          pnAvisoEspera.Visible := false;
      end;
    end;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.edMultaJudicialChange(
  Sender: TObject);
begin
  if FModoCarga and (edFechaIncumplimiento.Date = 0) then
  begin
    edMopresJudicial.Text := InttoStr(Round(edMultaJudicial.Value / 80));
  end
  else
  begin
    Verificar(edFechaIncumplimiento.Date = 0, edFechaIncumplimiento, 'Debe especificar una fecha de incumplimiento.');
    edMopresJudicial.Text := InttoStr(Round(edMultaJudicial.Value /
                             ValorSql(' SELECT am_valorampo '+
                                      '   FROM art.cam_topeampos cam '+
                                      '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                                      '                        FROM art.cam_topeampos a '+
                                      '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))')));
  end;                           
  CalcularTotal;

  // Defino la reserva de capital en base a la multa
  edReservaCapital.Value := edMultaJudicial.Value;
  FMulta := edMultaJudicial.Value
end;

procedure TfrmSeguimientoDictamenesAcusatorios.CalcularTotal;
begin
  edTotal.Value := edMultaJudicial.Value +
                   edCostasJudicial.Value +
                   edGastosJudicial.Value +
                   edTasaJusticia.Value +
                   edMultaTJ.Value;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.edCostasJudicialChange(
  Sender: TObject);
begin
  CalcularTotal;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.edFechaIncumplimientoChange(
  Sender: TObject);
begin
  {Ticket 66768}
  RefreshValorMopres;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.edMopresEnter(
  Sender: TObject);
begin
  edMopres.Enabled := true;
  edMopres.Color := clWindow;
  edMopres.ReadOnly := false;

  edMultaSRT.ReadOnly := true;
  edMultaSRT.Color := clGradientInactiveCaption;
  edMultaSRT.OnChange := nil;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.edMopresChange(
  Sender: TObject);
var
  valorampo, mopre : Extended;
begin
  if FModoCarga and (edFechaIncumplimiento.Date = 0) then
  begin
    edMultaSRT.Value := Round(StrToInt(edMopres.Text) * 80);
  end
  else
  begin
    Verificar(edFechaIncumplimiento.Date = 0, edFechaIncumplimiento, 'Debe especificar una fecha de incumplimiento');
    valorampo := ValorSqlExtended(' SELECT am_valorampo '+
                                       '   FROM art.cam_topeampos cam '+
                                       '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                                       '                        FROM art.cam_topeampos a '+
                                       '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))');
    mopre :=  StrToInt(edMopres.Text);
    edMultaSRT.Value := SimpleRoundTo(mopre * valorampo ,-2);
  end;
  spbConfirmarMulta.Enabled := True;
  lblNotaAprobacion.Visible := True;

  {Ticket 66768}
  RefreshValorMopres;

end;

procedure TfrmSeguimientoDictamenesAcusatorios.edMultaSRTEnter(
  Sender: TObject);
begin
  edMultaSRT.Color := clWindow;
  edMultaSRT.ReadOnly := false;

  edMopres.Color := clGradientInactiveCaption;
  edMopres.ReadOnly := true;
  edMopres.OnChange := nil;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.AgregarAntecedentes;
begin
  try
      sdqPatronesBusqueda.ParamByName('idSumario').Value := FIdSumario;
      sdqPatronesBusqueda.Open;
      EjecutarSqlST('DELETE FROM LEGALES.LAN_ANTECEDENTESUMARIO WHERE AN_IDSUMARIO = ' + SqlValue(FIdSumario) + ' AND AN_FECHABAJA IS NULL ');
      while not sdqPatronesBusqueda.Eof do
      begin
        sdqAntecedentesWF.SQL.Clear;
        sdqAntecedentesWF.Params.Clear;
        sdqAntecedentesWF.SQL.Add(sdqPatronesBusqueda.fieldbyname('CA_CONSULTABUSQUEDA').AsString);
        if sdqAntecedentesWF.Params.Count > 0 then
          sdqAntecedentesWF.Params[0].AsString := '%'+ trim(sdqPatronesBusqueda.fieldbyname('PA_VALORBUSQUEDA').AsString) + '%';
        dsAntecedentes.Enabled := false;
        sdqAntecedentesWF.Open;

        while not sdqAntecedentesWF.Eof do
        begin

          if (ValorSql('SELECT COUNT(*) FROM LEGALES.LAN_ANTECEDENTESUMARIO WHERE AN_IDSUMARIO = ' + SqlValue(FIdSumario) +
                      ' AND AN_IDINSTANCIA = ' + SqlValue(sdqAntecedentesWF.FieldByName('InstanciaID').AsInteger) )  = 0) then
          begin

            EjecutarSqlST('INSERT INTO LEGALES.LAN_ANTECEDENTESUMARIO(AN_ID, AN_IDSUMARIO, AN_IDINSTANCIA, AN_USUALTA, AN_FECHAALTA)  ' +
            'VALUES (LEGALES.SEQ_LAN_ID.NEXTVAL,' + SqlValue(FIdSumario) + ',' + sdqAntecedentesWF.FieldByName('InstanciaID').AsString + ',' +
            SqlValue(Sesion.LoginName) + ',' + 'SYSDATE) ');
          end;
          Application.ProcessMessages;
          sdqAntecedentesWF.Next;
        end;
        sdqPatronesBusqueda.Next;
      end;
    finally
      sdqPatronesBusqueda.Close;
    end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.CargarAntecedentes;
var
  strBaja: string;
begin
  try
    dsAntecedentes.Enabled := true;
    sdqAntecedentes.ParamByName('IDSUMARIO').AsInteger := FIdSumario;
    sdqAntecedentes.Open;
    if not sdqAntecedentes.Eof then
    begin
      sdqAntecedentesWF.SQL.Clear;
      sdqAntecedentesWF.Params.Clear;
      while not sdqAntecedentes.Eof do
      begin
        if sdqAntecedentes.fieldbyname('AN_FECHABAJA').IsNull then strBaja := 'N'
        else strBaja := 'S';
        if ((strBaja = 'S') and btnVerEliminados.Down) or (strBaja = 'N') then
        begin
          if sdqAntecedentesWF.SQL.Count > 0 then sdqAntecedentesWF.SQL.Add('union');
          sdqAntecedentesWF.SQL.Add('select *, ''' + strBaja + ''' as baja from  fn_RequerimientoInstanciaSRT(' +
                                     sdqAntecedentes.fieldbyname('AN_IDINSTANCIA').AsString + ')');
        end;
        Application.ProcessMessages;
        sdqAntecedentes.Next;
      end;
      if sdqAntecedentesWF.SQL.Count > 0 then
        sdqAntecedentesWF.Open;
    end;
  finally
    sdqAntecedentes.Close;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbPatronesBusquedaClick(
  Sender: TObject);
begin
  with TfrmAbmPatronesBusqueda.Create(self) do
  try
    MostrarPatronesBusqueda(FIdSumario);
  finally
    free;
  end;

end;

procedure TfrmSeguimientoDictamenesAcusatorios.RefrescarAntecedentes;
begin
    try
      try
          pnAvisoEspera.Visible := true;
          AgregarAntecedentes;
          CargarAntecedentes;
      except
        on E : Exception do begin
          MsgBox('Error al cargar los antecendentes ' + #13#10 + E.Message, MB_ICONERROR, '');
        end;
      end;
    finally
        pnAvisoEspera.Visible := false;
    end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.RefreshValorMopres;
begin
  {Ticket 66768}
  if( edFechaIncumplimiento.Date > 0) then
    edValorMopres.Text := ValorSql(' SELECT am_valorampo ' +
                                       '   FROM art.cam_topeampos cam '+
                                       '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                                       '                        FROM art.cam_topeampos a '+
                                       '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))');


end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbRefrescarAntecedentesClick(
  Sender: TObject);
begin
  RefrescarAntecedentes;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.btnEliminarAntecedenteClick(
  Sender: TObject);
begin
  if (not sdqAntecedentesWF.IsEmpty) and
//      sdqAntecedentesWF.FieldByName('an_fechabaja').IsNull and
      (MsgBox('�Desea dar de baja el antecedente seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then
  begin
    EjecutarSqlST(' update LEGALES.LAN_ANTECEDENTESUMARIO ' +
                  ' set an_fechabaja = sysdate, an_usubaja = ' + SqlValue(Sesion.LoginName) +
                  ' where an_idinstancia = ' + sdqAntecedentesWF.FieldByName('InstanciaID').AsString +
                  ' and an_idsumario = ' + SqlValue(FIdSumario));
    RefrescarAntecedentes;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.fraDatosJuzgadoAsignadobtnInstanciasAnterioresClick(
  Sender: TObject);
begin
  fraDatosJuzgadoAsignado.btnInstanciasAnterioresClick(Sender);

end;

procedure TfrmSeguimientoDictamenesAcusatorios.dbgAntecedentesGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if btnVerEliminados.Down and (sdqAntecedentesWF.RecordCount > 0) and (Field.DataSet.FieldByName('baja').AsString = 'S') Then AFont.Color := clRed;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.btnVerEliminadosClick(
  Sender: TObject);
begin
  CargarAntecedentes;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.btnReactivarEliminadoClick(
  Sender: TObject);
begin
  if (sdqAntecedentesWF.FieldByName('baja').AsString = 'S') and
      (MsgBox('�Desea reactivar el antecedente seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then
  begin
    EjecutarSqlST(' update LEGALES.LAN_ANTECEDENTESUMARIO ' +
                  ' set an_fechabaja = null, an_usubaja = null,' +
                  ' an_fechamodif = sysdate, an_usumodif = ' + SqlValue(Sesion.LoginName) +
                  ' where an_idinstancia = ' + sdqAntecedentesWF.FieldByName('InstanciaID').AsString +
                  ' and an_idsumario = ' + SqlValue(FIdSumario));
    CargarAntecedentes;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.btnVerAntecedenteClick(
  Sender: TObject);
begin
  if not sdqAntecedentesWF.IsEmpty then
    MostrarAntecedentes;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.MostrarAntecedentes;
begin
  with TfrmVerAntecedente.Create(self) do
  begin
    try
      CargarAntecedente(sdqAntecedentesWF.Fields);
    finally
      Free;
    end;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.fraEstudioJuridicoChange(
  Sender: TObject);
begin
  fraAbogadosPropios.Codigo := '';
  if fraEstudioJuridico.IsSelected then
  begin
    fraAbogadosPropios.Parte := paPropia;
    fraAbogadosPropios.ExtraCondition := fraAbogadosPropios.ExtraCondition + ' AND BO_IDESTUDIOJURIDICO = ' + fraEstudioJuridico.Codigo;
  end
  else
    fraAbogadosPropios.ExtraCondition := ' AND 1=2 ';
end;

function TfrmSeguimientoDictamenesAcusatorios.CargarEstudioJuridico(
  IdAbogado: string): string;
var
 Q : TSDQuery;
begin
  if trim(IdAbogado) <> '' then
  begin
    Q := GetQuery('select BO_IDESTUDIOJURIDICO from LEGALES.LBO_ABOGADO where bo_id = ' + trim(IdAbogado));
    try
     if Q.RecordCount > 0 then
     begin
        result := Q.fieldbyname('BO_IDESTUDIOJURIDICO').AsString;
     end;
    finally
      Q.Free;
    end;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbAprobarReservasClick(
  Sender: TObject);
begin
  if not FReservasAprobadas then
  begin
   if (MessageDlg('�Confirma la aprobaci�n de las reservas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
   begin
      EjecutarSqlST('update legales.lsu_sumario                     '                     +
                    '   set SU_FECHAAPROBACIONRESERVAS   = ActualDate,'                   +
                    '       SU_FECHAAVISORESERVA = NULL, '                                +
                    '       SU_USUARIOAPROBACIONRESERVAS = ' + SqlValue(Sesion.LoginName) +
                    ' where SU_ID = ' + SqlValue(FIdSumario), tmNone);
//      edFechaReserva.Date := DBDate;
   end;
  end else InvalidHint(edReservaCapital,'Las reservas ya se encuentran aprobadas.', 'Aprobaci�n de Reservas');
end;


procedure TfrmSeguimientoDictamenesAcusatorios.tbRecalcularReservasClick(
  Sender: TObject);
begin
    CalcularReservas;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.CalcularReservas;
var
  Formulas : TFormulasReserva;
  IteracionCalculo : integer;
begin
  with dmLegales do
  begin
    sdqCalculoReservaSumario.Close;
    sdqCalculoReservaSumario.ParamByName('IdSumario').AsInteger := FIdSumario;
    sdqCalculoReservaSumario.Open;
    try
      // Se hace en dos pasadas para calcular primero la reserva de capital
      // y luego la reserva de honorarios.
      for IteracionCalculo := CALCULANDORESERVADECAPITAL to CALCULANDORESERVADEHONORARIOS do
      begin
        sdqCalculoReservaSumario.First;
        while not sdqCalculoReservaSumario.Eof do
        begin
          Formulas := GetFormula(sdqCalculoReservaSumario.FieldByName('rs_idnorma').AsInteger,
                                 sdqCalculoReservaSumario.FieldByName('rs_articulo').AsInteger,
                                 sdqCalculoReservaSumario.FieldByName('rs_inciso').AsString,
                                 sdqCalculoReservaSumario.FieldByName('rs_anexo').AsString,
                                 sdqCalculoReservaSumario.FieldByName('rs_apartado').AsString
                                );
          case IteracionCalculo of
            CALCULANDORESERVADECAPITAL   : AplicarFormula(trCapitalSumario, Formulas.FormulaReservaCapital, sdqCalculoReservaSumario.Fields);
            CALCULANDORESERVADEHONORARIOS: AplicarFormula(trHonorariosSumario, Formulas.FormulaReservaHonorarios, sdqCalculoReservaSumario.Fields);
          end;
          sdqCalculoReservaSumario.Next;
        end;
      end;
    finally
      sdqCalculoReservaSumario.Close;
      //GetImporteReservasCalculadas;
    end;
  end;
end;

function TfrmSeguimientoDictamenesAcusatorios.GetFormula(AIdNorma: integer; articulo: integer;
  inciso: string; anexo:string; apartado:string): TFormulasReserva;
var
 sdqFormula : TSDQuery;
 sSql : string;
 sSqlYNorma : string;
 sSqlYArticulo : string;
 sSqlYInciso : string;
 sSqlYAnexo : string;
 sSqlYApartado : string;
begin
  sSqlYNorma := '';
  sSqlYArticulo := '';
  sSqlYInciso := '';
  sSqlYAnexo := '';
  sSqlYApartado := '';

  sSql := 'SELECT lfr.fr_id, lfr.fr_descripcion, lfr.fr_fechavigencia, lfr.fr_formulareservacapital, lfr.fr_formulareservahonorario, ' +
          '       lfs.fs_idnorma, lfs.fs_articulo, lfs.fs_inciso, lfs.fs_apartado, lfs.fs_anexo, ' +
          '       lfr.fr_fechavigenciahasta FROM legales.lfr_formulareserva lfr, LEGALES.LFS_FORMULARESERVASUMARIO lfs' +
          ' WHERE  (lfr.fr_fechavigenciahasta >= SYSDATE OR lfr.fr_fechavigenciahasta IS NULL)' +
          '  AND  lfr.fr_id = lfs.fs_idformulareserva ' +
          '  AND  lfr.fr_fechavigencia <= SYSDATE ';

  if AIdNorma > 0 then
    sSqlYNorma    := '  AND lfs.fs_idnorma =  '  + SqlValue(AIdNorma);

  if articulo > 0 then
    sSqlYArticulo := '  AND lfs.fs_articulo =  '  + SqlValue(articulo)
  else
    sSqlYArticulo := '  AND lfs.fs_articulo IS  NULL ';

  if trim(inciso) <> '' then
    sSqlYInciso   := '  AND lfs.fs_inciso =  '  + SqlValue(inciso)
  else
    sSqlYInciso   := '  AND lfs.fs_inciso IS NULL ';

  if trim(anexo) <> '' then
    sSqlYAnexo    := '  AND lfs.fs_anexo =  '  + SqlValue(anexo)
  else
    sSqlYAnexo    := '  AND lfs.fs_anexo IS NULL ';

  if trim(apartado) <> '' then
    sSqlYApartado := '  AND lfs.fs_apartado =  '  + SqlValue(apartado)
  else
    sSqlYApartado := '  AND lfs.fs_apartado IS NULL ';

  sdqFormula := GetQuery(sSql + sSqlYNorma + sSqlYArticulo + sSqlYInciso + sSqlYAnexo + sSqlYApartado);

  try
    if sdqFormula.RecordCount > 0 then
    begin
      result.FormulaReservaCapital := sdqFormula.FieldByName('fr_formulareservacapital').AsString;
      result.FormulaReservaHonorarios := sdqFormula.FieldByName('fr_formulareservahonorario').AsString;
    end else
    begin
      result.FormulaReservaCapital := '';
      result.FormulaReservaHonorarios := '';
    end;
  finally
    sdqFormula.free;
  end;

end;

{procedure TfrmSeguimientoDictamenesAcusatorios.GetImporteReservasCalculadas;
var
 Q : TSDQuery;
begin
  Q := GetQuery('select SU_RESERVAHONORARIOCALCULADA, SU_RESERVACAPITALCALCULADA from legales.lsu_sumario where su_id = ' + SqlValue(FIdSumario));
  try
    if Q.RecordCount > 0 then
    begin
      edReservaCapitalCalculado.Value := Q.FieldByName('SU_RESERVACAPITALCALCULADA').AsCurrency;
      edReservaHonorariosCalculado.Value := Q.FieldByName('SU_RESERVAHONORARIOCALCULADA').AsCurrency;
    end;
  finally
    Q.Free;
  end;
end;
}
(*
procedure TfrmSeguimientoDictamenesAcusatorios.LockControls(AControls: array of TControl; ALocked: boolean = True);
var
  i: integer;
begin
  for i := Low(AControls) to High(AControls) do  AControls[i].Enabled := Not ALocked;
end;
*)
procedure TfrmSeguimientoDictamenesAcusatorios.tbCopiarCalculoClick(
  Sender: TObject);
begin
  if not FReservasAprobadas then
  begin
    //CopiarValoresReservas;
  end else
  begin
    if (MessageDlg('Con esta operaci�n se obliga a reaprobar la reserva para este juicio.'+ #13+ #10+
                   '�Confirma la copia de las reservas calculadas?',
                   mtConfirmation, [mbYes, mbNo], 0) in [mrYes]) then
    begin
      DesaprobarReservas;
      //CopiarValoresReservas;
    end;
  end;

end;

{procedure TfrmSeguimientoDictamenesAcusatorios.CopiarValoresReservas;
begin
  edReservaCapital.Value := edReservaCapitalCalculado.value;
  edReservaHonorarios.Value := edReservaHonorariosCalculado.Value;
end;
}
procedure TfrmSeguimientoDictamenesAcusatorios.DesaprobarReservas;
begin
  EjecutarSqlST('UPDATE legales.lsu_sumario ' +
                '   SET su_fechaaprobacionreservas   = NULL,' +
                '       su_fechaavisoreserva         = NULL,' +
                '       su_usuarioaprobacionreservas = NULL' +
                ' WHERE su_id = ' + SqlValue(FIdSumario), tmNone);
  //edFechaReserva.Clear;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.ceReservaCapitalChange(
  Sender: TObject);
begin
  DesaprobarReservas;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbHistoricoReservasClick(
  Sender: TObject);
begin
  TfrmHistoricoReservasSumarios.MostrarHistorico(FIdSumario);
end;

procedure TfrmSeguimientoDictamenesAcusatorios.GuardarCambioReserva;
begin
  EjecutarStoreST('art.Legales.Set_CambioReservaSumario( ' +
               SqlInteger(FIdSumario) +  ', ' +
               SqlNumber(edReservaCapital.Value, true) +  ', ' +
               SqlNumber(edReservaHonorarios.Value, true) +  ', ' +
               'null, ' +
               'null, ' +
               SqlValue(FReservasAprobadas) +  ', ' +
               SqlString(Sesion.LoginName, true) +  '); ');
end;


procedure TfrmSeguimientoDictamenesAcusatorios.fraEstadoChange(
  Sender: TObject);
begin
//
end;

procedure TfrmSeguimientoDictamenesAcusatorios.GuardarCambioEstado;
begin
  if (FModo <> meAlta) then
    EjecutarStoreST('art.Legales.Set_CambioEstadoSumario( ' +
                 SqlInteger(FIdSumario) +  ', ' +
                 SqlInteger(fraEstado.Codigo) +  ', ' +
                 SqlDate(DBDateTime) +  ', ' +
                 SqlValue(Sesion.LoginName) +  '); ');
end;

{procedure TfrmSeguimientoDictamenesAcusatorios.fraTipoCostasChange(
  Sender: TObject);
begin
  if (fraTipoCostas.Codigo = TIPO_COSTAS_EN_CONTRA) then
  begin
    FHonorariosOponentes := True;
//    edHonorarioAbogadoOponente.ReadOnly := False;
//    edHonorarioAbogadoOponente.Color := clWindow;
  end else
  begin
    // verificar que no existan importes de sentencia asociados
    VerificarMultiple(['Seleccionando Tipo de Costas',
                       fraTipoCostas,
                       edHonorarioAbogadoOponente.Value = 0,
                       'Tipo de Costas inv�lido. Existen Hon. a Abogados Oponentes cargados.'
                      ]);
    FHonorariosOponentes := False

//    edHonorarioAbogadoOponente.ReadOnly := true;
//    edHonorarioAbogadoOponente.Color := clGradientInactiveCaption;
//    edHonorarioAbogadoOponente.Clear;
  end;

end;}

procedure TfrmSeguimientoDictamenesAcusatorios.tbSumatoriaClick(
  Sender: TObject);
var
  Sumatoria : string;
begin
  Sumatoria := ValorSql('SELECT SUM(CASE WHEN LSU.su_multasentecia is null then LSU.su_multasrt ' +
      ' WHEN LSU.su_multasrt is null then LSU.su_multasentecia ' +
      ' WHEN LSU.su_multasentecia < LSU.su_multasrt then LSU.su_multasentecia ' +
      ' ELSE LSU.su_multasrt ' +
      ' END) ' +
      ' FROM LEGALES.LSU_SUMARIO LSU ' +
      ' WHERE (SU_FECHAFIN IS NULL) AND ((lsu.SU_IDTIPORESULTADOSENTENCIA <> 1) or (lsu.SU_IDTIPORESULTADOSENTENCIA is null)) ', '0') ;
  MsgBox('Total: ' + Sumatoria, MB_ICONINFORMATION, 'Sumatoria');
end;

function TfrmSeguimientoDictamenesAcusatorios.ConsultaDictamen(
  Tabla: TSDQuery): boolean;
begin
//  BeginTrans(True);

  FModo := meModificacion;
  FIdSumario := Tabla.FieldByName('SU_ID').AsInteger;
  LimpiarCampos;

  Inicializar;
  CargarDatos(Tabla);

  tbGuardar.Enabled := false;

  result := showmodal = mrOK;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbFijarSenteciaClick(
  Sender: TObject);
var
  Q : TSDQuery;
begin
  if not (FModoCarga and (edFechaIncumplimiento.Date = 0)) then
    Verificar(edFechaIncumplimiento.Date = 0, edFechaIncumplimiento,'Debe especificar una fecha de incumplimiento.');
  with TfrmFijarImportesSentSumario.Create(Self) do
  begin
    try
      FijarSentencia(FIdSumario, FHonorariosOponentes);

      // Recargo el valor de la sentencia
      edMultaJudicial.Clear;
      edCostasJudicial.Clear;
      edGastosJudicial.Clear;
      edTasaJusticia.Clear;
      edMultaTJ.Clear;

      Q := GetQuery('SELECT   is_aplicacion, ' +
                    '         SUM (NVL (is_importe, 0) + NVL (is_importesinret, 0)) total ' +
                    '    FROM legales.lis_importesentenciasumario iss ' +
                    '   WHERE iss.is_idsumario =  ' + SqlValue(FIdSumario) +
                    '     AND iss.is_fechabaja IS NULL ' +
                    'GROUP BY is_idsumario, is_aplicacion ');

      try
        with Q do
        begin
          Refresh;
          First;

          while not EoF do
          begin
            case Char(FieldByName('is_aplicacion').AsString[1]) of
              'M': edMultaJudicial.Value            := FieldByName('Total').AsCurrency;
             // 'H': edHonorarioAbogadoPropio.Value   := FieldByName('Total').AsCurrency;
             // 'O': edHonorarioAbogadoOponente.Value := FieldByName('Total').AsCurrency;
              'C': edCostasJudicial.Value           := FieldByName('Total').AsCurrency;
              'G': edGastosJudicial.Value           := FieldByName('Total').AsCurrency;
              'T': edTasaJusticia.Value             := FieldByName('Total').AsCurrency;
              'U': edMultaTJ.Value                  := FieldByName('Total').AsCurrency;
              else
                raise Exception.Create('Concepto no valido.');;
            end;

            Next
          end
        end;

        if FModoCarga and (edFechaIncumplimiento.Date = 0) then
        begin
          edMopresJudicial.Text := InttoStr(Round(edMultaJudicial.Value / 80));
        end
        else
        begin
          edMopresJudicial.Text := IntToStr(Round(edMultaJudicial.Value /
                                   ValorSql(' SELECT am_valorampo '+
                                            '   FROM art.cam_topeampos cam '+
                                            '  WHERE am_periodo = (SELECT MAX(a.am_periodo) '+
                                            '                        FROM art.cam_topeampos a '+
                                            '                       WHERE a.am_periodo <= TO_CHAR('+SqlValue(edFechaIncumplimiento.Date)+', ''YYYYMM''))')));
        end;
        FMulta                := edMultaJudicial.Value;
        CalcularTotal
      finally
        Q.Free;
      end;
    finally
      free;
    end;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbImprimirConceptoClick(
  Sender: TObject);
begin
  CargarFinancialsDatosPago
end;

procedure TfrmSeguimientoDictamenesAcusatorios.sdqPagoSumarioAfterScroll(
  DataSet: TDataSet);
begin
  tbImprimirPagos.Enabled := (sdqPagoSumario.FieldByName('PS_ESTADO').AsString = 'C')
end;

procedure TfrmSeguimientoDictamenesAcusatorios.spbConfirmarMultaClick(
  Sender: TObject);
var
  sSqlTrans : TSql;
  FTasaAnterior, FTasaCalc: Double;
begin
  // Creo registro para la TJ si no existe o es <> a la ya calculada

  if (edTasaJusticia.Value = 0) or
     ((edTasaJusticia.Value <> 0) and (numeros.CompareFloat(edTasaJusticia.Value,(edMultaSRT.Value * 15/1000)) <> 0)) then
  begin
    FTasaAnterior := edTasaJusticia.Value;
    FTasaCalc := ValorSql('SELECT TRUNC('+SqlValue(edMultaSRT.Value * 15/1000)+',2) FROM DUAL');

    // Inserto en legales.lis_importesentenciasumario
    IF FTasaAnterior <> FTasaCalc then
    begin
      sSqlTrans := TSql.Create('legales.lis_importesentenciasumario');
      try
        sSqlTrans.SqlType := stInsert;
        sSqlTrans.Fields.AddInteger ('is_id',               GetSecNextVal('legales.seq_lis_id'));
        sSqlTrans.Fields.AddInteger ('is_idsumario',        FIdSumario);
        sSqlTrans.Fields.Add        ('is_importesinret',    FTasaCalc - FTasaAnterior);
        sSqlTrans.Fields.Add        ('is_importesentencia', FTasaCalc - FTasaAnterior);
        sSqlTrans.Fields.AddString  ('is_detalle',          'Tasa de Justicia', true);
        sSqlTrans.Fields.AddString  ('is_aplicacion',       'T', true);
        sSqlTrans.Fields.AddString  ('is_usualta',          Sesion.LoginName);
        sSqlTrans.Fields.AddDateTime('is_fechaalta',        DBDateTime);

        EjecutarSQLST(sSqlTrans.Sql, tmNone);
      finally
        sSqlTrans.Free
      end
    end;
    edTasaJusticia.Value := FTasaCalc;
  end;

  spbConfirmarMulta.Enabled := False;
  lblNotaAprobacion.Visible := False;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.ChangefraArts(
  Sender: TObject);
begin
//  if (fraArts.Value = CODIGO_ART_PROVINCIA) then
//    cbResponsabilidadProvart.Checked := false;

//  cbResponsabilidadProvart.Enabled := (fraArts.Value <> CODIGO_ART_PROVINCIA);
end;

procedure TfrmSeguimientoDictamenesAcusatorios.cbReservaCapitalClick(
  Sender: TObject);
begin
  if cbReservaCapital.Checked then
    vclextra.LockControl(edReservaCapital, false)
  else
  begin
    vclextra.LockControl(edReservaCapital, true);
    edReservaCapital.Text := ValorSql(
      ' SELECT art.legales.get_reservacapitalsumario ('+SqlValue(FIdSumario)+')'+
      '   FROM DUAL ');
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbCalcularReservaClick(
  Sender: TObject);
begin
  if not cbReservaCapital.Checked then
    edReservaCapital.Text := ValorSql(
      ' SELECT art.legales.get_reservacapitalsumario ('+SqlValue(FIdSumario)+')'+
      '   FROM DUAL ');
  if not cbReservaHonorarios.Checked then
    edReservaHonorarios.Text := ValorSql(
      ' SELECT art.legales.get_reservahonorariosumario ('+SqlValue(FIdSumario)+')'+
      '   FROM DUAL ');
end;

procedure TfrmSeguimientoDictamenesAcusatorios.cbReservaHonorariosClick(
  Sender: TObject);
begin
  if cbReservaHonorarios.Checked then
    vclextra.LockControl(edReservaHonorarios, false)
  else
  begin
    vclextra.LockControl(edReservaHonorarios, true);
    edReservaHonorarios.Text := ValorSql(
      ' SELECT art.legales.get_reservahonorariosumario ('+SqlValue(FIdSumario)+')'+
      '   FROM DUAL ');
  end;
end;

(*
Autorizaci�n

  if (not sdqPagoSumario.IsEmpty) and
     (MessageDlg('�Confirma la Aprobaci�n del Pago Seleccionado?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if sdqPagoSumario.FieldByName('PL_ESTADO').AsString = 'C' then
      EjecutarSqlST('update legales.lpl_pagolegal ' +
                    ' set PL_USUARIOAPROBADO = ' + SqlValue(Sesion.LoginName) + ', ' +
                    '     PL_FECHAAPROBADO   = SysDate' +
                    '     PL_ESTADO = ''E'' ' +
                    ' where pl_id = ' + SqlValue(sdqPagoSumario.FieldByName('PL_ID').AsInteger)
                    , tmNone);
  end;
*)

procedure TfrmSeguimientoDictamenesAcusatorios.edMultaSRTExit(
  Sender: TObject);
begin
  edMopres.OnChange := edMopresChange;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.edMopresExit(
  Sender: TObject);
begin
  edMultaSRT.OnChange := edMultaSRTChange;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.dbgPagosEfectuadosGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
  if (Field.DataSet.FieldByName('ps_duplicado').AsString = 'S') then
    Background := clGreen;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbAprobacionConceptosDuplicadosClick(
  Sender: TObject);
begin
  Verificar(not((sdqPagoSumario.FieldByName('PS_DUPLICADO').AsString = 'S') and
                sdqPagoSumario.FieldByName('ps_estadoduplicidad').IsNull),tbAprobacionConceptosDuplicados,
            'Debe ser Duplicado y no estar rechazado o aprobado.');

  cbAprobadoConDup.Checked := False;
  cbRechazadoConDup.Checked := False;
  edMotivo.Clear;
  pnAprobacionConDup.ShowModal;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.cbAprobadoConDupClick(
  Sender: TObject);
begin
  if cbRechazadoConDup.Checked and cbAprobadoConDup.Checked then
    cbRechazadoConDup.Checked := False;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.cbRechazadoConDupClick(
  Sender: TObject);
begin
  if cbAprobadoConDup.Checked and cbRechazadoConDup.Checked then
    cbAprobadoConDup.Checked := False;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.btnAceptarAprobConDupClick(
  Sender: TObject);
var
  sSql : String;
  estado : String;
begin
  Verificar(not cbAprobadoConDup.Checked and not cbRechazadoConDup.Checked, gbAprobacion,'Se debe seleccionar si es Rechazado o Aprobado.');
  Verificar(edMotivo.Text = '', edMotivo, 'Debe ingresar un motivo.');

  if cbAprobadoConDup.Checked then
    estado := ' ps_estadoduplicidad = ''A'' '
  else if cbRechazadoConDup.Checked then
    estado := ' ps_estadoduplicidad = ''R'', ps_estado = ''X'' ';

  sSql := ' UPDATE legales.lps_pagosumario '+
          '    SET ps_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
          '        ps_fechaaprobacion = sysdate, '+
          '        ps_usuaprobacion = '+SqlValue(Sesion.LoginName)+','+estado+
          '  WHERE ps_id = '+sdqPagoSumario.FieldByName('ps_id').AsString;
  EjecutarSqlST(ssql);
  pnAprobacionConDup.ModalResult := mrOk;
  sdqPagoSumario.Refresh;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbHistoricoEstadosClick(
  Sender: TObject);
begin
  with TfrmHistoricoEstadoSumario.Create(nil) do
  try
    MostrarHistorico(FIdSumario);
    //tbRefrescar.Visible := False;
    Visible := false;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbGenerarArchivoClick(
  Sender: TObject);
begin
  if FModoEventosSeguimientos = meAlta then
  begin
    GuardarEvento(false);
    FModoEventosSeguimientos := meModificacion;
    sdqEventoSumario.Refresh;
    sdqEventoSumario.Locate('es_id', FIdEvento, []);
  end;
  edTextoDocumento.Clear;
  edTextoDocumento.Lines.Add(ValorSql('SELECT ES_TEXTODOCUMENTO ' +
           '  FROM legales.LES_EVENTOSUMARIO ' +
           ' WHERE es_id = ' + SqlValue(FIdEvento)));
  pnGenerarDocumento.ShowModal;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.btnAceptarGenerarDocumentoClick(
  Sender: TObject);
begin
  pnGenerarDocumento.ModalResult := mrOk;

  with TRptEventoImpresoSumario.Create(nil) do
  try
    CargarTexto(edTextoDocumento);
    //tbRefrescar.Visible := False;
  finally
    Free;
  end;
  SaveBlob('SELECT ES_TEXTODOCUMENTO ' +
           '  FROM legales.LES_EVENTOSUMARIO ' +
           ' WHERE es_id = ' + SqlValue(FIdEvento),
           'UPDATE legales.LES_EVENTOSUMARIO' +
           '   SET ES_TEXTODOCUMENTO = :ES_TEXTODOCUMENTO ' +
           ' WHERE es_id = ' + SqlValue(FIdEvento),
           'ES_TEXTODOCUMENTO', edTextoDocumento.Lines);
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbVerImagenesClick(Sender: TObject);
var
  RARId: TTableId;
  sClave: String;
begin
  Verificar(IsEmptyString(edNroDictamen.Text) or (edNroDictamen.Text = '0'), nil, 'Debe haber un sumario seleccionado.');

  sClave := GetClaveArmada(1, edNroDictamen.Text, '', '', '');
  Verificar(not VerificarClaveExiste(ID_CARPETA_SUMARIOS, sClave, RARId), nil, 'La carpeta no existe.');

  TFrmDetalleArchivo.MostrarDetalleArchivo(Self, RARId, True);
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbNuevoJuicioRelacionadoClick(
  Sender: TObject);
begin
  fraJuicioRelacionado.Clear;
  if (fpJuicioRelacionado.ShowModal = mrOk) then
  begin
    Verificar(not fraJuicioRelacionado.IsSelected, fraJuicioRelacionado, 'Debe seleccionar un juicio.');
    Verificar(ExisteSqlEx('SELECT 1 FROM legales.ljr_juiciorelacionado WHERE jt_idjuicioentramite = :idjuicio AND jr_idsumario = :idsumario', [fraJuicioRelacionado.Value, FIdSumario]),
              fraJuicioRelacionado, 'Este juicio ya fue relacionado en este sumario');
    EjecutarSqlSTEx(' INSERT INTO legales.ljr_juiciorelacionado(jr_id, jr_idsumario, jt_idjuicioentramite, ' +
                    '        jt_fechaalta, jt_usualta) ' +
                    ' VALUES(legales.seq_ljr_id.nextval, :idsumario, :idjuicio, SYSDATE, :usuario)', [FIdSumario, fraJuicioRelacionado.Value, Sesion.LoginName]);
    sdqJuiciosRelacionados.Refresh;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbEditarJuicioRelacionadoClick(
  Sender: TObject);
begin
  if not sdqJuiciosRelacionados.IsEmpty then
  begin
    fraJuicioRelacionado.Value := sdqJuiciosRelacionados.fieldbyname('jt_id').AsInteger;
    if (fpJuicioRelacionado.ShowModal = mrOk) then
    begin
      EjecutarSqlSTEx(' UPDATE legales.ljr_juiciorelacionado ' +
                      ' SET jt_idjuicioentramite = :idjuicio, ' +
                      '     jt_fechabaja = NULL, ' +
                      '     jt_usubaja = NULL, ' +
                      '     jt_fechamodif = SYSDATE, ' +
                      '     jt_usumodif = :usumodif ' +
                      ' WHERE jr_id = :id ', [fraJuicioRelacionado.Value, Sesion.LoginName, sdqJuiciosRelacionados.fieldbyname('jr_id').AsInteger]);
      sdqJuiciosRelacionados.Refresh;
    end;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbEliminarJuicioRelacionadoClick(
  Sender: TObject);
begin
  if not sdqJuiciosRelacionados.IsEmpty then
  begin
    EjecutarSqlSTEx(' UPDATE legales.ljr_juiciorelacionado ' +
                    ' SET jt_usubaja = :usuario, ' +
                    '     jt_fechabaja = SYSDATE ' +
                    ' WHERE jr_id = :id ', [Sesion.LoginName, sdqJuiciosRelacionados.fieldbyname('jr_id').AsInteger]);
    sdqJuiciosRelacionados.Refresh;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbModificarIncumplimientoEspecificoClick(
  Sender: TObject);
begin
  fraIncumplimiento.ExtraCondition := ' AND TI_AREA = '+ SqlValue(fraAreas.Codigo);
  if not sdqIncumplimientoEspecifico.IsEmpty then
  begin
    fraIncumplimiento.Value := sdqJuiciosRelacionados.fieldbyname('IE_IDTIPOINCUMPLIMIENTO').AsInteger;
    if (fpIncumplimientoEspecifico.ShowModal = mrOk) then
    begin
      EjecutarSqlSTEx(' UPDATE legales.LIE_INCUMPLIMIENTOESPECIFICO ' +
                      ' SET IE_IDTIPOINCUMPLIMIENTO = :idincumplimiento, ' +
                      '     IE_fechabaja = NULL, ' +
                      '     IE_usubaja = NULL, ' +
                      '     IE_fechamodif = SYSDATE, ' +
                      '     IE_usumodif = :usumodif ' +
                      ' WHERE IE_id = :id ', [fraIncumplimiento.Value, Sesion.LoginName, sdqIncumplimientoEspecifico.fieldbyname('IE_id').AsInteger]);
      sdqIncumplimientoEspecifico.Refresh;
    end;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbBajaIncumplimientoEspecificoClick(
  Sender: TObject);
begin
  if not sdqIncumplimientoEspecifico.IsEmpty then
  begin
    EjecutarSqlSTEx(' UPDATE legales.LIE_INCUMPLIMIENTOESPECIFICO ' +
                    ' SET IE_usubaja = :usuario, ' +
                    '     IE_fechabaja = SYSDATE ' +
                    ' WHERE IE_id = :id ', [Sesion.LoginName, sdqIncumplimientoEspecifico.fieldbyname('IE_id').AsInteger]);
    sdqIncumplimientoEspecifico.Refresh;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbNuevoIncumplimientoEspecificoClick(
  Sender: TObject);
begin
  fraIncumplimiento.Clear;
  fraIncumplimiento.ExtraCondition := ' AND TI_AREA = '+ SqlValue(fraAreas.Codigo);
  if (fpIncumplimientoEspecifico.ShowModal = mrOk) then
  begin
    Verificar(not fraIncumplimiento.IsSelected, fraIncumplimiento, 'Debe seleccionar un Incumplimiento.');
    EjecutarSqlSTEx(' INSERT INTO legales.lie_incumplimientoespecifico(IE_ID, IE_IDSUMARIO, IE_IDTIPOINCUMPLIMIENTO, ' +
                    '        IE_fechaALTA, IE_USUALTA) ' +
                    ' VALUES(LEGALES.SEQ_LIE_ID.nextval, :idsumario, :idincumplimiento, SYSDATE, :usuario)', [FIdSumario, fraIncumplimiento.Value, Sesion.LoginName]);
    sdqIncumplimientoEspecifico.Refresh;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.dbgIncumplimientoEspecificoGetCellParams(
  Sender: TObject; Field: TField; AFont: TFont; var Background: TColor;
  Highlight: Boolean);
begin
    if not Field.DataSet.FieldByName('ie_fechabaja').IsNull Then    AFont.Color := clRed;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.tbAsociarDocClick(
  Sender: TObject);
begin
  with TfrmArchivosAsociados.Create(self) do
  try
    CargarDirectoArchivosAsociadosSumarios(FIdSumario, FIdEvento, cdsArchivosAsociados);
    RecargarArchivosAsociados(cdsArchivosAsociados);
    edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                                 ' Archivos Asociados.';
  finally
    Free;
  end;
end;

procedure TfrmSeguimientoDictamenesAcusatorios.SumatoriaImportes;
begin
  lbSumatoria.Caption := 'Total Pagado : $'+ValorSql(
    ' SELECT TO_CHAR((SELECT SUM(NVL(PS_IMPORTEPAGO, 0)) + SUM(NVL(ps_importeconretencion, 0)) '+
                     '  FROM legales.lps_pagosumario '+
                     ' WHERE PS_IDSUMARIO = '+SqlValue(FIdSumario)+
                     '   AND PS_ESTADO NOT IN(''A'') )'+
           ' , ''9G999G999G999G999D99'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '') '+
    '   FROM DUAL ');
end;

end.



