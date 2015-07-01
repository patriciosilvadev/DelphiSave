unit unMailAbogado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCustomGridABM, FieldHider, ShortCutControl, Placemnt,
  artSeguridad, QueryPrint, QueryToFile, ExportDialog, SortDlg, DB,
  SDEngine, StdCtrls, ExtCtrls, FormPanel, Grids, DBGrids, RXDBCtrl,
  ArtComboBox, ArtDBGrid, ComCtrls, ToolWin, Mask, PatternEdit, customdlgs, ansisql, unsesion, sqlfuncs, undmprincipal, internet, vclextra,
  RxPlacemnt;

type
  TModoForm = (mfAlta, mfModificacion, mfBaja);
  TfrmEmailAbogado = class(TfrmCustomGridABM)
    peMail: TPatternEdit;
    lblMail: TLabel;
    lblAbogado: TLabel;
    edAbogado: TEdit;
    lbApellido: TLabel;
    lbNombre: TLabel;
    edApellido: TEdit;
    edNombre: TEdit;
    edTelefono: TEdit;
    lblTelefono: TLabel;
    edTelefonoAlternativo: TEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure tbNuevoClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    function DevolverMails: string;
    { Private declarations }
  public
    FidAbogado: integer;
    ModoForm : TModoForm;
    function DoABM: Boolean;override;
    procedure ClearControls; override;
    procedure LoadControls; override;
    function Validar: Boolean; override;
    procedure RefreshData; override;
    property idAbogado: integer read FidAbogado write FidAbogado;
    { Public declarations }
  end;

var
  frmEmailAbogado: TfrmEmailAbogado;

implementation

uses unCustomConsulta;

{$R *.dfm}


procedure TfrmEmailAbogado.FormCreate(Sender: TObject);
begin
  inherited;
 //
  VclExtra.LockControls(edAbogado,True);
  FieldBaja:='EA_FECHABAJA';
end;

procedure TfrmEmailAbogado.ClearControls;
begin
  inherited;
  peMail.Clear;
  edNombre.Clear;
  edApellido.Clear;
  edTelefono.Clear;
  edTelefonoAlternativo.Clear;
end;

procedure TfrmEmailAbogado.LoadControls;
begin
  inherited;
  peMail.text                := self.sdqconsulta.FieldByName('ea_email').AsString;
  edNombre.Text              := self.sdqconsulta.FieldByName('EA_NOMBRE').AsString;
  edApellido.Text            := self.sdqconsulta.FieldByName('EA_APELLIDO').AsString;
  edTelefono.Text            := self.sdqconsulta.FieldByName('EA_TELEFONO').AsString;
  edTelefonoAlternativo.Text := self.sdqconsulta.FieldByName('EA_TELEFONOALTERNATIVO').AsString;
end;

function TfrmEmailAbogado.Validar: Boolean;
begin
  inherited;
  verificar(peMail.Text = '', peMail, 'Debe completar un e-mail');
  verificar(not IsEMail(peMail.Text), peMail, 'El e-mail es incorrecto');
  if ModoABM = maAlta Then
    Verificar(ExisteSqlEx('select * from LEGALES.LEA_EMAILABOGADO where ea_fechabaja is null and ea_idabogado = :abo '+
                          '   and ea_email = :ema', [ idAbogado, peMail.Text]), peMail, 'La direcci�n ya existe')
  else
    Verificar(ExisteSqlEx('select * from LEGALES.LEA_EMAILABOGADO where ea_fechabaja is null and ea_idabogado = :abo'+
                          '   and ea_email = :ema AND ea_id <> :id', [ idAbogado, peMail.Text,
                          sdqConsulta.FieldByName('EA_ID').AsInteger]), peMail, 'La direcci�n ya existe');
  result:=true;
end;

procedure TfrmEmailAbogado.RefreshData;
var sSql: String;
begin
  sdqconsulta.Close;
  sSql := 'SELECT * FROM LEGALES.LEA_EMAILABOGADO, LEGALES.LBO_ABOGADO WHERE BO_ID=EA_IDABOGADO AND BO_ID=' + SQLValue(FidAbogado);
  sdqConsulta.SQL.Text := sSql;
  sdqconsulta.Open;
  inherited;
end;



function TfrmEmailAbogado.DoABM: Boolean;
var
  iIdCodigo : Integer;
begin
  try
    Sql.Clear;
    SQL.TableName:= 'LEGALES.LEA_EMAILABOGADO';
    if ModoABM = maBaja Then
    begin
      iIdCodigo:=sdqConsulta.FieldByName('EA_ID').AsInteger;
      Sql.Fields.Add('EA_USUBAJA', Sesion.UserID );
      Sql.Fields.Add('EA_FECHABAJA', exDateTime );
      Sql.SqlType := stUpdate;
    end
    else
    begin
      Sql.Fields.Add('EA_EMAIL', peMail.Text);
      Sql.Fields.Add('EA_NOMBRE', edNombre.Text);
      Sql.Fields.Add('EA_APELLIDO', edApellido.Text);
      Sql.Fields.Add('EA_TELEFONO',edTelefono.Text);
      Sql.Fields.Add('EA_TELEFONOALTERNATIVO',edTelefonoAlternativo.Text);
      if ModoABM = maAlta Then
      begin
        Sql.SqlType := stInsert;
        iIdCodigo := GetSecNextVal('LEGALES.SEQ_LEA_IDEA');
        Sql.Fields.Add('EA_IDABOGADO', idAbogado);
        Sql.Fields.Add('EA_FECHAALTA', exDateTime);
        Sql.Fields.Add('EA_USUALTA', Sesion.UserID);
      end
      else
      begin
        Sql.SqlType := stUpdate;
        iIdCodigo := sdqConsulta.FieldByName('EA_ID').AsInteger;
        Sql.Fields.Add('EA_USUMODIF', Sesion.UserID);
        Sql.Fields.Add('EA_FECHAMODIF', exDateTime );
        Sql.Fields.Add('EA_USUBAJA', exNull );
        Sql.Fields.Add('EA_FECHABAJA', exNull );
      end;
    end;
    Sql.PrimaryKey.Add('EA_ID', iIdCodigo);
    EjecutarSQLST(Sql.Sql);
    CommitTrans(True);
    Result := True;
  except
    on E: Exception do begin
       Result := false;
       Rollback(true);
       ErrorMsg(E, 'Error al guardar el Mail.');
    end;
  end;
  sdqConsulta.Refresh;
end;


procedure TfrmEmailAbogado.tbNuevoClick(Sender: TObject);
begin
  inherited;
  //
end;


procedure TfrmEmailAbogado.btnAceptarClick(Sender: TObject);
begin
  inherited;
  sdqConsulta.Refresh;

end;


function TfrmEmailAbogado.DevolverMails: string;
var mails: string;
begin
  sdqConsulta.First;
  while sdqConsulta.Eof = false do
  begin
    mails:=mails + sdqConsulta.FieldByName('ea_email').AsString + '; ';
    sdqConsulta.Next;
  end;
  DevolverMails:=mails;
end;

end.
