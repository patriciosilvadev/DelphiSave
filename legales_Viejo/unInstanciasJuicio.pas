unit unInstanciasJuicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask,
  PatternEdit, unArtFrame, unFraCodigoDescripcion, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin, FormPanel, DB, SDEngine,
  unfraJuzgados, unDmLegales, unfraCodigoDescripcionExt, VCLExtra, General, unArtDBAwareFrame;

type
  TfrmInstanciasJuicio = class(TForm)
    cbInstancias: TCoolBar;
    tbrInstancias: TToolBar;
    tbCambioInstancia: TToolButton;
    tbReasignarPrimeraInstancia: TToolButton;
    tbEliminarCambioJuzgado: TToolButton;
    tbSeparador2: TToolButton;
    tbImprimirInstanciasJuicio: TToolButton;
    tbSeparador3: TToolButton;
    tbSalirInstanciaJuicios: TToolButton;
    dbGridInstanciasJuicio: TDBGrid;
    fpCambioInstanciaJuicio: TFormPanel;
    bvSeparadorBotonesInstancias: TBevel;
    btnAceptar: TButton;
    gbMotivo: TGroupBox;
    lblDetalle: TLabel;
    lblMotivo: TLabel;
    mDetalleCambioJuzgado: TMemo;
    fraMotivoCambioJuzgado: TfraCodigoDescripcionExt;
    btnCancelar: TButton;
    dsInstanciaJuicioEnTramite: TDataSource;
    sdqInstanciaJuicioEnTramite: TSDQuery;
    fraJuzgadosInstancia: TfraJuzgados;
    tbEditarInstancia: TToolButton;
    sdqValidacion: TSDQuery;
    sdqPrimeraInstancia: TSDQuery;
    sdqDatosMediacion: TSDQuery;
    tbFijarSentenciaCambioInstancia: TToolButton;
    procedure tbCambioInstanciaClick(Sender: TObject);
    procedure tbReasignarPrimeraInstanciaClick(Sender: TObject);
    procedure tbSalirInstanciaJuiciosClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure tbEliminarCambioJuzgadoClick(Sender: TObject);
    procedure tbEditarInstanciaClick(Sender: TObject);
    procedure sdqInstanciaJuicioEnTramiteAfterScroll(DataSet: TDataSet);
    procedure fraJuzgadosInstanciabtnInstanciasAnterioresClick(Sender: TObject);
    procedure tbFijarSentenciaCambioInstanciaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fraJuzgadosInstanciacbSinExpedienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FFechaNotifJuicio: TDatetime;
    FIdJuicioEnTramite: Integer;
    FMediacion: Boolean;
    FModo: TModoEjecucion;
    FParteActora : Boolean;
    FValidaFechaIngreso: Boolean;
    function GetInstanciaActual: Integer;

    procedure ActualizarCambioInstanciaSentencia;
    procedure CambiarInstanciaJuicio;
    procedure CargarDatosCambioInstancia;
    procedure CargarDatosInstancia;
    procedure CargarDatosMediacion;
    procedure CargarDatosPrimeraInstancia;
    procedure FijarSentencia(idInstanciaJuicioEnTramite: Integer);
    procedure GuardarCambioInstanciaJuicio;
    procedure HabilitarBotones;
    procedure Init;
    procedure LimpiarCamposCambioInstanciaJuicio;
    procedure Validar;
    procedure ValidarFechaIngreso;
  public
    function ElevarAJuicio(AIdJuicioEnTramite: Integer; aFechaNotifJuicio: TDateTime): Boolean;
    procedure MostrarInstanciasJuicio(AIdJuicioEnTramite: Integer; aFechaNotifJuicio: TDateTime);
    property ParteActora : Boolean  read FParteActora        write FParteActora;
  published
    property ValidaFechaIngreso: Boolean read FValidaFechaIngreso write FValidaFechaIngreso default True;
  end;

var
  frmInstanciasJuicio: TfrmInstanciasJuicio;
  cambioinstancia : integer;

implementation

uses
	unDmPrincipal,unFijarImportesSentenciaActora, CustomDlgs, AnsiSql, unConstLegales, unSesion, unFijarImportesSentencia;

{$R *.dfm}

function TfrmInstanciasJuicio.ElevarAJuicio(AIdJuicioEnTramite: Integer; aFechaNotifJuicio: TDateTime): Boolean;
begin
	FIdJuicioEnTramite := AIdJuicioEnTramite;
  FFechaNotifJuicio := aFechaNotifJuicio;
  CargarDatosInstancia;
  CargarDatosMediacion;
  FMediacion := True;
  Init;
  Result := fpCambioInstanciaJuicio.ShowModal = mrOk;
//    fpCambioInstanciaJuicio.Close;
end;

procedure TfrmInstanciasJuicio.MostrarInstanciasJuicio(AIdJuicioEnTramite: Integer; aFechaNotifJuicio: TDateTime);
begin
	FIdJuicioEnTramite := AIdJuicioEnTramite;
  FFechaNotifJuicio := aFechaNotifJuicio;
  FMediacion := False;
  CargarDatosInstancia;
  Init;
  Self.ShowModal;
end;

procedure TfrmInstanciasJuicio.tbCambioInstanciaClick(Sender: TObject);
begin
  FModo := meAlta;
  fraMotivoCambioJuzgado.Enabled := true;
  CambiarInstanciaJuicio;
end;

procedure TfrmInstanciasJuicio.tbReasignarPrimeraInstanciaClick(Sender: TObject);
begin
  LimpiarCamposCambioInstanciaJuicio;
  CargarDatosPrimeraInstancia;
  fpCambioInstanciaJuicio.ShowModal;
  sdqInstanciaJuicioEnTramite.Refresh;
end;

procedure TfrmInstanciasJuicio.btnAceptarClick(Sender: TObject);
begin
	GuardarCambioInstanciaJuicio;
end;

procedure TfrmInstanciasJuicio.HabilitarBotones;
begin
  tbEditarInstancia.Enabled := sdqInstanciaJuicioEnTramite.RecNo {$IFDEF VER150}+ 1{$ENDIF} = 1;
  tbEliminarCambioJuzgado.Enabled := tbEditarInstancia.Enabled;
end;

procedure TfrmInstanciasJuicio.tbEliminarCambioJuzgadoClick(Sender: TObject);
var
	sSql: String;
begin
  if sdqInstanciaJuicioEnTramite.RecordCount > 0 then
  begin
  	sSql :=
			'UPDATE legales.lij_instanciajuicioentramite' +
      	' SET usubaja =' + SqlValue(Sesion.LoginName) +
        	 ', fechabaja = SYSDATE';
// where?????
    EjecutarSqlST(sSql);
    sdqInstanciaJuicioEnTramite.Refresh;
  end;
end;

procedure TfrmInstanciasJuicio.tbEditarInstanciaClick(Sender: TObject);
begin
  FModo := meModificacion;
  fraMotivoCambioJuzgado.Enabled := false;
  CargarDatosCambioInstancia;
  cambioinstancia := fraJuzgadosInstancia.Instancia;
  fpCambioInstanciaJuicio.ShowModal;
  sdqInstanciaJuicioEnTramite.Refresh;
end;

procedure TfrmInstanciasJuicio.tbSalirInstanciaJuiciosClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmInstanciasJuicio.CargarDatosInstancia;
var I: Integer;
begin

  if not ValidaFechaIngreso then   begin
    //Ticket 65772
    for I := 0 to dbGridInstanciasJuicio.Columns.Count -1 do begin
      if dbGridInstanciasJuicio.Columns[I].FieldName = 'IJ_FECHATRASPASO' then begin
         dbGridInstanciasJuicio.Columns[I].Visible := False;
      end;
    end;               
    dbGridInstanciasJuicio.Refresh;
  end;

  sdqInstanciaJuicioEnTramite.Close;
  sdqInstanciaJuicioEnTramite.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
  sdqInstanciaJuicioEnTramite.Open;
end;

procedure TfrmInstanciasJuicio.CargarDatosPrimeraInstancia;
begin
  if GetInstanciaActual = 1 then
   raise Exception.Create('La causa ya se encuentra en primera instancia.');

  try
    sdqPrimeraInstancia.ParamByName('idjuicioentramite').AsInteger := FIdJuicioEnTramite;
    sdqPrimeraInstancia.Open;
    if sdqPrimeraInstancia.RecordCount > 0 then
    begin
      fraJuzgadosInstancia.Cargar(sdqPrimeraInstancia.FieldByName('ij_idjurisdiccion').AsInteger,
                                  sdqPrimeraInstancia.FieldByName('ij_idfuero').AsInteger,
                                  sdqPrimeraInstancia.FieldByName('ij_idjuzgado').AsInteger,
                                  sdqPrimeraInstancia.FieldByName('ij_idsecretaria').AsInteger);
      fraJuzgadosInstancia.Expediente := sdqPrimeraInstancia.FieldByName('ij_expediente').AsString;
      fraJuzgadosInstancia.NroExpediente := sdqPrimeraInstancia.FieldByName('ij_nroexpediente').AsString;
      fraJuzgadosInstancia.AnioExpediente := sdqPrimeraInstancia.FieldByName('ij_anioexpediente').AsString;
      fraJuzgadosInstancia.FechaIngreso := DBDate;
    end
    else
    	raise Exception.Create('No se pudo encontrar juzgado de primera instancia en el tr�mite del juicio. El juicio no es v�lido.');
  finally
    sdqPrimeraInstancia.Close;
  end;
end;

procedure TfrmInstanciasJuicio.Init;
begin
  with sdqInstanciaJuicioEnTramite do
  begin
   ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
   Open;
  end;

  with fraMotivoCambioJuzgado do
  begin
    TableName   	 := 'legales.lmc_motivocambiojuzgado';
    FieldID     	 := 'mc_id';
    FieldCodigo 	 := 'mc_id';
    FieldDesc   	 := 'mc_descripcion';
    ExtraFields 	 := ', mc_relacionnuevojuzgado ';
    ExtraCondition := ' and mc_id > 1 ';

    if FMediacion then
      ExtraCondition := ExtraCondition + ' and (mc_etapa = ''M'' or mc_etapa = ''JM'')'
    else
      ExtraCondition := ExtraCondition + ' and (mc_etapa = ''J'' or mc_etapa = ''JM'')';
  end;
  fraJuzgadosInstancia.Init(PERMITIREXPEDIENTE, NOPERMITIRINSTANCIAS);

end;

procedure TfrmInstanciasJuicio.CambiarInstanciaJuicio;
begin
  LimpiarCamposCambioInstanciaJuicio;
  fpCambioInstanciaJuicio.ShowModal;
  sdqInstanciaJuicioEnTramite.Refresh;
end;

procedure TfrmInstanciasJuicio.LimpiarCamposCambioInstanciaJuicio;
begin
  fraJuzgadosInstancia.Limpiar;
  fraMotivoCambioJuzgado.Limpiar;
  mDetalleCambioJuzgado.Text := '';
end;

procedure TfrmInstanciasJuicio.GuardarCambioInstanciaJuicio;
var
  sSql: String;
  updFechaIngreso: string;
begin
  Validar;

  //Valido que no se hayan seleccionado registros dados de baja
  fraJuzgadosInstancia.ValidarSeleccionBajas('Guardando ' + Caption);

  if(ValidaFechaIngreso) then
    updFechaIngreso := SqlValue(fraJuzgadosInstancia.FechaIngreso)
  else
    updFechaIngreso := ' NULL ';

	if FModo = meAlta then
  begin
  	sdqInstanciaJuicioEnTramite.First;

//      if (not FMediacion) and (ValorSql('SELECT jt_fechasentencia FROM LEGALES.LJT_JUICIOENTRAMITE WHERE JT_ID = ' + SqlValue(FIdJuicioEnTramite)) = '')
		if (not FMediacion) and  sdqInstanciaJuicioEnTramite.FieldByName('ij_fechasentencia').IsNull then
    	if (MessageDlg('La Sentencia no fue fijada para la instancia actual.'+ #13 + #10 + '� Desea fijar la sentencia ahora ?',
      		mtWarning, [mbYes, mbNo], 0) in [mrYes]) then
      	FijarSentencia(sdqInstanciaJuicioEnTramite.FieldByName('ij_id').AsInteger);

    try

    	sSql :=
				'INSERT INTO legales.lij_instanciajuicioentramite(ij_id, ij_idjuicioentramite, ij_idjurisdiccion, ij_idfuero,' +
        																								' ij_idjuzgado, ij_idsecretaria, ij_idinstancia,' +
                                                        ' ij_fechatraspaso, ij_idmotivocambiojuzgado,' +
                                                        ' ij_observaciones, ij_usualta, ij_fechaalta,ij_nroexpediente, ij_anioexpediente)' +
                        												' VALUES (LEGALES.SEQ_LIJ_ID.NEXTVAL, ' +
                        																  SqlValue(FIdJuicioEnTramite) + ', ' +
                                                          SqlValue(fraJuzgadosInstancia.Jurisdiccion)  + ', ' +
                                                          SqlValue(fraJuzgadosInstancia.Fuero)  + ', ' +
                                                          SqlValue(fraJuzgadosInstancia.Juzgado) + ', ' +
                                                          SqlValue(fraJuzgadosInstancia.Secretaria) + ', ' +
                                                          SqlValue(fraJuzgadosInstancia.Instancia) + ', ' +
                                                          updFechaIngreso + ', ' +
                                                          SqlValue(fraMotivoCambioJuzgado.Codigo) + ', ' +
                                                          SqlValue(mDetalleCambioJuzgado.Text) +  ' , ' +
                                                          SqlValue(Sesion.LoginName) + ' ,SYSDATE, ' +
                                                          SqlValue(fraJuzgadosInstancia.NroExpediente) +  ' , '+
                                                          SqlValue(fraJuzgadosInstancia.AnioExpediente) + ')';
    	EjecutarSqlST(sSql);

      ActualizarCambioInstanciaSentencia;
    except
    	on E: Exception do
      	raise Exception.Create('Error al cambiar de instancia: ' + E.Message);
    end;
  end
  else
  begin
  	sSql :=
			'UPDATE legales.lij_instanciajuicioentramite' +
      	' SET ij_nroexpediente = ' + SqlValue(fraJuzgadosInstancia.NroExpediente) +
           ', ij_anioexpediente = ' + SqlValue(fraJuzgadosInstancia.AnioExpediente) +
        	 ', ij_fechatraspaso = ' + updFechaIngreso +
           ', ij_usumodif = ' + SqlValue(Sesion.LoginName) +
           ', ij_idjurisdiccion = ' + SqlValue(fraJuzgadosInstancia.Jurisdiccion) +
           ', ij_idfuero = ' + SqlValue(fraJuzgadosInstancia.Fuero) +
           ', ij_idjuzgado = ' + SqlValue(fraJuzgadosInstancia.Juzgado) +
           ', ij_idsecretaria = ' + SqlValue(fraJuzgadosInstancia.Secretaria) +
           ', ij_observaciones = ' + SqlValue(mDetalleCambioJuzgado.Text) +
           ', ij_idmotivocambiojuzgado = ' + SqlValue(fraMotivoCambioJuzgado.Codigo) +
           ', ij_idinstancia = ' + SqlValue(fraJuzgadosInstancia.Instancia) +
           ', ij_fechamodif = SYSDATE' +
      ' WHERE ij_id = ' + SqlValue(sdqInstanciaJuicioEnTramite.FieldByName('ij_id').AsInteger);
    EjecutarSqlST(sSql);
  end;

  sSql :=
		'UPDATE legales.ljt_juicioentramite' +
    	' SET jt_idjurisdiccion = ' + SqlValue(fraJuzgadosInstancia.Jurisdiccion) +
      	 ', jt_idfuero = ' + SqlValue(fraJuzgadosInstancia.Fuero) +
         ', jt_idjuzgado = ' + SqlValue(fraJuzgadosInstancia.Juzgado) +
         ', jt_idsecretaria = ' + SqlValue(fraJuzgadosInstancia.Secretaria) +
         ', jt_nroexpediente = ' + SqlValue(fraJuzgadosInstancia.NroExpediente) +
         ', jt_anioexpediente = ' + SqlValue(fraJuzgadosInstancia.AnioExpediente) +
         ', jt_fechaingreso = ' + updFechaIngreso +
         ', jt_usumodif = ' + SqlValue(Sesion.LoginName) +
         ', ' + IIF(FMediacion, 'jt_estadomediacion = ''JM'',', '') +
          ' jt_fechamodif = SYSDATE' +
    ' WHERE jt_id = ' + SqlValue(FIdJuicioEnTramite);
  EjecutarSqlST(sSql);

  fpCambioInstanciaJuicio.ModalResult := mrOk;
end;

procedure TfrmInstanciasJuicio.Validar;
var
 Instancia: Integer;
 Motivo: String;
begin
  if not FMediacion then
    Instancia := GetInstanciaActual
  else
  	Instancia := 0;

  if FModo = meAlta then
  begin
    if fraMotivoCambioJuzgado.IsSelected then
      Motivo := fraMotivoCambioJuzgado.Fields.FieldByName('mc_relacionnuevojuzgado').AsString;

    fraJuzgadosInstancia.validar('Cambio de Instancia Juicio');
    VerificarMultiple(['Cambio de Instancia Juicio',
                      fraMotivoCambioJuzgado.edCodigo,
                      fraMotivoCambioJuzgado.IsSelected,
                      'Debe seleccionar un motivo',
                      fraJuzgadosInstancia,
                    ((fraJuzgadosInstancia.Instancia < Instancia) and (Motivo = 'ME')) or
                    ((fraJuzgadosInstancia.Instancia = Instancia) and (Motivo = 'IG')) or
                    ((fraJuzgadosInstancia.Instancia > Instancia) and (Motivo = 'MA')),
                     'El cambio de instancia no corresponde con el motivo seleccionado'
                     ]);
  end
  else
  begin
    VerificarMultiple(['Cambio de Instancia Juicio',
                      fraMotivoCambioJuzgado.edCodigo,
                      fraMotivoCambioJuzgado.IsSelected,
                      'Debe seleccionar un motivo',
                      fraJuzgadosInstancia,
                      (fraJuzgadosInstancia.Instancia = cambioinstancia),
                      'La instancia debe ser igual a la que se encontraba'
                      ]);
  end;

end;

procedure TfrmInstanciasJuicio.ValidarFechaIngreso;
begin
  if not ValidaFechaIngreso then
  begin
    fraJuzgadosInstancia.lblFechaIngreso.Visible := False;
    fraJuzgadosInstancia.dteFechaIngreso.Visible := False;
    fraJuzgadosInstancia.dteFechaIngreso.Date := DBDate;
  end;
end;

function TfrmInstanciasJuicio.GetInstanciaActual: Integer;
begin
  Result := -1;

  sdqValidacion.Close;
  sdqValidacion.ParamByName('idjuicioentramite').AsInteger := FIdJuicioEnTramite;
  try
    sdqValidacion.Open;
    if sdqValidacion.RecordCount > 0 then
      Result := sdqValidacion.FieldByName('ij_idinstancia').AsInteger
    else
    	raise Exception.Create('No se pudo encontrar juzgado de primera instancia en el tr�mite del juicio. El juicio no es v�lido.');
  finally
    sdqValidacion.Close;
  end;
end;

procedure TfrmInstanciasJuicio.CargarDatosCambioInstancia;
begin
  fraJuzgadosInstancia.Cargar(sdqInstanciaJuicioEnTramite.FieldByName('ij_idjurisdiccion').AsInteger,
                              sdqInstanciaJuicioEnTramite.FieldByName('ij_idfuero').AsInteger,
                              sdqInstanciaJuicioEnTramite.FieldByName('ij_idjuzgado').AsInteger,
                              sdqInstanciaJuicioEnTramite.FieldByName('ij_idsecretaria').AsInteger);
  fraJuzgadosInstancia.NroExpediente := sdqInstanciaJuicioEnTramite.FieldByName('ij_nroexpediente').AsString;
  fraJuzgadosInstancia.AnioExpediente := sdqInstanciaJuicioEnTramite.FieldByName('ij_anioexpediente').AsString;
  fraJuzgadosInstancia.FechaIngreso := sdqInstanciaJuicioEnTramite.FieldByName('ij_fechatraspaso').AsDateTime;
  fraMotivoCambioJuzgado.Codigo := sdqInstanciaJuicioEnTramite.FieldByName('ij_idmotivocambiojuzgado').AsString;
  mDetalleCambioJuzgado.Text := sdqInstanciaJuicioEnTramite.FieldByName('ij_observaciones').AsString;
end;

procedure TfrmInstanciasJuicio.sdqInstanciaJuicioEnTramiteAfterScroll(DataSet: TDataSet);
begin
  HabilitarBotones;
end;

procedure TfrmInstanciasJuicio.CargarDatosMediacion;
begin
	try
  	sdqDatosMediacion.ParamByName('idjuicioentramite').AsInteger := FIdJuicioEnTramite;
    sdqDatosMediacion.Open;
    if (sdqDatosMediacion.RecordCount > 0) and (trim(sdqDatosMediacion.FieldByName('jt_idtipomediacion').AsString) = MEDIACIONCIVIL) then
    begin
    	fraJuzgadosInstancia.Cargar(sdqDatosMediacion.FieldByName('jt_idjurisdiccion').AsInteger,
                                  sdqDatosMediacion.FieldByName('jt_idfuero').AsInteger,
                                  sdqDatosMediacion.FieldByName('jt_idjuzgado').AsInteger,
                                  sdqDatosMediacion.FieldByName('jt_idsecretaria').AsInteger);

      VCLExtra.LockControls([fraJuzgadosInstancia.fraFuero, fraJuzgadosInstancia.fraJurisdiccion,
      											 fraJuzgadosInstancia.fraSecretaria, fraJuzgadosInstancia.fraJuzgado], True);
    end;
  finally
    sdqDatosMediacion.Close;
  end;
end;

procedure TfrmInstanciasJuicio.fraJuzgadosInstanciabtnInstanciasAnterioresClick(Sender: TObject);
begin
	fraJuzgadosInstancia.btnInstanciasAnterioresClick(Sender);
end;

procedure TfrmInstanciasJuicio.fraJuzgadosInstanciacbSinExpedienteClick(
  Sender: TObject);
begin
  fraJuzgadosInstancia.cbSinExpedienteClick(Sender);

end;

procedure TfrmInstanciasJuicio.FijarSentencia(idInstanciaJuicioEnTramite: Integer);
begin
  if ParteActora then
  begin
    with TfrmFijarImportesSentenciaActora.Create(Self) do
    try
  	  FijarSentenciaCambioJuzgado(idInstanciaJuicioEnTramite, FFechaNotifJuicio);
    finally
    	Free;
  	end;
  end
  else
  begin
    with TfrmFijarImportesSentencia.Create(Self) do
    try
    	FijarSentenciaCambioJuzgado(idInstanciaJuicioEnTramite, FFechaNotifJuicio);
    finally
    	Free;
  	end;
  end;
end;

procedure TfrmInstanciasJuicio.FormCreate(Sender: TObject);
begin
  ValidaFechaIngreso := True;
end;

procedure TfrmInstanciasJuicio.FormShow(Sender: TObject);
begin
  ValidarFechaIngreso;
  fraJuzgadosInstancia.ValidaFechaIngreso := Self.ValidaFechaIngreso;
end;

procedure TfrmInstanciasJuicio.ActualizarCambioInstanciaSentencia;
var
	sSql: String;
begin
	sSql :=
		'UPDATE legales.ljt_juicioentramite ljt' +
    	' SET jt_importesentencia = NULL,' +
      		' jt_importecapital = NULL,' +
          ' jt_importetasajusticia = NULL,' +
          ' jt_importehonorarios = NULL,' +
          ' jt_idtiporesultadosentencia = NULL,' +
          ' jt_fechasentencia = NULL,' +
          ' jt_detallesentencia = NULL,' +
          ' jt_interesesSentencia = NULL' +
    ' WHERE ljt.jt_id = ' + SqlValue(FIdJuicioEnTramite);
  EjecutarSqlST(sSql);

  sSql :=
		'UPDATE legales.LRT_RECLAMOJUICIOENTRAMITE' +
    	' SET RT_MONTOSENTENCIA = NULL' +
      	 ', RT_PORCENTAJESENTENCIA = NULL' +
      	 ', RT_USUMODIF = ' + SqlValue(Sesion.LoginName) +
      	 ', RT_FECHAMODIF = SYSDATE' +
    ' WHERE RT_IDJUICIOENTRAMITE = ' + SqlValue(FIdJuicioEnTramite);
  EjecutarSqlST(sSql);
end;

procedure TfrmInstanciasJuicio.tbFijarSentenciaCambioInstanciaClick(Sender: TObject);
begin
  FijarSentencia(sdqInstanciaJuicioEnTramite.FieldByName('ij_id').AsInteger);
  sdqInstanciaJuicioEnTramite.Refresh;
end;

end.
