unit unImportarInformeDirectorios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, FolderDialog, ActnList, Mask, StdCtrls, ExtCtrls, PeriodoPicker;

type
  TfrmImportarInformeDirectorios = class(TForm)
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnCancelar: TButton;
    btnProcesar: TButton;
    edOrigenDir: TEdit;
    btBuscarOrigen: TButton;
    ActionList1: TActionList;
    acBuscarOrigen: TAction;
    acBuscarDestino: TAction;
    acCancelar: TAction;
    acProcesar: TAction;
    fdSelectDir: TFolderDialog;
    edMaskPeriodo: TPeriodoPicker;
    procedure acBuscarOrigenExecute(Sender: TObject);
    procedure acBuscarDestinoExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acProcesarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FInfoDirDestino: String;
    FInfoDirOrigen: String;
    FInfoPeriodo: Integer;

    function ElegirDirectorio(Subtitulo, Directorio: String): String;
    function ProbableEtiqueta(PathFile: String): String;
    function Validation: Boolean;

    procedure CargarEtiqueta;
    procedure GetDefaultsINI;
    procedure InicializarControles;
  public
    property InfoDirOrigen: String  read FInfoDirOrigen;
    property InfoDirDestino: String read FInfoDirDestino;
    property InfoPeriodo: Integer   read FInfoPeriodo;
  end;

var
  frmImportarInformeDirectorios: TfrmImportarInformeDirectorios;

implementation

{$R *.dfm}

uses
  unArt, General, CustomDlgs;

resourcestring
  sTxtDirDestino = 'Directorio Destino.';
  sTxtDirOrigen = 'Directorio Origen.';
  sMensajeDirBlank = 'Debe seleccionar un directorio "%s" v�lido.';

  sMensajeDirNot = 'El directorio "%s" no existe o es incorrecto.';
  sMensajeDirDestinoNot = 'El directorio "Destino" no existe o es incorrecto. '+#13+
                          ' Consulte al Administrador.';
  sMensajeEtiquetaNot = 'La etiqueta [%s] es incorrecta.';
  sPosibleEtiqueta = 'Posible etiqueta [%s] se deduce de el path [%s].';

{ TfrmImportarInformeDirectorios }

procedure TfrmImportarInformeDirectorios.acBuscarOrigenExecute(Sender: TObject);
begin
  edOrigenDir.Text := ElegirDirectorio(sTxtDirOrigen, edOrigenDir.Text);
  CargarEtiqueta;
end;

procedure TfrmImportarInformeDirectorios.acBuscarDestinoExecute(Sender: TObject);
begin
  //edDestinoDir.Text := ElegirDirectorio(sTxtDirDestino, edDestinoDir.Text);
end;

procedure TfrmImportarInformeDirectorios.acCancelarExecute(Sender: TObject);
begin
  InicializarControles;

  FInfoDirOrigen := EmptyStr;
  FInfoDirDestino := EmptyStr;
  FInfoPeriodo := 0;
  Close;
end;

procedure TfrmImportarInformeDirectorios.acProcesarExecute(Sender: TObject);
begin
  FInfoDirOrigen := edOrigenDir.Text;
  //FInfoDirDestino := edDestinoDir.Text;
  FInfoPeriodo := StrToIntDef(edMaskPeriodo.Text, 0);

  if Validation then
    Modalresult := mrOk;
end;

procedure TfrmImportarInformeDirectorios.CargarEtiqueta;
var
  sNombreEtiqueta: String;
begin

  sNombreEtiqueta := ProbableEtiqueta(edOrigenDir.Text);

  if Trim(sNombreEtiqueta) = EmptyStr then
  begin
    sNombreEtiqueta := GetLabelCDFirst;
    sNombreEtiqueta := ProbableEtiqueta(sNombreEtiqueta);
  end;

  edMaskPeriodo.Text := Trim(sNombreEtiqueta);
  //InfoHint(edMaskPeriodo, Format(sPosibleEtiqueta, [edMaskPeriodo.Text,edOrigenDir.Text]) );

end;

function TfrmImportarInformeDirectorios.ElegirDirectorio(Subtitulo, Directorio: String): String;
begin
  if not DirectoryExists(Directorio) then
    Directorio := GetCurrentDir;
  fdSelectDir.Directory := Directorio;
  fdSelectDir.Caption := Subtitulo;
  if fdSelectDir.Execute then
    Result := fdSelectDir.Directory;
end;

procedure TfrmImportarInformeDirectorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := caFree;
end;

procedure TfrmImportarInformeDirectorios.FormCreate(Sender: TObject);
begin
  InicializarControles;
  GetDefaultsINI;
end;

procedure TfrmImportarInformeDirectorios.GetDefaultsINI;
begin
  FInfoDirOrigen := GetLabelCDComplete;
  FInfoDirDestino := Get_CTBEspecial1('PATHS', '013');
  edOrigenDir.Text :=  FInfoDirOrigen;
end;

procedure TfrmImportarInformeDirectorios.InicializarControles;
begin
  edOrigenDir.Clear;

  if Trim(FInfoDirDestino) = EmptyStr then
  begin
    //directorio por defecto para desarrollo....
    FInfoDirDestino  := '\\ntintraweb\Storage_Data\Web\Informes_Ingenieria_Siniestralidad_Desarrollo';
  end;

  edMaskPeriodo.Clear;
end;

function TfrmImportarInformeDirectorios.ProbableEtiqueta(PathFile: String): String;
var
  i: Integer;
  sl: String;
  smonth: String;
  syear: String;
const
  MESES: Array [1..12] of String = ('ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTURBRE', 'NOVIEMBRE', 'DICIEMBRE');
begin

  for i := 2000 to (CurrentYear + 1) do
    if AnsiPos(UpperCase(IntToStr(i)), UpperCase(PathFile)) > 0  then
      syear := IntToStr(i);

  for i := 1 to 12 do
    if AnsiPos(UpperCase(meses[i]), UpperCase(PathFile)) > 0 then
    begin
      sl := Trim('0' + IntToStr(i));
      SetLength( sl , 2 );
      smonth := sl;
    end;

  if ((syear = EmptyStr) or (smonth = EmptyStr)) then
    Result := EmptyStr
  else
    Result := syear + smonth;

end;

function TfrmImportarInformeDirectorios.Validation: Boolean;
begin
  Result := True;

  if not DirectoryExists(edOrigenDir.Text) then
  begin
    if Trim(edOrigenDir.Text) = EmptyStr then
      InfoHint(edOrigenDir, Format(sMensajeDirBlank, ['Origen']))
    else
      InfoHint(edOrigenDir, Format(sMensajeDirNot, [edOrigenDir.Text]) );

    Result := False;
  end;

  if (Result) and (not DirectoryExists(FInfoDirDestino)) then
  begin
    MessageDlg(sMensajeDirDestinoNot, mtError, [mbYes], 0);
    Result := False;
  end;

  if (Result) and (Trim(edMaskPeriodo.Text) = EmptyStr) or (Length(Trim(edMaskPeriodo.Text)) < 6) then
  begin
    InfoHint(edMaskPeriodo, Format(sMensajeEtiquetaNot, [edMaskPeriodo.Text]));
    if edMaskPeriodo.CanFocus then  edMaskPeriodo.SetFocus;
    Result := False;
  end;

end;

end.
