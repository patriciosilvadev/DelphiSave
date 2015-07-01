unit unMoldeEnvioMailEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unMoldeEnvioMail, ExtCtrls, artSeguridad, JvComponent,
  JvCaptionButton, Menus, DB, SDEngine, ImgList, XPMenu, Placemnt,
  ComCtrls, ToolWin, JvExControls, JvAnimatedImage, JvGIFCtrl, DBCtrls,
  ImageListBox, Grids, DBGrids, RXDBCtrl, ArtComboBox, ArtDBGrid,
  FormPanel, StdCtrls, RxRichEd, unFraToolbarRTF, Buttons, unArtFrame,
  unArtDBAwareFrame, unFraCodigoDescripcion, JvComponentBase, RxPlacemnt;

type
  TfrmMoldeEnvioMailEvento = class(TfrmMoldeEnvioMail)
    lbAccion: TLabel;
    fraTipoEvento: TfraCodigoDescripcion;
    procedure btEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FIdJuicio : Integer;
  public
    { Public declarations }
    procedure Cargar(aIdJuicio: Integer);
  end;

var
  frmMoldeEnvioMail: TfrmMoldeEnvioMailEvento;

implementation

uses
  unDmprincipal, AnsiSql, unSesion, General, CustomDlgs;
{$R *.dfm}

procedure TfrmMoldeEnvioMailEvento.Cargar(aIdJuicio : Integer);
begin
  with GetQuery(' SELECT ea_email '+
                '   FROM legales.lea_emailabogado, legales.lbo_abogado, legales.ljt_juicioentramite '+
                '  WHERE bo_id = ea_idabogado '+
                '    AND ea_fechabaja IS NULL '+
                '    AND ea_idabogado = jt_idabogado '+
                '    and jt_id = '+SqlValue(aIdJuicio)) do
  try
    while not Eof do
    begin
      edDestinatario.Text := FieldByName('ea_email').AsString;
      btAgregarDestinatarioClick(nil);
      Next;
    end;
  finally
    edDestinatario.Clear;
    Free;
  end;

  with GetQuery(' SELECT * '+
                '   FROM legales.ljt_juicioentramite '+
                '  WHERE jt_id = '+SqlValue(aIdJuicio)) do
  try
    FIdJuicio := FieldByName('jt_id').AsInteger;
    Subject := 'JD N�:'+FieldByName('jt_numerocarpeta').AsString+' - '+FieldByName('jt_demandante').AsString+' c/'+
               FieldByName('jt_demandado').AsString+'- Expediente N�'+ FieldByName('jt_nroexpediente').AsString+'/'+FieldByName('jt_anioexpediente').AsString;
  finally
    Free;
  end;


end;

procedure TfrmMoldeEnvioMailEvento.btEnviarClick(Sender: TObject);
var
  iIdEvento : Integer;
  sBody : String;
  sCuerpoMail : String;
begin
  Verificar(not fraTipoEvento.IsSelected, fraTipoEvento,'Debe seleccionar un evento.');
  IdCuentaOrigen := 1; //'litigios@provart.com.ar';
  FConTrans := False;
  iIdEvento := GetSecNextVal('LEGALES.SEQ_LET_ID');
  reTextoCuerpo.Text := reTextoCuerpo.Text+#13#13#13+'Nro Evento :'+IntToStr(iIdEvento)+#13;
  reTextoCuerpo.Text := reTextoCuerpo.Text+'Usuario :'+Sesion.UserID+#13;
  sCuerpoMail := reTextoCuerpo.Text;
  reTextoCuerpo.Lines.Add(#13);
  tbFirma.Click;
  inherited;
  sBody := 'Para: '+lbDestinatarios.Items.CommaText+#13;
  sBody := sBody+'De: '+Sesion.UserID+#13;
  sBody := sBody+'Fecha: '+ValorSql('SELECT to_date(sysdate,''DD/MM/YYYY'') FROM DUAL')+#13;
  sBody := sBody+sCuerpoMail+#13;
  reTextoCuerpo.Clear;
  reTextoCuerpo.Text := sBody;

  EjecutarSqlST(' INSERT INTO legales.let_eventojuicioentramite '+
                '             (et_id, et_idjuicioentramite, et_fechaevento,  '+
                '              et_idtipoevento, et_usualta, et_fechaalta ) '+
                '      VALUES ('+SqlValue(iIdEvento)+','+SqlValue(FIdJuicio)+',art.actualdate,'+
                                SqlValue(fraTipoEvento.Value)+','+SqlValue(Sesion.LoginName)+
                '              ,SYSDATE)');
  reTextoCuerpo.StreamFormat := sfPlainText;
  SaveBlob('SELECT et_observaciones ' +
           '  FROM legales.let_eventojuicioentramite ' +
           ' WHERE et_id = ' + SqlValue(iIdEvento),
           'UPDATE legales.let_eventojuicioentramite' +
           '   SET et_observaciones = :et_observaciones ' +
           ' WHERE et_id = ' + SqlValue(iIdEvento),
           'et_observaciones', reTextoCuerpo.Lines);

  MsgBox('Se cargo el n�mero de evento: '+IntToStr(iIdEvento));
end;

procedure TfrmMoldeEnvioMailEvento.FormCreate(Sender: TObject);
begin
  with fraTipoEvento do
  begin
    TableName   := 'legales.lte_tipoevento';
    FieldID     := 'TE_ID';
    FieldCodigo := 'TE_ID';
    FieldDesc   := 'TE_DESCRIPCION';
    ExtraCondition := ' AND te_etapa like ''%J%'' ';
    FieldBaja   := 'TE_FECHABAJA';
    Showbajas   := False;
  end;
  Opciones := [oAlwaysShowDialog, oAutoFirma];

  inherited;
end;

end.
