unit unBusqSini;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, StdCtrls, ToolEdit, RxLookup, Mask,
  Db, SDEngine, Buttons, ExtCtrls, CustomDlgs, ComCtrls, ToolWin, ImgList, General,
  Menus, CUIT, ShortCutControl, IntEdit, unFraEmpresa,
  unArtFrame, unArtDBAwareFrame, unArtDbFrame, unFraTrabajador, SinEdit;

type
  TdlgBusqSini = class(TForm)
    grpTrabajador: TGroupBox;
    dbgBusqueda: TRxDBGrid;
    sdqBusqueda: TSDQuery;
    dsBusqueda: TDataSource;
    pmnuOrden: TPopupMenu;
    mnuOrdSinOrdenRec: TMenuItem;
    mnuOrdTrabajador: TMenuItem;
    mnuOrdEmpresa: TMenuItem;
    N1: TMenuItem;
    Label1: TLabel;
    edDiagnostico: TEdit;
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
    ShortCutControl: TShortCutControl;
    tbHerramientas: TToolBar;
    tbRefrescar: TToolButton;
    tbOrden: TToolButton;
    tbSeparador2: TToolButton;
    tbSalir: TToolButton;
    fraTrabajadorSiniestrado: TfraTrabajador;
    tbSeleccionar: TToolButton;
    tbExplorarHistoricoEstado: TToolBar;
    tbHistoricoEstados: TToolButton;
    edSiniestro: TSinEdit;
    lbTrabNombre: TLabel;
    tbLimpiar: TToolButton;
    procedure sdqBusquedaAfterScroll(DataSet: TDataSet);
    procedure tbSalirClick(Sender: TObject);
    procedure mnuOrdenClick(Sender: TObject);
    procedure tbRefrescarClick(Sender: TObject);
    procedure tbLimpiarClick(Sender: TObject);
    procedure dbgBusquedaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgBusquedaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShortCutControlShortCuts3ShortCutPress(Sender: TObject);
    function MostrarSiniestros(sCuil : String): boolean ;

    function SiniestroSeleccionado(Index: integer): TFields;
    procedure tbSeleccionarClick(Sender: TObject);
    procedure tbHistoricoEstadosClick(Sender: TObject);
  private
    FFechaNotificacion: TDateTime;
    procedure Buscar;
    function Validar: Boolean;
    procedure SetFechaNotificacion(const Value: TDateTime);
  public
    Siniestro, Orden, Recaida : Cardinal;
    property FechaNotificacion: TDateTime read FFechaNotificacion write SetFechaNotificacion;
  end;

resourcestring
  MENSAJEVALIDAFECHANOTIFICACION = 'La fecha del siniestro no puede ser posterior a la fecha de notificaci�n de la demanda.';
  MENSAJEVALIDAFECHANOTIFICACION_TITULO = 'Siniestros';

var
  dlgBusqSini: TdlgBusqSini;

implementation

uses unDmPrincipal, unDmLegales, AnsiSql, SqlFuncs;

{$R *.DFM}
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.Buscar;
Var Sql : String;
begin
     Sql := ' SELECT EX_SINIESTRO, EX_ORDEN, EX_RECAIDA, ' +
                   ' EX_SINIESTRO || ''/'' || EX_ORDEN || ''/'' || EX_RECAIDA CODSINI, ' +
                   ' EX_SINIESTRORED, MP_CONTRATO, MP_CUIT, MP_NOMBRE, TJ_CUIL, TJ_NOMBRE, ' +
                   ' EX_DIAGNOSTICO, EX_FECHAACCIDENTE, EX_BAJAMEDICA, EX_FECHARECAIDA, EX_ALTAMEDICA, TB_DESCRIPCION ' +
            ' FROM CTB_TABLAS, CTJ_TRABAJADORES, CMP_EMPRESAS, SEX_EXPEDIENTES ' +
            ' WHERE NVL(LTRIM(EX_TIPO), ''1'') = TB_CODIGO(+) ' +
            ' AND TB_CLAVE = ''STIPO'' ' +
            ' AND NOT NVL(EX_CAUSAFIN,''0'') IN (''99'', ''95'') ' +
            ' AND MP_CUIT = EX_CUIT ' +
            ' AND TJ_CUIL = EX_CUIL ' ;
    if (Trim(fraTrabajadorSiniestrado.mskCUIL.Text) <> '') Then
        Sql := Sql +  ' AND EX_CUIL = ''' + fraTrabajadorSiniestrado.mskCUIL.Text + ''' ';
    if edSiniestro.Siniestro <> 0 then
        Sql := Sql +  ' AND EX_SINIESTRO = ' + SqlValue(edSiniestro.Siniestro) +
                      ' AND EX_ORDEN = ' + SqlValue(edSiniestro.Orden);

    //-----------------------------------------------------------------------//
    If (Sql <> '') And (Sql <> sdqBusqueda.Sql.Text) Then begin
         Sql := Sql + ' ORDER BY ' + Switch(tbOrden.Tag,['EX_SINIESTRO, EX_ORDEN, EX_RECAIDA',
                                                         'EX_CUIL',
                                                         'EX_CUIT']);

        sdqBusqueda.Close ;
        sdqBusqueda.Sql.Text := Sql;
        sdqBusqueda.Open ;
        tbRefrescar.Enabled  := True;
        if Visible Then
           dbgBusqueda.SetFocus ;
    end;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.sdqBusquedaAfterScroll(DataSet: TDataSet);
begin
    fraTrabajadorSiniestrado.CUIL := sdqBusquedaTJ_CUIL.AsString;
    edDiagnostico.Text := sdqBusquedaEX_DIAGNOSTICO.AsString ;

    Siniestro := sdqBusquedaEX_SINIESTRO.AsInteger ;
    Orden     := sdqBusquedaEX_ORDEN.AsInteger ;
    Recaida   := sdqBusquedaEX_RECAIDA.AsInteger ;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.tbSalirClick(Sender: TObject);
begin
    ModalResult := mrCancel ;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.mnuOrdenClick(Sender: TObject);
begin
    tbOrden.Tag := TMenuItem(Sender).Tag;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.tbRefrescarClick(Sender: TObject);
begin

  Buscar;
(*
    if sdqBusqueda.Active Then begin
        sdqBusqueda.Close ;
        sdqBusqueda.Open ;
    end;
*)
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.tbLimpiarClick(Sender: TObject);
begin
//    tbRefrescar.Enabled  := False;
//    edDiagnostico.Text   := '';
{    fraEmpresa.edContrato.Text:=''; }
{    fraEmpresa.cmbRSocial.Clear; }
    fraTrabajadorSiniestrado.Clear;
    edSiniestro.Clear;
    sdqBusqueda.Close ;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.dbgBusquedaKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 Then
        dbgBusquedaDblClick( Nil )
   else if Key = #27 Then
        tbSalirClick( Nil );
end;

{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.dbgBusquedaDblClick(Sender: TObject);
begin
   if Validar then
    ModalResult := mrOk;
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.FormShow(Sender: TObject);
begin
   //  tbBuscarClick( Nil ); . Lo saqu� porque buscaba dos veces(previa pregunta a Fede). by LU.
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.FormCreate(Sender: TObject);
begin
{     fraEmpresa.OnChange := onFraEmpresaChange; }
     //---- El formulario es el 90% de la pantalla
     Height := Trunc(Screen.Height * 0.9);
     Width  := Trunc(Screen.Width * 0.9);
     //Ticket 65384
     Self.SetFechaNotificacion(0);
{     grpEmpresa.Enabled := CheckStoreProc('AFI'); // Si el Paquete AFI est� inv�lido desactiva la seleccion por empresa }
end;
{----------------------------------------------------------------------------------------------------------------------}
procedure TdlgBusqSini.SetFechaNotificacion(const Value: TDateTime);
begin
  //Ticket 65384
  FFechaNotificacion := Value;
end;

procedure TdlgBusqSini.ShortCutControlShortCuts3ShortCutPress( Sender: TObject);
begin
     tbOrden.CheckMenuDropdown ;
end;
{----------------------------------------------------------------------------------------------------------------------}
function TdlgBusqSini.MostrarSiniestros(sCuil: String) : boolean ;
begin
      if sCuil <> '' then
      begin
        grpTrabajador.Enabled := false;
        fraTrabajadorSiniestrado.CUIL := sCuil;
        Buscar;
      end else grpTrabajador.Enabled := true;

      result := ShowModal = mrOk;
end;


function TdlgBusqSini.SiniestroSeleccionado(Index : integer) : TFields;
begin
  result := nil;
  if Index < dbgBusqueda.SelectedRows.Count then begin
    sdqBusqueda.GotoBookmark(pointer(dbgBusqueda.SelectedRows.Items[index]));
    result := sdqBusqueda.Fields;
  end;
end;


procedure TdlgBusqSini.tbSeleccionarClick(Sender: TObject);
begin
  if dbgBusqueda.SelectedRows.Count = 0 then
  begin
    InvalidMsg(dbgBusqueda, 'No hay siniestros seleccionados. Cliquee sobre el siniestro y luego seleccione.');
    Exit;
  end;

  ModalResult := mrOk;
end;

function TdlgBusqSini.Validar: Boolean;
begin
  //Ticket 65384
  if FechaNotificacion = 0 then
    Result :=  true
  else begin

  if  sdqBusqueda.FieldByName('EX_FECHAACCIDENTE').AsDateTime <= FechaNotificacion then begin
    Result := True;
  end else begin
    MessageBox(0, PChar(MENSAJEVALIDAFECHANOTIFICACION), PChar(MENSAJEVALIDAFECHANOTIFICACION_TITULO), MB_ICONWARNING or MB_OK);
    Result := False;
  end;
  {
  Result := VerificarMultiple(['Siniestro',
                                dbgBusqueda,
                                sdqBusqueda.FieldByName('EX_FECHAACCIDENTE').AsDateTime >= FechaNotificacion,
                                mensaje
                              ]);
  }
  end;
end;

procedure TdlgBusqSini.tbHistoricoEstadosClick(Sender: TObject);
begin
  Buscar;
end;

end.
