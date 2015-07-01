unit unfraJuzgados;

{$HINTS OFF}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, PatternEdit, unArtFrame,
  unFraCodigoDescripcionExt, ComCtrls, ToolWin, Grids, DBGrids, IntEdit,
  ExtCtrls, FormPanel, unFraCodigoDescripcion, DateTimeEditors, DB,
  SDEngine, ToolEdit, DateComboBox, unConstLegales, unArtDBAwareFrame,
  RxToolEdit;

type
  TfraJuzgados = class(TFrame)
    gbJuzgados: TGroupBox;           
    lblFuero: TLabel;
    lblJurisdiccion: TLabel;
    lblJuzgado: TLabel;
    lblSecretaria: TLabel;
    lblInstancia: TLabel;
    fraFuero: TfraCodigoDescripcionExt;
    fraJurisdiccion: TfraCodigoDescripcionExt;
    fraJuzgado: TfraCodigoDescripcionExt;
    fraSecretaria: TfraCodigoDescripcionExt;
    peInstancia: TPatternEdit;
    btnMasDatosJuzgado: TBitBtn;
    fpMasDatosJuzgado: TFormPanel;
    SeparadorBotonesMasDatos: TBevel;
    lblTituloJuzgado: TLabel;
    btnAceptarMasDatosJuzgado: TButton;
    btnCancelarMasDatos: TButton;
    edDescripcionJuzgado: TEdit;
    pgMasDatosJuzgado: TPageControl;
    tsSede: TTabSheet;
    lblDomicilioJuzgado: TLabel;
    lblTelefonoJuzgado: TLabel;
    lblFaxJuzgado: TLabel;
    lblEmailJuzgado: TLabel;
    lblLocJuzgado: TLabel;
    lblCPJuzgado: TLabel;
    edDomicilioJuzgado: TEdit;
    edTelefonoJuzgado: TEdit;
    edFaxJuzgado: TEdit;
    edEmailJuzgado: TEdit;
    edLocalidadJuzgado: TEdit;
    lblExpediente: TLabel;
    edNroExpediente: TPatternEdit;
    btnInstanciasAnteriores: TBitBtn;
    lblFechaIngreso: TLabel;
    dteFechaIngreso: TDateComboBox;
    sdqJuzgado: TSDQuery;
    edCPJuzgado: TEdit;
    Label1: TLabel;
    edAnioExpediente: TPatternEdit;
    lbNroExpediente: TLabel;
    cbSinExpediente: TCheckBox;
    procedure btnAceptarMasDatosJuzgadoClick(Sender: TObject);
    procedure btnMasDatosJuzgadoClick(Sender: TObject);
    procedure btnInstanciasAnterioresClick(Sender: TObject);
    procedure edEmailJuzgadoExit(Sender: TObject);
    procedure fpMasDatosJuzgadoBeforeShow(Sender: TObject);
    procedure cbSinExpedienteClick(Sender: TObject);
  private
    FPermitirExpediente: Boolean;
    FOnCambioInstancia: TNotifyEvent;
    FPermitirInstancia: Boolean;
    FLockControls: Boolean;
    FInit: Boolean;
    FValidaExpediente: Boolean;
    FDomicilio: String;
    FCodigoPostal: String;
    FLocalidad: String;
    FProvincia: String;
    FCarga : Boolean;
    FValidaFechaIngreso: Boolean;
    procedure MostrarJuzgado;
    procedure CargarDatosJuzgado;
    procedure ChangeJurisdiccion(Sender: TObject);
    procedure ChangeFuero(Sender: TObject);
    procedure ChangeJuzgado(Sender: TObject);
    procedure SetFuero(const Value: integer);
    procedure SetJurisdiccion(const Value: integer);
    procedure SetJuzgado(const Value: integer);
    procedure SetSecretaria(const Value: integer);
    function GetIsSelected: Boolean;
    function GetInstancia: integer;
    function GetExpediente: string;
    function GetFuero: integer;
    function GetJurisdiccion: integer;
    function GetJuzgado: integer;
    function GetSecretaria: integer;
    procedure SetExpediente(const Value: string);
    procedure SetPermitirExpediente(const Value: Boolean);
    procedure SetPermitirInstancia(const Value: Boolean);
    function GetFechaIngreso: TDate;
    procedure SetFechaIngreso(const Value: TDate);
    procedure SetLockControls(const Value: Boolean);
    function GetDomicilio: string;
    function GetCodigoPostal: String;
    function GetLocalidad: String;
    function GetProvincia: String;
    function GetAnioExpediente: string;
    function GetNroExpediente: string;
    procedure SetAnioExpediente(const Value: string);
    procedure SetNroExpediente(const Value: string);
    function GetSinExpediente: Boolean;
    procedure SetSinExpediente(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure Limpiar;
    procedure Cargar(AJurisdiccion, AFuero, AJuzgado, ASecretaria: integer); overload;
    procedure Cargar(AIdJuicioEnTramite : integer); overload;
    procedure Cargar(AIdSumario : string); overload;
    procedure validar(ATitulo : string);
    procedure ValidarSeleccionBajas(ATitulo : string);
    property OnCambioInstancia: TNotifyEvent read FOnCambioInstancia write FOnCambioInstancia;
    procedure Init(APermiteExpediente, APermiteInstancia : boolean);


  published
    property Jurisdiccion : integer read GetJurisdiccion write SetJurisdiccion;
    property Fuero : integer read GetFuero write SetFuero;
    property Juzgado : integer read GetJuzgado write SetJuzgado;
    property Secretaria : integer read GetSecretaria write SetSecretaria;
    property Instancia : integer read  GetInstancia;
    property Domicilio : string read GetDomicilio;
    property CodigoPostal: String read GetCodigoPostal;
    property Localidad: String read GetLocalidad;
    property Provincia: String read GetProvincia;
    property Expediente : string read  GetExpediente write SetExpediente;
    property NroExpediente : string read  GetNroExpediente write SetNroExpediente;
    property AnioExpediente : string read  GetAnioExpediente write SetAnioExpediente;
    property SinExpediente : Boolean read GetSinExpediente write SetSinExpediente;
    property FechaIngreso : TDate read GetFechaIngreso write SetFechaIngreso;
    property IsSelected : Boolean read GetIsSelected;
    property PermitirExpediente : Boolean read FPermitirExpediente;
    property PermitirInstancia  : Boolean read FPermitirInstancia;
    property LockControls : Boolean read FLockControls write SetLockControls;
    property ValidaExpediente: Boolean read FValidaExpediente write FValidaExpediente default true;
    property ValidaFechaIngreso: Boolean read FValidaFechaIngreso write FValidaFechaIngreso default True;
  end;

implementation

uses unDmPrincipal, AnsiSql, SqlFuncs, CustomDlgs, Math, VCLExtra, StrFuncs,
  Internet, General;

{$R *.dfm}

procedure TfraJuzgados.btnAceptarMasDatosJuzgadoClick(Sender: TObject);
begin
  EjecutarSqlSTEx (
       'UPDATE legales.ljz_juzgado '
      +'   SET ljz_juzgado.jz_direccion  = :dir, '
      +'       ljz_juzgado.jz_localidad  = :loc, '
      +'       ljz_juzgado.jz_cp         = :cp, '
      +'       ljz_juzgado.jz_telefono   = :tel, '
      +'       ljz_juzgado.jz_fax        = :fax, '
      +'       ljz_juzgado.jz_email      = :email '
      +' WHERE  '
      +'   ljz_juzgado.jz_id = :idjuzga',
      [ edDomicilioJuzgado.Text,
        edLocalidadJuzgado.Text,
        edCPJuzgado.Text,
        edTelefonoJuzgado.Text,
        edFaxJuzgado.Text,
        edEmailJuzgado.Text,
        fraJuzgado.ID
      ]
  );
  fpMasDatosJuzgado.Close;

end;

procedure TfraJuzgados.Init(APermiteExpediente, APermiteInstancia : boolean);
begin

  with fraJurisdiccion do
  begin
    TableName   := 'legales.lju_jurisdiccion';
    FieldID     := 'ju_id';
    FieldCodigo := 'ju_id';
    FieldDesc   := 'ju_descripcion';
    FieldBaja   := 'ju_fechabaja';
    ExtraCondition := ' and ju_fechabaja is null ';
    OnChange := ChangeJurisdiccion;
    ShowBajas := True;
  end;

  with fraFuero do
  begin
    TableName   := 'legales.lfu_fuero';
    FieldID     := 'fu_id';
    FieldCodigo := 'fu_id';
    FieldDesc   := 'fu_descripcion';
    FieldBaja   := 'fu_fechabaja';
    ExtraCondition := 'and 1=2';
    OnChange := ChangeFuero;
    ShowBajas := False;
  end;

  with fraJuzgado do
  begin
    TableName   := 'legales.ljz_juzgado';
    ExtraTableNameList := ' legales.lin_instancia';
    ExtraJoinCondition := ' in_id = jz_idinstancia ';
    ExtraFields := ' , jz_idinstancia, in_descripcion, jz_direccion, jz_cp, jz_localidad ';
    FieldID     := 'jz_id';
    FieldCodigo := 'jz_id';
    FieldDesc   := 'jz_descripcion';
    ExtraCondition := 'and 1=2';
    FieldBaja   := 'jz_fechabaja';
    ShowBajas := True;
    OnChange := ChangeJuzgado;
  end;

  with fraSecretaria do
  begin
    TableName   := 'legales.lsc_secretaria';
    FieldID     := 'sc_id';
    FieldCodigo := 'sc_id';
    FieldDesc   := 'sc_descripcion';
    FieldBaja   := 'sc_fechabaja';
    ExtraCondition := 'and 1=2';
    ShowBajas := True;
  end;

  SetPermitirExpediente(APermiteExpediente);
  SetPermitirInstancia(APermiteInstancia);

  FValidaFechaIngreso := True;
  FCarga := false;

  FInit := true;
end;

procedure TfraJuzgados.Limpiar;
begin
    fraJurisdiccion.Limpiar;
    fraFuero.Limpiar;
    fraJuzgado.Limpiar;
    fraSecretaria.Limpiar;
    peInstancia.Text := '';
    edNroExpediente.Text := '';
    edAnioExpediente.Text := '';
    cbSinExpediente.Checked := False;
    dteFechaIngreso.Date := 0;
    FDomicilio := '';
    FCodigoPostal := '';
    FLocalidad := '';
    FProvincia := '';
end;



procedure TfraJuzgados.btnMasDatosJuzgadoClick(Sender: TObject);
begin
    MostrarJuzgado;
end;

procedure TfraJuzgados.MostrarJuzgado;
begin
    if IsSelected then
    begin
        CargarDatosJuzgado;
        fpMasDatosJuzgado.ShowModal;
    end;
end;

procedure TfraJuzgados.CargarDatosJuzgado;
begin
    //FIXME. completar.

end;


procedure TfraJuzgados.ChangeJurisdiccion(Sender: TObject);
begin
 if fraJurisdiccion.IsSelected then
 begin
   fraFuero.Codigo := '';
   fraJuzgado.Codigo := '';
   fraSecretaria.Codigo := '';
   with fraFuero do
   begin
        TableName   := 'legales.lfu_fuero';
        FieldID     := 'fu_id';
        FieldCodigo := 'fu_id';
        FieldDesc   := 'fu_descripcion';
        FieldBaja   := 'fu_fechabaja';
        ShowBajas   := true;
        ExtraCondition := ' and fu_id in (select jz_idfuero from LEGALES.LJZ_JUZGADO where jz_idjurisdiccion = ' + SqlValue(strtoint(fraJurisdiccion.Codigo))+ ')'+
                          iif(FCarga,'','AND fu_fechabaja IS NULL');
        OnChange := ChangeFuero;
   end;
 end;

 if fraJurisdiccion.IsSelected and fraFuero.IsSelected then
 begin
   with fraJuzgado do
   begin
      TableName   := 'legales.ljz_juzgado';
      FieldID     := 'jz_id';
      FieldCodigo := 'jz_id';
      FieldDesc   := 'jz_descripcion';
      FieldBaja   := 'jz_fechabaja';
      ShowBajas   := true;
      ExtraCondition := 'and jz_idjurisdiccion = ' + SqlValue(strtoint(fraJurisdiccion.Codigo)) +  ' and jz_idfuero = ' +  SqlValue(strtoint(fraFuero.Codigo))+
                        iif(FCarga,'','AND jz_fechabaja IS NULL');
   end;
 end;
end;

procedure TfraJuzgados.ChangeFuero(Sender: TObject);
begin
  if fraJurisdiccion.IsSelected and fraFuero.IsSelected then
  begin
    fraJuzgado.Codigo := '';
    fraSecretaria.Codigo := '';
    with fraJuzgado do
    begin
      TableName   := 'legales.ljz_juzgado';
      FieldID     := 'jz_id';
      FieldCodigo := 'jz_id';
      FieldDesc   := 'jz_descripcion';
      FieldBaja   := 'jz_fechabaja';
      ShowBajas   := True;
      ExtraCondition := 'and jz_idjurisdiccion = ' + SqlValue(strtoint(fraJurisdiccion.Codigo)) +  ' and jz_idfuero = ' +  SqlValue(strtoint(fraFuero.Codigo))+
                        iif(FCarga,'','AND jz_fechabaja IS NULL');
    end;
  end;
end;

procedure TfraJuzgados.ChangeJuzgado(Sender: TObject);
begin
  if fraJuzgado.IsSelected then
  begin
    fraSecretaria.Codigo := '';
    with fraSecretaria do
    begin
      TableName   := 'legales.lsc_secretaria';
      FieldID     := 'sc_id';
      FieldCodigo := 'sc_id';
      FieldDesc   := 'sc_descripcion';
      FieldBaja   := 'sc_fechabaja';
      ShowBajas   := True;
      ExtraCondition := 'and sc_idjuzgado = ' + SqlValue(strtoint(fraJuzgado.Codigo))+
                        iif(FCarga,'','AND sc_fechabaja IS NULL');
    end;
    peInstancia.Text := fraJuzgado.Fields.FieldByName('in_descripcion').AsString;
    FDomicilio := fraJuzgado.Fields.FieldByName('jz_direccion').AsString;
    FCodigoPostal := fraJuzgado.Fields.FieldByName('jz_cp').AsString;
    FLocalidad := fraJuzgado.Fields.FieldByName('jz_localidad').AsString;
    FProvincia := ValorSqlEx('SELECT MAX(pv_descripcion) FROM art.cpv_provincias, art.ccp_codigopostal WHERE pv_codigo = cp_provincia AND cp_codigo = :cpostal', [fraJuzgado.Fields.FieldByName('jz_cp').AsString]);
  end;
end;

procedure TfraJuzgados.SetFuero(const Value: integer);
begin
  fraFuero.Codigo := InttoStr(Value);
  ChangeFuero(self);
end;

procedure TfraJuzgados.SetJurisdiccion(const Value: integer);
begin
  fraJurisdiccion.value := Value;
  ChangeJurisdiccion(self);
end;

procedure TfraJuzgados.SetJuzgado(const Value: integer);
begin
  fraJuzgado.Codigo := InttoStr(Value);
  ChangeJuzgado(self);
end;

procedure TfraJuzgados.SetSecretaria(const Value: integer);
begin
  fraSecretaria.Codigo := InttoStr(Value);
end;

function TfraJuzgados.GetIsSelected: Boolean;
begin
    result := fraJurisdiccion.IsSelected and fraFuero.IsSelected and
              fraJuzgado.IsSelected and fraSecretaria.IsSelected;
end;

procedure TfraJuzgados.Cargar(AJurisdiccion, AFuero, AJuzgado, ASecretaria : integer);
begin
    if not FInit then Init(PERMITIREXPEDIENTE, PERMITIRINSTANCIAS);  
    FCarga := True;
    fraJurisdiccion.ExtraCondition := ' AND (ju_fechabaja IS NULL OR ju_id = '+SqlValue(AJurisdiccion)+')';
    Jurisdiccion := AJurisdiccion;
    fraFuero.ExtraCondition := fraFuero.ExtraCondition + ' AND (fu_fechabaja IS NULL OR fu_id = '+SqlValue(AFuero)+')';
    Fuero := AFuero;
    fraJuzgado.ExtraCondition := fraJuzgado.ExtraCondition + ' AND (jz_fechabaja IS NULL OR jz_id = '+SqlValue(AJuzgado)+')';
    Juzgado := AJuzgado;
    fraSecretaria.ExtraCondition := fraSecretaria.ExtraCondition + ' AND (sc_fechabaja IS NULL OR sc_id = '+SqlValue(ASecretaria)+')';
    Secretaria := ASecretaria;
    FCarga := False;
    if (Not IsSelected) and
       ((AJurisdiccion > 0) or
        (AFuero > 0) or
        (AJuzgado > 0) or
        (ASecretaria > 0)) then
    begin
      raise Exception.Create('Valores de Juzgados Invalidos');
    end;
end;

procedure TfraJuzgados.validar(ATitulo : string);
begin

  VerificarMultiple([ATitulo,
                    fraJurisdiccion,
                    fraJurisdiccion.IsSelected,
                    'Debe seleccionar una Jurisdiccion.',
                    fraFuero,
                    fraFuero.IsSelected,
                    'Debe seleccionar un fuero.',
                    fraJuzgado,
                    fraJuzgado.IsSelected,
                    'Debe seleccionar un juzgado.',
                    fraSecretaria,
                    fraSecretaria.IsSelected,
                    'Debe seleccionar una secretaria.'
                    ]);

  if edNroExpediente.Visible then
  begin
    if FValidaFechaIngreso then
    begin
      VerificarMultiple([ATitulo,
            dteFechaIngreso,
            (dteFechaIngreso.Date > 0),
            'Debe especificar un fecha v�lida.',
             dteFechaIngreso,
            (dteFechaIngreso.Date <= DBDateTime),
           'La fecha de ingreso no puede ser mayor que la actual']);
    end;

    Verificar(FValidaExpediente and (edNroExpediente.Text = ''),edNroExpediente,'Debe especificar un expediente');

    verificar(((edNroExpediente.Text = '') and (edAnioExpediente.Text <> '')),
              edNroExpediente,'Debe completar el numero de expediente.');
  end;

end;

function TfraJuzgados.GetInstancia: integer;
begin
  validar('Instancia');
  Result := fraJuzgado.Fields.FieldByName('jz_idinstancia').AsInteger;
end;

function TfraJuzgados.GetExpediente: string;
begin
  if lbNroExpediente.Visible then
    result := lbNroExpediente.Caption
  else result := '';
end;

function TfraJuzgados.GetNroExpediente: string;
begin
  if edNroExpediente.Visible then
    result := edNroExpediente.Text
  else result := '';
end;

function TfraJuzgados.GetAnioExpediente: string;
begin
  if edAnioExpediente.Visible then
    result := edAnioExpediente.Text
  else result := '';
end;

procedure TfraJuzgados.SetAnioExpediente(const Value: string);
begin
  if (edAnioExpediente.Visible) or IsEmptyString(Value) then
     edAnioExpediente.Text := Value
  else
    if ValidaExpediente then begin
      raise Exception.Create('No est� permitido fijar un n�mero de expediente.');
    end;
end;

procedure TfraJuzgados.SetNroExpediente(const Value: string);
begin
    if (edNroExpediente.Visible) or IsEmptyString(Value) then
       edNroExpediente.Text := Value
    else
      if ValidaFechaIngreso then begin
        raise Exception.Create('No est� permitido fijar un n�mero de expediente.');
      end;
end;

function TfraJuzgados.GetFuero: integer;
begin
  if fraFuero.IsSelected then
   result := StrToInt(fraFuero.Codigo)
  else result := 0;

end;

function TfraJuzgados.GetJurisdiccion: integer;
begin
  if fraJurisdiccion.IsSelected then
   result := StrToInt(fraJurisdiccion.Codigo)
  else result := 0;
end;

function TfraJuzgados.GetJuzgado: integer;
begin
  if fraJuzgado.IsSelected then
   result := StrToInt(fraJuzgado.Codigo)
  else result := 0;
end;

function TfraJuzgados.GetSecretaria: integer;
begin
  if fraSecretaria.IsSelected then
   result := StrToInt(fraSecretaria.Codigo)
  else result := 0;

end;

procedure TfraJuzgados.SetExpediente(const Value: string);
begin
  if (lbNroExpediente.Visible) or IsEmptyString(Value) then
  begin
    if (edNroExpediente.Text = '') or (edAnioExpediente.Text = '') then
     lbNroExpediente.Caption := Value;
  end
  else raise Exception.Create('No est� permitido fijar un n�mero de expediente.');

end;

procedure TfraJuzgados.SetPermitirExpediente(const Value: Boolean);
begin
    FPermitirExpediente := Value;
    lblExpediente.Visible := Value;
    edNroExpediente.Visible := Value;
    edAnioExpediente.Visible := Value;
    lblExpediente.Visible := Value;

  if ValidaFechaIngreso then begin
    lblFechaIngreso.Visible := Value;
    dteFechaIngreso.Visible := Value;
  end;
end;

procedure TfraJuzgados.SetPermitirInstancia(const Value: Boolean);
begin
  FPermitirExpediente := Value;
  btnInstanciasAnteriores.Visible := Value;
end;


procedure TfraJuzgados.btnInstanciasAnterioresClick(Sender: TObject);
begin
  If Assigned(FOnCambioInstancia) then
      FOnCambioInstancia(Self);
end;


function TfraJuzgados.GetFechaIngreso: TDate;
begin
 result := 0;

 if dteFechaIngreso.Visible then
  result := dteFechaIngreso.Date
  else
    if ValidaFechaIngreso then begin
      raise Exception.Create('La fecha de ingreso no est� disponible.');
    end;
end;

procedure TfraJuzgados.SetFechaIngreso(const Value: TDate);
begin
 if dteFechaIngreso.Visible then
  dteFechaIngreso.Date := Value
 else
  if ValidaFechaIngreso then begin
    raise Exception.Create('No se puede fijar la fecha de ingreso de expediente.');
  end;
end;

procedure TfraJuzgados.Cargar(AIdSumario : string);
var
 Query : TSDQuery;

begin
  if not FInit then Init(PERMITIREXPEDIENTE, PERMITIRINSTANCIAS);
  Query := GetQuery('select su_idjuzgado, su_idfuero, su_idjurisdiccion,   ' +
                    ' su_idsecretaria, su_expedientejuicio, su_fechaingresoexpediente,  ' +
                    ' su_nroexpedientejuicio, su_anioexpedientejuicio '+
                    ' from legales.lsu_sumario where su_id =  ' + SqlValue(AIdSumario));
  try
    if Query.RecordCount > 0 then
    begin
      Cargar(Query.FieldByName('su_idjurisdiccion').AsInteger, Query.FieldByName('su_idfuero').AsInteger,
             Query.FieldByName('su_idjuzgado').AsInteger, Query.FieldByName('su_idsecretaria').AsInteger);

      SetPermitirExpediente(True);
      NroExpediente := Query.FieldByName('su_nroexpedientejuicio').AsString;
      AnioExpediente := Query.FieldByName('su_anioexpedientejuicio').AsString;
      Expediente := Query.FieldByName('su_expedientejuicio').AsString;


      FechaIngreso := Query.FieldByName('su_fechaingresoexpediente').AsDateTime;

      Query.Close;
    end else raise Exception.Create('No se encontro el juicio');
  finally
      Query.Free;
  end;
end;


procedure TfraJuzgados.Cargar(AIdJuicioEnTramite: integer);
var
 Query : TSDQuery;
begin
  cbSinExpediente.Visible := True;
  if not FInit then Init(PERMITIREXPEDIENTE, PERMITIRINSTANCIAS);
  Query := GetQuery('select jt_idjurisdiccion, jt_idfuero, jt_idjuzgado, jt_sinexpediente, ' +
                    ' jt_idsecretaria, jt_expediente, jt_fechaingreso,jt_nroexpediente,jt_anioexpediente ' +
                    ' from legales.ljt_juicioentramite where jt_id =  ' + SqlValue(AIdJuicioEnTramite));
  try
    if Query.RecordCount > 0 then
    begin
      Cargar(Query.FieldByName('jt_idjurisdiccion').AsInteger, Query.FieldByName('jt_idfuero').AsInteger,
             Query.FieldByName('jt_idjuzgado').AsInteger, Query.FieldByName('jt_idsecretaria').AsInteger);

      SetPermitirExpediente(True);
      NroExpediente := Query.FieldByName('jt_nroexpediente').AsString;
      AnioExpediente := Query.FieldByName('jt_anioexpediente').AsString;
      Expediente := Query.FieldByName('jt_expediente').AsString;
      SinExpediente := Query.FieldByName('JT_SINEXPEDIENTE').AsString = 'S';
      FechaIngreso := Query.FieldByName('jt_fechaingreso').AsDateTime;

      Query.Close;
    end else raise Exception.Create('No se encontro el juicio');
  finally
      Query.Free;
  end;

end;

procedure TfraJuzgados.edEmailJuzgadoExit(Sender: TObject);
begin
  if Length(TRim(edEmailJuzgado.Text)) > 0 then
    Verificar(IsEMail(edEmailJuzgado.Text) = False, edEmailJuzgado, 'Error en formato de e-Mail');
end;

procedure TfraJuzgados.fpMasDatosJuzgadoBeforeShow(Sender: TObject);
begin
  VCLExtra.LockControl(edDescripcionJuzgado);
  OpenQueryEx(sdqJuzgado, [fraJuzgado.ID]);

  edDescripcionJuzgado.Text :=
      'N�mero: ' + fraJuzgado.cmbDescripcion.Text + ' - ' +
      fraJurisdiccion.cmbDescripcion.Text + ' - ' +
      'Fuero: ' + fraFuero.cmbDescripcion.Text;

  edDomicilioJuzgado.Text := sdqJuzgado.FieldByName('jz_direccion').AsString;
  edLocalidadJuzgado.Text := sdqJuzgado.FieldByName('jz_localidad').AsString;
  edCPJuzgado.Text := sdqJuzgado.FieldByName('jz_cp').AsString;
  edTelefonoJuzgado.Text := sdqJuzgado.FieldByName('jz_telefono').AsString;
  edFaxJuzgado.Text := sdqJuzgado.FieldByName('jz_fax').AsString;
  edEmailJuzgado.Text := sdqJuzgado.FieldByName('jz_email').AsString;
end;

procedure TfraJuzgados.SetLockControls(const Value: Boolean);
begin
  FLockControls := Value;
  VclExtra.LockControls([fraJurisdiccion,fraFuero,fraJuzgado,fraSecretaria, edNroExpediente, edAnioExpediente, dteFechaIngreso], Value);
end;

procedure TfraJuzgados.ValidarSeleccionBajas(ATitulo: string);
begin
  if fraJurisdiccion.IsSelected and (not fraJurisdiccion.sdqDatos.FieldByName(CD_ALIAS_BAJA).IsNull) then
  begin
    InvalidMsg(fraJurisdiccion.cmbDescripcion, 'La jurisdicci�n no es v�lida. Seleccione una activa. ', ATitulo, MB_ICONERROR);
    abort;
  end;

  if fraFuero.IsSelected and (not fraFuero.sdqDatos.FieldByName(CD_ALIAS_BAJA).IsNull) then
  begin
    InvalidMsg(fraFuero.cmbDescripcion, 'El fuero no es v�lido. Seleccione uno activo. ', ATitulo, MB_ICONERROR);
    abort;
  end;

  if fraJuzgado.IsSelected and (not fraJuzgado.sdqDatos.FieldByName(CD_ALIAS_BAJA).IsNull) then
  begin
    InvalidMsg(fraJuzgado.cmbDescripcion, 'El juzgado no es v�lido. Seleccione uno activo. ', ATitulo, MB_ICONERROR);
    abort;
  end;

  if fraSecretaria.IsSelected and (not fraSecretaria.sdqDatos.FieldByName(CD_ALIAS_BAJA).IsNull) then
  begin
    InvalidMsg(fraSecretaria.cmbDescripcion, 'La secretar�a no es v�lida. Seleccione una activa. ', ATitulo, MB_ICONERROR);
    abort;
  end;

end;

function TfraJuzgados.GetDomicilio: string;
begin
  Result := FDomicilio;
end;

function TfraJuzgados.GetCodigoPostal: String;
begin
  Result := FCodigoPostal;
end;

function TfraJuzgados.GetLocalidad: String;
begin
  Result := FLocalidad;
end;

function TfraJuzgados.GetProvincia: String;
begin
  Result := FProvincia;
end;

function TfraJuzgados.GetSinExpediente: Boolean;
begin
  Result := cbSinExpediente.Checked;
end;

procedure TfraJuzgados.SetSinExpediente(const Value: Boolean);
begin
  cbSinExpediente.Checked := Value;
  cbSinExpedienteClick(nil);
end;

procedure TfraJuzgados.cbSinExpedienteClick(Sender: TObject);
begin
  if cbSinExpediente.Checked then
  begin
    VclExtra.LockControls([edNroExpediente,edAnioExpediente],True);
    edNroExpediente.Clear;
    edAnioExpediente.Clear;
  end
  else
    VclExtra.LockControls([edNroExpediente,edAnioExpediente],False);
end;

{$HINTS ON}

end.
