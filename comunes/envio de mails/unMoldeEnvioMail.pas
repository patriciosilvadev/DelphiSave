unit unMoldeEnvioMail;

{INFORMACION DE LA UNIDAD
 AUTOR:               PABLO TAVASCI}

interface

uses
  {$IFDEF VER180} rxPlacemnt, {$ELSE} Placemnt, {$ENDIF}
  {$IFDEF VER140}Variants, {$ENDIF}
  {$IFDEF VER150}Variants, {$ENDIF}
  {$IFDEF VER180}Variants, {$ENDIF}
  Windows, SysUtils, Classes, Controls, Forms, Dialogs, StdCtrls, ComCtrls, ExtCtrls, unFraToolbarRTF, RxRichEd, Buttons,
  DBGrids, RXDBCtrl, ArtDBGrid, DBCtrls, FormPanel, Db, SDEngine, unCustomForm, Menus, ImageListBox, artSeguridad,
  JvCaptionButton, {$IFNDEF SERVICE}unSeleccionDestinatarios,{$ENDIF} unArt, JvGIFCtrl, JvComponent, ToolWin,
  JvExControls, JvAnimatedImage, Grids, ArtComboBox, ImgList, XPMenu,
  Graphics, JvComponentBase, RxPlacemnt;

const
  FIRMA_USUARIO = '{\rtf1\ansi\ansicpg1252\deff0\deflang11274{\fonttbl{\f0\fnil\fprq2\fcharset0 Neo Sans;}{\f1\fswiss\fcharset0 Arial;}}' +
                  '{\colortbl ;\red128\green128\blue128;}' +
                  '\viewkind4\uc1\pard\cf1\lang3082\b\f0\fs16 <NOMBRE>\b0  | <SECTOR>\par <DIRECCION> | <CP> | <LOCALIDAD>\par <TELEFONO> Interno <INTERNO>\par <MAIL>\par ' +
                  '}';

  NOTA_AL_PIE = '{\rtf1\ansi\ansicpg1252\deff0\deflang11274{\fonttbl{\f0\fswiss\fprq2\fcharset0 Neo Sans;}}' +
                '\viewkind4\uc1\pard\b\f0\fs16 Nota\b0 : Por favor, no responda a esta direcci\''f3n de correo electr\''f3nico.}';

  PIE_CERTIFICADOS =
    '{\rtf1\adeflang1025\ansi\ansicpg1252\uc1\adeff0\deff0\stshfdbch0\stshfloch0\stshfhich0\stshfbi0\deflang3082\deflangfe3082{\fonttbl{\f0\froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f36\fswiss\' +
    'fcharset0\fprq2{\*\panose 020b0604030504040204}Tahoma;}{\f84\froman\fcharset238\fprq2 Times New Roman CE;}' +
    '{\f85\froman\fcharset204\fprq2 Times New Roman Cyr;}{\f87\froman\fcharset161\fprq2 Times New Roman Greek;}{\f88\froman\fcharset162\fprq2 Times New Roman Tur;}{\f89\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}' +
    '{\f90\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\f91\froman\fcharset186\fprq2 Times New Roman Baltic;}{\f92\froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\f444\fswiss\fcharset238\fprq2 Tahoma CE;}' +
    '{\f445\fswiss\fcharset204\fprq2 Tahoma Cyr;}{\f447\fswiss\fcharset161\fprq2 Tahoma Greek;}{\f448\fswiss\fcharset162\fprq2 Tahoma Tur;}{\f449\fbidi \fswiss\fcharset177\fprq2 Tahoma (Hebrew);}{\f450\fbidi \fswiss\fcharset178\fprq2 Tahoma (Arabic);}' +
    '{\f451\fswiss\fcharset186\fprq2 Tahoma Baltic;}{\f452\fswiss\fcharset163\fprq2 Tahoma (Vietnamese);}{\f453\fswiss\fcharset222\fprq2 Tahoma (Thai);}}{\colortbl;\red0\green0\blue0;\red0\green0\blue255;\red0\green255\blue255;\red0\green255\blue0;' +
    '\red255\green0\blue255;\red255\green0\blue0;\red255\green255\blue0;\red255\green255\blue255;\red0\green0\blue128;\red0\green128\blue128;\red0\green128\blue0;\red128\green0\blue128;\red128\green0\blue0;\red128\green128\blue0;\red128\green128\blue128;' +
    '\red192\green192\blue192;}{\stylesheet{\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af0\afs24\alang1025 \ltrch\fcs0 \fs24\lang3082\langfe3082\cgrid\langnp3082\langfenp3082 \snext0 Normal;}{\*\cs10' +
    '\additive \ssemihidden Default Paragraph Font;}{\*' +
    '\ts11\tsrowd\trftsWidthB3\trpaddl108\trpaddr108\trpaddfl3\trpaddft3\trpaddfb3\trpaddfr3\trcbpat1\trcfpat1\tblind0\tblindtype3\tscellwidthfts0\tsvertalt\tsbrdrt\tsbrdrl\tsbrdrb\tsbrdrr\tsbrdrdgl\tsbrdrdgr\tsbrdrh\tsbrdrv' +
    '\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af0\afs20 \ltrch\fcs0 \fs20\lang1024\langfe1024\cgrid\langnp1024\langfenp1024 \snext11 \ssemihidden Normal Table;}{\*\cs15 \additive \rtlch\fcs1 \af0' +
    '\ltrch\fcs0 \ul\cf2 \sbasedon10 \styrsid8585664 Hyperlink;}}{\*\latentstyles\lsdstimax156\lsdlockeddef0}{\*\rsidtbl \rsid2063781\rsid5583722\rsid8585664\rsid12474654\rsid13458093\rsid15756903\rsid16059834}{\*\generator Microsoft Word 11.0.0000;}{\info' +
    '{\title En www}{\author hdeskit}{\operator hdeskit}{\creatim\yr2009\mo12\dy18\hr16\min32}{\revtim\yr2009\mo12\dy18\hr16\min51}{\version4}{\edmins3}{\nofpages1}{\nofwords114}{\nofchars629}{\*\company Provincia A.R.T}{\nofcharsws742}' +
    '{\vern24615}{\*\password 00000000}}{\*\xmlnstbl {\xmlns1 http://schemas.microsoft.com/office/word/2003/wordml}}\paperw11906\paperh16838\margl1701\margr1701\margt1417\margb1417\gutter0\ltrsect' +
    '\deftab708\widowctrl\ftnbj\aenddoc\hyphhotz425\donotembedsysfont1\donotembedlingdata0\grfdocevents0\validatexml1\showplaceholdtext0\ignoremixedcontent0\saveinvalidxml0\showxmlerrors1\noxlattoyen\expshrtn' +
    '\noultrlspc\dntblnsbdb\nospaceforul\formshade\horzdoc\dgmargin\dghspace180\dgvspace180\dghorigin1701\dgvorigin1417\dghshow1\dgvshow1' +
    '\jexpand\viewkind1\viewscale100\pgbrdrhead\pgbrdrfoot\splytwnine\ftnlytwnine\htmautsp\nolnhtadjtbl\useltbaln\alntblind\lytcalctblwd\lyttblrtgr\lnbrkrule\nobrkwrptbl\snaptogridincell\allowfieldendsel\wrppunct' +
    '\asianbrkrule\rsidroot2063781\newtblstyruls\nogrowautofit \fet0{\*\wgrffmtfilter 013f}\ilfomacatclnup0\ltrpar \sectd \ltrsect\linex0\headery708\footery708\colsx708\endnhere\sectlinegrid360\sectdefaultcl\sftnbj {\*\pnseclvl1' +
    '\pnucrm\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl2\pnucltr\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl3\pndec\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl4\pnlcltr\pnstart1\pnindent720\pnhang {\pntxta )}}{\*\pnseclvl5' +
    '\pndec\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl6\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl7\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl8\pnlcltr\pnstart1\pnindent720\pnhang' +
    '{\pntxtb (}{\pntxta )}}{\*\pnseclvl9\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}\pard\plain \ltrpar\ql \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0\pararsid5583722 \rtlch\fcs1 \af0\afs24\alang1025 \ltrch\fcs0' +
    '\fs24\lang3082\langfe3082\cgrid\langnp3082\langfenp3082 {\rtlch\fcs1 \af36\afs16 \ltrch\fcs0 \f36\fs16\insrsid5583722 En www.provinciart.com.ar, usted puede gestionar \''e1gilmente los Certificados de Cobertura de su empresa (con y sin cl\''e1usu' +
    'la, con y sin n\''f3mina).' +
    '\par' +
    '\par Lo invitamos a registrarse en nuestra Central de Servicios en l\''ednea, donde usted acceder\''e1 a emitir certificados de cobertura las 24 horas del d\''eda los 365 d\''edas del a\''f1o, conocer su estado de cuenta, consultar la cartilla de prestadore' +
    's, denunciar accidentes de trabajo y enfermedades profesionales, conocer la situaci\''f3n de sus trabajadores accidentados y descargar materiales de prevenci\''f3n de riesgos laborales.' +
    '\par' +
    '\par }\pard \ltrpar\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0\pararsid5583722 {\rtlch\fcs1 \af36\afs16 \ltrch\fcs0 \f36\fs16\insrsid5583722 Nuestro Centro de Atenci\''f3n al Cliente (0-800-333-1278) est\''e1' +
    ' a su disposici\''f3n para asesorarlo acerca del proceso de registraci\''f3n en la p\''e1gina y el funcionamiento de todas sus aplicaciones.}{\rtlch\fcs1 \af0\afs16 \ltrch\fcs0 \insrsid15756903\charrsid5583722' +
    '\par }}';

type
  TResultadoEnvio = record
    EMailsDestino: TStringList;
    EnvioOk: Boolean;
    MensajeId: Integer;
end;

type
  TAttach = record
    FileName: String;
    IdReport: Integer;
end;

  TArrayOfAttach = array of TAttach;
  TTipoCuenta = (tcDefault, tcCertificadosART);

  TOpcionEnvioMail = (oAlwaysShowDialog, oShowDialogIfEmpty, oAutoFirma, oSinNotaAlPie,
                      oDeleteAttach, oBodyIsRTF, oIncluirFax, oDisableBody, oDisableAdjuntos,
                      oDisableAsunto);
  TOpcionesEnvioMail = set of TOpcionEnvioMail;
  {$IFNDEF SERVICE}
  TOpcionesTipoDestinatario = set of TTipoDestinario;
  {$ENDIF}

  TfrmMoldeEnvioMail = class(TfrmCustomForm)
    btAgregarAdjunto: TSpeedButton;
    btAgregarDestinatario: TSpeedButton;
    btCancelar: TButton;
    btEnviar: TButton;
    btnAgregar: TButton;
    btnAgregarUsuario: TButton;
    btnAyuda: TJvCaptionButton;
    btnCancelarUsuario: TButton;
    btnCerrar: TButton;
    btQuitarAdjunto: TSpeedButton;
    btQuitarDestinatario: TSpeedButton;
    cmbSectores: TDBLookupComboBox;
    dbgUsuarios: TArtDBGrid;
    DBLookupListBoxDisponibles: TDBLookupListBox;
    dsDisponibles: TDataSource;
    dsSectores: TDataSource;
    dsUsuarios: TDataSource;
    edAsunto: TEdit;
    edDestinatario: TEdit;
    fpDisponibles: TFormPanel;
    fpProgresoEnvio: TFormPanel;
    fpUsuarios: TFormPanel;
    fraToolbarRTF: TfraToolbarRTF;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbAdjuntos: TListBox;
    lbDestinatarios: TImageListBox;
    mnuAbrir: TMenuItem;
    mnuQuitarAdjunto: TMenuItem;
    mnuQuitarDestinatarios: TMenuItem;
    mnuQuitarTodosLosAdjuntos: TMenuItem;
    mnuQuitarTodosLosDestinatarios: TMenuItem;
    OpenDialog: TOpenDialog;
    pnBodyReadonly: TPanel;
    pnlSector: TPanel;
    popupAdjuntos: TPopupMenu;
    popupDestinatarios: TPopupMenu;
    Progreso: TJvGIFAnimator;
    reTextoCuerpo: TRxRichEdit;
    sdqDisponibles: TSDQuery;
    sdqSectores: TSDQuery;
    sdqUsuarios: TSDQuery;
    Seguridad: TSeguridad;
    tbBotonera: TToolBar;
    tbContrato: TToolButton;
    tbFirma: TToolButton;
    tbLibreta: TToolButton;
    tbUsuarios: TToolButton;
    tbVendedor: TToolButton;
    Timer: TTimer;
    ToolBarFirma: TToolBar;
    imgFirma: TImage;
    procedure AbrirArchivoAdjunto(Sender: TObject);
    procedure btAgregarAdjuntoClick(Sender: TObject);
    procedure btAgregarDestinatarioClick(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnAgregarUsuarioClick(Sender: TObject);
    procedure btnAyudaClick(Sender: TObject);
    procedure btnCancelarUsuarioClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btQuitarAdjuntoClick(Sender: TObject);
    procedure btQuitarDestinatarioClick(Sender: TObject);
    procedure cmbSectoresCloseUp(Sender: TObject);
    procedure cmbSectoresKeyPress(Sender: TObject; var Key: Char);
    procedure dbgUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupListBoxDisponiblesDblClick(Sender: TObject);
    procedure DBLookupListBoxDisponiblesKeyPress(Sender: TObject; var Key: Char);
    procedure edDestinatarioKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure fpProgresoEnvioShow(Sender: TObject);
    procedure mnuQuitarAdjuntoClick(Sender: TObject);
    procedure mnuQuitarTodosLosAdjuntosClick(Sender: TObject);
    procedure mnuQuitarTodosLosDestinatariosClick(Sender: TObject);
    procedure popupAdjuntosPopup(Sender: TObject);
    procedure popupDestinatariosPopup(Sender: TObject);
    procedure SeleccionarDestinatario(Sender: TObject);
    procedure tbFirmaClick(Sender: TObject);
    procedure tbLibretaClick(Sender: TObject);
    procedure tbUsuariosClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    FBodyIsHtml: Boolean;
    FContrato: Integer;
    FFirmaEmail: String;
    FFirmaInsertada: Boolean;
    FHelpFile: String;
    FHtmlBody: String;
    FIdCuentaOrigen: Integer;
    FIdMensaje: Integer;
    FIdOrigenGeneracion: Integer;
    FIdRegistroAsociado: Integer;
    FOpciones: TOpcionesEnvioMail;
    FResultadoEnvio: TResultadoEnvio;
    FTipoCuenta: TTipoCuenta;
    {$IFNDEF SERVICE}
    FTipoDestinatarios: TOpcionesTipoDestinatario;
    {$ENDIF}
    FTipoRegistroAsociado: String;

    function Enviar: Boolean;
    function GetAttachs: String;
    function GetBody: String;
    function GetResultadoEnvio: TResultadoEnvio;
    function GetSubject: String;

    procedure SetAttachs(const Value: String);
    procedure SetBody(const Value: String);
    procedure SetResultadoEnvio(aEMailsDestino: String; const aEnvioOk: Boolean; const aMensajeId: Integer);
    procedure SetSubject(const Value: String);
    {$IFNDEF SERVICE}
    procedure SetTipoDestinatarios(const Value: TOpcionesTipoDestinatario);
    {$ENDIF}
  protected
    FConTrans: Boolean;
    FDireccionOrigen: String;

    procedure ActualizarIconos;
  public
    property Attachs           : String                    read GetAttachs          write SetAttachs;
    property Body              : String                    read GetBody             write SetBody;
    property Contrato          : Integer                   read fContrato           write fContrato;
    property IdCuentaOrigen    : Integer                   read FIdCuentaOrigen     write FIdCuentaOrigen;
    property IdOrigenGeneracion: Integer                   read fIdOrigenGeneracion write fIdOrigenGeneracion;
    property Opciones          : TOpcionesEnvioMail        read FOpciones           write FOpciones;
    property ResultadoEnvio    : TResultadoEnvio           read GetResultadoEnvio;
    property Subject           : String                    read GetSubject          write SetSubject;
    property TipoCuenta        : TTipoCuenta               read FTipoCuenta         write FTipoCuenta;
    {$IFNDEF SERVICE}
    property TipoDestinatarios : TOpcionesTipoDestinatario read FTipoDestinatarios  write SetTipoDestinatarios;
    {$ENDIF}
  end;

  function EnviarMailBD(sAddresses: String;
                        sSubject: String;
                        Opciones: TOpcionesEnvioMail;
                        sBody: String = 'Provincia ART';
                        vRutaArchivo: TArrayOfAttach = nil;
                        nContrato: Integer = 0;
                        rTipoCuenta: TTipoCuenta = tcDefault;
                        ConTrans: Boolean = True;
                        aImprimirPieCertificados: Boolean = False;
                        iWaitingProgress: Integer = 2500;
                        iIdOrigenGeneracion: Integer = -1;
                        {$IFNDEF SERVICE}
                        OpcTipoDestinatarios: TOpcionesTipoDestinatario = [tdContactoContrato];
                        {$ENDIF}
                        sFirmaEmail: String = '';
                        aBodyIsHtml: Boolean = False;
                        aDireccionOrigen: String = '';
                        const aTipoRegistroAsociado: String = '';
                        const aIdRegistroAsociado: Integer = -1;
                        const aIdCuentaOrigen: Integer = 0): Boolean; 

  function EnviarMailBDWithResults(sAddresses: String;
                                   sSubject: String;
                                   Opciones: TOpcionesEnvioMail;
                                   sBody: String = 'Provincia ART';
                                   vRutaArchivo: TArrayOfAttach = nil;
                                   nContrato: Integer = 0;
                                   rTipoCuenta: TTipoCuenta = tcDefault;
                                   ConTrans: Boolean = True;
                                   aImprimirPieCertificados: Boolean = False;
                                   iWaitingProgress: Integer = 2500;
                                   iIdOrigenGeneracion: Integer = -1
                                   {$IFNDEF SERVICE}
                                   ; OpcTipoDestinatarios: TOpcionesTipoDestinatario = [tdContactoContrato]
                                   {$ENDIF}
                                   ; sFirmaEmail: String = '';
                                   const aBodyIsHtml: Boolean = False): TResultadoEnvio;
  function EnviarMailBDWithResultsWithDirOrigen(sAddresses: String;
                                 sSubject: String;
                                 Opciones: TOpcionesEnvioMail;
                                 sBody: String = 'Provincia ART';
                                 vRutaArchivo: TArrayOfAttach = nil;
                                 nContrato: Integer = 0;
                                 rTipoCuenta: TTipoCuenta = tcDefault;
                                 ConTrans: Boolean = True;
                                 aImprimirPieCertificados: Boolean = False;
                                 iWaitingProgress: Integer = 2500;
                                 iIdOrigenGeneracion: Integer = -1
                                 {$IFNDEF SERVICE}
                                 ; OpcTipoDestinatarios: TOpcionesTipoDestinatario = [tdContactoContrato]
                                 {$ENDIF}
                                 ; sFirmaEmail: String = '';
                                 const aBodyIsHtml: Boolean = False;
                                 aDireccionOrigen: String = '';
                                 const aIdCuentaOrigen: Integer = 0): TResultadoEnvio;


  function GetAttach(AFileName: string; AIdReport: integer): TAttach;
  function GetAttachments(AFileName: string; AIdReport: integer): TArrayOfAttach;
  function GetListaDirecciones(sSql: String): String;
  function DeleteAttachment(vAdjuntos: TArrayOfAttach): Boolean;

  procedure AddAttach(Archivo: String; IdReporte: TTableId; var vAdjuntos: TArrayOfAttach);

implementation

{$R *.DFM}

uses
  {$IFNDEF SINSEGURIDAD}unPrincipal, {$ENDIF}
  {$IFNDEF SERVICE}unLibretaDeDirecciones, {$ENDIF}
  CustomDlgs, Internet, unSesion,  General, unDmPrincipal, AnsiSQL, ShellAPI, ArchFuncs, StrFuncs, unComunes;

const
  NOMBRE_ARCHIVO_AYUDA = 'EnvioMail.hlp';

var
  frmMoldeEnvioMail: TfrmMoldeEnvioMail;


function BitmapToRTF(pict: TBitmap): string;
var
  bi, bb, rtf: string;
  bis, bbs: Cardinal;
  achar: string;
  hexpict: string;
  I: Integer;
begin
  GetDIBSizes(pict.Handle,bis,bbs);
  SetLength(bi,bis);
  SetLength(bb,bbs);
  GetDIB(pict.Handle,pict.Palette,PChar(bi)^,PChar(bb)^);
  rtf := '{\rtf1 {\pict\dibitmap ';
  SetLength(hexpict,(Length(bb) + Length(bi)) * 2);
  I := 2;
  for bis := 1 to Length(bi) do
  begin
    achar := Format('%x',[Integer(bi[bis])]);
    if Length(achar) = 1 then
      achar := '0' + achar;
    hexpict[I-1] := achar[1];
    hexpict[I] := achar[2];
    Inc(I,2);
  end;
  for bbs := 1 to Length(bb) do
  begin
    achar := Format('%x',[Integer(bb[bbs])]);
    if Length(achar) = 1 then
      achar := '0' + achar;
    hexpict[I-1] := achar[1];
    hexpict[I] := achar[2];
    Inc(I,2);
  end;
  rtf := rtf + hexpict + ' }}';
  Result := rtf;
end;

procedure TfrmMoldeEnvioMail.AbrirArchivoAdjunto(Sender: TObject);
begin
  inherited;
  if lbAdjuntos.ItemIndex > -1 then
    ShellExecute(Application.Handle, nil, PChar(lbAdjuntos.Items[lbAdjuntos.ItemIndex]), '', '', SW_SHOWNORMAL);
end;

procedure TfrmMoldeEnvioMail.btAgregarAdjuntoClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    lbAdjuntos.Items.Add(OpenDialog.FileName);
end;

procedure TfrmMoldeEnvioMail.btAgregarDestinatarioClick(Sender: TObject);
var
  bSalir: Boolean;
  tsl: TStringList;
begin
  bSalir := False;

  Verificar(edDestinatario.Text = '', edDestinatario, 'No hay destinatario para agregar a la lista de destinatarios.');
  if not IsEMail(edDestinatario.Text) then
  begin
    edDestinatario.Text := UpperCase(edDestinatario.Text);
    with sdqDisponibles do
    try
      ParamByName('se_mail').AsString := Trim('%' + edDestinatario.Text + '%');
      OpenQuery(sdqDisponibles);

      if IsEmpty then
      begin
        InvalidMsg(edDestinatario, 'El usuario ingresado no pertenece a la ART o bien la direcci�n ingresada no es correcta.');
        bSalir := True;
      end;

      if (RecordCount > 1) and (fpDisponibles.ShowModal <> mrOk) then
        bSalir := True;

      if not bSalir then
        edDestinatario.Text := FieldByName('se_mail').AsString;
    finally
      Close;
    end;

    if bSalir then
      Abort;
  end
  else
    edDestinatario.Text := LowerCase(edDestinatario.Text);

  tsl := TStringList.Create;
  try
    tsl.Sorted := True;
    tsl.Duplicates := dupIgnore;
    tsl.CommaText := lbDestinatarios.Items.CommaText;
    tsl.Add(edDestinatario.Text);
    lbDestinatarios.Items.CommaText := tsl.CommaText;
    ActualizarIconos;
    edDestinatario.Clear;
  finally
    tsl.Free;
  end;
end;

procedure TfrmMoldeEnvioMail.btEnviarClick(Sender: TObject);
var
  iPos: Integer;
  iSize: Integer;
  sMens: String;
begin
  if edDestinatario.Text > '' then
  begin
    InfoHint(btEnviar, 'Se ha encontrado una direcci�n NO agregada a la lista de destinatarios.');
    btAgregarDestinatario.Click;
    Abort;
  end;

  if Visible then   // solo se verifica cuando se est� mostrando la pantalla
  begin
    Verificar(lbDestinatarios.Items.Count = 0, lbDestinatarios, 'No hay destinatarios para el correo.');
    Verificar(edAsunto.Text = '', edAsunto, 'Falta el asunto del correo.');

    iSize := 0;
    for iPos := 0 to lbAdjuntos.Items.Count - 1 do
      iSize := iSize + FileSize(lbAdjuntos.Items[iPos]);

    if Round(iSize / 1024) > 10240 then
    begin
      sMens := 'El tama�o de el/los archivo/s adjunto/s supera los 10 Mb.' + CRLF + 'El env�o del correo no puede realizarse.' + CRLF + 'Se sugiere compactar el/los archivo/s adjunto/s.';
      {$IFDEF SERVICE}
      raise Exception.Create(sMens);
      {$ELSE}
      MsgBox(sMens);
      Abort;
      {$ENDIF}
    end;

    {$IFNDEF SERVICE}
    if Round(iSize / 1024) > 512 then
      if not MsgAsk('El tama�o de el/los archivo/s adjunto/s supera los 512 Kb.' + CRLF + '� Desea enviar el correo de todas formas ?') then
        Abort;
    {$ENDIF}
  end;

  {$IFDEF SERVICE}
  if Enviar then
  {$ELSE}
  if fpProgresoEnvio.ShowModal = mrOk then
  {$ENDIF}
    if Visible then
      ModalResult := mrOK;
end;

procedure TfrmMoldeEnvioMail.btnAgregarClick(Sender: TObject);
var
  iLoop: Integer;
begin
  Verificar(dbgUsuarios.SelectedRows.Count = 0, btnAgregar, 'Debe seleccionar al menos un usuario.');

  for iLoop := 0 to dbgUsuarios.SelectedRows.Count - 1 do
  begin
    sdqUsuarios.GotoBookmark(Pointer(dbgUsuarios.SelectedRows.Items[iLoop]));
    edDestinatario.Text := sdqUsuarios.FieldByName('se_mail').AsString;
    btAgregarDestinatario.Click;
  end;
end;

procedure TfrmMoldeEnvioMail.btnAgregarUsuarioClick(Sender: TObject);
begin
  fpDisponibles.ModalResult := mrOk;
end;

procedure TfrmMoldeEnvioMail.btnAyudaClick(Sender: TObject);
begin
  Application.HelpCommand(HELP_FINDER, 0)
end;

procedure TfrmMoldeEnvioMail.btnCancelarUsuarioClick(Sender: TObject);
begin
  fpDisponibles.ModalResult := mrCancel;
end;

procedure TfrmMoldeEnvioMail.btnCerrarClick(Sender: TObject);
begin
  fpUsuarios.Close;
end;

procedure TfrmMoldeEnvioMail.btQuitarAdjuntoClick(Sender: TObject);
begin
  Verificar(lbAdjuntos.ItemIndex = -1, lbAdjuntos, 'No hay adjunto seleccionado.');
  lbAdjuntos.Items.Delete(lbAdjuntos.ItemIndex);
end;

procedure TfrmMoldeEnvioMail.btQuitarDestinatarioClick(Sender: TObject);
begin
  Verificar(lbDestinatarios.ItemIndex = -1, lbDestinatarios, 'No hay destinatario seleccionado.');
  lbDestinatarios.Items.Delete(lbDestinatarios.ItemIndex);
end;

procedure TfrmMoldeEnvioMail.cmbSectoresCloseUp(Sender: TObject);
begin
  sdqUsuarios.ParamByName('se_sector').AsString := sdqSectores.FieldByName('sc_codigo').AsString;
  if sdqSectores.FieldByName('sc_codigo').AsString = '[Todos]' then
    sdqUsuarios.ParamByName('se_sector').AsString := '';

  OpenQuery(sdqUsuarios);
end;

procedure TfrmMoldeEnvioMail.cmbSectoresKeyPress(Sender: TObject; var Key: Char);
var
  wTecla: Word;
begin
  wTecla := Ord(Key);
  case Ord(Key) of
    VK_ESCAPE:
      if sdqSectores.Locate('sc_codigo', '[Todos]', []) then
      begin
        cmbSectores.KeyValue := '[Todos]';
        cmbSectoresCloseUp(cmbSectores);
      end
      else
        FormKeyDown(Sender, wTecla, []);
  end;
end;

procedure TfrmMoldeEnvioMail.dbgUsuariosKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = VK_RETURN then
    btnAgregar.Click;
end;

procedure TfrmMoldeEnvioMail.DBLookupListBoxDisponiblesDblClick(Sender: TObject);
begin
  fpDisponibles.ModalResult := mrOk;
end;

procedure TfrmMoldeEnvioMail.DBLookupListBoxDisponiblesKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    fpDisponibles.ModalResult := mrOk;
end;

procedure TfrmMoldeEnvioMail.edDestinatarioKeyPress(Sender: TObject; var Key: Char);
begin
  case Ord(Key) of
    VK_RETURN:  btAgregarDestinatario.Click;
  end;
end;

procedure TfrmMoldeEnvioMail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.HelpFile := FHelpFile;
  inherited;
end;

procedure TfrmMoldeEnvioMail.FormCreate(Sender: TObject);
begin
  {$IFNDEF SERVICE}
  if Assigned(Application.MainForm) then
  begin
    Seguridad.Ejecutar;
    btAgregarAdjunto.Visible := Seguridad.Activar(btAgregarAdjunto);
    btQuitarAdjunto.Visible := Seguridad.Activar(btQuitarAdjunto);
  end;
  {$ENDIF}

  IdOrigenGeneracion := -1;
  FConTrans := True;
  lbDestinatarios.Images := ilColor;
  fraToolbarRTF.Edit := reTextoCuerpo;
  FHelpFile := Application.HelpFile;
  Application.HelpFile := TempPath + NOMBRE_ARCHIVO_AYUDA;
  KeyPreview := True;
  FFirmaInsertada := False;

  FResultadoEnvio.EMailsDestino := TStringList.Create;
  FResultadoEnvio.EnvioOk := False;
  FResultadoEnvio.MensajeId := -1;
end;

procedure TfrmMoldeEnvioMail.FormDestroy(Sender: TObject);
begin
  FResultadoEnvio.EMailsDestino.Free;
  inherited;
end;

procedure TfrmMoldeEnvioMail.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F1:
      if ActiveControl.Tag = 0 then
        Application.HelpCommand(HELP_FINDER, 0)
      else
        Application.HelpContext(ActiveControl.Tag);
  else
    inherited;
  end;
end;

procedure TfrmMoldeEnvioMail.fpProgresoEnvioShow(Sender: TObject);
begin
  inherited;

  Timer.Enabled := True;
  Progreso.Animate := True;
  Enviar;
end;

procedure TfrmMoldeEnvioMail.mnuQuitarAdjuntoClick(Sender: TObject);
begin
  Verificar(lbAdjuntos.ItemIndex = -1, lbAdjuntos, 'No hay un archivo adjunto seleccionado.');
  lbAdjuntos.Items.Delete(lbAdjuntos.ItemIndex);
end;

procedure TfrmMoldeEnvioMail.mnuQuitarTodosLosAdjuntosClick(Sender: TObject);
begin
  lbAdjuntos.Items.Clear;
end;

procedure TfrmMoldeEnvioMail.mnuQuitarTodosLosDestinatariosClick(Sender: TObject);
begin
  lbDestinatarios.Items.Clear;
end;

procedure TfrmMoldeEnvioMail.popupAdjuntosPopup(Sender: TObject);
begin
  mnuQuitarAdjunto.Enabled := (not (oDisableAdjuntos in Opciones)) and (lbAdjuntos.ItemIndex <> -1);
  mnuQuitarTodosLosAdjuntos.Enabled := (not (oDisableAdjuntos in Opciones)) and (lbAdjuntos.Items.Count > 0);
end;

procedure TfrmMoldeEnvioMail.popupDestinatariosPopup(Sender: TObject);
begin
  mnuQuitarDestinatarios.Enabled := lbDestinatarios.ItemIndex <> -1;
  mnuQuitarTodosLosDestinatarios.Enabled := lbDestinatarios.Items.Count > 0;
end;

procedure TfrmMoldeEnvioMail.SeleccionarDestinatario(Sender: TObject);
{$IFNDEF SERVICE}
var
  iLoop: Integer;
  tslDestinatarios: TStringList;
{$ENDIF}
begin
{$IFNDEF SERVICE}
  if (FContrato > 0) and ((tdContactoContrato in TipoDestinatarios) or (tdVendedor in TipoDestinatarios)) then
  begin
    with TfrmSeleccionDestinatarios.Create(nil) do
    try
      if Sender = tbContrato then
        TipoDestinatario := tdContactoContrato
      else if Sender = tbVendedor then
        TipoDestinatario := tdVendedor;

      Contrato             := Self.FContrato;
      AllowOtherDirections := False;

      if ShowModal <> mrOk then
        Abort;

      tslDestinatarios := TStringList.Create;
      try
        tslDestinatarios.Commatext := ListaDestinatarios;

        for iLoop := 0 to tslDestinatarios.Count - 1 do
        begin
          edDestinatario.Text := tslDestinatarios[iLoop];
          btAgregarDestinatario.Click;
        end;
      finally
        tslDestinatarios.Free;
      end;
    finally
      Free;
    end;
  end;
{$ENDIF}
end;

procedure TfrmMoldeEnvioMail.tbFirmaClick(Sender: TObject);
var
  sFirma: String;
  sSql: String;
  SS: TStringStream;
  BMP: TBitmap;
begin
  if (not FFirmaInsertada) or MsgAsk('La firma ya ha sido insertada. � Desea hacerlo nuevamente ?') then
  begin
    sSql :=
      'SELECT es_descripcion descsede, ' +
      '       NVL2(es_id, es_telefonos, DECODE(el_codareatelefonos, NULL, '''', ''('' || el_codareatelefonos || '') '') || el_telefonos) telefono , ' +
      '       NVL2(es_id, es_calle || '' '' || es_numero, el_calle || '' '' || el_numero) direccion, ' +
      '       NVL2(es_id, es_localidad, el_localidad) localidad, ' +
      '       NVL2(es_id, nvl(es_cpostala, es_cpostal), el_cpostal) cp, ' +
      '       DECODE(el_codareafax, NULL, DECODE(el_fax, NULL, '''', el_fax), ''('' || el_codareafax || '') '' || el_fax) telfax, ' +
      '       pv_descripcion provincia ' +
      '   FROM art.cpv_provincias, art.use_usuarios, art.del_delegacion, art.des_delegacionsede ' +
      '  WHERE se_delegacion = el_id ' +
      '    AND se_iddelegacionsede = es_id(+) ' +
      '    AND pv_codigo(+) = es_provincia ' +
      '    AND se_id = :id ';
    with GetQueryEx (sSql, [Sesion.ID]) do
    try
  (*
      if (oIncluirFax in Opciones) then
      begin
      end;
  *)
      sFirma := FIRMA_USUARIO;
      sFirma := StringReplace(sFirma, '<NOMBRE>', UpperCase(Sesion.Usuario), []);
      sFirma := StringReplace(sFirma, '<SECTOR>', Sesion.GerenciaIntranet + ' | ' + Nvl(Sesion.SectorIntranet, Sesion.SectorDesc), []);
      sFirma := StringReplace(sFirma, '<DIRECCION>', FieldByName('direccion').AsString, []);
      sFirma := StringReplace(sFirma, '<CP>', FieldByName('cp').AsString, []);
      sFirma := StringReplace(sFirma, '<LOCALIDAD>', FieldByName('localidad').AsString, []);
      sFirma := StringReplace(sFirma, '<TELEFONO>', FieldByName('telefono').AsString, []);
      sFirma := StringReplace(sFirma, '<INTERNO>', Sesion.Interno, []);
      sFirma := StringReplace(sFirma, '<MAIL>', Sesion.UserMail, []);
    finally
      free;
    end;

    if (oSinNotaAlPie in Opciones) then
      reTextoCuerpo.Lines.Add(sFirma)
    else
      reTextoCuerpo.Lines.Insert(reTextoCuerpo.Lines.Count - 2, sFirma);

    bmp := imgFirma.Picture.Bitmap;
    {assume SS is a TStringStream, RE is a TRxRichEdit and BMP is a TBitmap containing a picture.}
    SS := TStringStream.Create(BitmapToRTF(BMP));
    try
      reTextoCuerpo.Lines.Insert(reTextoCuerpo.Lines.Count - 2, SS.DataString);
    finally
      SS.Free;
    end;

    FFirmaInsertada := True;
  end;
end;

procedure TfrmMoldeEnvioMail.tbLibretaClick(Sender: TObject);
{$IFNDEF SERVICE}
var
  iPos: Integer;
{$ENDIF}
begin
  {$IFNDEF SERVICE}
  with TfrmLibretaDeDirecciones.Create(nil) do
  try
    BorderIcons       := [biSystemMenu];
    Grid.MultiSelect  := True;
    Grid.Options      := Grid.Options + [dgIndicator, dgMultiSelect];
    pnlBottom.Visible := True;
    Caption           := Caption + ' - Selecci�n de contactos';

    if ShowModal = mrOk then
      for iPos := 0 to Grid.SelectedRows.Count - 1 do
      begin
        sdqConsulta.GotoBookmark(Pointer(Grid.SelectedRows.Items[iPos]));
        edDestinatario.Text := sdqConsulta.FieldByName('ld_mail').AsString;
        btAgregarDestinatario.Click;
      end;
  finally
    Free;
  end;
  {$ENDIF}
end;

procedure TfrmMoldeEnvioMail.tbUsuariosClick(Sender: TObject);
begin
  OpenQuery(sdqSectores);
  if sdqSectores.Locate('sc_codigo', Sesion.Sector, []) then
  begin
    cmbSectores.KeyValue := sdqSectores.FieldByName('sc_codigo').AsString;
    cmbSectoresCloseUp(cmbSectores);
  end;
  OpenQuery(sdqUsuarios);
  fpUsuarios.ShowModal;

  sdqSectores.Close;
  sdqUsuarios.Close;
end;

procedure TfrmMoldeEnvioMail.TimerTimer(Sender: TObject);
begin
  fpProgresoEnvio.ModalResult := mrOk;
  Timer.Enabled := False;
end;

function TfrmMoldeEnvioMail.Enviar: Boolean;
var
  aAux: TStringStream;
  aStream: TFileStream;
  iIdAttach: Integer;
  iIdOrigen: Integer;
  iPos: Integer;
  sCuenta: String;
  sDireccionOrigen: String;
  sSql: String;
  sTipoCuerpo: String;
begin
  for iPos := 0 to lbDestinatarios.Items.Count - 1 do
    lbDestinatarios.ItemIndex := iPos;

  if FConTrans then
    BeginTrans(True);

  FIdMensaje := GetSecNextVal('SEQ_CEE_ID');
  try
    aAux := TStringStream.Create('');

    if FBodyIsHtml then
    begin
      with TStringList.Create do
      try
        Text := FHtmlBody;
        SaveToStream(aAux);
      finally
        Free;
      end;
    end
    else
      reTextoCuerpo.Lines.SaveToStream(aAux);

    aAux.Position := 0;

    if IdOrigenGeneracion = -1 then
      iIdOrigen := Get_IdEjecutable()
    else
      iIdOrigen := IdOrigenGeneracion;

    case TipoCuenta of
      tcDefault:
        sCuenta := '';
      tcCertificadosART:
        sCuenta := '"Provincia ART - Certificados"<certificados@provart.com.ar>';
    end;

    {$IFNDEF SERVICE}
    if (iIdOrigen = 0) and IsDelphiRunning then
      MsgBox('El ejecutable ' + ExtractFileName(GetAppInfo('OriginalFilename')) + ' no est� configurado en el portal.');
    {$ENDIF}

    if FBodyIsHtml then
      sTipoCuerpo := 'H'
    else
      sTipoCuerpo := 'R';

    if FDireccionOrigen = '' then
      sDireccionOrigen := Sesion.UserMail
    else
      sDireccionOrigen := FDireccionOrigen;

    if (FIdCuentaOrigen > 0) then
    begin
      sSql :=
        'SELECT 1' +
         ' FROM comunes.cco_cuentaorigen' +
        ' WHERE co_id = :id' +
          ' AND co_fechabaja IS NULL';
      Verificar(not ExisteSqlEx(sSql, [FIdCuentaOrigen]), btEnviar, 'Debe existir la cuenta origen.');
    end
    else
      FIdCuentaOrigen := 0;

    if (Length(aAux.DataString) > 4000) then
    begin
      sSql :=
        'INSERT INTO comunes.cee_emailaenviar' +
                   ' (ee_id, ee_direccionesdestino, ee_motivo, ee_fechamensaje, ee_direccionorigen, ee_tipocuerpo,' +
                    ' ee_idorigengeneracion, ee_cuenta, ee_usuariogeneracion, ee_tiporegistroasociado, ee_idregistroasociado,' +
                    ' ee_idcuentaorigen)' +
            ' VALUES (:idmensaje, :destinatarios, :asunto, SYSDATE, :remitente, :tipo,' +
                    ' :origen, :cuenta, :usuariogeneracion, :tiporegistroasociado, :idregistroasociado,' +
                    ' DECODE(:idcuentaorigen, 0, NULL, :idcuentaorigen))';
      EjecutarSqlSTEx(sSql, [FIdMensaje, lbDestinatarios.Items.CommaText, edAsunto.Text, sDireccionOrigen, sTipoCuerpo,
                             iIdOrigen, sCuenta, Sesion.UserId, FTipoRegistroAsociado, FIdRegistroAsociado,
                             FIdCuentaOrigen, FIdCuentaOrigen]);

      SaveBlob('SELECT ee_cuerpoex' +
                ' FROM comunes.cee_emailaenviar' +
               ' WHERE ee_id = ' + SqlValue(FIdMensaje),
               'UPDATE comunes.cee_emailaenviar' +
                 ' SET ee_cuerpoex = :ee_cuerpoex' +
               ' WHERE ee_id = ' + SqlValue(FIdMensaje), 'ee_cuerpoex', aAux);
    end
    else
    begin
      sSql :=
        'INSERT INTO comunes.cee_emailaenviar' +
                   ' (ee_id, ee_direccionesdestino, ee_motivo, ee_fechamensaje, ee_direccionorigen, ee_cuerpo, ee_tipocuerpo,' +
                    ' ee_idorigengeneracion, ee_cuenta, ee_usuariogeneracion, ee_tiporegistroasociado, ee_idregistroasociado,' +
                    ' ee_idcuentaorigen)' +
            ' VALUES (:idmensaje, :destinatarios, :asunto, SYSDATE, :remitente, :cuerpo, :tipo,' +
                    ' :origen, :cuenta, :usuariogeneracion, :tiporegistroasociado, :idregistroasociado,' +
                    ' DECODE(:idcuentaorigen, 0, NULL, :idcuentaorigen))';

      EjecutarSqlSTEx(sSql, [FIdMensaje, lbDestinatarios.Items.CommaText, edAsunto.Text, sDireccionOrigen,
                             Copy(aAux.DataString, 0, Length(aAux.DataString) - 1), sTipoCuerpo, iIdOrigen, sCuenta,
                             Sesion.UserId, FTipoRegistroAsociado, FIdRegistroAsociado, FIdCuentaOrigen,
                             FIdCuentaOrigen]);
    end;

    aAux.Free;

    for iPos := 0 to lbAdjuntos.Items.Count - 1 do
    begin
      aStream := TFileStream.Create(lbAdjuntos.Items[iPos], fmOpenRead);
      try
        iIdAttach := GetSecNextVal('SEQ_CEA_ID');

        sSql :=
          'INSERT INTO comunes.cea_emailadjunto' +
                     ' (ea_id, ea_nombreadjunto, ea_idemailaenviar, ea_idformulario)' +
              ' VALUES (:id, :nombreadjunto, :idemailaenviar, :idformulario)';
        EjecutarSqlSTEx(sSql, [iIdAttach, ExtractFileName(lbAdjuntos.Items[iPos]), FIdMensaje, Integer(lbAdjuntos.Items.Objects[iPos])]);

        SaveBlob('SELECT ea_cuerpoadjunto' +
                  ' FROM comunes.cea_emailadjunto' +
                 ' WHERE ea_idemailaenviar = ' + SqlValue(FIdMensaje) +
                   ' AND ea_id = ' + SqlValue(iIdAttach),
                 'UPDATE comunes.cea_emailadjunto' +
                   ' SET ea_cuerpoadjunto = :ea_cuerpoadjunto' +
                 ' WHERE ea_idemailaenviar = ' + SqlValue(FIdMensaje) +
                   ' AND ea_id = ' + SqlValue(iIdAttach),
                 'ea_cuerpoadjunto', aStream);
      finally
        aStream.Free;
      end;
    end;

    if FConTrans then
      CommitTrans(True);

    Result := True;
  except
    on E: Exception do
    begin
      if FConTrans then
        Rollback(True);
      {$IFNDEF SERVICE}
      ErrorMsg(E, 'Error al enviar e-mail');
      {$ENDIF}
      Result := False;
    end;
  end;
end;

function TfrmMoldeEnvioMail.GetAttachs: string;
begin
  Result := lbAdjuntos.Items.CommaText;
end;

function TfrmMoldeEnvioMail.GetBody: String;
begin
  Result := reTextoCuerpo.Text;
end;

function TfrmMoldeEnvioMail.GetResultadoEnvio: TResultadoEnvio;
begin
  Result := FResultadoEnvio;
end;

function TfrmMoldeEnvioMail.GetSubject: String;
begin
  Result := edAsunto.Text;
end;

procedure TfrmMoldeEnvioMail.SetAttachs(const Value: String);
begin
  lbAdjuntos.Items.CommaText := Value;
end;

procedure TfrmMoldeEnvioMail.SetBody(const Value: string);
begin
  reTextoCuerpo.Text := Value;
end;

procedure TfrmMoldeEnvioMail.SetResultadoEnvio(aEMailsDestino: String; const aEnvioOk: Boolean; const aMensajeId: Integer);
begin
  FResultadoEnvio.EMailsDestino.Text := aEMailsDestino;
  FResultadoEnvio.EnvioOk            := aEnvioOk;
  FResultadoEnvio.MensajeId          := aMensajeId;
end;

procedure TfrmMoldeEnvioMail.SetSubject(const Value: string);
begin
  edAsunto.Text := Value;
end;
{$IFNDEF SERVICE}
procedure TfrmMoldeEnvioMail.SetTipoDestinatarios(const Value: TOpcionesTipoDestinatario);
begin
  FTipoDestinatarios := Value;

  tbContrato.Enabled := ((Contrato > 0) and (tdContactoContrato in FTipoDestinatarios));
  tbVendedor.Enabled := ((Contrato > 0) and (tdVendedor in FTipoDestinatarios));
end;
{$ENDIF}

procedure TfrmMoldeEnvioMail.ActualizarIconos;
var
  iLoop: Integer;
begin
  for iLoop := 0 to lbDestinatarios.Items.Count - 1 do
    if lbDestinatarios.Items.Strings[iLoop] = UpperCase(lbDestinatarios.Items.Strings[iLoop]) then
      lbDestinatarios.ItemImage[iLoop] := 19
    else
      lbDestinatarios.ItemImage[iLoop] := 27;
end;

function EnviarMailBD(sAddresses: String;
                      sSubject: String;
                      Opciones: TOpcionesEnvioMail;
                      sBody: String = 'Provincia ART';
                      vRutaArchivo: TArrayOfAttach = nil;
                      nContrato: Integer = 0;
                      rTipoCuenta: TTipoCuenta = tcDefault;
                      ConTrans: Boolean = True;
                      aImprimirPieCertificados: Boolean = False;
                      iWaitingProgress: Integer = 2500;
                      iIdOrigenGeneracion: Integer = -1;
                      {$IFNDEF SERVICE}
                      OpcTipoDestinatarios: TOpcionesTipoDestinatario = [tdContactoContrato];
                      {$ENDIF}
                      sFirmaEmail: String = '';
                      aBodyIsHtml: Boolean = False;
                      aDireccionOrigen: String = '';
                      const aTipoRegistroAsociado: String = '';
                      const aIdRegistroAsociado: Integer = -1;
                      const aIdCuentaOrigen: Integer = 0): Boolean;
var
  aStream: TStringStream;
  nFila, nPos, nAnchoOriginal: Integer;
  sMens, sRutaArchivo: String;
begin
  {$IFDEF SERVICE}
  If not aBodyIsHtml and not IsRTF(sBody) and not (oAutoFirma in Opciones) then
    // esto lo hago porque estaba dando error en el servicio unEnvioND, en la linea de reTextoCuerpo.Lines.Insert: Control '' has no parent window
    aBodyIsHtml := True;
  {$ENDIF}

  Result := False;

  frmMoldeEnvioMail := TfrmMoldeEnvioMail.Create(nil);
  frmMoldeEnvioMail.Opciones := Opciones;

  with frmMoldeEnvioMail do
  try
    FBodyIsHtml           := aBodyIsHtml;
    FConTrans             := ConTrans;
    FDireccionOrigen      := aDireccionOrigen;
    FFirmaEmail           := sFirmaEmail;
    FHtmlBody             := sBody;
    FIdRegistroAsociado   := aIdRegistroAsociado;
    FTipoRegistroAsociado := aTipoRegistroAsociado;
    FIdCuentaOrigen       := aIdCuentaOrigen;

    lbDestinatarios.Items.CommaText := StringReplace(StringReplace(sAddresses, ',,', ',', [rfReplaceAll]), '"', '', [rfReplaceAll]);
    ActualizarIconos;
    Subject  := sSubject;
    Contrato := nContrato;
    IdOrigenGeneracion := iIdOrigenGeneracion;
    TipoCuenta         := rTipoCuenta;
    {$IFNDEF SERVICE}
    TipoDestinatarios  := OpcTipoDestinatarios;
    {$ENDIF}

    if iWaitingProgress <= 0 then
      iWaitingProgress := 1;
    Timer.Interval := iWaitingProgress;

    if Length(vRutaArchivo) > 0 then
      for nPos := Low(vRutaArchivo) to High(vRutaArchivo) do
      begin
        sRutaArchivo := vRutaArchivo[nPos].FileName;

        if (sRutaArchivo > '') and FileExists(sRutaArchivo) then
        begin
          nFila := lbAdjuntos.Items.Add(sRutaArchivo);
          lbAdjuntos.Items.Objects[nFila] := TObject(vRutaArchivo[nPos].IdReport);
        end;
        sRutaArchivo := '';
      end;

    if not FBodyIsHtml then begin      // esto lo "hacemos" porque estaba dando error en el servicio unEnvioND, en la linea de reTextoCuerpo.Lines.Insert: Control '' has no parent window, pero ya no deber�a dar mas el error porque se corrigi� en unit RxRichEd, procedure TRichEditStrings.InsertarRTF...
      nAnchoOriginal := reTextoCuerpo.Width;
      reTextoCuerpo.Anchors := reTextoCuerpo.Anchors - [akRight];
      reTextoCuerpo.Width := 20000;

      if not (oBodyIsRTF in Opciones) or not IsRTF(sBody) then
        reTextoCuerpo.Lines.Text := sBody
      else
      begin
        AStream := TStringStream.Create(sBody);
        try
          reTextoCuerpo.Lines.LoadFromStream(AStream);
        finally
          AStream.Free;
        end;
      end;

      reTextoCuerpo.Width := nAnchoOriginal;
      reTextoCuerpo.Anchors := reTextoCuerpo.Anchors + [akRight];

      if aImprimirPieCertificados then
      begin
        reTextoCuerpo.Lines.Add('');
        reTextoCuerpo.Lines.Add('');
        reTextoCuerpo.Lines.Add('');
        reTextoCuerpo.Lines.Insert(reTextoCuerpo.Lines.Count - 1, PIE_CERTIFICADOS);
      end;

      if not (oSinNotaAlPie in Opciones) then
      begin
        reTextoCuerpo.Lines.Add('');
        reTextoCuerpo.Lines.Add('');
        reTextoCuerpo.Lines.Add('');
        reTextoCuerpo.Lines.Insert(reTextoCuerpo.Lines.Count - 1, NOTA_AL_PIE);
      end;

      if (oAutoFirma in Opciones) then
        tbFirma.Click;
    end;

    if (oDisableBody in Opciones) then
    begin
      fraToolbarRTF.Enabled := False;
      reTextoCuerpo.Enabled := False;
      ToolBarFirma.Enabled  := False;

      with pnBodyReadonly do
      begin
        Height := reTextoCuerpo.Height;
        Left   := reTextoCuerpo.Left;
        Top    := reTextoCuerpo.Top;
        Width  := reTextoCuerpo.Width;
        Show;
        BringToFront;
      end;
    end
    else
      pnBodyReadonly.Hide;

    if (oDisableAdjuntos in Opciones) then
    begin
      btAgregarAdjunto.Enabled := False;
      btQuitarAdjunto.Enabled  := False;
      mnuQuitarAdjunto.Enabled := False;
      mnuQuitarTodosLosAdjuntos.Enabled := False;
    end;

    if (oDisableAsunto in Opciones) then
      edAsunto.Enabled := False;

    if (oAlwaysShowDialog in Opciones) or ((oShowDialogIfEmpty in Opciones) and (sAddresses = '')) then
      Result := (frmMoldeEnvioMail.ShowModal = mrOk)
    else if (not((oAlwaysShowDialog in Opciones) or (oShowDialogIfEmpty in Opciones)) and (sAddresses = '')) then
    begin
      sMens := 'No se pudo enviar el correo electr�nico debido a que no se especific� la direcci�n.';
      {$IFDEF SERVICE}
      raise Exception.Create(sMens);
      {$ELSE}
      MsgBox(sMens);
     {$ENDIF}
    end
    else
    begin
      btEnviarClick(nil);
      Result := True;
    end;

    if (oDeleteAttach in Opciones) then
      DeleteAttachment(vRutaArchivo);

    // Resultados del env�o..
    SetResultadoEnvio(frmMoldeEnvioMail.lbDestinatarios.Items.Text, Result, frmMoldeEnvioMail.FIdMensaje);
  finally
    if (Assigned(frmMoldeEnvioMail)) and (not frmMoldeEnvioMail.Visible) then
      frmMoldeEnvioMail.Close;
  end;
end;

function EnviarMailBDWithResults(sAddresses: String;
                                 sSubject: String;
                                 Opciones: TOpcionesEnvioMail;
                                 sBody: String = 'Provincia ART';
                                 vRutaArchivo: TArrayOfAttach = nil;
                                 nContrato: Integer = 0;
                                 rTipoCuenta: TTipoCuenta = tcDefault;
                                 ConTrans: Boolean = True;
                                 aImprimirPieCertificados: Boolean = False;
                                 iWaitingProgress: Integer = 2500;
                                 iIdOrigenGeneracion: Integer = -1
                                 {$IFNDEF SERVICE}
                                 ; OpcTipoDestinatarios: TOpcionesTipoDestinatario = [tdContactoContrato]
                                 {$ENDIF}
                                 ; sFirmaEmail: String = '';
                                 const aBodyIsHtml: Boolean = False): TResultadoEnvio;
begin
  EnviarMailBD(sAddresses, sSubject, Opciones, sBody, vRutaArchivo, nContrato, rTipoCuenta, ConTrans,
               aImprimirPieCertificados, iWaitingProgress, iIdOrigenGeneracion
               {$IFNDEF SERVICE}, OpcTipoDestinatarios{$ENDIF}, sFirmaEmail, aBodyIsHtml);
  Result := frmMoldeEnvioMail.ResultadoEnvio;
end;

function EnviarMailBDWithResultsWithDirOrigen(sAddresses: String;
                                 sSubject: String;
                                 Opciones: TOpcionesEnvioMail;
                                 sBody: String = 'Provincia ART';
                                 vRutaArchivo: TArrayOfAttach = nil;
                                 nContrato: Integer = 0;
                                 rTipoCuenta: TTipoCuenta = tcDefault;
                                 ConTrans: Boolean = True;
                                 aImprimirPieCertificados: Boolean = False;
                                 iWaitingProgress: Integer = 2500;
                                 iIdOrigenGeneracion: Integer = -1
                                 {$IFNDEF SERVICE}
                                 ; OpcTipoDestinatarios: TOpcionesTipoDestinatario = [tdContactoContrato]
                                 {$ENDIF}
                                 ; sFirmaEmail: String = '';
                                 const aBodyIsHtml: Boolean = False;
                                 aDireccionOrigen: String = '';
                                 const aIdCuentaOrigen: Integer = 0): TResultadoEnvio;
begin
  EnviarMailBD(sAddresses, sSubject, Opciones, sBody, vRutaArchivo, nContrato, rTipoCuenta, ConTrans,
               aImprimirPieCertificados, iWaitingProgress, iIdOrigenGeneracion
               {$IFNDEF SERVICE}, OpcTipoDestinatarios{$ENDIF}, sFirmaEmail, aBodyIsHtml, aDireccionOrigen, '', -1, aIdCuentaOrigen);
  Result := frmMoldeEnvioMail.ResultadoEnvio;
end;

function GetAttach(AFileName: string; AIdReport: integer): TAttach;
begin
  Result.FileName   := AFileName;
  Result.IdReport   := AIdReport;
end;

function GetAttachments(AFileName: string; AIdReport: integer): TArrayOfAttach;
begin
  SetLength(Result, 1);
  Result[0] := GetAttach(AFileName, AIdReport);
end;

procedure AddAttach(Archivo: String; IdReporte: TTableId; var vAdjuntos: TArrayOfAttach);
var
  iPosic: Integer;
begin
  iPosic := Length(vAdjuntos)+1;
  SetLength(vAdjuntos, iPosic);

  vAdjuntos[iPosic - 1] := GetAttach(Archivo, IdReporte);
end;
{$IFNDEF SERVICE}
{$ENDIF}

function GetListaDirecciones(sSql: String): String;
var
  sDirecciones: String;
begin
  sDirecciones := '';

  with GetQuery(sSql) do
  try
    while not Eof do
    begin
      sDirecciones := sDirecciones + Fields[0].AsString + ',';
      Next;
    end;
  finally
    Free;
  end;

  if sDirecciones <> '' then
    sDirecciones := CutRight(sDirecciones, 1);

  Result := sDirecciones;
end;

function DeleteAttachment(vAdjuntos: TArrayOfAttach): Boolean;
var
  nPos: Integer;
begin
  Result := True;

  if Length(vAdjuntos) > 0 then
    for nPos := Low(vAdjuntos) to High(vAdjuntos) do
    try
      Result := Result and DeleteFile(vAdjuntos[nPos].FileName);
    except
      Result := False;
    end;
end;

end.

