unit unManAbogados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCustomGridABM, FieldHider, ShortCutControl, Placemnt,
  artSeguridad, QueryPrint, QueryToFile, ExportDialog, SortDlg, DB,
  SDEngine, StdCtrls, ExtCtrls, FormPanel, Grids, DBGrids, RXDBCtrl,
  ArtComboBox, ArtDBGrid, ComCtrls, ToolWin, DBCtrls, Mask, unArtFrame,
  unFraCodigoDescripcion, AnsiSql, unfraCodigoDescripcionExt,
  unArtDBAwareFrame, unfraDelegacion, DBClient, RxPlacemnt;

type
  TfrmManAbogados = class(TfrmCustomGridABM)
    lblDescripcion: TLabel;
    edBO_NOMBRE: TEdit;
    lblDireccion: TLabel;
    edBO_DIRECCION: TEdit;
    lblTelefono: TLabel;
    edBO_TELEFONO: TEdit;
    lblEmail: TLabel;
    edBO_DIRELECTRONICA: TEdit;
    lblParte: TLabel;
    edCuilCuit: TMaskEdit;
    lblCuil: TLabel;
    lblTipo: TLabel;
    cmbTipoAbogado: TComboBox;
    cmbParteAbogado: TComboBox;
    fraEstudioJuridico: TfraCodigoDescripcionExt;
    lbEstudioJuridico: TLabel;
    edUsuarioWeb: TEdit;
    lbUsuarioWeb: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    pnlBottom: TPanel;
    tbEdicionAbogado: TToolBar;
    tbNuevoEstudio: TToolButton;
    Label1: TLabel;
    fraBO_IDDELEGACION: TfraDelegacion;
    lbNombre: TLabel;
    edApellido: TEdit;
    edNombre: TEdit;
    lbApellido: TLabel;
    edtArchivosAsociados: TEdit;
    lblArchivosAsociados: TLabel;
    tbrVerArchivosAsociados: TToolBar;
    tbSeleccionArchivosAsociar: TToolButton;
    cdsArchivosAsociados: TClientDataSet;
    sdqArchivosAsociados: TSDQuery;
    DataSource1: TDataSource;
    tbAsignarDoc: TToolButton;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tbRefrescarClick(Sender: TObject);
    procedure cmbTipoAbogadoChange(Sender: TObject);
    function VerificarCuilCuit: boolean;
    function CargarEstudioJuridico(IdAbogado: string): string;
    procedure Button1Click(Sender: TObject);
    procedure FSFormShow(Sender: TObject);
    procedure tbNuevoEstudioClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure tbSeleccionArchivosAsociarClick(Sender: TObject);
    procedure tbAsignarDocClick(Sender: TObject);
    procedure edCuilCuitExit(Sender: TObject);
  protected
    procedure ClearControls; override;
    function DoABM: Boolean; override;
    procedure LoadControls; override;
    function Validar: Boolean; override;
  private
    idAbogado: integer;
    Fcodigo : String;
    function DevolverMails: string;
    procedure MostrarArchivosAsociados;
    procedure CargarArchivos;
    procedure RecargarArchivosAsociados(
      cdsArchivosAsociados: TClientDataSet);
  public
    procedure VerSeleccion;
    function ObtenerAbogado: String;
    class procedure MostrarAbm;
  end;

implementation

uses unDmPrincipal, unPrincipal, unSesion, CustomDlgs, SqlFuncs, General, StrFuncs,
     unManEstudioJuridicos,VCLExtra, unMailAbogado, unArchivosAsociados;

{$R *.dfm}

{------------------------------------------------------------------------------}
procedure TfrmManAbogados.ClearControls;
begin
  edBO_NOMBRE.Clear;
  edApellido.Clear;
  edNombre.Clear;
  edBO_DIRECCION.Clear;
  edBO_TELEFONO.Clear;
  edBO_DIRELECTRONICA.Clear;
  cmbParteAbogado.ItemIndex := cmbTipoAbogado.ItemIndex;
  edUsuarioWeb.Clear;
  edCuilCuit.Text := '';
  fraBO_IDDELEGACION.Clear;
  tbSeleccionArchivosAsociar.Enabled := False;
end;
{------------------------------------------------------------------------------}
function TfrmManAbogados.DoABM: Boolean;
begin
  Sql.Clear;
  if ModoABM = maBaja Then
  begin
    Sql.PrimaryKey.Add('BO_ID', sdqConsulta.FieldByName('BO_ID').AsInteger);
    Sql.Fields.Add('BO_USUBAJA', Sesion.LoginName);
    Sql.Fields.Add('BO_FECHABAJA', exDateTime);
    Sql.SqlType := stUpdate;
  end else begin
    Sql.Fields.Add('BO_NOMBRE', edApellido.Text + ' '+edNombre.Text);
    Sql.Fields.Add('BO_APELLIDO', edApellido.Text);
    Sql.Fields.Add('BO_NOMBREINDIVIDUAL', edNombre.Text);
    Sql.Fields.Add('BO_USUARIO', edUsuarioWeb.Text);
    Sql.Fields.Add('BO_DIRECCION', edBO_DIRECCION.Text);
    Sql.Fields.Add('BO_TELEFONO', edBO_TELEFONO.Text);
    Sql.Fields.Add('BO_DIRELECTRONICA', edBO_DIRELECTRONICA.Text);
    Sql.Fields.Add('BO_PARTE', cmbParteAbogado.Text[Length(cmbParteAbogado.Text)]);
    Sql.Fields.Add('BO_CUITCUIL', edCuilCuit.Text);
    Sql.Fields.Add('BO_IDESTUDIOJURIDICO', fraEstudioJuridico.Value);
    Sql.Fields.AddInteger('BO_IDDELEGACION', fraBO_IDDELEGACION.Value, True);

    if ModoABM = maAlta Then
    begin
      Sql.PrimaryKey.Add('BO_ID', GetSecNextVal('LEGALES.SEQ_LBO_ID'));
      Sql.Fields.Add('BO_USUALTA', Sesion.LoginName);
      Sql.Fields.Add('BO_FECHAALTA', exDateTime);
    end else begin
      Sql.PrimaryKey.Add('BO_ID', sdqConsulta.FieldByName('BO_ID').AsInteger);
      Sql.Fields.Add('BO_USUMODIF', Sesion.LoginName);
      Sql.Fields.Add('BO_FECHAMODIF', exDateTime);
      Sql.Fields.Add('BO_USUBAJA', exNull);
      Sql.Fields.Add('BO_FECHABAJA', exNull);
    end;
  end;

  Result := inherited DoABM;
  if ModoABM = maModificacion Then
  begin
    cdsArchivosAsociados.First;
    while not cdsArchivosAsociados.Eof do
    begin
      if cdsArchivosAsociados.FieldByName('STATE').AsString = 'I' then
      begin
        EjecutarSqlST('INSERT INTO legales.laa_archivoabogado ' +
                      ' (aa_id, aa_descripcion, aa_patharchivo, ' +
                      '  aa_idabogado, aa_usualta, aa_fechaalta) ' +
                      'VALUES (' + SqlValue(cdsArchivosAsociados.FieldByName('ID').AsInteger) + ',  ' +
                                   SqlValue(cdsArchivosAsociados.FieldByName('DESCRIPCION').AsString) + ', ' +
                                   SqlValue(cdsArchivosAsociados.FieldByName('PATHARCHIVO').AsString) + ', ' +
                                   SqlValue(sdqConsulta.FieldByName('BO_ID').AsInteger) + ',' +
                                   SqlValue(Sesion.LoginName) + ', SYSDATE)');
      end;


      cdsArchivosAsociados.Next;
    end;
  end;
end;
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.LoadControls;
begin
  with sdqConsulta do
  begin
    idAbogado                 := FieldByName('BO_ID').Asinteger;
    edBO_NOMBRE.Text          := FieldByName('BO_NOMBRE').AsString;
    edApellido.Text           := FieldByName('BO_APELLIDO').AsString;
    edNombre.Text             := FieldByName('BO_NOMBREINDIVIDUAL').AsString;
    edUsuarioWeb.Text         := FieldByName('BO_USUARIO').AsString;
    edBO_DIRECCION.Text       := FieldByName('BO_DIRECCION').AsString;
    edBO_TELEFONO.Text        := FieldByName('BO_TELEFONO').AsString;
    edBO_DIRELECTRONICA.Text  := FieldByName('BO_DIRELECTRONICA').AsString;
		cmbParteAbogado.ItemIndex :=ArrayPos(sdqConsulta.fieldbyname('BO_PARTE').AsString, ['M', 'O', 'P', 'S']);
    edCuilCuit.Text           := FieldByName('BO_CUITCUIL').AsString;
    fraEstudioJuridico.Codigo := CargarEstudioJuridico(FieldByName('BO_ID').AsString);
    fraBO_IDDELEGACION.Value  := FieldByName('BO_IDDELEGACION').AsInteger;
  end;
  cdsArchivosAsociados.EmptyDataSet;
  edBO_DIRELECTRONICA.Text:=devolvermails;
  CargarArchivos;
  edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                               ' Archivos Asociados.';
  tbSeleccionArchivosAsociar.Enabled := True;
end;
{------------------------------------------------------------------------------}
function TfrmManAbogados.Validar: Boolean;
var
  codigoPerito :Integer;
begin
  Result := True;

  VerificarMultiple(['Mantenimiento de Abogados',
                     fraEstudioJuridico, fraEstudioJuridico.IsSelected, 'Debe especificar el estudio jur�dico'
                    ]);
  Verificar(edApellido.Text = '', edApellido, 'Debe Especificar un Apellido para el abogado.');
  Verificar(edNombre.Text = '', edNombre, 'Debe Especificar un Nombre para el abogado.');
  Verificar(edBO_DIRECCION.Text = '', edBO_DIRECCION, 'Debe Especificar una direcci�n para el abogado.');
  Verificar((cmbParteAbogado.Text[Length(cmbParteAbogado.Text)] = 'P') and fraBO_IDDELEGACION.IsEmpty, fraBO_IDDELEGACION, 'Debe especificar la delegaci�n');
  if edCuilCuit.Text <> '' then
    Verificar(ExisteSql('SELECT 1 FROM LEGALES.LBO_ABOGADO WHERE BO_CUITCUIL = '+SqlValue(edCuilCuit.Text)+
                        '   AND BO_ID <> '+SqlValue(sdqConsulta.FieldByName('BO_ID').AsInteger)+
                        '   AND BO_FECHABAJA IS NULL '),edCuilCuit,'Ya existe el cuil/Cuit.');
  if ModoABM = maAlta Then
    codigoperito := ValorSqlInteger('SELECT BO_ID FROM legales.LBO_ABOGADO WHERE BO_CUITCUIL = '+SqlValue(edCuilCuit.Text)+
                                    '   AND BO_FECHABAJA IS NULL ')
  else
    codigoperito := ValorSqlInteger('SELECT BO_ID FROM legales.LBO_ABOGADO WHERE BO_CUITCUIL = '+SqlValue(edCuilCuit.Text)+
                                    '   AND BO_ID <> '+SqlValue(sdqConsulta.FieldByName('BO_ID').AsInteger)+
                                    '   AND BO_FECHABAJA IS NULL ');
  Verificar(codigoperito > 0,edCuilCuit,'Ya existe el cuil/Cuit.En el codigo '+IntToStr(codigoperito));
end;
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.FormCreate(Sender: TObject);
begin
  inherited;
  fraBO_IDDELEGACION.OnLine := False;
  FieldBaja     := 'BO_FECHABAJA';
  Sql.TableName := 'LEGALES.LBO_ABOGADO';
  CheckPK := True;

  with fraEstudioJuridico do
  begin
    TableName   := 'LEGALES.LEJ_ESTUDIOJURIDICO';
    FieldID     := 'ej_id';
    FieldCodigo := 'ej_id';
    FieldDesc   := 'ej_nombreestudio';
    FieldBaja   := 'ej_fechabaja';
    Showbajas   := false;
  end;
  VclExtra.LockControls([edBO_NOMBRE, edBO_DIRELECTRONICA],True);
  tbRefrescarClick(nil);
end;
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;
{------------------------------------------------------------------------------}
class procedure TfrmManAbogados.MostrarAbm;
begin
   with TfrmManAbogados.Create(nil) do
  try
    FormStyle := fsNormal;
    Visible := false;
    ShowModal;
  finally
    free;
  end;
end;
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.tbRefrescarClick(Sender: TObject);
var
  sSql: String;
begin
  sSql := 'SELECT BO_ID, BO_NOMBRE, BO_DIRECCION, BO_TELEFONO, BO_CODAREATELEFONO, ' +
                 'BO_PREFIJOTELEFONO, BO_PROVINCIART, BO_DIRELECTRONICA, BO_FECHABAJA, ' +
                 'BO_PARTE, BO_CUITCUIL, BO_USUARIO, BO_IDDELEGACION, EL_NOMBRE, BO_NOMBREINDIVIDUAL, ' +
                 'BO_APELLIDO '+
           'FROM DEL_DELEGACION, LEGALES.LBO_ABOGADO ' +
          'WHERE BO_IDDELEGACION = EL_ID(+) ' +
            'AND BO_PARTE = ' + SqlString(cmbTipoAbogado.Text[Length(cmbTipoAbogado.Text)], true);
  sdqConsulta.Sql.Text := sSql;

  inherited;
end;
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.cmbTipoAbogadoChange(Sender: TObject);
begin
  tbRefrescarClick(nil);
  inherited;
end;
{------------------------------------------------------------------------------}
function TfrmManAbogados.VerificarCuilCuit: boolean;
var
  Sql: String;
begin
  Sql := Sql + 'SELECT COUNT(*) FROM LEGALES.LBO_ABOGADO WHERE BO_CUITCUIL = ' + SqlString(edCuilCuit.Text, true);
  if (ModoABM = maModificacion) then
    Sql := Sql + ' AND BO_ID <> ' + SqlValue(sdqConsulta.FieldByName('BO_ID').AsInteger);
  result := (ValorSql(Sql) > 0);
end;
{------------------------------------------------------------------------------}
function TfrmManAbogados.CargarEstudioJuridico(IdAbogado: string): string;
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
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.tbNuevoEstudioClick(Sender: TObject);
begin
  with TfrmManEstudioJuridico.Create(Self) do
  begin
    FormStyle := fsNormal;
    VerSeleccion;
    Visible := False;
    ShowModal;
    fraEstudioJuridico.Codigo := ObtenerEstudio;
  end;
end;
{-------------------------------------------------------------------------------}
procedure TfrmManAbogados.VerSeleccion;
begin
  Panel1.Visible := True;
end;
{------------------------------------------------------------------------------}
function TfrmManAbogados.ObtenerAbogado : String;
begin
  Result := Fcodigo;
end;
{------------------------------------------------------------------------------}
procedure TfrmManAbogados.Button1Click(Sender: TObject);
begin
  Verificar(sdqConsulta.IsEmpty, btnAceptar, 'Debe seleccionar un Abogado HYS.');
  FCodigo := sdqConsulta.FieldByName('bo_id').AsString;
  ModalResult := mrOK;
end;

procedure TfrmManAbogados.FSFormShow(Sender: TObject);
begin
  ShowWindow(Self.Handle, SW_RESTORE);
end;

{------------------------------------------------------------------------------}
procedure TfrmManAbogados.Button3Click(Sender: TObject);
begin
  with TfrmEmailAbogado.Create(self) do
  try
    ModoForm := mfAlta;
    idAbogado:=self.sdqConsulta.FieldByName('BO_ID').AsInteger;
    with getquery('select bo_nombre from LEGALES.LBO_ABOGADO where bo_id=' + sqlvalue(idAbogado)) do
      edAbogado.text:=FieldByName('bo_nombre').asstring;
    ShowModal;
    edBO_DIRELECTRONICA.text:=DevolverMails;

  finally
    free;
  end;
end;


function TfrmManAbogados.DevolverMails: string;
var
  mails: string;
begin
  with getquery('select EA_EMAIL from LEGALES.LEA_EMAILABOGADO, LEGALES.LBO_ABOGADO where bo_id=ea_idabogado and ea_fechabaja is null and ea_idabogado=' + SQLValue(idabogado)) do
  begin
    while Eof = false do
    begin
      if mails <> '' then
        mails:=mails + '; ';
      mails:=mails + FieldByName('ea_email').AsString;
      Next;
    end;
  end;
  DevolverMails:=mails;
end;

procedure TfrmManAbogados.tbSeleccionArchivosAsociarClick(Sender: TObject);
begin
  MostrarArchivosAsociados;
end;

procedure TfrmManAbogados.MostrarArchivosAsociados;
begin
  with TfrmArchivosAsociados.Create(self) do
  try
    //if (FModoEventosSeguimientos = meAlta) then
    //  cdsArchivosAsociados.EmptyDataSet;

      CargarArchivosAsociadosAbogado(Self.sdqConsulta.FieldByName('bo_id').AsInteger, cdsArchivosAsociados);
      RecargarArchivosAsociados(cdsArchivosAsociados);
      edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) +
                                   ' Archivos Asociados.';
  finally
    Free;
  end;
end;

procedure TfrmManAbogados.CargarArchivos;
var
 i : integer;
begin
  try
    sdqArchivosAsociados.ParamByName('IdAbogado').AsInteger := sdqConsulta.FieldByName('bo_id').AsInteger;
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

procedure TfrmManAbogados.RecargarArchivosAsociados(
  cdsArchivosAsociados: TClientDataSet);
begin
  cdsArchivosAsociados.First;
  while not cdsArchivosAsociados.Eof do
  begin
    if cdsArchivosAsociados.FieldByName('STATE').AsString = 'D' then
    begin
      EjecutarSqlST('UPDATE legales.laa_archivoabogado ' +
                    '   SET aa_usubaja = ' + SqlValue(Sesion.LoginName) + ', ' +
                    '       aa_fechabaja = SYSDATE' +
                    ' WHERE aa_id = ' + SqlValue(cdsArchivosAsociados.FieldByName('ID').AsInteger));

      cdsArchivosAsociados.Delete;


    end
    else cdsArchivosAsociados.Next;
  end;
end;

procedure TfrmManAbogados.tbAsignarDocClick(Sender: TObject);
begin
  with TfrmArchivosAsociados.Create(self) do
  try
    CargarDirectoArchivosAsociadosAbogado(Self.sdqConsulta.FieldByName('bo_id').AsInteger, cdsArchivosAsociados);
    RecargarArchivosAsociados(cdsArchivosAsociados);
    edtArchivosAsociados.Text := InttoStr(cdsArchivosAsociados.RecordCount) + ' Archivos Asociados.';
  finally
    Free;
  end;
end;

procedure TfrmManAbogados.edCuilCuitExit(Sender: TObject);
var
  codigoperito : integer;
begin
  inherited;
  if edCuilCuit.Text <> '' then
  begin
    if ModoABM = maAlta Then
      codigoperito := ValorSqlInteger('SELECT BO_ID FROM legales.LBO_ABOGADO WHERE BO_CUITCUIL = '+SqlValue(edCuilCuit.Text)+
                               '   AND BO_FECHABAJA IS NULL ')
    else
      codigoperito := ValorSqlInteger('SELECT BO_ID FROM legales.LBO_ABOGADO WHERE BO_CUITCUIL = '+SqlValue(edCuilCuit.Text)+
                               '   AND BO_ID <> '+SqlValue(sdqConsulta.FieldByName('BO_ID').AsInteger)+
                               '   AND BO_FECHABAJA IS NULL ');
    if codigoperito > 0 then
      MsgBox('Ya existe el cuil/Cuit.En el codigo '+IntToStr(codigoperito));
  end
  else
    MsgBox('El CUIT es informaci�n relevante a ser informada a los organismos de control, se aconseja su carga, sino posee el dato prosiga con la carga.');
end;

end.

