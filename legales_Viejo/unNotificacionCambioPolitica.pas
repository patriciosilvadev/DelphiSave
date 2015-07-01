unit unNotificacionCambioPolitica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unCustomConsulta, FieldHider,
  ShortCutControl, RxPlacemnt, artSeguridad, QueryPrint, QueryToFile,
  ExportDialog, SortDlg, Data.DB, SDEngine, Vcl.Grids, Vcl.DBGrids, RxDBCtrl,
  ArtComboBox, ArtDBGrid, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, PatternEdit, ComboEditor, CheckCombo, unArtFrame, unArtDBAwareFrame,
  unFraCodigoDescripcion, unfraAbogadosLegales, unGrids, RxRichEd,
  unFraToolbarRTF, FormPanel, JvExExtCtrls, JvNavigationPane, JvgGroupBox;

type
  TfrmNotificacionCambioPolitica = class(TfrmCustomConsulta)
    cmbTipoAbogado: TCheckCombo;
    Label1: TLabel;
    fraAbogado: TfraAbogadosLegales;
    Label2: TLabel;
    tbSeleccionarTodo: TToolButton;
    tbEnvioMail: TToolButton;
    pnGenerarDocumento: TFormPanel;
    Label4: TLabel;
    btnAceptarGenerarDocumento: TButton;
    btnCancelGenerarDocumento: TButton;
    pnlInferior: TPanel;
    fraToolbarRTF: TfraToolbarRTF;
    edTextoDocumento: TRxRichEdit;
    Label3: TLabel;
    edAsunto: TEdit;
    gbDatosJuicio: TJvgGroupBox;
    JvOutlookSplitter1: TJvOutlookSplitter;
    GridMailAsociado: TArtDBGrid;
    sdqEmailAsociados: TSDQuery;
    dsEmailAsociados: TDataSource;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    tbContenidoMail: TToolButton;
    tbDeseleccionarTodo: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure tbRefrescarClick(Sender: TObject);
    procedure GridCellClick(Column: TColumn);
    procedure FSFormDestroy(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbLimpiarClick(Sender: TObject);
    procedure tbSeleccionarTodoClick(Sender: TObject);
    procedure tbEnvioMailClick(Sender: TObject);
    procedure btnAceptarGenerarDocumentoClick(Sender: TObject);
    procedure sdqConsultaAfterScroll(DataSet: TDataSet);
    procedure tbContenidoMailClick(Sender: TObject);
    procedure tbDeseleccionarTodoClick(Sender: TObject);
  private
    { Private declarations }
    SelectedList: TBookMarkLst;
  public
    { Public declarations }
  end;

var
  frmNotificacionCambioPolitica: TfrmNotificacionCambioPolitica;

implementation

{$R *.dfm}
uses AnsiSql, CustomDlgs, unMoldeEnvioMail, unDmprincipal, unSesion, VCLExtra,
  unEspera;

procedure TfrmNotificacionCambioPolitica.btnAceptarGenerarDocumentoClick(
  Sender: TObject);
begin
  inherited;
  Verificar(edAsunto.Text = '', edAsunto, 'Debe seleccionar un Asunto');
  Verificar(edTextoDocumento.Lines.Text = '', edTextoDocumento,'Debe agregar un texto a notificar.');
  pnGenerarDocumento.ModalResult := mrOk;
end;

procedure TfrmNotificacionCambioPolitica.FormCreate(Sender: TObject);
begin
  inherited;
  SelectedList := TBookMarkLst.Create;
  cmbTipoAbogado.Items.AddObject('MEDIADOR',TObject(1 ));
  cmbTipoAbogado.Items.AddObject('OPONENTE',TObject(2) );
  cmbTipoAbogado.Items.AddObject('PARTE',TObject(3));
  cmbTipoAbogado.Items.AddObject('SUMARIANTE',TObject(4));

  fraAbogado.ExtraCondition := 'AND BO_DIRELECTRONICA IS NOT NULL ';
  fraToolbarRTF.Edit := edTextoDocumento;

  tbEnvioMail.Left := ToolButton5.Left + 1;
  tbDeseleccionarTodo.Left := ToolButton5.Left + 1;
  tbSeleccionarTodo.Left := ToolButton5.Left + 1;

end;

procedure TfrmNotificacionCambioPolitica.FSFormDestroy(Sender: TObject);
begin
  SelectedList.Free;
  inherited;
end;

procedure TfrmNotificacionCambioPolitica.GridCellClick(Column: TColumn);
begin
  inherited;
  if sdqConsulta.Active and not sdqConsulta.IsEmpty and (Column.FieldName = 'SELECTED') then
  begin
    if SelectedList.IndexOf(sdqConsulta.FieldByName('BO_ID').AsString) = -1 then
    begin
      SelectedList.AddObject(sdqConsulta.FieldByName('BO_ID').AsString, sdqConsulta.GetBookmark);
    end
    else
      SelectedList.Delete(SelectedList.IndexOf(sdqConsulta.FieldByName('BO_ID').AsString));
    Column.Grid.Refresh;
  end;
end;

procedure TfrmNotificacionCambioPolitica.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'SELECTED' then
  begin
    DBGrid.Canvas.FillRect(Rect);
    Check := 0;
    if SelectedList.IndexOf(sdqConsulta.FieldByName('BO_ID').AsString) > -1 then
      Check := DFCS_CHECKED;
    R := Rect;
    InflateRect(R, -2, -2); //Disminuye el tama�o del CheckBox
    DrawFrameControl(DBGrid.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmNotificacionCambioPolitica.GridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    GridCellClick(Grid.ColumnByField['SELECTED']);
end;

procedure TfrmNotificacionCambioPolitica.sdqConsultaAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  sdqEmailAsociados.Close;
  sdqEmailAsociados.ParamByName('idabogado').AsInteger := sdqConsulta.FieldByName('bo_id').AsInteger;
  sdqEmailAsociados.Open;
end;

procedure TfrmNotificacionCambioPolitica.tbContenidoMailClick(Sender: TObject);
begin
  inherited;
  Verificar(sdqEmailAsociados.IsEmpty,tbContenidoMail,'Debe seleccionar un registro');
  VCLExtra.LockControls([edAsunto, edTextoDocumento,btnAceptarGenerarDocumento],True);
  edAsunto.Text := sdqEmailAsociados.FieldByName('EE_MOTIVO').AsString;
  edtextodocumento.Clear;
  edTextoDocumento.Lines.Add(sdqEmailAsociados.FieldByName('EE_CUERPO').AsString);
//  edTextoDocumento.Text := sdqEmailAsociados.FieldByName('EE_CUERPO').AsString;
  pnGenerarDocumento.ShowModal;
  VCLExtra.LockControls([edAsunto, edTextoDocumento,btnAceptarGenerarDocumento],False);

end;

procedure TfrmNotificacionCambioPolitica.tbEnvioMailClick(Sender: TObject);
var
  i : Integer;
  infoemail : TResultadoEnvio;
begin
  Verificar(SelectedList.Count = 0, Grid, 'Debe seleccionar algun registro.');
  edAsunto.Clear;
  edTextoDocumento.Clear;

  if pnGenerarDocumento.ShowModal = mrOk then
  begin
    IniciarEspera('Enviando correo electr�nico...');
    try
      BeginTrans();
      try
        for i:=0 to SelectedList.Count-1 do
        begin
          Grid.DataSource.DataSet.GotoBookmark(SelectedList.Objects[i]);
          infoemail := EnviarMailBDWithResults(ValorSql('SELECT bo_direlectronica FROM legales.lbo_abogado WHERE bo_id = '+SqlValue(SelectedList.Strings[i])),
                       edAsunto.Text,[],edTextoDocumento.Lines.Text, nil ,0,tcDefault,false,false,0);
          if infoemail.MensajeId > 0 then
            EjecutarSqlST('INSERT INTO legales.lmi_mailinformativo '+
                        '            (mi_id, MI_IDEMAIL, MI_IDABOGADO, mi_usualta, mi_fechaalta) '+
                        '     VALUES (legales.seq_lmi_idmailinformativo.NEXTVAL, '+SqlValue(infoemail.MensajeId)+', '+
                                      SqlValue(SelectedList.Strings[i])+', '+SqlValue(Sesion.LoginName)+', SYSDATE )');
        end;
        CommitTrans();
      except
        Rollback();
      end;
    finally
      DetenerEspera();
    end;
  end;
end;

procedure TfrmNotificacionCambioPolitica.tbLimpiarClick(Sender: TObject);
{$IFDEF VER150}
var
  i: integer;
{$ENDIF}
begin
  inherited;

{$IFDEF VER150}
  for i:=0 to SelectedList.Count - 1 do
    sdqConsulta.FreeBookmark(TBookmark(SelectedList.Objects[i]));
{$ENDIF}
  SelectedList.Clear;
  Grid.Refresh;
end;

procedure TfrmNotificacionCambioPolitica.tbRefrescarClick(Sender: TObject);
var
  sSQL : String;
  sIn : String;
  i : Integer;
begin
  sSQL := ' SELECT NULL SELECTED, a.* '+
          '   FROM legales.lbo_abogado a '+
          '  WHERE bo_fechabaja IS NULL ' +
          ' and a.bo_direlectronica is not null ';
  SelectedList.Clear;
  if cmbTipoAbogado.CheckedCount > 0 then
  begin
    for i := 0 to cmbTipoAbogado.Items.Count-1 do
    begin
      if cmbTipoAbogado.Checked[i] then
      begin
        if sIn = '' then
        begin
          sIn := inttostr(integer(cmbTipoAbogado.Items.Objects[i]));
        end
        else
        begin
          sIn := sIn+','+inttostr(integer(cmbTipoAbogado.Items.Objects[i]));
          //SqlValue(integer(cmbTipoEmpresaPrev.Items.Objects[i])
        end;
      end;
    end;
    sSQL := sSQL+ ' AND decode(bo_parte,''M'',1,''O'',2,''P'',3,''S'',4) IN ('+sIn+') ';
  end;

  if fraAbogado.IsSelected then
  begin
    sSQL := sSQL + ' AND bo_id = '+ SqlValue(fraAbogado.Value);
  end;

  sdqConsulta.SQL.Text := sSQL;

  inherited;
end;

procedure TfrmNotificacionCambioPolitica.tbSeleccionarTodoClick(
  Sender: TObject);
var
  i: integer;
begin
  sdqConsulta.DisableControls;
  sdqConsulta.AfterScroll := nil;
  try
    if(sdqConsulta.IsEmpty) then
      Exit;

    sdqConsulta.First;
    while not sdqConsulta.Eof do
    begin
      i:= SelectedList.IndexOf(sdqConsulta.fieldbyname('BO_ID').AsString);
      if (i = -1) then
        SelectedList.AddObject(sdqConsulta.fieldbyname('BO_ID').AsString, sdqConsulta.GetBookmark);
      sdqConsulta.Next;
    end;
  finally
    sdqConsulta.EnableControls;
    Grid.Refresh;
  end;
end;

procedure TfrmNotificacionCambioPolitica.tbDeseleccionarTodoClick(
  Sender: TObject);
begin
  sdqConsulta.DisableControls;
  sdqConsulta.AfterScroll := nil;
  try
      SelectedList.Clear;
  finally
    sdqConsulta.EnableControls;
    Grid.Refresh;
  end;
end;

end.
