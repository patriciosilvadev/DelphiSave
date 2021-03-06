unit UnManMotivosNoCarga;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QueryPrint, ABMDialog, Db, SDEngine, EditDialog;

type
  TfrmManMotivosNoCarga = class(TForm)
    sdqDatos: TSDQuery;
    dsDatos: TDataSource;
    QueryPrint: TQueryPrint;
    sdqDatosTB_CODIGO: TStringField;
    sdqDatosTB_CLAVE: TStringField;
    sdqDatosTB_DESCRIPCION: TStringField;
    sdqDatosTB_ESPECIAL1: TStringField;
    sdqDatosTB_BAJA: TStringField;
    PrintDialog: TPrintDialog;
    ABMDialog: TABMDialog;
    procedure ABMDialogBeforeABM(Sender: TObject; ABMAction: TABMActions;var Cancel: Boolean);
    procedure ABMDialogBeforePrint(Sender: TObject; var Cancel: Boolean);
    procedure ABMDialogGetCellParams(Sender: TObject; Field: TField;AFont: TFont; var Background: TColor; Highlight: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Execute;
  end;

var
  frmManMotivosNoCarga: TfrmManMotivosNoCarga;

implementation

uses unPrincipal, unDmPrincipal, CustomDlgs, General, StrFuncs;

{$R *.DFM}

{ TfrmManTiposTraslado }

{--------------------------------------------------------------------------------------------------------------------------------}
procedure TfrmManMotivosNoCarga.Execute;
begin
     sdqDatos.Open;
     dmPrincipal.sdbPrincipal.StartTransaction;
     try
         ABMDialog.Execute ;
         dmPrincipal.sdbPrincipal.Commit;
     Except
        on E: Exception do begin
          ErrorMsg(E, 'Se han descartado los cambios');
          dmPrincipal.sdbPrincipal.Rollback;
        end;
     end;
     sdqDatos.Close;
end;
{--------------------------------------------------------------------------------------------------------------------------------}
procedure TfrmManMotivosNoCarga.ABMDialogBeforeABM(Sender: TObject;ABMAction: TABMActions; var Cancel: Boolean);
var Sql:String;
begin

    AbmDialog.Fields[2].ReadOnly := False;
    if (ABMAction = aaModify) and (sdqDatosTB_BAJA.AsString = 'S' ) Then begin
       Cancel := MsgBox('Se dispone a modificar un registro eliminado, al modificarlo lo reactivar�.' + #13 + '�Esta usted seguro?', MB_ICONQUESTION + MB_YESNO) = IDNO ;
       AbmDialog.Fields[2].ReadOnly := True;
    end else if ABMAction = aaDelete Then begin
       Cancel := True;
       If (sdqDatosTB_BAJA.AsString <> 'S') and ( MsgBox('�Desea eliminar el Motivo ''' + sdqDatosTB_CODIGO.Text + ''' ?', MB_ICONQUESTION + MB_YESNO) = IDYES ) Then begin
            Sql := ' UPDATE CTB_TABLAS ' +
                      ' SET TB_BAJA = ''S'' ' +
                    ' WHERE TB_CLAVE = ''MOTNO'' ' +
                      ' AND TB_CODIGO = ''' + sdqDatosTB_CODIGO.Text + '''';
            EjecutarSqlST(Sql);
            RefreshAndLocate(sdqDatos,['TB_CODIGO'], [sdqDatosTB_CODIGO.Text]);
       end;
    end;
end;
{--------------------------------------------------------------------------------------------------------------------------------}
procedure TfrmManMotivosNoCarga.ABMDialogBeforePrint(Sender: TObject;var Cancel: Boolean);
begin
    QueryPrint.Footer.Text := frmPrincipal.DBLogin.Usuario ;
    if PrintDialog.Execute then begin
      QueryPrint.Print;
      Cancel := True;
    end;
end;
{--------------------------------------------------------------------------------------------------------------------------------}
procedure TfrmManMotivosNoCarga.ABMDialogGetCellParams(Sender: TObject;Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
     if sdqDatosTB_BAJA.AsString = 'S' Then
       AFont.Color := clRed;
end;
{--------------------------------------------------------------------------------------------------------------------------------}


end.
