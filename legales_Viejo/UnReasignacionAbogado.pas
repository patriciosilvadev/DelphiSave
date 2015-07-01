unit unReasignacionAbogado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask,
  PatternEdit, unArtFrame, unFraCodigoDescripcion, ExtCtrls, Grids, DBGrids, ComCtrls, ToolWin, FormPanel, DB, SDEngine,
  unfraJuzgados, unfraCodigoDescripcionExt,  unDmLegales, unfraAbogadosLegales, ToolEdit, DateComboBox,
  unArtDBAwareFrame, RxToolEdit;

type
  TfrmReasignacionAbogado = class(TForm)
    cbAbogados: TCoolBar;
    tbrAbogados: TToolBar;
    tbCambioAbogado: TToolButton;
    tbEliminarCambioAbogado: TToolButton;
    tbSeparador2: TToolButton;
    tbImprimirAsignacionAbogados: TToolButton;
    tbSeparador3: TToolButton;
    tbSalirAbogadosAsignados: TToolButton;
    dbGridAbogadosJuicio: TDBGrid;
    fpCambioAbogadoJuicio: TFormPanel;
    bvSeparadorBotones: TBevel;
    btnAceptar: TButton;
    btnCancelar: TButton;
    dsAbogadosJuicioEnTramite: TDataSource;
    sdqAbogadosJuicioEnTramite: TSDQuery;
    tbEditarCambioAbogado: TToolButton;
    lblDetalle: TLabel;
    lblMotivo: TLabel;
    mObservacionesReasignacionAbogado: TMemo;
    fraMotivoCambioAbogado: TfraCodigoDescripcionExt;
    fraAbogadosPropios: TfraAbogadosLegales;
    lbAbogado: TLabel;
    edFechaInicioAsignacion: TDateComboBox;
    lblFechaEvento: TLabel;
    lblVencimientoEvento: TLabel;
    edFechaFinAsignacion: TDateComboBox;
    tbSinAsignar: TToolButton;
    procedure tbCambioAbogadoClick(Sender: TObject);
    procedure tbReasignarPrimeraInstanciaClick(Sender: TObject);
    procedure tbSalirAbogadosAsignadosClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure sdqAbogadosJuicioEnTramiteAfterScroll(DataSet: TDataSet);
    procedure tbEditarCambioAbogadoClick(Sender: TObject);
    procedure tbEliminarCambioAbogadoClick(Sender: TObject);
    procedure tbSinAsignarClick(Sender: TObject);
  private
    FIdAsignacionAbogado: Integer;
    FIdJuicioEnTramite: Integer;
    FModo: TModoEjecucion;

    procedure CambiarAbogadoJuicio;
    procedure CargarDatosCambioAbogado;
    procedure DesasignarUltimo;
    procedure GuardarCambioAbogadoJuicio;
    procedure Init;
    procedure LimpiarCamposCambioAbogadoJuicio;
	  procedure ReasignarAnterior;
    procedure Validar;
  public
    procedure MostrarAbogadosJuicio(AIdJuicioEnTramite: Integer);
  end;


implementation

uses
	unCustomDataModule, unDmPrincipal, CustomDlgs, AnsiSql, unConstLegales, unSesion;

{$R *.dfm}

procedure TfrmReasignacionAbogado.MostrarAbogadosJuicio(AIdJuicioEnTramite: Integer);
begin
  FIdJuicioEnTramite := AIdJuicioEnTramite;
  sdqAbogadosJuicioEnTramite.Close;
  sdqAbogadosJuicioEnTramite.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
  sdqAbogadosJuicioEnTramite.Open;
  self.ShowModal;
end;

procedure TfrmReasignacionAbogado.tbCambioAbogadoClick(Sender: TObject);
begin
  lblVencimientoEvento.Visible := False;
  edFechaFinAsignacion.Visible := False;
  FModo := meAlta;
  CambiarAbogadoJuicio;
end;

procedure TfrmReasignacionAbogado.tbReasignarPrimeraInstanciaClick(Sender: TObject);
begin
  LimpiarCamposCambioAbogadoJuicio;
  fpCambioAbogadoJuicio.ShowModal;
  sdqAbogadosJuicioEnTramite.Refresh;
end;

procedure TfrmReasignacionAbogado.btnAceptarClick(Sender: TObject);
begin
  GuardarCambioAbogadoJuicio;
end;

procedure TfrmReasignacionAbogado.FormCreate(Sender: TObject);
begin
  Init;
end;

procedure TfrmReasignacionAbogado.tbSalirAbogadosAsignadosClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReasignacionAbogado.Init;
begin
  with fraMotivoCambioAbogado do
  begin
    TableName   := 'legales.lma_motivoasignacion';
    FieldID     := 'ma_id';
    FieldCodigo := 'ma_id';
    FieldDesc   := 'ma_descripcion';
  end;

  fraAbogadosPropios.Parte := paPropia;
end;

procedure TfrmReasignacionAbogado.CambiarAbogadoJuicio;
begin
  LimpiarCamposCambioAbogadoJuicio;
  fpCambioAbogadoJuicio.ShowModal;
  sdqAbogadosJuicioEnTramite.Refresh;
end;

procedure TfrmReasignacionAbogado.LimpiarCamposCambioAbogadoJuicio;
begin
  edFechaInicioAsignacion.Date := 0;
  edFechaFinAsignacion.Date := 0;
  fraAbogadosPropios.Codigo := '';
  fraMotivoCambioAbogado.Codigo := '';
  mObservacionesReasignacionAbogado.Text := '';
end;

procedure TfrmReasignacionAbogado.GuardarCambioAbogadoJuicio;
var
	sSql: String;
begin
  Validar;
  if FModo = meAlta then
  begin
    DesasignarUltimo;

    sSql :=
			'INSERT INTO legales.laa_abogadoasignado' +
      					' (aa_id, aa_idjuicioentramite, aa_idabogado, aa_fechainicioasignacion, aa_fechafinasignacion,' +
                 ' aa_idmotivoreasignacion, aa_observaciones, aa_usualta, aa_fechaalta)' +
      	 ' VALUES (LEGALES.SEQ_LAA_ID.NEXTVAL, ' +
                   SqlValue(FIdJuicioEnTramite) + ', ' +
                   SqlValue(fraAbogadosPropios.Codigo) + ', ' +
                   SqlDate(edFechaInicioAsignacion.Date)  + ', ' +
                   SqlDate(edFechaFinAsignacion.Date)  + ', ' +
                   SqlValue(fraMotivoCambioAbogado.Codigo) + ', ' +
                   SqlValue(mObservacionesReasignacionAbogado.Text) +  ', ' +
                   SqlValue(Sesion.LoginName) + ' , ActualDate)';
		EjecutarSqlST(sSql);
  end
  else
  begin
  	sSql :=
			'UPDATE legales.laa_abogadoasignado' +
      	' SET aa_idabogado = ' + SqlValue(fraAbogadosPropios.Codigo) +
        	 ', aa_fechainicioasignacion = ' + SqlDate(edFechaInicioAsignacion.Date) +
           ', aa_fechafinasignacion =    ' + SqlDate(edFechaFinAsignacion.Date) +
           ', aa_idmotivoreasignacion =  ' + SqlValue(fraMotivoCambioAbogado.Codigo) +
           ', aa_observaciones = '         + SqlValue(mObservacionesReasignacionAbogado.Text) +
           ', aa_usumodif      = '         + SqlValue(Sesion.LoginName) +
           ', aa_fechamodif    = ACTUALDATE ' +
      ' WHERE aa_id = ' + SqlValue(FIdAsignacionAbogado);
    EjecutarSqlST(sSql,tmNone);
  end;

  sSql :=
		'UPDATE legales.ljt_juicioentramite' +
    	' SET jt_idabogado = '  + SqlValue(fraAbogadosPropios.Codigo) +
        //Ticket 65770
      	// ', jt_fechaasign = ' + SqlDate(edFechaInicioAsignacion.Date) +
        // ', jt_fechaasign = NULL ' +

        //Ticket 67270
         ', jt_fechaasign = SYSDATE ' +


    ' WHERE jt_id = ' + SqlValue(FIdJuicioEnTramite);
	EjecutarSqlST(sSql, tmNone);

  fpCambioAbogadoJuicio.Close;
  sdqAbogadosJuicioEnTramite.Refresh;

end;

procedure TfrmReasignacionAbogado.Validar;
var
	sSql: String;
	UltimaAsignacion: TDate;
begin
	sSql :=
		'SELECT MAX(aa_fechainicioasignacion)' +
     ' FROM legales.laa_abogadoasignado' +
    ' WHERE aa_idjuicioentramite = ' + SqlValue(FIdJuicioEnTramite);
	UltimaAsignacion := ValorSqlDateTime(sSql, 0);

  VerificarMultiple(['Cambio de Abogado Juicio',
                      fraMotivoCambioAbogado.edCodigo,
                      fraMotivoCambioAbogado.IsSelected,
                      'Debe seleccionar un motivo de reasignación.',
                      fraAbogadosPropios.edCodigo,
                      fraAbogadosPropios.IsSelected,
                      'Debe seleccionar un motivo de reasignación.',

                      edFechaInicioAsignacion,
                      edFechaInicioAsignacion.Date > 0,
                      'Debe especificar una fecha de inicio de asignacion.',

                      edFechaInicioAsignacion,
                      edFechaInicioAsignacion.Date >= UltimaAsignacion,
                      'Debe especificar una fecha de inicio de asignacion mayor o igual a la anterior asignacion.',

                      edFechaFinAsignacion,
                      (edFechaFinAsignacion.Date = 0) or (edFechaFinAsignacion.Date >= edFechaInicioAsignacion.Date),
                      'Debe especificar una fecha de fin de actividad mayor que el de inicio']);
end;

procedure TfrmReasignacionAbogado.CargarDatosCambioAbogado;
begin
  fraMotivoCambioAbogado.Codigo          := sdqAbogadosJuicioEnTramite.FieldByName('aa_idmotivoreasignacion').AsString;
  fraAbogadosPropios.Codigo              := sdqAbogadosJuicioEnTramite.FieldByName('aa_id').AsString;
  edFechaInicioAsignacion.Date           := sdqAbogadosJuicioEnTramite.FieldByName('aa_fechainicioasignacion').AsDateTime;
  edFechaFinAsignacion.Date              := sdqAbogadosJuicioEnTramite.FieldByName('aa_fechafinasignacion').AsDateTime;
  mObservacionesReasignacionAbogado.Text := sdqAbogadosJuicioEnTramite.FieldByName('aa_observaciones').AsString;
end;

procedure TfrmReasignacionAbogado.sdqAbogadosJuicioEnTramiteAfterScroll(DataSet: TDataSet);
begin
  tbEditarCambioAbogado.Enabled := ((sdqAbogadosJuicioEnTramite.RecNo = (sdqAbogadosJuicioEnTramite.RecordCount {$IFDEF VER150}- 1{$ENDIF})) and
                                		(sdqAbogadosJuicioEnTramite.RecordCount > 1));
  tbEliminarCambioAbogado.Enabled := ((sdqAbogadosJuicioEnTramite.RecNo = (sdqAbogadosJuicioEnTramite.RecordCount {$IFDEF VER150}- 1{$ENDIF})) and
                                			(sdqAbogadosJuicioEnTramite.RecordCount > 1));
end;

procedure TfrmReasignacionAbogado.tbEditarCambioAbogadoClick(Sender: TObject);
begin
  if sdqAbogadosJuicioEnTramite.RecordCount > 0 then
  begin
    lblVencimientoEvento.Visible := True;
    edFechaFinAsignacion.Visible := True;
    FIdAsignacionAbogado := sdqAbogadosJuicioEnTramite.FieldByName('aa_id').AsInteger;
    FModo := meModificacion;

    CargarDatosCambioAbogado;
    fpCambioAbogadoJuicio.ShowModal;
    sdqAbogadosJuicioEnTramite.Refresh;
  end;
end;

procedure TfrmReasignacionAbogado.tbEliminarCambioAbogadoClick(Sender: TObject);
begin
  if sdqAbogadosJuicioEnTramite.RecordCount > 0 then
  begin
    //Al borrar una asignacion.. reasigno el anterior.
    ReasignarAnterior;
    sdqAbogadosJuicioEnTramite.Refresh;
  end;
end;

procedure TfrmReasignacionAbogado.ReasignarAnterior;
var
	sSql: String;
begin
	sSql :=
		'UPDATE legales.laa_abogadoasignado' +
    	' SET aa_fechabaja = ActualDate,' +
      		' aa_usubaja = ' + SqlValue(Sesion.LoginName) +
    ' WHERE aa_id = ' + SqlValue(sdqAbogadosJuicioEnTramite.FieldByName('aa_id').AsInteger);
	EjecutarSqlST(sSql, tmNone);

  sSql :=
		'SELECT MAX(aa_id), aa_idabogado, aa_fechainicioasignacion' +
     ' FROM legales.laa_abogadoasignado' +
    ' WHERE aa_idjuicioentramite = ' + SqlValue(FIdJuicioEnTramite) +
    	' AND aa_fechabaja is null' +
 ' GROUP BY aa_id, aa_idabogado, aa_fechainicioasignacion';

  with GetQuery(sSql) do
  try
    if RecordCount > 0 then
    begin
    	sSql :=
				'UPDATE legales.laa_abogadoasignado' +
        	' SET aa_fechafinasignacion = ActualDate' +
        ' WHERE aa_id = ' + SqlValue(FieldByName('aa_id').AsInteger);
      EjecutarSqlST(sSql, tmNone);

      sSql :=
				'UPDATE legales.ljt_juicioentramite' +
        	' SET jt_idabogado = ' + SqlValue(FieldByName('aa_idabogado').AsInteger) +
          	 //', jt_fechaasign = ' + SqlValue(FieldByName('aa_fechainicioasignacion').AsInteger) +
             //Ticket 65770
             // ', jt_fechaasign = NULL ' +

             //Ticket 67270
             ', jt_fechaasign = SYSDATE ' +

        ' WHERE jt_id = ' + SqlValue(FIdJuicioEnTramite);
      EjecutarSqlST(sSql, tmNone);
    end;
  finally
    Free;
  end;
end;

procedure TfrmReasignacionAbogado.DesasignarUltimo;
var
	sSql: String;
begin
	sSql :=
		'SELECT MAX(aa_id) as id' +
     ' FROM legales.laa_abogadoasignado' +
    ' WHERE aa_idjuicioentramite = ' + SqlValue(FIdJuicioEnTramite) +
    	' AND aa_fechafinasignacion is not null';

  with GetQuery(sSql) do
  try
    if RecordCount > 0 then
    begin
    	sSql :=
				'UPDATE legales.laa_abogadoasignado' +
        	' SET aa_fechafinasignacion = ActualDate' +
        ' WHERE aa_id = ' + SqlValue(FieldByName('id').AsInteger);
      EjecutarSqlST(sSql, tmNone);

      sSql :=
				'UPDATE legales.ljt_juicioentramite' +
        	' SET jt_idabogado = NULL,' +
          		' jt_fechaasign = NULL' +
        ' WHERE jt_id = ' + SqlValue(FIdJuicioEnTramite);
      EjecutarSqlST(sSql, tmNone);
    end;
  finally
    Free;
  end;
end;


procedure TfrmReasignacionAbogado.tbSinAsignarClick(Sender: TObject);
begin
  DesasignarUltimo;
end;

end.
