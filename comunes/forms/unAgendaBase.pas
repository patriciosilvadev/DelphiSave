unit unAgendaBase;

{$IFNDEF AGENDA_SIC}
  {$MESSAGE ERROR 'Este fuente se compila solo en el SIC, remover del DPR si es necesario (subirlo al JEDI!) Gracias'}
{$ENDIF}

interface

uses
  unCustomForm, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvTFDays, ComCtrls, JvTFWeeks, JvExControls, JvComponent, JvTFManager, JvTFGlance,
  JvTFMonths, JvCalendar, StdCtrls, Mask, ToolEdit, ActnList, Menus, DB, JvTFGlanceTextViewer,
  SDEngine, ShortCutControl, unSeleccionMultiple, unfraCPR_PRESTADOR,
  unfraContacto, unfraContactoAgenda, unFraTrabajador, unFraCodigoDescripcion, unFraEstablecimiento,
  unFraEmpresa, CheckLst, JvExCheckLst, JvCheckListBox, unArtFrame, unArtDBAwareFrame, unArtDbFrame,
  unFraUsuarioConSectorIntranet, FormPanel, ExtCtrls, ToolPanels, JvExExtCtrls, JvSplit, Grids,
  DBGrids, RXDBCtrl, ArtComboBox, ArtDBGrid, ImgList, XPMenu, Placemnt, unInterfaces,
  unAgenda, AdvToolBar, AdvToolBarStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  AdvOfficePager, AdvOfficePagerStylers, AdvGlowButton, unFraTitulo,
  AdvShapeButton, AdvPreviewMenu, AdvPreviewMenuStylers, AdvOfficeHint,
  AdvGroupBox, AdvOfficeButtons, DBCtrls, artSeguridad, Login, artDbLogin,
  JvPanel, JvExStdCtrls, JvButton, JvCtrls, JvEdit, AdvEdit, JvExtComponent,
  RxPlacemnt;

type
  TfrmAgendaBase = class(TfrmCustomForm, IModoABM)
    acActualizar: TAction;
    acAgendar: TAction;
    acColapsarTodo: TAction;
    acDelegarTareas: TAction;
    acDerivar: TAction;
    acDerivarA: TAction;
    acEliminarEvento: TAction;
    acExpandirTodo: TAction;
    acLiberarPosesion: TAction;
    acMarcarComoLeido: TAction;
    acMarcarComoNoLeido: TAction;
    acModificarEvento: TAction;
    acNuevoEvento: TAction;
    acSalir: TAction;
    ActionListGeneral: TActionList;
    acTomarPosesion: TAction;
    AdvOfficeHint: TAdvOfficeHint;
    AdvOfficePagerOfficeStyler: TAdvOfficePagerOfficeStyler;
    AdvOfficeStatusBar: TAdvOfficeStatusBar;
    AdvPageAgenda: TAdvPage;
    AdvPreviewMenu: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler: TAdvPreviewMenuOfficeStyler;
    AdvQuickAccessToolBar: TAdvQuickAccessToolBar;
    AdvToolBarButton1: TAdvToolBarButton;
    AdvToolBarButton2: TAdvToolBarButton;
    AdvToolBarButton3: TAdvToolBarButton;
    AdvToolBarButton4: TAdvToolBarButton;
    AdvToolBarOfficeStyler: TAdvToolBarOfficeStyler;
    AdvToolBarPagerTitulo: TAdvToolBarPager;
    advToolbarTareas: TAdvOfficeStatusBar;
    AdvToolPanelTabTareas: TAdvToolPanelTab;
    AdvToolPanelTareas: TAdvToolPanel;
    Agendar1: TMenuItem;
    alAcciones: TActionList;
    btnAceptarFiltro: TAdvGlowButton;
    btnAgendar: TAdvGlowButton;
    btnAgregar: TAdvGlowButton;
    btnAgregarTarea: TAdvGlowButton;
    btnBusqueda: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnCancelarFiltro: TAdvGlowButton;
    btnDerivar: TAdvGlowButton;
    btnEliminar: TAdvGlowButton;
    btnEliminarTarea: TAdvGlowButton;
    btnModificar: TAdvGlowButton;
    btnModificarTarea: TAdvGlowButton;
    btnSalir: TAdvGlowButton;
    btnStart: TAdvShapeButton;
    clbFiltros: TJvCheckListBox;
    DBLogin: TDBLogin;
    dsEventos: TDataSource;
    edDescripcionTarea: TMemo;
    edDetalle: TDBMemo;
    edDetalleTarea: TMemo;
    edOBSERVACIONES: TMemo;
    Elijaaquiendeseaderivarestatarea1: TMenuItem;
    fpDerivacion: TFormPanel;
    fpFiltros: TFormPanel;
    fpSeleccionUsuariosEventos: TFormPanel;
    fraAE_CONTRATO: TfraEmpresa;
    fraAE_IDCONTACTO: TfraContactoAgenda;
    fraAE_IDPRESTADOR: TfraCPR_PRESTADOR;
    fraAE_IDTRABAJADOR: TfraTrabajador;
    fraES_ID: TfraEstablecimiento;
    fraSeleccionUsuariosEventos: TfrmSeleccionUsuarios;
    fraTituloDerivacion: TfraTitulo;
    fraUsuarioConSectorIntranet: TfraUsuarioConSectorIntranet;
    GridEventos: TArtDBGrid;
    IconosEventos: TImageList;
    ImageTreeView: TImageList;
    iStates: TImageList;
    JvTFGlanceTextViewer: TJvTFGlanceTextViewer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblTituloUsuariosEventos: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblUsuariosEventosAsignados: TLabel;
    lbFraContacto: TLabel;
    lbUsuario: TLabel;
    lbVencimiento: TLabel;
    mcCalendario: TJvMonthCalendar2;
    mnuActualizar: TMenuItem;
    mnuColapsarTodo: TMenuItem;
    mnuDerivarA: TMenuItem;
    mnuDerivarTarea: TMenuItem;
    mnuEliminarEvento: TMenuItem;
    mnuExpandirTodo: TMenuItem;
    mnuLiberarPosesion: TMenuItem;
    mnuMarcarComoLeido: TMenuItem;
    mnuMarcarComoNoLeido: TMenuItem;
    mnuModificarEvento: TMenuItem;
    mnuNuevoEvento: TMenuItem;
    mnuSeparador1: TMenuItem;
    mnuSeparador2: TMenuItem;
    mnuSeparador3: TMenuItem;
    mnuSeparador4: TMenuItem;
    mnuTomarPosesion: TMenuItem;
    N1: TMenuItem;
    PageControlTiempo: TAdvOfficePager;
    Panel1: TPanel;
    Panel2: TPanel;
    pDia: TJvTFDays;
    pMes: TJvTFMonths;
    pmuEventos: TPopupMenu;
    pmuTareas: TPopupMenu;
    pnCalendario: TPanel;
    pnlAgrupandoPor: TPanel;
    pnlDerivacionGral: TPanel;
    pnlEventoAjeno: TPanel;
    pnlEventoCerrado: TPanel;
    pnlFiltro0: TPanel;
    pnlFiltro1: TPanel;
    pnlFiltro2: TPanel;
    pnlFiltro3: TPanel;
    pnlFiltro4: TPanel;
    pnlFiltrosAutomaticos: TPanel;
    pnlTareas: TPanel;
    pnlVencimiento: TPanel;
    pSemana: TJvTFDays;
    rgAgrupaciones: TAdvOfficeRadioGroup;
    rgVerTareas: TAdvOfficeRadioGroup;
    sbFiltros: TScrollBox;
    Schedule: TJvTFScheduleManager;
    ScheduleTareas: TJvTFScheduleManager;
    sdqEventos: TSDQuery;
    sdqGetApptQuery: TSDQuery;
    sdqTareas: TSDQuery;
    sdqTareasTreeview: TSDQuery;
    Seguridad: TSeguridad;
    SeparadorDetalleTareasPendientes: TJvxSplitter;
    SeparadorGrillaDetalle: TJvxSplitter;
    ShortCutControl: TShortCutControl;
    toolBarStyleAgenda: TAdvOfficeStatusBarOfficeStyler;
    tsDia: TAdvOfficePage;
    tsEventos: TAdvOfficePage;
    tsMes: TAdvOfficePage;
    tsSemana: TAdvOfficePage;
    tvTareasAsignar: TTreeView;
    fpSeleccionUsuariosTareas: TFormPanel;
    fraSeleccionUsuariosTareas: TfrmSeleccionUsuarios;
    lblTituloUsuariosTareas: TLabel;
    lblUsuariosTareasAsignados: TLabel;
    N2: TMenuItem;
    mnuBuscarUnDato: TMenuItem;
    pnlBusqueda: TPanel;
    Label5: TLabel;
    imgList: TImageList;
    btnBuscarSiguiente: TJvImgBtn;
    btnBuscarAnterior: TJvImgBtn;
    btnCerrarPanel: TJvImgBtn;
    edBuscar: TAdvEdit;
    btnBuscar: TAdvGlowButton;
    procedure acActualizarExecute(Sender: TObject);
    procedure acAgendarExecute(Sender: TObject);
    procedure acColapsarTodoExecute(Sender: TObject);
    procedure acDelegarTareasExecute(Sender: TObject);
    procedure acDerivarAExecute(Sender: TObject);
    procedure acDerivarExecute(Sender: TObject);
    procedure acEliminarEventoExecute(Sender: TObject);
    procedure acExpandirTodoExecute(Sender: TObject);
    procedure acLiberarPosesionExecute(Sender: TObject);
    procedure acMarcaLeido(Sender: TObject);
    procedure acModificarEventoExecute(Sender: TObject);
    procedure acNuevoEventoExecute(Sender: TObject);
    procedure acSalirExecute(Sender: TObject);
    procedure acTomarPosesionExecute(Sender: TObject);
    procedure Actualizar;
    procedure AdvToolPanelTabTareasTabSlideInDone(Sender: TObject; Index: Integer; APanel: TAdvToolPanel);
    procedure AdvToolPanelTabTareasTabSlideOutDone(Sender: TObject; Index: Integer; APanel: TAdvToolPanel);
    procedure AnalizoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure btnAceptarFiltroClick(Sender: TObject);
    procedure btnAgregarTareaClick(Sender: TObject);
    procedure btnBusquedaClick(Sender: TObject);
    procedure btnDerivarClick(Sender: TObject);
    procedure btnEliminarTareaClick(Sender: TObject);
    procedure btnModificarTareaClick(Sender: TObject);
    procedure clbFiltrosClickCheck(Sender: TObject);
    procedure ClickEnDia(Sender: TObject);
    procedure ClickEnGrilla(Sender: TObject);
    procedure ClickEnMes(Sender: TObject;LineNum: Integer);
    procedure ClickEnSemana(Sender: TObject);
    procedure ConvertTaskToEvent(objAppt: TApptTarea; nIdTabla: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fpDerivacionShow(Sender: TObject);
    procedure fpFiltrosBeforeShow(Sender: TObject);
    procedure GridEventosGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure lblUsuariosEventosAsignadosClick(Sender: TObject);
    procedure lblUsuariosTareasAsignadosClick(Sender: TObject);
    procedure mcCalendarioSelChange(Sender: TObject; StartDate, EndDate: TDateTime);
    procedure OnResizeAppt(Sender: TObject; Appt: TJvTFAppt; var NewEndDT: TDateTime; var Confirm: Boolean);
    procedure PageControlTiempoChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
    procedure pDiaDateChanged(Sender: TObject);
    procedure pDiaDateChanging(Sender: TObject; var NewDate: TDate);
    procedure pDiaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure pDiaDropAppt(Appt: TJvTFAppt; SchedName: String; NewStartDate: TDate; NewStartTime: TTime; NewEndDate: TDate; NewEndTime: TTime; Share: Boolean; var Confirm: Boolean);
    procedure pDiaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure pDiaSizeRow(Sender: TObject; Index: Integer; var NewInfo: Integer; var Confirm: Boolean);
    procedure pDiaSizeRowHdr(Sender: TObject; Index: Integer; var NewInfo: Integer; var Confirm: Boolean);
    procedure pmuEventosPopup(Sender: TObject);
    procedure pmuTareasPopup(Sender: TObject);
    procedure pSemanaDateChanging(Sender: TObject; var NewDate: TDate);
    procedure pSemanaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure rgVerTareasClick(Sender: TObject);
    procedure ScheduleDeleteAppt(Sender: TObject; Appt: TJvTFAppt);
    procedure ScheduleLoadBatch(Sender: TObject; BatchName: String; BatchStartDate, BatchEndDate: TDate);
    procedure SchedulePostAppt(Sender: TObject; Appt: TJvTFAppt);
    procedure ScheduleRefreshAppt(Sender: TObject; Appt: TJvTFAppt);
    procedure sdqEventosAfterOpen(DataSet: TDataSet);
    procedure sdqEventosAfterScroll(DataSet: TDataSet);
    procedure tvTareasAsignarChange(Sender: TObject; Node: TTreeNode);
    procedure tvTareasAsignarCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure tvTareasAsignarDblClick(Sender: TObject);
    procedure tvTareasAsignarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvTareasAsignarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tvTareasAsignarStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure mnuBuscarUnDatoClick(Sender: TObject);
    procedure edBuscarChange(Sender: TObject);
    procedure edBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCerrarPanelClick(Sender: TObject);
  private
    FDiaSeleccionado: TDateTime;
    FHoy: TDate;
    FModoABM: TModoABM;
    FModoCallCenter: Boolean;
    FSQLTareas, FSQLTareaTodos, FSQLTareasTreeview: String;
    procedure AgendarTarea(AEventoAsignar: TApptBase; AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta: TDateTime);
    procedure AnalizoCambioHorarioEvento(var AConfirm: Boolean; Appt: TJvTFAppt);
    procedure ClearTreeView;
    procedure DeleteAppt(Appt: TJvTFAppt);
    procedure EjecutarConsultaSolapa(AQuery: TSDQuery; ADateTime: TDateTime; ASql: String);
    procedure GestionoDragDrop(Source: TObject; p: TPoint; AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta: TDateTime);
    procedure ManageAppt(AModoABM: TModoABM; objAppt: TJvTFAppt = nil;
                         AFechaDesde: TDateTime = 0; AHoraDesde: TDateTime = 0;
                         AFechaHasta: TDateTime = 0; AHoraHasta: TDateTime = 0);
    procedure ManejarSeguimiento(AEstado: String; AImagen: Integer; AIdSeguimiento: Integer = 0);
    procedure mnuDerivarAClick(Sender: TObject);
    function  ObtenerUsuariosFiltradosEvento: String;
    function  ObtenerUsuariosFiltradosTarea: String;
    procedure OnEmpresaChange(Sender: TObject);
    procedure PostAppt(Appt: TJvTFAppt);
    procedure RefrescarAppts(ADateTime: TDateTime = 0);
    procedure RefreshAppt(Appt: TJvTFAppt);
    procedure SetModoABM(const Value: TModoABM);
    procedure TitulosSemana;
    function GetNodeByText(ATree: TTreeView; AValue: String;
      AVisible: Boolean): TTreeNode;
    procedure PermisoBotonesAlcance;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    function GestionarConsultaTareas(ASQL: String): String;
    function GetDescripcionEvento(AIdTipoEvento: Integer): String;
  public
    FObservacionRespuesta: String;
    procedure MarcarDiaEnCalendario(AFechaEvento: TDateTime);
    procedure RefreshTreeView;
  published
    property ModoABM: TModoABM read FModoABM write SetModoABM;
    property ModoCallCenter: Boolean read FModoCallCenter write FModoCallCenter;
  end;

var
  frmAgendaBase: TfrmAgendaBase;
  dUltimaActualizacionTareas: TDateTime;

implementation

{$R *.dfm}

uses
  DBSql, CustomDlgs, unSesion, VCLExtra, Math, General,unABMAgendaBaseTarea, unABMAgendaBaseEvento,
  unABMAgendaBase, DateUtils, AnsiSql, unFiltros, unSiniestros, IntEdit, unEsperaSimple, unfraEntidadVendedorAGENDA,
  unfraContactoLibreAGENDA, Types, unArt, AdvStyleIF, SQLFuncs, unDmPrincipal, DateTimeFuncs,
  Strfuncs, Numeros, unABMDelegacionTareas, unPrincipal, unSIC, Registros;

function GetMaxFechaTarea(AIdTarea: Integer): TDateTime;
var
  sSQL: String;
begin
  sSQL := 'SELECT MAX(fecha) ' +
            'FROM (SELECT MAX(st_fechaalta) as fecha ' +
                    'FROM agenda.ast_seguimientotarea ' +
                   'WHERE st_idtarea = :idtarea ' +
                     'AND st_fechaalta <= :fecha ' +
               'UNION ALL ' +
                  'SELECT at_fechabloqueo ' +
                    'FROM agenda.aat_agendatarea ' +
                   'WHERE at_id = :idtarea ' +
                     'AND at_fechabloqueo <= :fecha)';

  Result := ValorSQLDateTimeEx(sSQL, [AIdTarea, TDateTimeEx.Create(dUltimaActualizacionTareas)]);
end;

procedure VerificarTarea(AIdTarea: Integer);
var
  sSQL: String;
begin
  sSQL := 'SELECT 1 ' +
            'FROM agenda.ast_seguimientotarea ' +
           'WHERE st_idtarea = :idtarea ' +
             'AND st_fechaalta > :fecha ' +
       'UNION ALL ' +
          'SELECT 1 ' +
            'FROM agenda.aat_agendatarea ' +
           'WHERE at_id = :idtarea ' +
             'AND at_fechabloqueo > :fecha';

  if ExisteSQLEx(sSQL, [AIdTarea, TDateTimeEx.Create(GetMaxFechaTarea(AIdTarea))]) then
    InfoHint(nil, 'La tarea seleccionada ha cambiado de estado mientras Ud. intentaba realizar una acci�n sobre ella, ' +
                  'actualice la lista de tareas por favor.', True, 'Validaci�n', blnWarning);
end;

function TengoTareaAsignada(AIdTarea, AIdUsuario: Integer): Boolean;
begin
  Result := ExisteSQLEx('SELECT 1 FROM agenda.ast_seguimientotarea WHERE st_idtarea = :idtarea AND st_idusuario = :idusuario AND st_estado IN (''A'', ''T'')', [AIdTarea, AIdUsuario]);
end;

function DerivarTarea(AIdUsuario: TTableId; AMail: String; AIdTabla: Integer; AVerificarTarea: Boolean = True; AEnvioMail: Boolean = True): Integer;
var
  bConTransaccion: Boolean;
begin
  if AVerificarTarea then
    VerificarTarea(AIdTabla);
  bConTransaccion := not dmPrincipal.sdbPrincipal.InTransaction;
  BeginTrans(True);

  with TSql.Create('agenda.ast_seguimientotarea') do
  try
    SqlType := stInsert;
    Fields.AddInteger('st_idtarea', AIdTabla);
    Fields.AddInteger('st_idusuario', AIdUsuario, True);
    Fields.AddString('st_estado', 'A');
    PrimaryKey.Add('st_id', GetSecNextVal('agenda.seq_ast_id'));
    EjecutarSQLST(Sql);

    SqlType := stUpdate;

    if AEnvioMail then
      Fields.AddExpression('st_fechaenviomail', exDateTime);

    Fields.AddString('st_mail', AMail);
    EjecutarSQLST(Sql);
    Result := PrimaryKey.FieldByName['st_id'].Value;

    Clear;
    SqlType := stUpdate;
    TableName := 'agenda.aat_agendatarea';
    PrimaryKey.AddInteger('at_id', AIdTabla);
    Fields.AddExpression('at_idbloqueo', exNull);
    Fields.AddExpression('at_fechabloqueo', exNull);
    Fields.AddString('at_usumodif', Sesion.UserID);
    Fields.AddExpression('at_fechamodif', exDateTime);
    Fields.AddString('at_leido', 'N');
    EjecutarSQLST(Sql);

    if bConTransaccion then
      CommitTrans(True);
  finally
    Free;
  end;
end;

procedure MarcarDerivacion(AUsuario: String; AIdTabla: Integer; Motivo: String);
var
  bConTransaccion: Boolean;
begin
  bConTransaccion := not dmPrincipal.sdbPrincipal.InTransaction;
  BeginTrans(True);
  try
    if not IsEmptyString(Motivo) then
      AgregarObservaciones('agenda.aot_observaciontarea', 'ot_', 'idagendatarea', AIdTabla, Motivo);
    EjecutarSQLSTEx('UPDATE agenda.ast_seguimientotarea ' +
                       'SET st_estado = :estado, ' +
                           'st_fechaderivacion = SYSDATE, ' +
                           'st_usuderivacion = :user ' +
                     'WHERE st_idtarea = :id ' +
                       'AND st_estado IN (''A'', ''T'')', ['D', AUsuario, AIdTabla]);
    if bConTransaccion then
      CommitTrans(True);
  except
    Rollback(True);
  end;
end;

procedure TfrmAgendaBase.acActualizarExecute(Sender: TObject);
begin
  RefreshTreeView;
end;

procedure TfrmAgendaBase.acAgendarExecute(Sender: TObject);
begin
  Application.ProcessMessages;
  if Assigned(tvTareasAsignar.Selected) then
  begin
    Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
    if Assigned(tvTareasAsignar.Selected.Data) and Assigned(tvTareasAsignar.Selected.Parent) then
    begin
      VerificarTarea(TApptBase(tvTareasAsignar.Selected.Data).IdTabla);
      AgendarTarea(TApptBase(tvTareasAsignar.Selected.Data), DBDate, DBTime, DBDate, DBTime + 1/48 {media hora});
    end;
  end;
end;

procedure TfrmAgendaBase.acColapsarTodoExecute(Sender: TObject);
begin
  tvTareasAsignar.FullCollapse;
end;

procedure TfrmAgendaBase.acDelegarTareasExecute(Sender: TObject);
begin
  Abrir(TfrmABMDelegacionTareas, frmABMDelegacionTareas, tmvModal, nil);
end;

procedure TfrmAgendaBase.acDerivarAExecute(Sender: TObject);
begin
  //inherited;
end;

procedure TfrmAgendaBase.acDerivarExecute(Sender: TObject);
var
  i, j, nIdTarea: Integer;
  tslUsuarios, tslMails: TStrings;
begin
  for i := 0 to tvTareasAsignar.SelectionCount - 1 do
    if not Assigned(tvTareasAsignar.Selections[i].Data) then
      InfoHint(nil, 'Por favor no seleccione un nodo de agrupamiento para realizar una derivaci�n masiva.', True, 'Validaci�n', blnWarning);

  if fpDerivacion.ShowModal = mrOk then
  begin
    for j := tvTareasAsignar.SelectionCount - 1 downto 0 do
    if Assigned(tvTareasAsignar.Selections[j].Data) then
    begin
      nIdTarea := TApptTarea(tvTareasAsignar.Selections[j].Data).IdTabla;
      VerificarTarea(nIdTarea);
      BeginTrans(True);
      try
        if not TengoTareaAsignada(nIdTarea, Sesion.ID) then
        begin
          MarcarDerivacion(Sesion.UserID, nIdTarea, '');
          DerivarTarea(Sesion.ID, Sesion.UserMail, nIdTarea, False, tvTareasAsignar.SelectionCount < 2);
        end;

        MarcarDerivacion(Sesion.UserID, nIdTarea,
                         'Derivaci�n a ' + iif(fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.IsEmpty,
                                               fraUsuarioConSectorIntranet.fraSector.Descripcion,
                                               fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.Descripcion) +
                         ': ' + edOBSERVACIONES.Text);

        if fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.IsEmpty then
        begin
          tslUsuarios := fraUsuarioConSectorIntranet.Usuarios;
          tslMails := fraUsuarioConSectorIntranet.Mails;
          if Assigned(tslUsuarios) then
            try
              for i := 0 to tslUsuarios.Count - 1 do
                DerivarTarea(StrToIntDef(tslUsuarios[i], 0), tslMails[i], nIdTarea, False);
            finally
              tslUsuarios.Free;
              tslMails.Free;
            end;
        end else
          DerivarTarea(fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.Value, fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.sdqDatos.FieldByName('se_mail').AsString, nIdTarea, False, tvTareasAsignar.SelectionCount < 2);

        TApptTarea(tvTareasAsignar.Selections[j].Data).Free;
        tvTareasAsignar.Selections[j].Free;
        CommitTrans(True);
      except
        on E: Exception do
          RollBack(True);
      end;
    end;
  end;
end;

procedure TfrmAgendaBase.acEliminarEventoExecute(Sender: TObject);
var
  objAuxAppt: TJvTFAppt;
begin
  case PageControlTiempo.ActivePageIndex of
    0: objAuxAppt := pDia.SelAppt;
    1: objAuxAppt := pSemana.SelAppt;
    3: objAuxAppt := TApptEvento.Create(Schedule, sdqEventos.FieldByName('AE_APPID').AsString);
    else
      objAuxAppt := nil;
  end;
  
  if Assigned(objAuxAppt) then
  begin
    if (MsgBox('�Desea dar de baja el evento seleccionado?', MB_ICONQUESTION + MB_YESNO) = IDYES) then
    begin
      AgregarObservaciones('agenda.aoe_observacionevento', 'oe_', 'idagendaevento', TApptEvento(objAuxAppt).IdTabla, 'Evento dado de baja por ' + Sesion.Usuario);
      objAuxAppt.Delete;
    end;
  end else
    InfoHint(btnEliminar, 'Debe seleccionar un evento para poder darlo de baja.', False, 'Validaci�n', blnWarning);
end;

procedure TfrmAgendaBase.acExpandirTodoExecute(Sender: TObject);
begin
  tvTareasAsignar.FullExpand;
end;

procedure TfrmAgendaBase.acLiberarPosesionExecute(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to tvTareasAsignar.SelectionCount - 1 do
  begin
    VerificarTarea(TApptTarea(tvTareasAsignar.Selections[i].Data).IdTabla);
    EjecutarSQLEx('UPDATE agenda.AAT_AGENDATAREA ' +
                     'SET AT_FECHABLOQUEO = NULL, ' +
                         'AT_IDBLOQUEO = NULL, ' +
                         'AT_IDUSUARIO = NULL ' +
                   'WHERE AT_ID = :id', [TApptTarea(tvTareasAsignar.Selections[i].Data).IdTabla]);

    ManejarSeguimiento('A', ESTADO_TAREA_LIBRE);
  end;
end;

procedure TfrmAgendaBase.acMarcaLeido(Sender: TObject);
begin
  Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
  EjecutarSQLEx('UPDATE agenda.AAT_AGENDATAREA ' +
                   'SET AT_LEIDO = :leido ' +
                 'WHERE AT_ID = :id', [SqlBoolean(not TApptTarea(tvTareasAsignar.Selected.Data).Leido, False),
                                       TApptTarea(tvTareasAsignar.Selected.Data).IdTabla]);
  TApptTarea(tvTareasAsignar.Selected.Data).Leido := not TApptTarea(tvTareasAsignar.Selected.Data).Leido;
  tvTareasAsignar.Invalidate;
end;

procedure TfrmAgendaBase.acModificarEventoExecute(Sender: TObject);
begin
  if PageControlTiempo.ActivePageIndex = 0 then
    ManageAppt(abmModificacion, pDia.SelAppt)
  else if PageControlTiempo.ActivePageIndex = 1 then
    ManageAppt(abmModificacion, pSemana.SelAppt)
  else if PageControlTiempo.ActivePageIndex = 2 then
    ClickEnMes(nil, 0)
  else if PageControlTiempo.ActivePageIndex = 3 then
    ClickEnGrilla(nil);
end;

procedure TfrmAgendaBase.acNuevoEventoExecute(Sender: TObject);
begin
  if PageControlTiempo.ActivePageIndex = 0 then
    if pDia.ValidSelection then
      ManageAppt(abmAlta, nil, pDia.Cols[pDia.SelStart.X].SchedDate, pDia.RowToTime(pDia.SelStart.Y),
                               pDia.Cols[pDia.SelEnd.X].SchedDate, pDia.RowEndTime(pDia.SelEnd.Y))
    else
      ManageAppt(abmAlta)
  else
    if PageControlTiempo.ActivePageIndex = 1 then
      if pSemana.ValidSelection then
        ManageAppt(abmAlta, nil, pSemana.Cols[pSemana.SelStart.X].SchedDate, pSemana.RowToTime(pSemana.SelStart.Y),
                                 pSemana.Cols[pSemana.SelEnd.X].SchedDate, pSemana.RowEndTime(pSemana.SelEnd.Y))
      else
        ManageAppt(abmAlta);
end;

procedure TfrmAgendaBase.acSalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmAgendaBase.acTomarPosesionExecute(Sender: TObject);
var
  i, nIdTarea, nIdSeguimiento: Integer;
  tslListaIdSeguimiento: TStrings;
begin
  if tvTareasAsignar.SelectionCount = 0 then
    Exit;

  tslListaIdSeguimiento := TStringList.Create;

  try
    for i := 0 to tvTareasAsignar.SelectionCount - 1 do
      if Assigned(tvTareasAsignar.Selections[i].Data) then
      begin
        nIdTarea := TApptTarea(tvTareasAsignar.Selections[i].Data).IdTabla;
        
        if tslListaIdSeguimiento.IndexOf(IntToStr(nIdTarea)) = -1 then
        begin
          tslListaIdSeguimiento.Add(IntToStr(nIdTarea));
          VerificarTarea(nIdTarea);
          if Sesion.ID <> TApptTarea(tvTareasAsignar.Selections[i].Data).IdUsuarioSeguimiento then
            nIdSeguimiento := DerivarTarea(Sesion.ID, Sesion.UserMail, nIdTarea, False)
          else
            nIdSeguimiento := TApptTarea(tvTareasAsignar.Selections[i].Data).IdSeguimiento;

          EjecutarSQLEx('UPDATE agenda.aat_agendatarea ' +
                           'SET at_fechabloqueo = sysdate, ' +
                               'at_idbloqueo = :idbloqueo, ' +
                               'at_idusuario = :idusuario ' +
                         'WHERE at_id = :id', [nIdSeguimiento, Sesion.ID, {Esto lo hago porque puede ser un jefe quien lo est� tomando...} //TApptTarea(tvTareasAsignar.Selected.Data).IdUsuarioSeguimiento,
                                               nIdTarea]);

          ManejarSeguimiento('T', ESTADO_TAREA_TOMADA, nIdSeguimiento);
        end;
    end;
  finally
    tslListaIdSeguimiento.Free;
    RefreshTreeView;
  end;
end;

procedure TfrmAgendaBase.Actualizar;
begin
  mcCalendarioSelChange(nil, FDiaSeleccionado, FDiaSeleccionado);
  RefrescarAppts;
end;

procedure TfrmAgendaBase.AdvToolPanelTabTareasTabSlideInDone(Sender: TObject; Index: Integer; APanel: TAdvToolPanel);
begin
  pnlTareas.Visible := False;
  pnlTareas.Parent := nil;
  PermisoBotonesAlcance;
end;

procedure TfrmAgendaBase.PermisoBotonesAlcance;
begin
  TAdvOfficeRadioButton(THackCustomAdvOfficeRadioGroup(rgVerTareas).Buttons[1]).Enabled := Sesion.TieneGenteACargo;
  TAdvOfficeRadioButton(THackCustomAdvOfficeRadioGroup(rgVerTareas).Buttons[3]).Enabled := AreIn(Sesion.Sector, ['COMPUTOS', 'GERGEN', 'CALIDAD', 'CONTGEST', 'AUDIT']) or frmPrincipal.Seguridad.Claves.IsActive('Administrador');
end;

procedure TfrmAgendaBase.AdvToolPanelTabTareasTabSlideOutDone(Sender: TObject; Index: Integer; APanel: TAdvToolPanel);
begin
  pnlTareas.Visible := True;
  pnlTareas.Parent := AdvToolPanelTareas;
  PermisoBotonesAlcance;
end;

procedure TfrmAgendaBase.AnalizoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TTreeView) and (tvTareasAsignar.SelectionCount = 1) and (TApptBase(TTreeView(Source).Selected.Data) is TApptBase)
            and ((TApptBase(TTreeView(Source).Selected.Data).IDUsuario = Sesion.ID) or (TApptBase(TTreeView(Source).Selected.Data).IDUsuario = 0));
  if Assigned(TApptBase(TTreeView(Source).Selected.Data)) then
  begin
    if (TApptBase(TTreeView(Source).Selected.Data).IDUsuario <> Sesion.ID) and (TApptBase(TTreeView(Source).Selected.Data).IDUsuario > 0) then
      InfoHint(tvTareasAsignar, 'No se puede calendarizar una tarea que no le pertenece cuando esta bloqueada.');
  end;
end;

procedure TfrmAgendaBase.btnAceptarFiltroClick(Sender: TObject);
var
  i: Integer;
begin
  fpFiltros.ModalResult := mrOk;
  for i := sbFiltros.ControlCount - 1 DownTo 0 do
    if Copy((sbFiltros.Controls[i]).Name, 0, 9) = 'pnlFiltro' then
    begin
      if TPanel(sbFiltros.Controls[i]).Visible then
        TPanel(sbFiltros.Controls[i]).Parent := pnlFiltrosAutomaticos;
    end;

  Actualizar;
end;

procedure TfrmAgendaBase.btnAgregarTareaClick(Sender: TObject);
begin
  ModoABM := abmAlta;
  Abrir(TfrmABMAgendaBaseTarea, frmABMAgendaBaseTarea, tmvNormal, nil);
  with frmABMAgendaBaseTarea do
  try
    ModoCallCenter := Self.ModoCallCenter;
    ModoABM := Self.ModoABM;
    AltaTarea;
    Visible := False;
    if ShowModal = mrOk then
      RefreshTreeView;
  finally
    Self.ModoABM := abmNone;
    frmABMAgendaBaseTarea := nil;    
  end;
end;

procedure TfrmAgendaBase.btnBusquedaClick(Sender: TObject);
begin
  inherited;
  if fpFiltros.ShowModal = mrOk then
  begin
{    pDia.ScheduleManager.Free;
    Schedule := TJvTFScheduleManager.Create(nil);
    pDia.ScheduleManager := Schedule;
    pMes.ScheduleManager := Schedule;
    pSemana.ScheduleManager := Schedule;
    Schedule.RefreshAutoReconcile := False;
}
//    Schedule.RefreshAppts;
  end;
end;

procedure TfrmAgendaBase.btnDerivarClick(Sender: TObject);
var
  tslUsuarios: TStringList;
begin
  Verificar(fraUsuarioConSectorIntranet.IsEmpty, btnDerivar, 'Debe seleccionar al menos un sector para derivar esta tarea.' + CRLF + 'Nota: Puede seleccionar un usuario en particular si as� lo desea.');
  Verificar(IsEmptyString(edOBSERVACIONES.Lines.Text), edOBSERVACIONES, 'Debe indicar el motivo de la derivaci�n.');
  Verificar(Length(Trim(edOBSERVACIONES.Lines.Text)) < 5, edOBSERVACIONES, 'Le sugerimos indicar el motivo de la derivaci�n, descr�balo al menos sint�ticamente.');

  if fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.IsEmpty then
  begin
    tslUsuarios := ValoresSqlEx('SELECT se_nombre || DECODE(tb_descripcion, NULL, '''', :split1 || tb_descripcion || :split2) ' +
                                  'FROM art.use_usuarios, art.ctb_tablas ' +
                                 'WHERE tb_clave(+) = :clave ' +
                                   'AND tb_codigo(+) = se_cargo ' +
                                   'AND se_fechabaja IS NULL ' +
                                   'AND se_idsector = :idsector', [' (', ')', 'USCAR', StrToIntDef(fraUsuarioConSectorIntranet.fraSector.ID, 0)]);
    try
      if not MsgAsk('Se derivar� la tarea a los siguientes usuarios: ' + CRLF + CRLF + tslUsuarios.Text + CRLF + CRLF + '�Desea continuar?') then
        Abort;

      if tslUsuarios.Count > 5 then
        InfoHint(fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.edCodigo, 'El sector al que desea derivar esta tarea es muy numeroso, debe seleccionar un usuario.', True);
    finally
      tslUsuarios.Free;
    end;
  end;

  fpDerivacion.ModalResult := mrOk;
end;

procedure TfrmAgendaBase.btnEliminarTareaClick(Sender: TObject);
begin
  Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
  
  if Assigned(tvTareasAsignar.Selected) and Assigned(tvTareasAsignar.Selected.Data) and Assigned(tvTareasAsignar.Selected.Parent) then
  begin
    if MsgBox('�Esta seguro de dar de baja la tarea seleccionada?', MB_ICONQUESTION + MB_YESNO) = IDYES then
    begin
      EliminarTarea(TApptTarea(tvTareasAsignar.Selected.Data).IdTabla);
      RefreshTreeView;
    end;
  end;
end;

procedure TfrmAgendaBase.btnModificarTareaClick(Sender: TObject);
begin
  tvTareasAsignar.Enabled := False;
  try
    Application.ProcessMessages;
    Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
    if Assigned(frmABMAgendaBaseTarea) then
      InfoHint(nil, 'Espere por favor, hay una tarea que se esta procesando. Si este mensaje persiste cierre el m�dulo de agenda para continuar.', True, 'Atenci�n!', blnWarning);

    if Assigned(tvTareasAsignar.Selected) then
    begin
      if Assigned(tvTareasAsignar.Selected.Data) and Assigned(tvTareasAsignar.Selected.Parent) then
      begin
        VerificarTarea(TApptTarea(tvTareasAsignar.Selected.Data).IdTabla);
        ModoABM := abmModificacion;
        Application.ProcessMessages;
        Abrir(TfrmABMAgendaBaseTarea, frmABMAgendaBaseTarea, tmvNormal, nil);
        with frmABMAgendaBaseTarea do
        try
          ModoCallCenter := Self.ModoCallCenter;
          ModoABM := Self.ModoABM;
          LoadFromAppt(TApptTarea(tvTareasAsignar.Selected.Data));
          Visible := False;
          if ShowModal = mrOK then
            RefreshTreeView
          else // Marc� como le�do el solo hecho de abrir la tarea...
            if TApptTarea(tvTareasAsignar.Selected.Data).IDUsuario = Sesion.ID then // Si el evento lo tengo tomado...
              TApptTarea(tvTareasAsignar.Selected.Data).Leido := True;
        finally
          Self.ModoABM := abmNone;
          frmABMAgendaBaseTarea := nil;
          (*
          try
            FreeAndNil(frmABMAgendaBaseTarea);
          except
            frmABMAgendaBaseTarea := nil;
          end;
          *)
        end;
      end;
    end else
      InfoHint(btnModificarTarea, 'No seleccion� ninguna tarea para modificar.');
  finally
    tvTareasAsignar.Enabled := True;
  end;
end;

procedure TfrmAgendaBase.clbFiltrosClickCheck(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if clbFiltros.Checked[1] or clbFiltros.Checked[2] or clbFiltros.Checked[3] then
    clbFiltros.Checked[0] := True;

  for i := 0 to ComponentCount - 1 do
    if Copy((Components[i]).Name, 0, 9) = 'pnlFiltro' then
    begin
      TPanel(Components[i]).Visible := clbFiltros.Checked[StrToIntDef(Copy((Components[i]).Name, 10, MAXINT), 0)];
    end;
end;

procedure TfrmAgendaBase.ClickEnDia(Sender: TObject);
begin
  if pDia.ValidSelection then
    ManageAppt(iif(Assigned(pDia.SelAppt), abmModificacion, abmAlta), pDia.SelAppt,
               pDia.Cols[pDia.SelStart.X].SchedDate, pDia.RowToTime(pDia.SelStart.Y),
               pDia.Cols[pDia.SelEnd.X].SchedDate, pDia.RowEndTime(pDia.SelEnd.Y))
  else
    ManageAppt(iif(Assigned(pDia.SelAppt), abmModificacion, abmAlta), pDia.SelAppt,
               DBDate, DBTime, DBDate, DBTime + EncodeTime(0, pDia.Granularity - 1, 0, 0) + EncodeTime(0, 1, 0, 0));
end;

procedure TfrmAgendaBase.ClickEnGrilla(Sender: TObject);
var
  objAppt: TApptEvento;
begin
  objAppt := TApptEvento.Create(Schedule, sdqEventos.FieldByName('AE_APPID').AsString);
  TfrmABMAgendaBaseEvento.AssignRecordToAppt(objAppt, sdqEventos);
  ManageAppt(abmModificacion, objAppt);
end;

procedure TfrmAgendaBase.ClickEnMes(Sender: TObject; LineNum: Integer);
begin
  ManageAppt(abmModificacion, JvTFGlanceTextViewer.SelAppt, pMes.Cells[0].CellDate, 0, pMes.Cells[0].CellDate, 0);
end;

procedure TfrmAgendaBase.ClickEnSemana(Sender: TObject);
begin
  if pSemana.ValidSelection then
    ManageAppt(iif(Assigned(pSemana.SelAppt), abmModificacion, abmAlta), pSemana.SelAppt,
               pSemana.Cols[pSemana.SelStart.X].SchedDate, pSemana.RowToTime(pSemana.SelStart.Y),
               pSemana.Cols[pSemana.SelEnd.X].SchedDate, pSemana.RowEndTime(pSemana.SelEnd.Y))
  else
    ManageAppt(iif(Assigned(pSemana.SelAppt), abmModificacion, abmAlta), pSemana.SelAppt,
               DBDate, DBTime, DBDate, DBTime + EncodeTime(0, pSemana.Granularity - 1, 0, 0) + EncodeTime(0, 1, 0, 0));
end;

procedure TfrmAgendaBase.ConvertTaskToEvent(objAppt: TApptTarea; nIdTabla: Integer);
var
  ApptStartDate: TDate;
  ApptEndDate: TDate;
  ApptStartTime: TTime;
  ApptEndTime: TTime;
  objEventoAsignar : TApptEvento;
  dHoy, dAhora: TDateTime;
begin
  ApptStartDate := 0;
  ApptEndDate   := 0;
  ApptStartTime := 0;
  ApptEndTime   := 0;

  objEventoAsignar := TApptEvento.Create(Schedule, '');
  objEventoAsignar.Persistent := True;
  with objAppt do
  begin
    objEventoAsignar.TipoEvento         := TipoEvento;
    objEventoAsignar.MotivoIngreso      := MotivoIngreso;    
    objEventoAsignar.TodoElDia          := TodoElDia;
    objEventoAsignar.TipoRepeticion     := TipoRepeticion;
    objEventoAsignar.IDUsuario          := iif(IdUsuario = 0, Sesion.Id, IdUsuario);
    objEventoAsignar.FechaVencimiento   := FechaVencimiento;        
    objEventoAsignar.Contrato           := Contrato;
    objEventoAsignar.Trabajador         := Trabajador;
    objEventoAsignar.NroEstableci       := NroEstableci;
    objEventoAsignar.ReqUbicacionEstab  := ReqUbicacionEstab;
    objEventoAsignar.IDContacto         := IDContacto;
    objEventoAsignar.UbicacionContrato  := UbicacionContrato;
    objEventoAsignar.Calle              := Calle;
    objEventoAsignar.Numero             := Numero;
    objEventoAsignar.Piso               := Piso;
    objEventoAsignar.Departamento       := Departamento;
    objEventoAsignar.CPostal            := CPostal;
    objEventoAsignar.CPostala           := CPostala;
    objEventoAsignar.Localidad          := Localidad;
    objEventoAsignar.Provincia          := Provincia;
    objEventoAsignar.Telefono           := Telefono;
    objEventoAsignar.Descripcion        := Descripcion;
    objEventoAsignar.Contacto           := Contacto;

    objEventoAsignar.CorreoElectronico  := CorreoElectronico;

    objEventoAsignar.IdExpediente       := IdExpediente;
    objEventoAsignar.IdPrestador        := IdPrestador;
    objEventoAsignar.NumAuto            := NumAuto;

    objEventoAsignar.CUIT               := CUIT;
    objEventoAsignar.RazonSocial        := RazonSocial;
    objEventoAsignar.Actividad          := Actividad;
    objEventoAsignar.Trabajadores       := Trabajadores;
    objEventoAsignar.MasaSalarial       := MasaSalarial;

    objEventoAsignar.IdEntidad          := IdEntidad;
    objEventoAsignar.IdVendedor         := IdVendedor;

    objEventoAsignar.IdFormulario       := IdFormulario;

    objEventoAsignar.IdRespuesta          := IdRespuesta;
    objEventoAsignar.ObservacionRespuesta := ObservacionRespuesta;

    objEventoAsignar.Insatisfaccion           := Insatisfaccion;
    objEventoAsignar.InsatisfaccionComentario := InsatisfaccionComentario;
    objEventoAsignar.InsatisfaccionDetalle    := InsatisfaccionDetalle;

    objEventoAsignar.NotificarAlCierreProx    := NotificarAlCierreProx;    

    objEventoAsignar.IdTareaOrigen := nIdTabla;

    if PageControlTiempo.ActivePageIndex = 0 then
      if pDia.ValidSelection then
      begin
        dHoy := DBDate;
        dAhora := DBDateTime;
        ApptStartDate := Math.Max(pDia.Cols[pDia.SelStart.X].SchedDate, dHoy);
        ApptEndDate   := Math.Max(pDia.Cols[pDia.SelEnd.X].SchedDate, dHoy);
        ApptStartTime := iif(pDia.Cols[pDia.SelEnd.X].SchedDate <= dHoy, Math.Max(pDia.RowToTime(pDia.SelStart.Y), dAhora - dHoy), pDia.RowToTime(pDia.SelStart.Y));
        ApptEndTime   := iif(pDia.Cols[pDia.SelEnd.X].SchedDate <= dHoy, Math.Max(pDia.RowEndTime(pDia.SelEnd.Y), dAhora - dHoy + pDia.RowEndTime(pDia.SelEnd.Y) - pDia.RowToTime(pDia.SelStart.Y)), pDia.RowEndTime(pDia.SelEnd.Y));
      end else
      begin
        ApptStartDate := DBDate;
        ApptEndDate 	:= DBDate;
        ApptStartTime := DBTime;
        ApptEndTime 	:= ApptStartTime +
                         EncodeTime(0, pDia.Granularity - 1, 0, 0) +
                         EncodeTime(0, 1, 0, 0);
      end
    else
      if PageControlTiempo.ActivePageIndex = 1 then
        if pSemana.ValidSelection then
        begin
          ApptStartDate := pSemana.Cols[pSemana.SelStart.X].SchedDate;
          ApptEndDate := pSemana.Cols[pSemana.SelEnd.X].SchedDate;
          ApptStartTime := pSemana.RowToTime(pSemana.SelStart.Y);
          ApptEndTime := pSemana.RowEndTime(pSemana.SelEnd.Y);
        end
        else
        begin
          ApptStartDate := DBDate;
          ApptEndDate 	:= DBDate;
          ApptStartTime := DBTime;
          ApptEndTime 	:= ApptStartTime + EncodeTime(0, pSemana.Granularity - 1, 0, 0) + EncodeTime(0, 1, 0, 0);
        end;

    objEventoAsignar.Estado := iif(ApptStartDate + GetDecimales(ApptStartTime) > DBDateTime, ESTADO_EVENTO_PENDIENTE, ESTADO_EVENTO_TERMINADO);
    objEventoAsignar.BeginUpdate;
    objEventoAsignar.SetStartEnd(ApptStartDate, ApptStartTime, ApptEndDate, ApptEndTime);
    frmABMAgendaBaseEvento.ApptObject := objEventoAsignar;
  end;
end;

procedure TfrmAgendaBase.FormActivate(Sender: TObject);
begin
  inherited;
  if fpDerivacion.Showing then
    fpDerivacion.BringToFront;
end;

procedure TfrmAgendaBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormStorage.WriteInteger('ShowCmd', 1); // Nunca guardo otro WidnowState que no sea wsNormal
  SetRegFromValue(Self, 'AnchoArbolTareas', IntToStr(AdvToolPanelTareas.Width));
//  SetRegFromValue(Self, 'AnchoArbolTareasTotal', IntToStr(AdvToolPanelTabTareas.Width));
//  ShowMessage('Antes de liberar la agenda 1.');
  try
    Application.ProcessMessages;
    ClearTreeView; //Memory Leak to be fixed
  except
  end;
//  AdvPanelAdicionales.Free;
  inherited;
//  DetenerEspera;
end;

procedure TfrmAgendaBase.FormCreate(Sender: TObject);
begin
  AdvToolPanelTareas.OpenWidth := Max(StrToInt(GetRegFromValue(Self, 'AnchoArbolTareas', '338')), 338);
//  AdvToolPanelTabTareas.Width := StrToInt(GetRegFromValue(Self, 'AnchoArbolTareasTotal', '323'));
  AdvToolPanelTabTareas.DisableParentHook := True;
  lbVencimiento.Caption := '';
  AdvToolPanelTareas.Caption := 'Tareas pendientes';
  lbUsuario.Caption := '';  
  pnlTareas.Align := alClient;
  toolBarStyleAgenda.Style := TOfficeStatusBarStyle(psOffice2007Obsidian);
  AdvOfficePagerOfficeStyler.Style := TOfficePagerStyle(psOffice2007Obsidian);
  AdvToolBarOfficeStyler.Style := bsOffice2007Obsidian;
  AdvToolBarOfficeStyler.PagerCaption.Font.Color := $00C8C8C8;
//  AdvPanelAdicionales.Style := esOffice2007Obsidian;
  pnlEventoAjeno.Color := COLOR_EVENTO_AJENO;
  pnlEventoCerrado.Color := COLOR_EVENTO_TERMINADO;

  ModoCallCenter := False;
  //IniciarEspera;
  try
    pnlFiltrosAutomaticos.Width := 0;
    pnlFiltrosAutomaticos.Height := 0;

    FSQLTareas := sdqTareas.SQL.Text;
    FSQLTareaTodos := sdqEventos.SQL.Text;
    FSQLTareasTreeview := sdqTareasTreeview.SQL.Text;

    inherited;
    FHoy := DBDate;
    pMes.TitleAttr.Visible := True;
    pSemana.Template.LinearDayCount := 7;
    fraAE_CONTRATO.ShowBajas := True;
    fraAE_CONTRATO.OnChange := OnEmpresaChange;
    fraAE_IDTRABAJADOR.ForzarEmpresa := True;
    fraES_ID.ShowBajas := True;
    fraAE_IDCONTACTO.fraTelefonos.Initialize(True, 'TN_IDCONTACTO', 'TN', 'ATN_TELEFONOCONTACTO');

    mcCalendario.Today := FHoy;
    mcCalendario.DateFirst := FHoy;
    FDiaSeleccionado := FHoy;

    if PageControlTiempo.ActivePageIndex <> 0 then
      PageControlTiempo.ActivePageIndex := 0;

    btnDerivar.SetComponentStyle(tsOffice2007Obsidian);
    btnCancelar.SetComponentStyle(tsOffice2007Obsidian);
    btnBusqueda.SetComponentStyle(tsOffice2007Obsidian);
    btnAceptarFiltro.SetComponentStyle(tsOffice2007Obsidian);
    btnCancelarFiltro.SetComponentStyle(tsOffice2007Obsidian);
    HideTitlebar;

    with fraSeleccionUsuariosEventos do
    begin
      MostrarTodos := False;
      IncluirGenericos := False;
      UsuariosAsignados.Clear;
      UsuariosAsignados.AddObject(Sesion.Usuario, TUserData.Create(Sesion.Id, Sesion.UserMail));
      lblUsuariosEventosAsignados.Caption := Sesion.Usuario;
    end;

    with fraSeleccionUsuariosTareas do
    begin
      MostrarTodos := TAdvOfficeRadioButton(THackCustomAdvOfficeRadioGroup(rgVerTareas).Buttons[3]).Enabled;
      IncluirGenericos := True;
      UsuariosAsignados.Clear;
      UsuariosAsignados.AddObject(Sesion.Usuario, TUserData.Create(Sesion.Id, Sesion.UserMail));
      lblUsuariosTareasAsignados.Caption := Sesion.Usuario;
    end;
          
    //RefrescarAppts;       
    RefreshTreeView;
    VCLExtra.LockControls([fraAE_IDCONTACTO, edDescripcionTarea, edDetalleTarea]);
    VCLExtra.LockControls([fraAE_IDCONTACTO.ToolBarContacto], False);    

    if not AreIn(Sesion.Sector, ['CALLCENT', 'COMPUTOS']) then
      with fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.Propiedades do
        ExtraCondition := ExtraCondition + ' AND se_sector <> ' + SQLValue('CALLCENT');

    if not AreIn(Sesion.Sector, ['BANK', 'COMPUTOS']) then
      with fraUsuarioConSectorIntranet.fraUsuarioSeleccionado.Propiedades do
        ExtraCondition := ExtraCondition + ' AND se_sector <> ' + SQLValue('BANK');
  finally
    //DetenerEspera;
  end;
end;

procedure TfrmAgendaBase.FormShow(Sender: TObject);
var
  vFechaDom : TDate;
begin
  inherited;
  pDia.Template.ActiveTemplate 	  := agtLinear;
  pDia.Template.LinearName 	      := 'Eventos';
  pDia.Template.LinearStartDate   := FHoy;
  pSemana.Template.ActiveTemplate := agtLinear;
  pSemana.Template.LinearName 	  := 'Eventos';
  vFechaDom := ValorSqlDateTime('SELECT ' + SqlDate(FHoy) + ' - (TO_CHAR(' + SqlDate(FHoy) + ' ,''D'')-1)' + ' FROM DUAL ');
  pSemana.Template.LinearStartDate := vFechaDom;
  pMes.DisplayDate := FHoy;
  pMes.SchedNames.Add('Eventos');

  if (Screen.Width >= 1024) and (Self.Width < 800) then
    Self.Width := 960;
  if (Screen.Height >= 768) and (Self.Height < 600) then
    Self.Height := 720;
end;

procedure TfrmAgendaBase.fpDerivacionShow(Sender: TObject);
begin
  inherited;
  fraUsuarioConSectorIntranet.Clear;
  edOBSERVACIONES.Lines.Clear;
end;

procedure TfrmAgendaBase.fpFiltrosBeforeShow(Sender: TObject);
var
  i: Integer;
begin
  for i := pnlFiltrosAutomaticos.ControlCount - 1 DownTo 0 do
    if Copy((pnlFiltrosAutomaticos.Controls[i]).Name, 0, 9) = 'pnlFiltro' then
    begin
      TPanel(pnlFiltrosAutomaticos.Controls[i]).Parent := sbFiltros;
    end;
end;

procedure TfrmAgendaBase.GridEventosGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if AreIn(Field.FieldName, ['SE_NOMBRE']) and (sdqEventos.FieldByName('AE_IDUSUARIO').AsInteger <> Sesion.Id) then
    Background := COLOR_EVENTO_AJENO;

  if AreIn(Field.FieldName, ['MI_DESCRIPCION', 'TE_DESCRIPCION']) then
  begin
    if (sdqEventos.FieldByName('TAREAS_PENDIENTES').AsString = 'S') then
      Background := COLOR_EVENTO_TAREASPENDIENTES
    else if (sdqEventos.FieldByName('AE_ESTADO').AsInteger = ESTADO_EVENTO_TERMINADO) then
      Background := COLOR_EVENTO_TERMINADO
    else if (sdqEventos.FieldByName('AE_ESTADO').AsInteger = ESTADO_EVENTO_PENDIENTEAUTORIZACION) then
      Background := COLOR_EVENTO_AUTORIZAR;
  end;

  if AreIn(Field.FieldName, ['AE_ID']) and (sdqEventos.FieldByName('AE_INSATISFACCION').AsString = 'S') then
    AFont.Color := $0016659A;

  if AreIn(Field.FieldName, ['SE_NOMBRE']) and (sdqEventos.FieldByName('AE_FECHALEIDO').IsNull) then
    AFont.Style := AFont.Style + [fsBold];
    
  if AreIn(Field.FieldName, ['TE_DESCRIPCION']) and (not sdqEventos.FieldByName('AE_FECHABAJA').IsNull) then
    AFont.Style := AFont.Style + [fsStrikeOut];
end;

procedure TfrmAgendaBase.lblUsuariosEventosAsignadosClick(Sender: TObject);
begin
  with fraSeleccionUsuariosEventos do
  begin
    Load;
    //UsuariosAsignados.AddObject(Sesion.Usuario, TUserData.Create(Sesion.Id, Sesion.UserMail));
    if fpSeleccionUsuariosEventos.ShowModal = mrOk then
    begin
      if UsuariosAsignados.Count > 1 then
        lblUsuariosEventosAsignados.Caption := 'Hay mas de 1 usuario seleccionado'
      else if UsuariosAsignados.Count = 1 then
        lblUsuariosEventosAsignados.Caption := UsuariosAsignados.Strings[0]
      else
        lblUsuariosEventosAsignados.Caption := 'No hay seleccionados (asignaci�n autom�tica)';

      Actualizar;
      RefreshTreeView;
    end;
  end;
end;

procedure TfrmAgendaBase.mcCalendarioSelChange(Sender: TObject; StartDate, EndDate: TDateTime);
var
  vFechaDom, dFechaAnterior: TDate;
  oldCursor: TCursor;
begin
  try
    oldCursor := Screen.Cursor;
    Screen.Cursor := crSQLWait;

    try
      if (StartDate = 0) and (EndDate = 0) then
        Exit;

//      if (FDiaSeleccionado <> StartDate) or ((PageControlTiempo.ActivePage = tsEventos) and not sdqEventos.Active and (sdqEventos.ParamByName('fechadesde').AsDateTime <> FDiaSeleccionado)) then
      begin
        FDiaSeleccionado := StartDate;

        if PageControlTiempo.ActivePage = tsEventos then
          EjecutarConsultaSolapa(sdqEventos, TDateTime(iif(PageControlTiempo.ActivePage = tsEventos, FDiaSeleccionado, mcCalendario.FirstVisibleDate(True)-31)), FSQLTareaTodos)
        else
        begin
          if MonthOf(sdqTareas.ParamByName('fechadesde').AsDate) <> MonthOf(FDiaSeleccionado) then
            RefrescarAppts(FDiaSeleccionado); //EjecutarConsultaSolapa(sdqTareas, mcCalendario.DateFirst, FSQLTareas)

          if Assigned(Sender) then
          begin
            pDia.GotoDate(FDiaSeleccionado);
            pDia.Template.LinearName := 'Eventos';
            pDia.Cols.Items[0].GroupTitle := ValorSqlEx('SELECT TO_CHAR(:fecha,''DAY'') from dual', [TDateTimeEx.Create(FDiaSeleccionado)]);
            pDia.Refresh;

            vFechaDom := ValorSqlDateTimeEx('SELECT :fecha - (TO_CHAR(:fecha,''D'')-1) FROM DUAL', [TDateTimeEx.Create(FDiaSeleccionado)]);
            pSemana.GotoDate(vFechaDom);
            pSemana.Refresh;
            TitulosSemana;

            pMes.DisplayDate := FDiaSeleccionado;
            pMes.SchedNames.Clear;
            pMes.SchedNames.Add('Eventos');
            pMes.Refresh;
          end;
{
        if (PageControlTiempo.ActivePage = tsEventos) then
          EjecutarConsultaSolapa(sdqEventos, FDiaSeleccionado, FSQLTareaTodos)
        else
        begin
          if MonthOf(sdqTareas.ParamByName('fechadesde').AsDate) <> MonthOf(FDiaSeleccionado) then
          begin
            RefrescarAppts(FDiaSeleccionado); //EjecutarConsultaSolapa(sdqTareas, mcCalendario.DateFirst, FSQLTareas)
          end;
          
          begin
            pDia.GotoDate(FDiaSeleccionado);
            pDia.Template.LinearName := 'Eventos';
            pDia.Cols.Items[0].GroupTitle := ValorSqlEx('SELECT TO_CHAR(:fecha,''DAY'') from dual', [TDateTimeEx.Create(FDiaSeleccionado)]);
            pDia.Refresh;

            vFechaDom := ValorSqlDateTimeEx('SELECT :fecha - (TO_CHAR(:fecha,''D'')-1) FROM DUAL', [TDateTimeEx.Create(FDiaSeleccionado)]);
            pSemana.GotoDate(vFechaDom);
            pSemana.Refresh;
            TitulosSemana;

            pMes.DisplayDate := FDiaSeleccionado;
            pMes.SchedNames.Clear;
            pMes.SchedNames.Add('Eventos');
            pMes.Refresh;
          end;
}
        end;
      end;

      if MonthOf(sdqTareas.ParamByName('fechadesde').AsDate) <> MonthOf(FDiaSeleccionado) then
      begin
        if (Sender = nil) or (not sdqTareas.Active) then
          EjecutarConsultaSolapa(sdqTareas, StartDate, FSQLTareas);

        sdqTareas.First;
        mcCalendario.BoldDays.Clear;
        dFechaAnterior := 0;
        while not sdqTareas.Eof do
        begin
          if dFechaAnterior <> Trunc(sdqTareas.FieldByName('ae_fechahorainicio').AsDateTime) then
            MarcarDiaEnCalendario(dFechaAnterior);

          dFechaAnterior := Trunc(sdqTareas.FieldByName('ae_fechahorainicio').AsDateTime);
          sdqTareas.Next;
        end;
        sdqTareas.Close;
      end;
    finally
      Screen.Cursor := oldCursor;
    end;
  finally
    //Application.ProcessMessages;
  end;
end;

procedure TfrmAgendaBase.OnResizeAppt(Sender: TObject; Appt: TJvTFAppt; var NewEndDT: TDateTime; var Confirm: Boolean);
begin
  if Assigned(Appt) and TApptEvento(Appt).TodoElDia then
    Confirm := False
  else
    AnalizoCambioHorarioEvento(Confirm, Appt);
end;

procedure TfrmAgendaBase.pDiaDateChanged(Sender: TObject);
begin
{
  if Assigned(frmABMAgendaBase) and (ModoABM = maNone) then
    with pDia.Template, frmABMAgendaBase do
    if ActiveTemplate = agtLinear then
      edFechaEvento.Date := LinearStartDate
    else
      edFechaEvento.Date := CompDate;
}
end;

procedure TfrmAgendaBase.pDiaDateChanging(Sender: TObject; var NewDate: TDate);
var
  bEspera: Boolean;
begin
if false then
//  if Screen.ActiveForm = Self then
  begin
    bEspera := True;
    IniciarEspera('Actualizando eventos...');
  end else
    bEspera := False;

  try
    pDia.ScheduleManager.RefreshAppts;
  finally
    if bEspera then
      DetenerEspera;
  end;
end;

procedure TfrmAgendaBase.pDiaDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  p: TPoint;
begin
  pDia.PtToCell(X, Y);
  p.X := pDia.PtToCell(X, Y).Col;
  p.Y := pDia.PtToCell(X, Y).Row;
  pDia.SelStart := p;
  pDia.SelEnd := p;

  GestionoDragDrop(Source, p,
                   pDia.Cols[pDia.SelStart.X].SchedDate, pDia.RowToTime(pDia.SelStart.Y),
                   pDia.Cols[pDia.SelEnd.X].SchedDate, pDia.RowEndTime(pDia.SelEnd.Y));
end;

procedure TfrmAgendaBase.pDiaDropAppt(Appt: TJvTFAppt; SchedName: String; NewStartDate: TDate; NewStartTime: TTime; NewEndDate: TDate; NewEndTime: TTime; Share: Boolean; var Confirm: Boolean);
begin
  AnalizoCambioHorarioEvento(Confirm, Appt);
end;

procedure TfrmAgendaBase.pDiaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  acModificarEvento.Enabled := Seguridad.Activar(acModificarEvento);
  acEliminarEvento.Enabled := Seguridad.Activar(acEliminarEvento);

  if ssRight in Shift then
  begin
    if Assigned(pDia.PtToCell(X, Y).Appt) then
      pDia.SelAppt := pDia.PtToCell(X, Y).Appt
    else
      pDia.SelAppt := nil;

    pmuEventos.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  end;
end;

procedure TfrmAgendaBase.pDiaSizeRow(Sender: TObject; Index: Integer; var NewInfo: Integer; var Confirm: Boolean);
begin
  inherited;
  PostAppt(pDia.SelAppt);
end;

procedure TfrmAgendaBase.pDiaSizeRowHdr(Sender: TObject; Index: Integer; var NewInfo: Integer; var Confirm: Boolean);
begin
  inherited;
  PostAppt(pDia.SelAppt);
end;

procedure TfrmAgendaBase.pmuEventosPopup(Sender: TObject);
begin
  if PageControlTiempo.ActivePage = tsDia then
  begin
    acModificarEvento.Enabled := Assigned(pDia.SelAppt) and Seguridad.Activar(acModificarEvento);
    acEliminarEvento.Enabled := Assigned(pDia.SelAppt) and Seguridad.Activar(acEliminarEvento);
  end;
end;

procedure TfrmAgendaBase.pmuTareasPopup(Sender: TObject);
var
  mnuAux: TMenuItem;
  //i: Integer;
begin                          
  if Assigned(tvTareasAsignar.Selected) and Assigned(tvTareasAsignar.Selected.Data) then
  with TApptTarea(tvTareasAsignar.Selected.Data) do
  begin
    acMarcarComoNoLeido.Visible := Propio and Leido and (tvTareasAsignar.SelectionCount = 1);
    acMarcarComoLeido.Visible := Propio and not Leido and (tvTareasAsignar.SelectionCount = 1);
    acTomarPosesion.Visible := Libre and (tvTareasAsignar.SelectionCount = 1);
    acLiberarPosesion.Visible := Propio and (tvTareasAsignar.SelectionCount = 1);
    acAgendar.Visible := AreIn(IntToStr(TApptBase(tvTareasAsignar.Selected.Data).IDUsuario), [IntToStr(Sesion.ID), '0']);
    acDerivar.Visible := (frmPrincipal.Seguridad.Claves.IsActive('Administrador') or Propio or Libre) and not Cerrado;
    acDerivar.Caption := 'Derivar tarea' + iif(tvTareasAsignar.SelectionCount > 1, 's (' + IntToStr(tvTareasAsignar.SelectionCount) + ')', '');
    acDerivarA.Visible := Sesion.TieneGenteACargo;

    if acDerivarA.Visible and (mnuDerivarA.Count = 2) then
    begin
      EjecutarStoreSTEx('art.agenda_pkg.do_usudependientesconperfil(:id);', [Sesion.ID]);
      {
      for i := 0 to mnuDerivarA.Count - 1 do
        if Assigned(mnuDerivarA.Items[i]) then
          mnuDerivarA.Items[i].Free;
      }
      with GetQueryEx('SELECT mp_nombre, mp_id, mp_usuario, se_mail ' +
                        'FROM art.use_usuarios, agenda.tmp_usuarios_dependientes ' +
                       'WHERE mp_usuario = se_usuario ' +
                    'ORDER BY mp_nombre', []) do
      try
        {
        if not IsEmpty then
          mnuDerivarA.CreateSubMenu;
        }
        while not Eof do
        begin
          mnuAux := TMenuItem.Create(mnuDerivarA);
          with mnuAux do
          begin
            mnuDerivarA.Add(mnuAux);
            Caption := FieldByName('mp_nombre').AsString;
            Hint := FieldByName('se_mail').AsString;
            Tag := FieldByName('mp_id').AsInteger;
            OnClick := mnuDerivarAClick;
          end;
          
          Next;
        end;
      finally
        Free;
      end;
    end;
  end else
  begin
    acMarcarComoNoLeido.Visible := False;
    acMarcarComoLeido.Visible := False;
    acTomarPosesion.Visible := False;
    acLiberarPosesion.Visible := False;
    acDerivar.Visible := False;    
    acDerivarA.Visible := False;
    acAgendar.Visible := False;
  end;
end;

procedure TfrmAgendaBase.pSemanaDateChanging(Sender: TObject; var NewDate: TDate);
begin
  pSemana.ScheduleManager.RefreshAppts;
end;

procedure TfrmAgendaBase.pSemanaDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  p: TPoint;
begin
  pSemana.PtToCell(X, Y);
  p.X := pSemana.PtToCell(X, Y).Col;
  p.Y := pSemana.PtToCell(X, Y).Row;
  pSemana.SelStart := p;
  pSemana.SelEnd := p;

  GestionoDragDrop(Source, p,
                   pSemana.Cols[pDia.SelStart.X].SchedDate, pSemana.RowToTime(pDia.SelStart.Y),
                   pSemana.Cols[pDia.SelEnd.X].SchedDate, pSemana.RowEndTime(pDia.SelEnd.Y));
end;

procedure TfrmAgendaBase.rgVerTareasClick(Sender: TObject);
var
  sSQL: String;
begin
  sSQL := '  SELECT global.se_id, global.se_nombre, global.se_mail ' +
             ' FROM (SELECT se_id, se_nombre, se_mail ' +
                      'FROM art.use_usuarios ' +
                     'WHERE 1 = 1 /*se_fechabaja IS NULL*/ ' +
                   iif(rgVerTareas.ItemIndex = 1, 'AND se_usuario <> :usuario ', ' ') +
                'START WITH se_usuario = :usuario ' +
          'CONNECT BY PRIOR se_usuario = se_respondea ' +
                       'AND se_usuario <> se_respondea ' +
                   iif(rgVerTareas.ItemIndex <> 1,
                     'UNION ' +
                    'SELECT se_id, se_nombre, se_mail ' +
                      'FROM art.use_usuarios, art.mug_usuariogrupotrabajo coworkers ' +
                     'WHERE 1 = 1 /*se_fechabaja IS NULL*/ ' +
                       'AND coworkers.ug_usuario = se_usuario ' +
                       'AND coworkers.ug_fechabaja IS NULL ' +
                       'AND EXISTS (SELECT 1 ' +
                                     'FROM art.mug_usuariogrupotrabajo usuario, art.mgp_gtrabajo ' +
                                    'WHERE usuario.ug_usuario = :usuario ' +
                                      'AND usuario.ug_fechabaja IS NULL ' +
                                      'AND DECODE(usuario.ug_tipousuario, ''01'', ''100'', ''04'', ''100'', usuario.ug_tipousuario) = DECODE(coworkers.ug_tipousuario, ''01'', ''100'', ''04'', ''100'', coworkers.ug_tipousuario) ' +
                                      'AND gp_codigo = ug_grupo ' +
                                      'AND gp_fbaja IS NULL ' +
                                      'AND coworkers.ug_grupo = usuario.ug_grupo) ' +
                       'AND coworkers.ug_usuario <> :usuario ' +
                     'UNION ' +
                    'SELECT se_id, se_nombre, se_mail ' +
                      'FROM art.use_usuarios coworkers ' +
                     'WHERE 1 = 1 /*coworkers.se_fechabaja IS NULL*/ ' +
                       'AND EXISTS (SELECT 1 ' +
                                     'FROM art.use_usuarios usuario ' +
                                    'WHERE usuario.se_usuario = :usuario ' +
                                      'AND coworkers.se_sector = usuario.se_sector ' +
                                      'AND (usuario.se_cargo = coworkers.se_cargo ' +
                                        'OR usuario.se_cargo IS NULL) ) ' +
                       'AND NOT EXISTS(SELECT 1 ' +
                                        'FROM art.mug_usuariogrupotrabajo usuario, art.mgp_gtrabajo ' +
                                       'WHERE usuario.ug_usuario = :usuario ' +
                                         'AND gp_codigo = ug_grupo ' +
                                         'AND gp_fbaja IS NULL ' +
                                         'AND usuario.ug_fechabaja IS NULL) ' +
                       'AND coworkers.se_usuario <> :usuario ' +
                     'UNION ' +
                    'SELECT se_id, se_nombre, se_mail ' +
                      'FROM art.use_usuarios coworkers ' +
                     'WHERE 1 = 1 /*coworkers.se_fechabaja IS NULL*/ ' +
                       'AND EXISTS (SELECT 1 ' +
                                     'FROM art.use_usuarios usuario ' +
                                    'WHERE usuario.se_usuario = :usuario ' +
                                      'AND coworkers.se_idsector = usuario.se_idsector ' +
                                      'AND (usuario.se_cargo = coworkers.se_cargo ' +
                                        'OR usuario.se_cargo IS NULL) ) ' +
                       'AND NOT EXISTS(SELECT 1 ' +
                                        'FROM art.mug_usuariogrupotrabajo usuario, art.mgp_gtrabajo ' +
                                       'WHERE usuario.ug_usuario = :usuario ' +
                                         'AND gp_codigo = ug_grupo ' +
                                         'AND gp_fbaja IS NULL ' +
                                         'AND usuario.ug_fechabaja IS NULL) ' +
                       'AND coworkers.se_usuario <> :usuario ' +
                     'UNION ' +
                    'SELECT exceptuante.se_id, exceptuante.se_nombre, exceptuante.se_mail ' +
                      'FROM agenda.aex_excepcionusuariotarea, art.use_usuarios exceptuados, art.use_usuarios exceptuante ' +
                     'WHERE 1 = 1 ' +
                       {
                       'AND exceptuados.se_fechabaja IS NULL ' +
                       'AND exceptuante.se_fechabaja IS NULL ' +
                        }
                       'AND exceptuante.se_id = ex_idusuario ' +
                       'AND exceptuados.se_id = ex_idexceptuado ' +
                       'AND exceptuados.se_usuario = :usuario ' +
                       'AND SYSDATE between ex_vigenciadesde AND NVL(ex_vigenciahasta, SYSDATE + 1) ' +
                       'AND ex_fechabaja IS NULL ' +
                       'AND ex_permanente = ''N'' ' +
                     'UNION ' +
                    'SELECT exceptuante.se_id, exceptuante.se_nombre, exceptuante.se_mail ' +
                      'FROM agenda.aex_excepcionusuariotarea, art.use_usuarios exceptuados, art.use_usuarios exceptuante ' +
                     'WHERE 1 = 1 ' +
                     {
                       'AND exceptuados.se_fechabaja IS NULL ' +
                       'AND exceptuante.se_fechabaja IS NULL ' +
                      }
                       'AND exceptuante.se_id = ex_idusuario ' +
                       'AND exceptuados.se_id = ex_idexceptuado ' +
                       'AND exceptuados.se_usuario = :usuario ' +
                       'AND ex_fechabaja IS NULL ' +
                       'AND ex_permanente = ''S'' ' +
                     'UNION ' +
                  '  SELECT empleados.se_id, empleados.se_nombre, empleados.se_mail ' +
                      'FROM art.use_usuarios empleados ' +
                     'WHERE 1 = 1 /*empleados.se_fechabaja IS NULL*/ ' +
                'START WITH empleados.se_usuario IN(SELECT DISTINCT exceptuante.se_usuario ' +
                                                              'FROM agenda.aex_excepcionusuariotarea, art.use_usuarios exceptuados, ' +
                                                                   'art.use_usuarios exceptuante ' +
                                                             'WHERE 1 = 1 ' +
                                                               {
                                                               'AND exceptuados.se_fechabaja IS NULL ' +
                                                               'AND exceptuante.se_fechabaja IS NULL ' +
                                                               }
                                                               'AND exceptuante.se_id = ex_idusuario ' +
                                                               'AND exceptuados.se_id = ex_idexceptuado ' +
                                                               'AND exceptuados.se_usuario = :usuario ' +
                                                               'AND (   (    SYSDATE BETWEEN ex_vigenciadesde ' +
                                                                                        'AND NVL(ex_vigenciahasta, SYSDATE + 1) ' +
                                                                        'AND ex_permanente = ''N'') ' +
                                                                    'OR (ex_permanente = ''S'' AND ex_fechabaja IS NULL))) ' +
          'CONNECT BY PRIOR empleados.se_usuario = empleados.se_respondea ' +
                       'AND empleados.se_usuario <> empleados.se_respondea ', '') + ') global, art.use_usuarios usr ' +
       'WHERE usr.se_id = global.se_id ' +
    'ORDER BY usr.se_fechabaja desc, usr.se_nombre ';

  with fraSeleccionUsuariosTareas do
  begin
    Clear;
    
    case rgVerTareas.ItemIndex of
      0: UsuariosAsignados.AddObject(Sesion.Usuario, TUserData.Create(Sesion.Id, Sesion.UserMail));
      1, 2: with GetQueryEx(sSQL, [Sesion.UserID]) do
            try
              while not Eof do
              begin
                UsuariosAsignados.AddObject(Fields[1].AsString, TUserData.Create(Fields[0].AsInteger, Fields[2].AsString));
                Next;
              end;
            finally
              Free;
            end;
      3: begin
           MostrarTodos := True;
           Load;
           btnPasarTodos.Click;
           MostrarTodos := False;
         end;
    end;

    if UsuariosAsignados.Count > 1 then
      lblUsuariosTareasAsignados.Caption := 'Hay mas de 1 usuario seleccionado'
    else if UsuariosAsignados.Count = 1 then
      lblUsuariosTareasAsignados.Caption := UsuariosAsignados.Strings[0]
    else
      lblUsuariosTareasAsignados.Caption := 'No hay seleccionados (asignaci�n autom�tica)';
  end;
  RefreshTreeView;
end;

procedure TfrmAgendaBase.ScheduleDeleteAppt(Sender: TObject; Appt: TJvTFAppt);
begin
  DeleteAppt(Appt);
end;

procedure TfrmAgendaBase.ScheduleLoadBatch(Sender: TObject; BatchName: String; BatchStartDate, BatchEndDate: TDate);
var
  Appt: TApptEvento;
begin
  with sdqTareas do
  begin
    if lblTituloUsuariosEventos.Caption <> Sesion.Usuario then
      Exit;
      
    EjecutarConsultaSolapa(sdqTareas, mcCalendario.DateFirst, FSQLTareas);
    while not EOF do
    begin
      Appt := TApptEvento(Schedule.FindAppt(FieldByName('ae_appid').AsString));

      if not Assigned(Appt) then
      begin
        Appt := TApptEvento.Create(Schedule, FieldByName('ae_appid').AsString);

        if FieldByName('AE_IDUSUARIO').AsInteger <> Sesion.ID then
          Appt.Color := COLOR_EVENTO_AJENO;

        if FieldByName('AE_ESTADO').AsInteger = ESTADO_EVENTO_TERMINADO then
          Appt.Color := COLOR_EVENTO_TERMINADO;

        if not FieldByName('AE_FECHABAJA').IsNull then
        begin
          Appt.BarColor := clMaroon;
          Appt.Description := 'Evento dado de baja';
          Appt.Refresh;
        end;            

        TfrmABMAgendaBaseEvento.AssignRecordToAppt(Appt, sdqTareas);
        Appt.AddSchedule('Eventos');
      end;
      Next;
    end;
    Close;
  end;
end;

procedure TfrmAgendaBase.SchedulePostAppt(Sender: TObject; Appt: TJvTFAppt);
begin
  PostAppt(Appt);
end;

procedure TfrmAgendaBase.ScheduleRefreshAppt(Sender: TObject; Appt: TJvTFAppt);
begin
//  RefreshAppt(Appt);
end;

procedure TfrmAgendaBase.sdqEventosAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TDateTimeField(sdqEventos.FieldByName('fechahora')).DisplayFormat := 'dd/mm/yyyy hh:nn';
  DynColWidthsByData(GridEventos);
  if sdqEventos.Active and not sdqEventos.IsEmpty then
    sdqEventos.First;
end;

procedure TfrmAgendaBase.sdqEventosAfterScroll(DataSet: TDataSet);
begin
//  edDetalle.Text := sdqEventos.FieldByName('detalle').AsString;
end;

procedure TfrmAgendaBase.tvTareasAsignarChange(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  try
    if Assigned(Node) and Assigned(Node.Data) and Assigned(Node.Parent) then
    begin
      edDescripcionTarea.Lines.Text := TApptBase(Node.Data).Descripcion;
      edDetalleTarea.Lines.Text := TApptBase(Node.Data).Detalle;

      if TApptTarea(Node.Data).FechaVencimiento > 0 then
        lbVencimiento.Caption := FormatDateTime('dd/mm/yyyy hh:nn"hs"', TApptTarea(Node.Data).FechaVencimiento)
      else
        lbVencimiento.Caption := 'Sin vencimiento';

      lbUsuario.Caption := TApptTarea(Node.Data).Usuario;
      edDescripcionTarea.Visible := True;
      edDetalleTarea.Visible := True;
      pnlVencimiento.Visible := True;
    end else
    begin
      edDescripcionTarea.Lines.Clear;
      edDetalleTarea.Lines.Clear;
      lbVencimiento.Caption := '';
      lbUsuario.Caption := '';      
      edDescripcionTarea.Visible := False;
      edDetalleTarea.Visible := False;
      pnlVencimiento.Visible := False;
    end;
  except
  end;
end;

procedure TfrmAgendaBase.tvTareasAsignarCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  inherited;
  Application.ProcessMessages;
  with Sender.Canvas do
  try
    if Assigned(Node.Data) and Assigned(Node.Parent) and (TObject(Node.Data) is TApptTarea) then
    try
      if not TApptTarea(Node.Data).Leido then
        Font.Style := [fsBold];
      {
      if TApptBase(Node.Data).IDUsuario <> Sesion.ID then
        Font.Color := COLOR_EVENTO_AJENO;
      }
    except
    end;
  except
  end;
end;

procedure TfrmAgendaBase.tvTareasAsignarDblClick(Sender: TObject);
begin
  inherited;
  Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
  if Assigned(tvTareasAsignar.Selected) and Assigned(tvTareasAsignar.Selected.Parent) and Assigned(tvTareasAsignar.Selected.Data) then
    btnModificarTareaClick(nil);
end;

procedure TfrmAgendaBase.tvTareasAsignarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F5 then
    acActualizar.Execute;
end;

procedure TfrmAgendaBase.tvTareasAsignarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssRight in Shift then
  begin
    if Assigned(tvTareasAsignar.GetNodeAt(X, Y)) then
      tvTareasAsignar.GetNodeAt(X, Y).Selected := True
    else
      tvTareasAsignar.Selected := nil;

    pmuTareas.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  end;
end;

procedure TfrmAgendaBase.tvTareasAsignarStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
//  Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
  if Assigned(tvTareasAsignar.Selected) and Assigned(tvTareasAsignar.Selected.Data) then
  begin
    if (TApptBase(tvTareasAsignar.Selected.Data).IDUsuario <> Sesion.ID) and (TApptBase(tvTareasAsignar.Selected.Data).IDUsuario > 0) then
    begin
      InfoHint(tvTareasAsignar, 'No se puede agendar o cerrar una tarea que no le pertenece.');
      CancelDrag;
    end;
  end;
end;

procedure TfrmAgendaBase.AgendarTarea(AEventoAsignar: TApptBase; AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta: TDateTime);
begin
  Verificar(tvTareasAsignar.SelectionCount <> 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');
  if Assigned(AEventoAsignar) and Assigned(tvTareasAsignar.Selected.Parent) and (TApptBase(AEventoAsignar) is TApptTarea) then
  try
    VerificarTarea(AEventoAsignar.IdTabla);
    Self.ModoABM := abmModificacion;
    Abrir(TfrmABMAgendaBaseEvento, frmABMAgendaBaseEvento, tmvNormal, nil);
    with frmABMAgendaBaseEvento do
    try
      ConvertTaskToEvent(TApptTarea(AEventoAsignar), AEventoAsignar.IdTabla);
      ModoCallCenter := Self.ModoCallCenter;
      //ModoABM := Self.ModoABM;
      AltaEvento(AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta);
      ModoABM := abmAlta;
    finally
      Visible := False;
      ShowModal;
      //if ShowModal = mrOk then
      begin
        RefreshTreeView;
        Actualizar; 
      end;
    end;
  finally
    Self.ModoABM := abmNone;
  end;
end;        

procedure TfrmAgendaBase.AnalizoCambioHorarioEvento(var AConfirm: Boolean; Appt: TJvTFAppt);
begin
  if (Appt.Color = COLOR_EVENTO_AJENO) or (TApptEvento(Appt).Estado = ESTADO_EVENTO_TERMINADO) then
  begin
    AConfirm := False;
    if (Appt.Color = COLOR_EVENTO_AJENO) then
      InfoHint(btnModificar, 'No se puede modificar el horario de un evento ajeno.');
    if (TApptEvento(Appt).Estado = ESTADO_EVENTO_TERMINADO) then
      InfoHint(btnModificar, 'No se puede modificar el horario de un evento ya finalizado.');
  end;
end;

procedure TfrmAgendaBase.ClearTreeView;
var
  i : Integer;
  objEventoAsignar: TApptBase;
begin
  AdvToolPanelTareas.Caption := 'Tareas pendientes';
  for i := 0 to tvTareasAsignar.Items.Count - 1 do
    if Assigned(tvTareasAsignar.Items[i].Data) and Assigned(tvTareasAsignar.Items[i].Parent) then
    try
      objEventoAsignar := TApptBase(tvTareasAsignar.Items[i].Data);
      if Assigned(objEventoAsignar) then
        FreeAndNil(objEventoAsignar); //Memory leak to be fixed... Already fixed??
    except
    end;

  tvTareasAsignar.Items.Clear;
end;

procedure TfrmAgendaBase.DeleteAppt(Appt: TJvTFAppt);
begin
  EliminarEvento(TApptEvento(Appt).IdTabla);
end;

procedure TfrmAgendaBase.EjecutarConsultaSolapa(AQuery: TSDQuery; ADateTime: TDateTime; ASql: String);
var
  sSQL: String;
  dFechaAux: TDateTimeEx;
begin
  if Trim(ASql) > '' then
  begin
    try
      if (lblUsuariosEventosAsignados.Caption = Sesion.Usuario) then
        sSQL := ' AND ae_idusuario = ' + IntToStr(Sesion.Id) + ' ' 
      else
        sSQL := ' AND EXISTS(SELECT 1 ' +
                              'FROM art.use_usuarios ' +
                             'WHERE se_id = ae_idusuario AND se_id IN (' + ObtenerUsuariosFiltradosEvento + ')) ';

      AQuery.Close;
      AddCondition_UNION(ASql, '1 = 1 ' + sSQL + DoFiltro(pnlFiltrosAutomaticos));

      //ASQL := StringReplace(ASQL, '--%usuario%', sSQL, [rfReplaceAll]);
      dFechaAux := TDateTimeEx.Create(ADateTime, False);
      try
        OpenQueryEx(AQuery, [dFechaAux, dFechaAux, dFechaAux{, Sesion.ID}], ASql);
      finally
        dFechaAux.Free;
      end;
    except
    end;
  end;
end;

procedure TfrmAgendaBase.GestionoDragDrop(Source: TObject; p: TPoint; AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta: TDateTime);
var
  objEventoAsignar: TApptBase;
begin
  Verificar(tvTareasAsignar.SelectionCount > 1, nil, 'Esta acci�n solo puede realizarse si se selecciona de a un registro.');

  objEventoAsignar := TApptBase(TTreeView(Source).Selected.Data);
  if Assigned(objEventoAsignar) and Assigned(TTreeView(Source).Selected.Parent) and (TApptBase(objEventoAsignar) is TApptTarea) then
  try
    VerificarTarea(objEventoAsignar.IdTabla);
    ModoABM := abmModificacion;
    Abrir(TfrmABMAgendaBaseEvento, frmABMAgendaBaseEvento, tmvNormal, nil);
    with frmABMAgendaBaseEvento do
    try
      ConvertTaskToEvent(TApptTarea(objEventoAsignar), objEventoAsignar.IdTabla);
      ModoCallCenter := Self.ModoCallCenter;
      ModoABM := Self.ModoABM;
      AltaEvento(AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta);
      ModoABM := abmAlta;
    finally
      Visible := False;
      ShowModal;
      //if ShowModal = mrOk then
      begin
        RefreshTreeView;
        Actualizar;
      end;
    end;
  finally
    ModoABM := abmNone;
  end;
end;

procedure TfrmAgendaBase.ManageAppt(AModoABM: TModoABM; objAppt: TJvTFAppt = nil;
                                    AFechaDesde: TDateTime = 0; AHoraDesde: TDateTime = 0;
                                    AFechaHasta: TDateTime = 0; AHoraHasta: TDateTime = 0);
  procedure CreateAppt(ApptObject: TApptEvento);
  var
    objNewAppt: TJvTFAppt;
  begin
    objNewAppt := TApptEvento.Create(Schedule, ApptObject.ID);
    with objNewAppt do
    begin
      Assign(ApptObject);
      RefreshAppt(objNewAppt);
    end;
  end;
begin
  Verificar((not Assigned(objAppt)) and (AModoABM = abmModificacion), btnModificar, 'No seleccion� ning�n evento para visualizar.');
  ModoABM := AModoABM;
  try
    Abrir(TfrmABMAgendaBaseEvento, frmABMAgendaBaseEvento, tmvNormal, nil);
    with frmABMAgendaBaseEvento do
    try
      ModoCallCenter := Self.ModoCallCenter;
      ModoABM := Self.ModoABM;

      if Assigned(objAppt) then
      begin
        ApptObject.Assign(TApptEvento(objAppt));
        LoadFromAppt(ApptObject);
      end else
        AltaEvento(AFechaDesde, AHoraDesde, AFechaHasta, AHoraHasta);

      Visible := False;
      if ShowModal = mrOK then
      begin
        if Assigned(objAppt) then
          objAppt.Assign(TApptEvento(ApptObject));
      end;
    finally
      FreeAndNil(frmABMAgendaBaseEvento);
      RefrescarAppts;
    end;
  finally
    ModoABM := abmNone;
  end;
end;

procedure TfrmAgendaBase.ManejarSeguimiento(AEstado: String; AImagen: Integer; AIdSeguimiento: Integer = 0);
var
  i: Integer;
begin
  for i := 0 to tvTareasAsignar.SelectionCount - 1 do
  begin
    if AIdSeguimiento = 0 then
      AIdSeguimiento := TApptTarea(tvTareasAsignar.Selections[i].Data).IdSeguimiento;

    EjecutarSQLEx('UPDATE agenda.ast_seguimientotarea ' +
                     'SET st_estado = :estado ' +
                   'WHERE st_id = :id', [AEstado, AIdSeguimiento]);

    OpenQuery(sdqTareasTreeview, GestionarConsultaTareas(FSQLTareasTreeview + ' AND tarea.at_id = ' + SqlInt(TApptTarea(tvTareasAsignar.Selected.Data).IdTabla)));
    TfrmABMAgendaBaseTarea.AssignRecordToAppt(TApptTarea(tvTareasAsignar.Selections[i].Data), sdqTareasTreeview);
    sdqTareasTreeview.Close;

    tvTareasAsignar.Selected.ImageIndex := AImagen;
    tvTareasAsignar.Selected.SelectedIndex := AImagen;
    tvTareasAsignar.Invalidate;
  end;
end;

procedure TfrmAgendaBase.mnuDerivarAClick(Sender: TObject);
var
  i, nIdTarea: Integer;
  bActualizar: Boolean;
begin
  bActualizar := False;

  for i := 0 to tvTareasAsignar.SelectionCount - 1 do
    if not Assigned(tvTareasAsignar.Selections[i].Data) then
      InfoHint(nil, 'Por favor no seleccione un nodo de agrupamiento para realizar una derivaci�n masiva.', True, 'Validaci�n', blnWarning);

  for i := 0 to tvTareasAsignar.SelectionCount - 1 do
    if Assigned(tvTareasAsignar.Selected) and Assigned(tvTareasAsignar.Selected.Data) and Assigned(tvTareasAsignar.Selections[i].Data) then
    begin
      BeginTrans(True);
      nIdTarea := TApptTarea(tvTareasAsignar.Selections[i].Data).IdTabla;
      VerificarTarea(nIdTarea);
      
      try
        if not TengoTareaAsignada(nIdTarea, Sesion.ID) then
        begin
          MarcarDerivacion(Sesion.UserID, nIdTarea, '');
          DerivarTarea(Sesion.ID, Sesion.UserMail, nIdTarea, False, tvTareasAsignar.SelectionCount < 2);
        end;

        MarcarDerivacion(Sesion.UserID, nIdTarea, 'Asignaci�n de la tarea a ' + StringReplace(TMenuItem(Sender).Caption, '&', '', [rfReplaceAll]));
        DerivarTarea(TMenuItem(Sender).Tag, TMenuItem(Sender).Hint, nIdTarea, False, tvTareasAsignar.SelectionCount < 2);
        bActualizar := True;
      finally
        CommitTrans(True);
      end;
    end else
      InfoHint(nil, 'No se pudo derivar la tarea.', False, 'Validaci�n', blnWarning);

  if bActualizar then
    RefreshTreeView;
end;

function TfrmAgendaBase.ObtenerUsuariosFiltradosEvento: String;
var
  i: Integer;
begin
  with TStringList.Create do
  try
    Duplicates := dupIgnore;
    //Add(IntToStr(Sesion.Id));

    for i := 0 to fraSeleccionUsuariosEventos.UsuariosAsignados.Count - 1 do
      Add(IntToStr(TUserData(fraSeleccionUsuariosEventos.UsuariosAsignados.Objects[i]).Id));

    Add(SQL_NULL);
    Result := CommaText;
  finally
    Free;
  end;
end;

function TfrmAgendaBase.ObtenerUsuariosFiltradosTarea: String;
var
  i: Integer;
begin                                                                       
  with TStringList.Create do
  try
    Duplicates := dupIgnore;
    //Add(IntToStr(Sesion.Id));
    
    for i := 0 to fraSeleccionUsuariosTareas.UsuariosAsignados.Count - 1 do
      Add(IntToStr(TUserData(fraSeleccionUsuariosTareas.UsuariosAsignados.Objects[i]).Id));

    Add(SQL_NULL);
    Result := CommaText;
  finally
    Free;
  end;
end;

procedure TfrmAgendaBase.OnEmpresaChange(Sender: TObject);
begin
  fraES_ID.Contrato := fraAE_CONTRATO.Contrato;
  fraAE_IDTRABAJADOR.IdEmpresa := fraAE_CONTRATO.ID;

  if fraAE_CONTRATO.IsSelected then
    fraAE_IDCONTACTO.LoadContrato(fraAE_CONTRATO.Contrato)
  else
    fraAE_IDCONTACTO.Clear;
end;

procedure TfrmAgendaBase.PostAppt(Appt: TJvTFAppt);
begin
  begin
    if Assigned(frmABMAgendaBaseEvento) then
      try
        frmABMAgendaBaseEvento.SaveApptToDataBase;
      except
        TApptEvento(Appt).SaveApptToDataBase(False, ModoABM);
      end
    else
      TApptEvento(Appt).SaveApptToDataBase(False, ModoABM);

    if sdqEventos.Active and not sdqEventos.IsEmpty then
      sdqEventos.Refresh;
  end;
end;

procedure TfrmAgendaBase.RefrescarAppts(ADateTime: TDateTime = 0);
var
  i: Integer;
  Appt: TApptEvento;
  dFechaAnterior: TDate;
  bEspera: Boolean;
begin
  if ADateTime = 0 then
    ADateTime := mcCalendario.DateFirst;

  for i := Schedule.ApptCount - 1 downto 0 do
  begin
    Schedule.Appts[i].ClearSchedules;
    Schedule.Appts[i].Free;
  end;
  Schedule.RefreshAppts;
  mcCalendario.BoldDays.Clear;
  bEspera := False;

  with sdqTareas do
  try
    EjecutarConsultaSolapa(sdqTareas, ADateTime, FSQLTareas);

    if false then
    //if Screen.ActiveForm = Self then
    begin
      bEspera := True;
      IniciarEspera('Cargando eventos...');
    end else
      bEspera := False;

    dFechaAnterior := 0;
    while not EOF do
    begin
      Appt := TApptEvento(Schedule.FindAppt(FieldByName('ae_appid').AsString));

      if not Assigned(Appt) then
      Begin
        Appt := TApptEvento.Create(Schedule, FieldByName('ae_appid').AsString);
        TfrmABMAgendaBaseEvento.AssignRecordToAppt(Appt, sdqTareas);
        if Appt.IdUsuario <> Sesion.ID then
          Appt.Color := COLOR_EVENTO_AJENO;

        if Appt.Estado = ESTADO_EVENTO_TERMINADO then
          Appt.Color := COLOR_EVENTO_TERMINADO;

        if not FieldByName('AE_FECHABAJA').IsNull then
        begin
          Appt.BarColor := clMaroon;
          Appt.Description := 'Evento dado de baja';
          Appt.Refresh;
        end;
        {
        if not FieldByName('ae_appid').IsNull then
          Appt.ID := FieldByName('ae_appid').AsString;
        }
        Appt.AddSchedule('Eventos');

        if dFechaAnterior <> Trunc(sdqTareas.FieldByName('ae_fechahorainicio').AsDateTime) then
          MarcarDiaEnCalendario(sdqTareas.FieldByName('ae_fechahorainicio').AsDateTime);

        dFechaAnterior := Trunc(sdqTareas.FieldByName('ae_fechahorainicio').AsDateTime);
      end;
      if bEspera then
      begin
        IniciarEspera('Cargando eventos ' + IntToStr(RecNo {$IFDEF VER150}+ 1{$ENDIF}) + ' de ' + IntToStr(RecordCount));
        DetenerEspera;
      end;

      Next;
    end;
    Close;
  finally
    if bEspera then
      DetenerEspera;
  end;
end;

procedure TfrmAgendaBase.RefreshAppt(Appt: TJvTFAppt);
begin
  if TApptEvento(Appt).StartDate <> FDiaSeleccionado then
    Exit;
    
  try
    Appt.ClearSchedules;
    OpenQueryEx(sdqGetApptQuery, [TApptEvento(Appt).IdTabla]);
    if sdqGetApptQuery.RecordCount = 1 then
      TfrmABMAgendaBaseEvento.AssignRecordToAppt(Appt, sdqGetApptQuery)
    else
      InfoHint(btnStart, 'Ocurri� un error inesperado, informe al buz�n sic@provart.com.ar de este suceso.');

    Appt.AddSchedule('Eventos');
  finally
    sdqGetApptQuery.Close;
  end;
end;

procedure TfrmAgendaBase.SetModoABM(const Value: TModoABM);
begin
  FModoABM := Value;

  acNuevoEvento.Enabled := (Value = abmNone) and Seguridad.Activar(acNuevoEvento);
  acModificarEvento.Enabled := (Value = abmNone) and Seguridad.Activar(acModificarEvento);
  acEliminarEvento.Enabled := (Value = abmNone) and Seguridad.Activar(acEliminarEvento);
  acAgendar.Enabled := Value = abmNone;

  btnAgregarTarea.Enabled := (Value = abmNone) and Seguridad.Activar(btnAgregarTarea);
  btnModificarTarea.Enabled := (Value = abmNone) and Seguridad.Activar(btnModificarTarea);
  btnEliminarTarea.Enabled := (Value = abmNone) and Seguridad.Activar(btnEliminarTarea);
end;

procedure TfrmAgendaBase.TitulosSemana;
begin
  with pSemana.Cols do
  begin
    Items[0].GroupTitle := 'Domingo';
    Items[1].GroupTitle := 'Lunes';
    Items[2].GroupTitle := 'Martes';
    Items[3].GroupTitle := 'Mi�rcoles';
    Items[4].GroupTitle := 'Jueves';
    Items[5].GroupTitle := 'Viernes';
    Items[6].GroupTitle := 'S�bado';
  end;
end;

procedure TfrmAgendaBase.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style and not WS_CAPTION;
end;

function TfrmAgendaBase.GestionarConsultaTareas(ASQL: String): String;
var
  sSQL, sAuxCaseDias: String;
begin
  sSQL := ASQL;
  sAuxCaseDias := 'CASE ' +
                       'WHEN TRUNC(tarea.%campo%) IS NULL THEN ''Sin fecha'' ' +
                       'WHEN TRUNC(tarea.%campo%) = TRUNC(SYSDATE) - 1 THEN ''Ayer'' ' +
                       'WHEN TRUNC(tarea.%campo%) = TRUNC(SYSDATE)     THEN ''Hoy'' ' +
                       'WHEN TRUNC(tarea.%campo%) = TRUNC(SYSDATE) + 1 THEN ''Ma�ana'' ' +
                       'WHEN tarea.%campo% < TRUNC(SYSDATE) - 28 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) THEN ''Antiguos'' ' +
                       'WHEN TRUNC(tarea.%campo%) BETWEEN TRUNC(SYSDATE) - 27 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) AND TRUNC(SYSDATE) - 21 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) THEN ''Hace cuatro semanas'' ' +
                       'WHEN TRUNC(tarea.%campo%) BETWEEN TRUNC(SYSDATE) - 20 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) AND TRUNC(SYSDATE) - 14 - TO_NUMBER(TO_CHAR(SYSDATE, ''d''))  THEN ''Hace tres semanas'' ' +
                       'WHEN TRUNC(tarea.%campo%) BETWEEN TRUNC(SYSDATE) - 13 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) AND TRUNC(SYSDATE) - 07 - TO_NUMBER(TO_CHAR(SYSDATE, ''d''))  THEN ''Hace dos semanas'' ' +
                       'WHEN TRUNC(tarea.%campo%) BETWEEN TRUNC(SYSDATE) - 06 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) AND TRUNC(SYSDATE) - 00 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) THEN ''La semana pasada'' ' +

                       'WHEN TRUNC(tarea.%campo%) BETWEEN TRUNC(SYSDATE) + 08 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) AND TRUNC(SYSDATE) + 14 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) THEN ''La semana que viene'' ' +
                       'WHEN TRUNC(tarea.%campo%) BETWEEN TRUNC(SYSDATE) + 15 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) AND TRUNC(SYSDATE) + 21 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) THEN ''Dentro de dos semanas'' ' +
                       'WHEN TRUNC(tarea.%campo%) > TRUNC(SYSDATE) + 22 - TO_NUMBER(TO_CHAR(SYSDATE, ''d'')) THEN ''A futuro'' ' +
                       'ELSE INITCAP (TO_CHAR (tarea.%campo%, ''day'')) END';

  case rgAgrupaciones.ItemIndex of
    0 : AddField(sSQL, StringReplace(sAuxCaseDias, '%campo%', 'at_fechaalta', [rfReplaceAll]) , 'AGRUPAR');
    1 : AddField(sSQL, StringReplace(sAuxCaseDias, '%campo%', 'at_fechavencimiento', [rfReplaceAll]) , 'AGRUPAR');
    2 : AddField(sSQL, 'NVL((SELECT pr_descripcion FROM agenda.apr_prioridades WHERE pr_id = tarea.AT_PRIORIDAD), ''Sin prioridad asignada'')', 'AGRUPAR');
    3 : AddField(sSQL, 'NVL(NVL((SELECT em_nombre FROM afi.aem_empresa, aco_contrato WHERE em_id = co_idempresa AND co_contrato = tarea.AT_CONTRATO),' +
                              ' (SELECT em_nombre FROM afi.aem_empresa, aco_contrato WHERE em_id = co_idempresa AND co_idformulario = tarea.AT_IDFORMULARIO)), ' +
                          ' ''Sin empresa asignada'')', 'AGRUPAR');
    4 : AddField(sSQL, '(SELECT mi_descripcion FROM agenda.ami_motivoingreso where tarea.at_idmotivoingreso = mi_ID)', 'AGRUPAR');
    5 : AddField(sSQL, 'tipoevento.te_descripcion ', 'AGRUPAR');
    6 : AddField(sSQL, 'DECODE (tarea.AT_LEIDO, ''S'', ''Le�do'', ''N'', ''No Le�do'')', 'AGRUPAR');
    7 : AddField(sSQL, 'NVL((SELECT gp_descripcion FROM art.mgp_gtrabajo, art.sex_expedientes WHERE ex_id = tarea.AT_IDEXPEDIENTE AND gp_codigo = ex_gtrabajo), ''Sin grupo de trabajo'')', 'AGRUPAR');
    8 : AddField(sSQL, 'NVL((SELECT tb_descripcion ' +
                              'FROM art.ctb_tablas, art.ccp_codigopostal, art.cpr_prestador, art.crp_regionesprestador, art.sau_autorizaciones ' +
                             'WHERE au_idexpediente = tarea.at_idexpediente and at_numauto = au_numauto ' +
                               'AND NVL(au_identifapro, au_identifprestador) = rp_prestador ' +
                               'AND rp_region = tb_codigo ' +
                               'AND rp_prestador = ca_identificador ' +
                               'AND cp_codigo = ca_codpostal ' +
                               'AND cp_localidad = ca_localidad ' +
                               'AND rp_domicilio = ''S'' ' +
                               'AND tb_clave = ''REGSA''), ''Sin regi�n sanitaria'')', 'AGRUPAR');
    9 : AddField(sSQL, '(SELECT se_nombre FROM art.use_usuarios WHERE se_id = NVL(at_idusuario, st_idusuario))', 'AGRUPAR');
    10: AddField(sSQL, '(SELECT el_nombre FROM art.del_delegacion, art.use_usuarios WHERE se_delegacion = el_id AND se_id = NVL(at_idusuario, st_idusuario))', 'AGRUPAR');
    11: AddField(sSQL, 'NVL((SELECT tj_nombre FROM ctj_trabajador WHERE tj_id = tarea.AT_IDTRABAJADOR), ''Sin trabajador asociado'')', 'AGRUPAR');
    12: AddField(sSQL, 'NVL((SELECT en_nombre FROM xen_entidad WHERE at_identidad = en_id), ''Sin entidad asociada'')', 'AGRUPAR');    
  end;

  case rgAgrupaciones.ItemIndex of
    0 : sSQL := sSQL + 'ORDER BY tarea.AT_FECHAALTA desc ';
    1 : sSQL := sSQL + 'ORDER BY tarea.AT_FECHAVENCIMIENTO desc ';
    2 : sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    3 : sSQL := sSQL + 'ORDER BY NVL(NVL((SELECT em_nombre FROM afi.aem_empresa, aco_contrato WHERE em_id = co_idempresa AND co_contrato = tarea.AT_CONTRATO), ' +
                                        '(SELECT em_nombre FROM afi.aem_empresa, aco_contrato WHERE em_id = co_idempresa AND co_idformulario = tarea.AT_IDFORMULARIO)), ' +
                                   ' ''Sin empresa asignada''), at_id desc ';
    4 : sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    5 : sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    6 : sSQL := sSQL + 'ORDER BY at_leido desc, at_id desc ';
    7 : sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    8 : sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    9 : sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    10: sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';
    11: sSQL := sSQL + 'ORDER BY (SELECT tj_nombre FROM ctj_trabajador WHERE tj_id = tarea.AT_IDTRABAJADOR), at_id desc ';
    12: sSQL := sSQL + 'ORDER BY "AGRUPAR", at_id desc ';    
  end;
  Result := sSQL;
end;

function TfrmAgendaBase.GetDescripcionEvento(AIdTipoEvento: Integer): String;
begin
  Result := ValorSQLEx('SELECT mi_descripcion || :txt || te_descripcion ' +
                         'FROM agenda.ate_tipoevento, agenda.ati_tipoeventomotivoingreso, agenda.ami_motivoingreso ' +
                        'WHERE ti_idmotivoingreso = mi_id ' +
                          'AND ti_idtipoevento = te_id ' +
                          'AND te_id = :id', [' | ', AIdTipoEvento]);
end;

procedure TfrmAgendaBase.lblUsuariosTareasAsignadosClick(Sender: TObject);
begin
  with fraSeleccionUsuariosTareas do
  begin
    Load;
    //UsuariosAsignados.AddObject(Sesion.Usuario, TUserData.Create(Sesion.Id, Sesion.UserMail));
    if fpSeleccionUsuariosTareas.ShowModal = mrOk then
    begin
      if UsuariosAsignados.Count > 1 then
        lblUsuariosTareasAsignados.Caption := 'Hay mas de 1 usuario seleccionado'
      else if UsuariosAsignados.Count = 1 then
        lblUsuariosTareasAsignados.Caption := UsuariosAsignados.Strings[0]
      else
        lblUsuariosTareasAsignados.Caption := 'No hay seleccionados (asignaci�n autom�tica)';

      Actualizar;
      RefreshTreeView;
    end;
  end;
end;

procedure TfrmAgendaBase.MarcarDiaEnCalendario(AFechaEvento: TDateTime);
var
  Y, M, D: Word;
begin
  DecodeDate(AFechaEvento, Y, M, D);
  mcCalendario.Bold[Y,M,D] := True;
end;

procedure TfrmAgendaBase.PageControlTiempoChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
var
  vFechaDom: TDate;
begin
  if (ToPage = tsEventos.PageIndex) then
  begin
    mcCalendarioSelChange(mcCalendario, mcCalendario.DateFirst, mcCalendario.DateLast);
  end else
    if (ToPage = tsMes.PageIndex) then
    begin
      pMes.DisplayDate := FDiaSeleccionado;
      pMes.SchedNames.Clear;
      pMes.SchedNames.Add('Eventos');
      pMes.Refresh;
      mcCalendarioSelChange(mcCalendario, mcCalendario.DateFirst, mcCalendario.DateLast);
    end else
      if (ToPage = tsSemana.PageIndex) then
      begin
        vFechaDom := ValorSqlDateTimeEx('SELECT :fecha - (TO_CHAR(:fecha,''D'')-1) FROM DUAL', [TDateTimeEx.Create(FDiaSeleccionado)]);
        pSemana.GotoDate(vFechaDom);
        pSemana.Refresh;
        TitulosSemana;
        mcCalendarioSelChange(mcCalendario, FDiaSeleccionado, FDiaSeleccionado);
      end else
      if (ToPage = tsDia.PageIndex) then
      begin
        pDia.GotoDate(FDiaSeleccionado);
        pDia.Template.LinearName := 'Eventos';
        pDia.Cols.Items[0].GroupTitle := ValorSqlEx('SELECT TO_CHAR(:fecha,''DAY'') from dual', [TDateTimeEx.Create(FDiaSeleccionado)]);
        pDia.Refresh;
        mcCalendarioSelChange(mcCalendario, FDiaSeleccionado, FDiaSeleccionado);
      end;

  RefrescarAppts;
end;

function TfrmAgendaBase.GetNodeByText(ATree: TTreeView; AValue: String; AVisible: Boolean): TTreeNode;
var
  Node: TTreeNode;
begin
  Result := nil;

  if ATree.Items.Count = 0 then
    Exit;
    
  Node := ATree.Items[0];
  while Node <> nil do
  begin
    if Assigned(Node) and Assigned(Node.Data) and
      ((InStr(UpperCase(TApptTarea(Node.Data).Detalle), UpperCase(AValue)) > 0) or
       (InStr(UpperCase(TApptTarea(Node.Data).Descripcion), UpperCase(AValue)) > 0)) then
    begin
      Result := Node;
      if AVisible then
        Result.MakeVisible;
      Break;
    end;
    Node := Node.GetNext;
  end;
end;

procedure TfrmAgendaBase.RefreshTreeView;
var
  objTareaArbol: TApptTarea;
  sDatoAnterior: String;
  tnNodoHijo, tnNodoPadre, tnNodoPadreAnterior: TTreeNode;
  sSql, sAux: String;
  bEspera: Boolean;
  iCounter, iCounterGlobal, iTareaAnterior, iInsatisfaccion: Integer;
begin
  tvTareasAsignarChange(nil, nil);

  if rgVerTareas.ItemIndex < 3 then
    sAux := 'AND se_id IN (' + ObtenerUsuariosFiltradosTarea + ')'
  else
    sAux := '';

  sSQL := //' AND art.agenda_pkg.get_privacidad(NVL(seguimiento.st_idusuario, tarea.AT_IDUSUARIO), tipoevento.te_id, ' + SqlValue(Sesion.ID) + ') = ''S'' ' +
          ' AND EXISTS(SELECT 1 ' +
                        'FROM art.use_usuarios ' +
                       'WHERE se_id = seguimiento.st_idusuario ' + sAux +
                       'UNION ' +
                      'SELECT 1 ' +
                        'FROM art.use_usuarios ' +
                       'WHERE se_id = tarea.at_idusuario ' + sAux + ')' +
          ' AND (seguimiento.st_estado IN (''T'', ''A'') OR seguimiento.st_estado IS NULL) ';
  ClearTreeView;

  if Screen.ActiveForm = Self then
  begin
    bEspera := True;
    IniciarEspera('Actualizando tareas...');
  end else
    bEspera := False;
  
  try
    dUltimaActualizacionTareas := DBDateTime;
    OpenQuery(sdqTareasTreeview, GestionarConsultaTareas(FSQLTareasTreeview + sSQL));
    tnNodoPadre := nil;
    tnNodoPadreAnterior := nil;
    iTareaAnterior := 0;
    iCounter := 0;
    iCounterGlobal := 0;
    edDescripcionTarea.Lines.Clear;
    with sdqTareasTreeview do
    begin
      pnlAgrupandoPor.Caption := '';

      while not EOF do
      begin
        iInsatisfaccion := iif(FieldByName('AT_INSATISFACCION').AsString = 'S', 10, 0); 
        pnlAgrupandoPor.Caption := 'Agrupando por ' + rgAgrupaciones.Items[rgAgrupaciones.ItemIndex];

        if sDatoAnterior <> FieldByName('AGRUPAR').AsString then
        begin
          tnNodoPadre := tvTareasAsignar.Items.AddChild(nil, Trim(FieldByName('AGRUPAR').AsString));
          tnNodoPadre.ImageIndex := 0;

          if Assigned(tnNodoPadreAnterior) then
            tnNodoPadreAnterior.Text := tnNodoPadreAnterior.Text + ' (' + IntToStr(iCounter) + ')';

          tnNodoPadreAnterior := tnNodoPadre;
          iCounter := 0;
        end;

        Application.ProcessMessages;
        objTareaArbol := TApptTarea.Create(ScheduleTareas, '');
        TfrmABMAgendaBaseTarea.AssignRecordToAppt(objTareaArbol, sdqTareasTreeview);

        if FieldByName('at_id').AsInteger <> iTareaAnterior then
        begin
          Inc(iCounter);
          Inc(iCounterGlobal);
        end;

        iTareaAnterior := FieldByName('at_id').AsInteger;

        tnNodoHijo := tvTareasAsignar.Items.AddChild(tnNodoPadre,
                                                     FieldByName('descripcion').AsString + ' - ' +
                                                     FieldByName('at_id').AsString + ' - ' +
                                                     FieldByName('usuario').AsString);

        with tnNodoHijo do
        begin
          Data := objTareaArbol;

          if (not FieldByName('AT_IDUSUARIO').IsNull) and (FieldByName('AT_IDUSUARIO').AsInteger <> Sesion.ID) then
          begin
            ImageIndex := ESTADO_TAREA_BLOQUEADA;
            with tvTareasAsignar.Items.AddChild(tnNodoHijo, 'Esta tarea est� tomada por ' + FieldByName('usuario').AsString) do
            begin
              ImageIndex := ESTADO_TAREA_INFO;
              SelectedIndex := ImageIndex;            
            end;
          end else if FieldByName('AT_IDUSUARIO').AsInteger = Sesion.ID then
            ImageIndex := ESTADO_TAREA_TOMADA
          else if FieldByName('AT_IDBLOQUEO').IsNull then
            ImageIndex := ESTADO_TAREA_LIBRE
          else
            ImageIndex := ESTADO_DESCONOCIDO;

          if ImageIndex = ESTADO_TAREA_BLOQUEADA then
            Hint := 'Tarea bloqueada por ' + FieldByName('se_nombre').AsString
          else
            Hint := '';

          ImageIndex := ImageIndex + iInsatisfaccion;

          SelectedIndex := ImageIndex;
        end;

        if sDatoAnterior <> FieldByName('AGRUPAR').AsString then
        begin
          sDatoAnterior := FieldByName('AGRUPAR').AsString;
        end;
        Next;
      end;

      if Assigned(tnNodoPadreAnterior) and (iCounter > 0) then
        tnNodoPadreAnterior.Text := tnNodoPadreAnterior.Text + ' (' + IntToStr(iCounter) + ')';

      if not IsEmpty then
        AdvToolPanelTareas.Caption := 'Tareas pendientes (' + IntToStr(iCounterGlobal{RecordCount}) + ')'
      else
        AdvToolPanelTareas.Caption := 'Tareas pendientes';
      Close;

      if iCounterGlobal < 10 then
        tvTareasAsignar.FullExpand;
        
      if tvTareasAsignar.Items.GetFirstNode <> nil then
        tvTareasAsignar.Items.GetFirstNode.Selected := True;
    end;
  finally
    if bEspera then
      DetenerEspera;

    PermisoBotonesAlcance;
  end;
end;

procedure TfrmAgendaBase.mnuBuscarUnDatoClick(Sender: TObject);
begin
  if not pnlBusqueda.Visible then
  begin
    pnlBusqueda.Visible := True;
    edBuscar.SetFocus;
  end else
    pnlBusqueda.Visible := False;  
end;

procedure TfrmAgendaBase.edBuscarChange(Sender: TObject);
var
  tn: TTreeNode;
begin
  pnlBusqueda.Visible := True;
  tn := GetNodeByText(tvTareasAsignar, edBuscar.Text, True);
  if tn = nil then
  begin
    edBuscar.Color := $008080FF;
  end else
  begin
    tn.Selected := True;
    edBuscar.Color := clWindow;
  end;
end;

procedure TfrmAgendaBase.edBuscarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F3) or (Key = VK_ESCAPE) then
    btnCerrarPanelClick(nil);
end;

procedure TfrmAgendaBase.btnCerrarPanelClick(Sender: TObject);
begin
  pnlBusqueda.Visible := False;
  tvTareasAsignar.SetFocus;  
end;

end.
