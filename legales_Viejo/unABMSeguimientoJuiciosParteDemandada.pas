unit unABMSeguimientoJuiciosParteDemandada;

interface

uses
  {$IFNDEF VER150}
  RxPlacemnt, RxCurrEdit, RxToolEdit, JvComponentBase,
  {$ELSE}
  Placemnt, CurrEdit, ToolEdit,
  {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unABMSeguimientoJuicios, QueryPrint, DBClient, Menus, DB,
  SDEngine, ImgList, JvTFManager, JvComponent, JvTFAlarm, ShortCutControl,
  artSeguridad, ArtComboBox, ArtDBGrid, unfraUsuarios,
  unFraPuntosRevision, AdvEdit, StdCtrls, ExComboBox, ComCtrls,
  CardinalEdit, ExtCtrls, JvExControls, JvCalendar, JvTFDays, JvTFMonths,
  JvTFGlance, JvTFWeeks, JvExExtCtrls, JvNetscapeSplitter,
  unFraReclamoSentencia, FormPanel, Grids, DBGrids, RXDBCtrl,
  RxRichEd, unfraCodigoDescripcionExt, PatternEdit, IntEdit, SortDlg,
  JvExStdCtrls, JvEdit, JvValidateEdit, ToolWin,
  unfraAbogadosLegales, Mask, DateComboBox, unArtFrame,
  unArtDBAwareFrame, unFraCodigoDescripcion, unfraJuzgados, JvEnterTab,
  unArt, unfijarimportessentencia;

type
  TfrmAdminstracionJuicioParteDemandanda = class(TfrmAdminstracionJuicio)
    mResultadoProbable: TMemo;
    lblResultadoProbable: TLabel;
    Label2: TLabel;
    fraCaracterIntervencion: TfraCodigoDescripcion;
    chkCondicionNoSeguro: TCheckBox;
    edFECHAINGRESORAJ: TDateComboBox;
    lblFechaRegistracionRAJ: TLabel;
    lblExpediente: TLabel;
    edNroOrdenRAJ: TPatternEdit;
    chkJuicioNoSiniestro: TCheckBox;
    chkFederal: TCheckBox;
    chkGPBA: TCheckBox;
    chkARecuperar: TCheckBox;
    chkRebeldia: TCheckBox;
    chkGPBAMalaPraxis: TCheckBox;
    tbCalcularReserva: TToolButton;
    tbBorrarSentencia: TToolButton;
    sdqBlanqueoSentencia: TSDQuery;
    tsGestion: TTabSheet;
    chkFaltaDemanda: TCheckBox;
    gbGestionSiniestro: TGroupBox;
    chkDevolvioSiniestro: TCheckBox;
    rgEnvioSiniestro: TRadioGroup;
    edFEnvioSiniestro: TDateComboBox;
    edFDevolvioSiniestro: TDateComboBox;
    lbSumatoria: TLabel;
    ToolBar4: TToolBar;
    tbVerAudiencia: TToolButton;
    edNroAudiencia: TIntEdit;
    lbNroAudiencia: TLabel;
    tbMarcarComoAlta: TToolButton;
    tbFormularioAltaJuicio: TToolButton;
    tbEnvioMail: TToolButton;
    lbRespuesta: TLabel;
    pnRespuesta: TFormPanel;
    Label3: TLabel;
    btRespuestaAceptar: TButton;
    lbAgregarRespuesta: TLabel;
    Button2: TButton;
    tbReporteGestionInterna: TToolButton;
    edTotalReservas: TCurrencyEdit;
    Label4: TLabel;
    edRSPLMuertes: TCurrencyEdit;
    Label6: TLabel;
    edRSPLILP: TCurrencyEdit;
    Label7: TLabel;
    edRespuestaEvento: TRxRichEdit;
    lbl_JT_FECHAALTA: TLabel;
    ed_JT_FECHAALTA: TDateComboBox;
    lblSumatoriaPagosConRet: TEdit;
    lblSumatoriaPagosSinRet: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure tbEdicionOrigenDemandaClick(Sender: TObject);override;
    procedure tbNuevoOrigenDemandaClick(Sender: TObject);override;
    procedure fraDatosJuzgadobtnInstanciasAnterioresClick(Sender: TObject);Override;
    procedure tbCalcularReservaClick(Sender: TObject);
    procedure tbCalculaReservaGestionClick(Sender: TObject);
    procedure tbBorrarSentenciaClick(Sender: TObject);
    procedure chkJuicioNoSiniestroClick(Sender: TObject);
    procedure tbVerImagenesClick(Sender: TObject);
    procedure tbEdicionPagoClick(Sender: TObject);
    procedure tbIngresoPagoClick(Sender: TObject);
    procedure dbgPagosEfectuadosDblClick(Sender: TObject);
    procedure tbFijarSentenciaClick(Sender: TObject);override;
    procedure tbVerAudienciaClick(Sender: TObject);
    procedure pgDetallesJuicioChange(Sender: TObject);override;
    procedure tbMarcarComoAltaClick(Sender: TObject);
    procedure tbFormularioAltaJuicioClick(Sender: TObject);
    procedure tbEnvioMailClick(Sender: TObject);
    procedure lbRespuestaClick(Sender: TObject);
    procedure btRespuestaAceptarClick(Sender: TObject);
    procedure tbReporteGestionInternaClick(Sender: TObject);
    procedure dbgPagosEfectuadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    FFaltaDemanda: Boolean;
    FEnvioSiniestro : String;
    FDevolvioSiniestro : String;
    FARecuperar : Boolean;
    FIdJuicioGestion: TTableId;
    FCantBloqueoPagosInicial : Integer;
    FCantBloqueoPagosFinal : Integer;
    procedure fraEstadoOnChange(Sender: TObject);
    procedure GuardarReserva;
    procedure GuardarReservaGestion;
    procedure GuardarGestion;
    function GetMailEstudioJuridico(IdAbogado: TTableId): String;
    procedure GuardarEventoJuicioEnTramite(IdJuicio: TTableId);
    procedure EnviarMailFaltaDemanda;
    procedure SumatoriaImportes;
    procedure CalcControlWidthLeft;

    procedure ProcesoBloqueoPagos;
    procedure fraTipoEventoOnChange(Sender: TObject);
    procedure OcultarControles;
  protected
    procedure LimpiarCampos;
    function AltaEvento: Boolean;override;
    procedure DoCargarDatos(AQuery: TDataSet);override;
    procedure GuardarJuicio;override;
    procedure ObtenerNumeroCarpeta;override;
    procedure ActivarControlesAlta(activar: boolean); override;
    procedure CargarDatosEvento(Campos: TFields);override;
  public
    function AltaJuicio: Boolean;override;
    procedure Modificacion(Tabla: TSDQuery);override;
end;

var
  frmAdminstracionJuicioParteDemandanda: TfrmAdminstracionJuicioParteDemandanda;

resourcestring
  LJT_GESTION_ALTA = 'Alta... (Administraci�n de Juicios Parte Demandada)';
  LJT_GESTION_MODIF = 'Modificaci�n... (Administraci�n de Juicios Parte Demandada)';
  LJT_GESTION_ALTAMEDIACION = 'Alta... (Administraci�n de Mediaciones Parte Demandada)';
  LJT_GESTION_MODIFMEDIACION = 'Modificaci�n... (Administraci�n de Mediaciones Parte Demandada)';
  LJT_GESTION_CONSJUICIO = 'Consulta... (Administraci�n de Juicios Parte Demandada)';
  LJT_GESTION_CONSMEDIACION = 'Consulta... (Administraci�n de Mediaciones Parte Demandada)';

implementation

uses
  CustomDlgs, AnsiSql,StrFuncs, unDmPrincipal,unSesion, SqlFuncs, unDmLegales, unCustomDataModule,
  unInstanciasJuicio, unConstLegales, unABMOrigenDemanda,VclExtra, unMoldeEnvioMail,
  unComunes, General, DateUtils, unComunesArchivo, unConstantArchivo,unFrmPagoConceptosLegalesRegulados,
  Math, unAudiencia, unRptAltaJuicio, unMoldeEnvioMailEvento, unRptInformeGestion,
  unFrmDetalleArchivo;

{$R *.dfm}


procedure TfrmAdminstracionJuicioParteDemandanda.ProcesoBloqueoPagos;
var
  CuerpoMailActuarial, CuerpoMailTecnica : string;
  NroCarpetaJuicio, ConceptosPagoActuarial, ConceptosPagoTecnica, siniestro, orden, recaida : String;
  IdSiniestro : Integer;
  primerCaso, ConceptoActuarialVacio, ConceptoTecnicaVacio : Boolean;
begin
  inherited;
  NroCarpetaJuicio := ValorSql( ' SELECT jt_numerocarpeta '+
                                '   FROM legales.ljt_juicioentramite '+
                                '  WHERE jt_id = '+ SqlValue(FIdJuicioEnTramite));
 { //Sentencia homologatoria de acuerdo conciliatorio cod 9
  if ValorSqlInteger(
    ' SELECT jt_idtiporesultadosentencia '+
    '   FROM legales.ljt_juicioentramite '+
    '  WHERE jt_id = '+SqlValue(FIdJuicioEnTramite)) = 9 then
  begin
    EjecutarSqlST(
      ' UPDATE legales.lbp_bloqueopagosiniestro '+
      '    SET bp_fechabaja = NULL, '+
      '        bp_usubaja = NULL, '+
      '        bp_estadobloqueo = 1 '+
      '  WHERE bp_id IN(SELECT bp_id '+
      '                   FROM legales.lbp_bloqueopagosiniestro bp, '+
      '                        legales.lsj_siniestrosjuicioentramite, '+
      '                        legales.lod_origendemanda '+
      '                  WHERE sj_idsiniestro = bp_idexpediente '+
      '                    AND sj_idorigendemanda = od_id '+
      '                    AND od_idjuicioentramite = bp_idjuicioentramite '+
      '                    AND bp_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+')');
    EjecutarSqlST(
      ' INSERT INTO legales.lbp_bloqueopagosiniestro '+
      '             (bp_id, bp_idjuicioentramite, bp_idexpediente, bp_idconpago, '+
      '              bp_estadobloqueo, bp_descripcioncausa, bp_fechaalta, '+
      '              bp_usualta) '+
      '  SELECT legales.seq_lbs_id.NEXTVAL, od_idjuicioentramite, sj_idsiniestro, cp_conpago, '+
      '         1, NULL, SYSDATE,'+SqlValue(Sesion.LoginName)+ 
      '    FROM legales.lsj_siniestrosjuicioentramite, legales.lod_origendemanda, art.scp_conpago '+
      '   WHERE od_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+
      '     AND cp_tipo IN(''I'', ''P'', ''M'') '+
      '     AND cp_fbaja IS NULL '+
      '     AND od_fechabaja IS NULL '+
      '     AND sj_fechabaja IS NULL '+
      '     AND sj_idorigendemanda = od_id '+
      '     AND NOT EXISTS(SELECT 1 '+
      '                      FROM legales.lbp_bloqueopagosiniestro '+
      '                     WHERE bp_idjuicioentramite = od_idjuicioentramite '+
      '                       AND bp_idexpediente = sj_idsiniestro '+
      '                       and bp_idconpago = cp_conpago )');

  end;
}
  FCantBloqueoPagosFinal := ValorSql(
    ' SELECT COUNT(*) '+
    '   FROM legales.lbp_bloqueopagosiniestro bp, legales.lsj_siniestrosjuicioentramite, '+
    '        legales.lod_origendemanda, art.sex_expedientes '+
    '  WHERE ex_id = bp_idexpediente '+
    '    AND sj_idsiniestro = bp_idexpediente '+
    '    AND sj_idorigendemanda = od_id '+
    '    AND od_idjuicioentramite = bp_idjuicioentramite '+
    '    AND bp_estadobloqueo = 1 '+
    '    AND bp_fechabaja IS NULL '+
    '    AND bp_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite));

  if FCantBloqueoPagosInicial <> FCantBloqueoPagosFinal then
  begin
    with GetQuery(
      ' SELECT DISTINCT ex_siniestro, ex_orden, ex_recaida, ex_id '+
      '   FROM legales.lbp_bloqueopagosiniestro, legales.lsj_siniestrosjuicioentramite, '+
      '        legales.lod_origendemanda, art.sex_expedientes '+
      '  WHERE ex_id = sj_idsiniestro '+
      '    AND bp_idexpediente = ex_id '+
      '    AND bp_estadobloqueo = 1 '+
      '    AND bp_idjuicioentramite = od_idjuicioentramite '+
      '    AND sj_fechabaja IS NULL '+
      '    AND sj_idorigendemanda = od_id '+
      '    AND od_fechabaja IS NULL '+
      '    AND od_idjuicioentramite = '+ SqlValue(FIdJuicioEnTramite)) do
    try
      while not Eof do
      begin
        siniestro := FieldByName('ex_siniestro').AsString;
        orden := FieldByName('ex_orden').AsString;
        recaida := FieldByName('ex_recaida').AsString;
        IdSiniestro := FieldByName('ex_id').AsInteger;
        primerCaso := True;

        with GetQuery(
          ' SELECT cp_conpago || ''-'' || cp_denpago pago'+
          '   FROM art.scp_conpago, legales.lbp_bloqueopagosiniestro '+
          '  WHERE bp_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+
          '    AND bp_idexpediente = '+SqlValue(IdSiniestro)+
          '    AND bp_estadobloqueo = 1 '+
          '    AND bp_idconpago = cp_conpago '+
          '    AND bp_fechabaja IS NULL '+
          '    AND cp_fbaja IS NULL ') do
        try
          ConceptoActuarialVacio := RecordCount = 0;
          while not Eof do
          begin
            if primerCaso then
            begin
              ConceptosPagoActuarial := FieldByName('pago').AsString;
              primerCaso := False;
            end
            else
              ConceptosPagoActuarial := ConceptosPagoActuarial +#10#13+FieldByName('pago').AsString;
            Next;
          end;
        finally
          Free;
        end;

        primerCaso := True;

        with GetQuery(
          ' SELECT cp_conpago || ''-'' || cp_denpago pago'+
          '   FROM art.scp_conpago, legales.lbp_bloqueopagosiniestro,art.sle_liquiempsin '+
          '  WHERE bp_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+
          '    AND bp_idexpediente = '+SqlValue(IdSiniestro)+
          '    AND bp_estadobloqueo = 1 '+
          '    AND le_conpago = cp_conpago '+
          '    AND le_siniestro = '+SqlValue(siniestro)+
          '    AND le_orden = '+SqlValue(orden)+
          '    AND le_recaida = '+SqlValue(recaida)+
          '    AND NVL(le_estado, '''') NOT IN( ''A'', ''X'') '+
          '    AND le_tipoliqui NOT IN (''W'', ''X'', ''Y'', ''Z'') '+
          '    AND ((cp_tipo IN (''M'', ''I'')) '+
          '     OR (le_tipoliqui = ''D'')) '+
          '    AND bp_idconpago = cp_conpago '+
          '    AND bp_fechabaja IS NULL '+
          '    AND cp_fbaja IS NULL ') do
        try
          ConceptoTecnicaVacio := RecordCount = 0;
          while not Eof do
          begin
            if primerCaso then
            begin
              ConceptosPagoTecnica := FieldByName('pago').AsString;
              primerCaso := False;
            end
            else
              ConceptosPagoTecnica := ConceptosPagoTecnica +#10#13+FieldByName('pago').AsString;
            Next;
          end;
        finally
          Free;
        end;

        if not ConceptoActuarialVacio then
        begin
          CuerpoMailActuarial := Format(
            'Prestaciones dinerarias pagadas en juicio %s y siniestro %s/%s/%s, '+
            'suspender pago de prestaciones y bajar la reserva. Los conceptos de pago bloqueados '+
            'son los siguientes:'+#10#13+#10#13+'%s' ,
            [NroCarpetaJuicio, siniestro, orden, recaida, ConceptosPagoActuarial]);

          EjecutarStoreST( Format(
            'art.varios.do_insertartablamails('+
            ' ''AvisosAutomaticos'', %s, '+
            ' ''[Legales] - BLOQUEO ACTIVO DE PRESTACIONES DINERARIAS'', %s, '+
            ' NULL, NULL, NULL); ',
            [ QuotedStr(Get_DireccionesEnvioMail('BLK_PREDIN')),QuotedStr(CuerpoMailActuarial)]));
        end;

        if not ConceptoTecnicaVacio then
        begin
          CuerpoMailTecnica := Format(
            'Prestaciones dinerarias pagadas en juicio %s y siniestro %s/%s/%s, '+
            'suspender pago de prestaciones y bajar la reserva. Los conceptos de pago bloqueados '+
            'son los siguientes:'+#10#13+#10#13+'%s' ,
            [NroCarpetaJuicio, siniestro, orden, recaida, ConceptosPagoTecnica]);
          EjecutarStoreST( Format(
            'art.varios.do_insertartablamails('+
            ' ''AvisosAutomaticos'', %s, '+
            ' ''[Legales] - BLOQUEO ACTIVO DE PRESTACIONES DINERARIAS'', %s, '+
            ' NULL, NULL, NULL); ',
            [ QuotedStr(Get_DireccionesEnvioMail('LEG_PDTEC')),QuotedStr(CuerpoMailTecnica)]));
        end;
        Next;
      end;
    finally
      Free;
    end;
  end;
end;


procedure TfrmAdminstracionJuicioParteDemandanda.FormCreate(Sender: TObject);
begin
  inherited;
  with fraTipoEvento do
  begin
    ExtraCondition := ' AND TE_ETAPA like ''%J%'' ';
    OnChange := fraTipoEventoOnChange;
  end;

  

  fraJuicioRelacionado.ExtraCondition := ' AND JT_ESTADOMEDIACION = ''J'' AND JT_IDESTADO NOT IN (2,3)';
  FARecuperar := False;
  fraEstado.OnChange    := fraEstadoOnChange;
  with fraCaracterIntervencion do
  begin
    TableName   := 'legales.lci_caracterintervencion';
    FieldID     := 'ci_id';
    FieldCodigo := 'ci_id';
    FieldDesc   := 'ci_descripcion';
    FieldBaja   := 'CI_FECHABAJA';
    Showbajas   := False;
  end;
  with fraTipoResultadoJuicio do
  begin
    TableName   	 := 'legales.ltr_tiporesultadosentencia';
    FieldID     	 := 'tr_id';
    FieldCodigo 	 := 'tr_id';
    FieldDesc   	 := 'tr_descripcion';
    FieldBaja      := 'TR_FECHABAJA';
    ExtraCondition := ' AND (tr_etapa LIKE ''%J%'') ';
    Showbajas   	 := True;
  end;

{  with fraNivelSeguridad do
  begin
    TableName   := 'legales.lns_nivelseguridad';
    FieldID     := 'ns_id';
    FieldCodigo := 'ns_id';
    FieldDesc   := 'ns_descripcion';
    Codigo      := '1';
    Showbajas   := True;
  end;
}
{  with fraNivelesAcceso do
  begin
  	TableName 	:= 'legales.lna_nivelacceso';
    FieldID 		:= 'na_id';
    FieldCodigo := 'na_id';
    FieldDesc 	:= 'na_descripcion';
    Showbajas   := True;
  end;}
//  fraUsuarioAcceso.Sector := 'LEGAL';

  FFaltaDemanda := False;
  FEnvioSiniestro := '';
  FDevolvioSiniestro := '';

  VCLExtra.LockControls([edFEnvioSiniestro, edFDevolvioSiniestro]);
  OcultarControles;

  tbSalir.Left := 1000;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.LimpiarCampos;
begin
  inherited;
  fraCaracterIntervencion.Codigo := '';
  mResultadoProbable.Text := '';
  edNroOrdenRAJ.Text := '';
  edFECHAINGRESORAJ.Date := 0;
  chkCondicionNoSeguro.Checked := False;
  chkJuicioNoSiniestro.Checked := False;
  chkFederal.Checked := False;
  chkGPBA.Checked := False;
  chkGPBAMalaPraxis.Checked := False;
  chkRebeldia.Checked := False;
end;


procedure TfrmAdminstracionJuicioParteDemandanda.DoCargarDatos(AQuery: TDataSet);
var
  dReservaMuertes, dReservaILP : Double;
begin
  inherited;
  FImporteDemandado            := AQuery.FieldByName('JT_IMPORTEDEMANDADO').AsFloat;
  edFECHANOTIFICACION.Date     := AQuery.FieldByName('JT_FECHANOTIFICACIONJUICIO').AsDateTime;
  chkJuicioNoSiniestro.Checked := AQuery.FieldByName('JT_JUICIONOSINIESTRO').AsInteger = 1;
  chkARecuperar.Checked        := AQuery.FieldByName('JT_ARECUPERAR').AsString = 'S';
  FARecuperar                  := chkARecuperar.Checked;
  chkFederal.Checked           := AQuery.FieldByName('JT_FEDERAL').AsInteger = 1;
  chkGPBA.Checked              := AQuery.FieldByName('JT_GPBA').AsInteger = 1;
  chkGPBAMalaPraxis.Checked    := AQuery.FieldByName('JT_GPBAMALAPRAXIS').AsString = 'S';
  chkRebeldia.Checked          := AQuery.FieldByName('JT_REBELDIA').AsInteger = 1;
  mResultadoProbable.Text      := AQuery.FieldByName('jt_resultado').AsString;
  fraCaracterIntervencion.Codigo := AQuery.FieldByName('jt_idcaracterintervencion').AsString;
  //Ticket 65772
  ed_JT_FECHAALTA.Date     := AQuery.FieldByName('JT_FECHAALTA').AsDateTime;

  if chkReservaCapital.Enabled then
  begin
    chkReservaCapital.Checked    := AQuery.FieldByName('JT_RESERVACAPITALMANUAL').AsString = 'S';
    chkReservaHonorarios.Checked := AQuery.FieldByName('JT_RESERVAHONORARIOSMANUAL').AsString = 'S';
  end;
  if chkReservaGestion.Visible then
  begin
    chkReservaGestion.Checked  := AQuery.FieldByName('jt_reservagestionmanual').AsString = 'S';
    ceReservaGestion.Text      := AQuery.FieldByName('JT_reservagestion').AsString;
  end;
  edNroOrdenRAJ.Text           := AQuery.FieldByName('jt_numeroordenraj').AsString;
  edFECHAINGRESORAJ.Date       := AQuery.FieldByName('jt_fechaingresoraj').AsDateTime;
  chkCondicionNoSeguro.Checked := AQuery.FieldByName('jt_condiciondenoseguro').AsString = 'S';
  fraReclamoSentenciaReclamo.fraReclamo.ExtraCondition :=' AND RC_ETAPA like ''%J%'' ';


  chkFaltaDemanda.Checked      := (AQuery.FieldByName('jg_faltademanda').AsString = 'S');
  chkDevolvioSiniestro.Checked := (AQuery.FieldByName('jg_enviosin').AsString = 'S');
  edFDevolvioSiniestro.Date    := AQuery.FieldByName('jg_enviosin_fechamodif').AsDateTime;
  rgEnvioSiniestro.ItemIndex   := Iif(AQuery.FieldByName('jg_devolviosin').AsString = 'S', 0, Iif(AQuery.FieldByName('jg_devolviosin').AsString = 'N', 1, -1));
  edFEnvioSiniestro.Date       := AQuery.FieldByName('jg_devolviosin_fechamodif').AsDateTime;
  dReservaMuertes              := ValorSql(' SELECT NVL(SUM(rm_res_art), 0) '+
                                           '   FROM actuarial.urm_reservamortal, legales.ljt_juicioentramite, legales.lod_origendemanda, '+
                                           '        legales.lsj_siniestrosjuicioentramite, art.sex_expedientes '+
                                           '  WHERE rm_siniestro = ex_siniestro '+
                                           '    AND rm_orden = ex_orden '+
                                           '    AND od_idjuicioentramite = jt_id '+
                                           '    AND sj_idorigendemanda = od_id '+
                                           '    AND sj_fechabaja IS NULL '+
                                           '    AND od_fechabaja IS NULL '+
                                           '    AND jt_estadomediacion = ''J'' '+
                                           '    AND sj_idsiniestro = ex_id '+
                                           '    AND jt_numerocarpeta = '+SqlValue(AQuery.FieldByName('jt_numerocarpeta').AsString)+
                                           '    AND rm_periodo = (SELECT MAX(b.rm_periodo) '+
                                           '                        FROM actuarial.urm_reservamortal b)');
  edRSPLMuertes.Text           := FloatToStr(dReservaMuertes);
  dReservaILP                  := ValorSql(' SELECT NVL(SUM(rp_res_art), 0) '+
                                           '   FROM actuarial.urp_reservaincapacidad, legales.ljt_juicioentramite, legales.lod_origendemanda, '+
                                           '        legales.lsj_siniestrosjuicioentramite, art.sex_expedientes '+
                                           '  WHERE rp_siniestro = ex_siniestro '+
                                           '    AND rp_orden = ex_orden '+
                                           '    AND od_idjuicioentramite = jt_id '+
                                           '    AND sj_idorigendemanda = od_id '+
                                           '    AND sj_fechabaja IS NULL '+
                                           '    AND od_fechabaja IS NULL '+
                                           '    AND jt_estadomediacion = ''J'' '+
                                           '    AND sj_idsiniestro = ex_id '+
                                           '    AND jt_numerocarpeta = '+SqlValue(AQuery.FieldByName('jt_numerocarpeta').AsString)+
                                           '    AND rp_periodo = (SELECT MAX(b.rp_periodo) '+
                                           '                        FROM actuarial.urp_reservaincapacidad b)');
  edRSPLILP.Text               := FloatToStr(dReservaILP);


  edTotalReservas.Text         := FloatToStr(dReservaMuertes+dReservaILP+AQuery.FieldByName('JT_IMPORTERESERVA').AsFloat+AQuery.FieldByName('JT_IMPORTERESERVAHONORARIOS').AsFloat);
  SumatoriaImportes;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.GuardarJuicio;
var
	//NivelUsuario: Integer;
  juicios : String;
	sSqlTrans: TSql;
  nroCarpeta (*, direccionesMail*) : String;
  sCuerpo, sAsunto, sDireccionesMail: String;
begin
  fraDatosJuzgado.ValidaFechaIngreso := False;

  VerificarMultiple (['Guardando Juicio',

                      fraTipoJuicio,
                      fraTipoJuicio.IsSelected,
                      'Debe seleccionar un tipo de juicio.',

                      edCARATULA,
                      not IsEmptyString(edDemandante.Text)
                      and not IsEmptyString(edDemandado.Text)
                      and not IsEmptyString(edCARATULA.Text),
                      'Debe completar la car�tula del juicio.',

                      fraAbogadosPropios,
                      ( trim(fraAbogadosPropios.Codigo) <> '' ),
                        'Debe completarse el Estudio/Abogado.',
                      {
                      fraAbogadosPropios,
                      ( (fraAbogadosPropios.Codigo <> '') and (edFECHAASIGNADO.Date > 0) or
                       (trim(fraAbogadosPropios.Codigo) = '') and (edFECHAASIGNADO.Date = 0)),
                        'Fecha de asignaci�n y abogado deben completarse conjuntamente.',
                      }

                      edFECHANOTIFICACION,
                      edFECHANOTIFICACION.Date > 0,
                      'Debe completar la fecha de notificaci�n del juicio.',

                      edFECHANOTIFICACION,
                      (edFECHANOTIFICACION.Date <= DBDateTime),
                      'La fecha de notificaci�n del juicio no puede ser mayor que la fecha actual',
                      (*
                      edFECHAASIGNADO,
                      (edFECHAASIGNADO.Date >= edFECHANOTIFICACION.Date),
                      'La fecha de asignaci�n debe ser mayor o igual que la de notificaci�n del juicio',
                      edFECHAASIGNADO,
                     (edFECHAASIGNADO.Date <= DBDateTime),
                      'La fecha de asignaci�n de juicio no puede ser mayor que la fecha actual',
                     *)

                      fraEstado,
                      fraEstado.IsSelected,
                      'Debe seleccionar un Estado para el Juicio.',

                      edFECHAFINJUICIO,
                      (fraEstado.IsSelected) and (not (fraEstado.Codigo = '2') or (edFECHAFINJUICIO.Date > 0)),
                      'Debe especificar la fecha de fin.'//,

//                      fraNivelSeguridad,
//                      fraNivelSeguridad.IsSelected,
//                      'Debe establecer un nivel de seguridad para el juicio'
  //                    edNroOrdenRAJ,
  //                    (not IsEmptyString(edNroOrdenRAJ.text) and (edFECHAINGRESORAJ.Date > 0)),
  //                    'Debe completar un N�mero de Orden  RAJ y Fecha de Registraci�n.'
                     ]);

  Verificar((fraEstado.Codigo = '96') and  (edFECHAFINJUICIO.Date = 0) and (fraestado.Value <> FIdEstadoJuicio)
            ,edFECHAFINJUICIO,
            'Debe especificar la fecha de fin'); //ticket 50259

  Verificar(fraCaracterIntervencion.IsEmpty, fraCaracterIntervencion, 'Debe seleccionar un caracter de intervenci�n.');

  if fraEstado.ShowBajas then
    Verificar((FIdEstadoJuicio <> fraEstado.Value) and fraEstado.IsBaja, fraEstado, 'Debe seleccionar un Estado activo para el Juicio.');

	Verificar((fraEstado.Value = 2) and (ExisteSqlEx('SELECT 1 FROM LEM_EMBARGO WHERE EM_FECHABAJA IS NULL AND EM_IDESTADO <> 4 AND EM_IDJUICIO = :ID',
  					[FIdJuicioEnTramite])), fraEstado, 'No es posible dar por terminado el juicio ya que existen embargos activos.');

  Verificar(fraAbogadosPropios.IsBaja, fraAbogadosPropios, 'No puede Seleccionar un abogado dado de baja.');
  if (fraDatosJuzgado.edNroExpediente.Text <> '') then
  begin
    with GetQuery('SELECT JT_NUMEROCARPETA FROM legales.ljt_juicioentramite '+
                  'WHERE jt_nroexpediente = '+SqlValue(fraDatosJuzgado.edNroExpediente.Text)+
                  IIF(fraDatosJuzgado.edAnioExpediente.Text <> '', ' AND JT_ANIOEXPEDIENTE = '+SqlValue(fraDatosJuzgado.edAnioExpediente.Text),'')+
                  IIF(FModo = meModificacion,'  AND jt_id <> '+SqlValue(FIdJuicioEnTramite),'')+
                  '  AND JT_IDESTADO <> 3 '+
                  '  AND JT_IDSECRETARIA = '+SqlValue(fraDatosJuzgado.Secretaria)+
                  '  AND jt_estadomediacion = ''J'' ORDER BY 1') do
    try
      while not Eof do
      begin
        if juicios = '' then
          juicios := FieldByName('JT_NUMEROCARPETA').AsString
        else
          juicios := juicios +','+FieldByName('JT_NUMEROCARPETA').AsString;
        Next;
      end;
    finally
      Free;
    end;
    if juicios <> '' then
      if MsgBox('Ya existe el Nro. de Expediente y misma secretaria. En los juicios: '+juicios+#13#10, MB_ICONINFORMATION + MB_OK) = IDOK then
        Abort();
  end;

  if FMediacion then
  begin
    VerificarMultiple (['Guardando Juicio',
                        fraTipoMediacion,
                        fraTipoMediacion.IsSelected,
                        'Debe seleccionar un tipo de Mediaci�n.',
                        fraMediador,
                        fraMediador.IsSelected,
                        'Debe seleccionar un mediador',
                        edNroExpedienteMediacion,
                        not IsEmptyString(edNroExpedienteMediacion.Text),
                        'Debe completar un Nro de Expediente de la Mediaci�n'
                       ]);
  end
  else
    ValidarDemanda;

  if chkJuicioNoSiniestro.Checked and
     ExisteSQL ('SELECT 1 ' +
                '  FROM legales.lod_origendemanda, legales.lsj_siniestrosjuicioentramite ' +
                ' WHERE od_id = sj_idorigendemanda and od_fechabaja IS NULL and sj_fechabaja IS NULL ' +
                '   AND od_idjuicioentramite =  ' + SqlValue(FIdJuicioEnTramite)) then
    MessageBox(0, 'Se indic� que el juicio es sin siniestros, ' +
                  'sin embargo se encontraron siniestros asociados al mismo.',
                  'Juicio no siniestro', MB_ICONWARNING or MB_OK);

  //Esto podria ser fraDatosJuzgado.Enabled solamente pero prefiero ser expl�cito.
  if (not FMediacion) or (FMediacion and (fraDatosJuzgado.Enabled)) then
  begin
   fraDatosJuzgado.ValidaExpediente := False;
   fraDatosJuzgado.validar('Guardando Juicio');
  end;

  VerificarMultiple (['Guardando Juicio',
                      fraDatosJuzgado.dteFechaIngreso,
                      (fraDatosJuzgado.dteFechaIngreso.Date >= edFECHANOTIFICACION.Date) or
                      (not fraDatosJuzgado.dteFechaIngreso.Visible) or (fraDatosJuzgado.dteFechaIngreso.Date = 0),
                      'La fecha de ingreso debe ser mayor o igual que la fecha de notificaci�n del juicio.',
                      fraDatosJuzgado.dteFechaIngreso,
                      (fraDatosJuzgado.dteFechaIngreso.Date <= DBDate)  or
                      (not fraDatosJuzgado.dteFechaIngreso.Visible),
                      'La fecha de ingreso de expediente al juzgado no puede ser mayor a la fecha actual.'
                     ]);

  //Valido que no se hayan seleccionado registros dados de baja
  fraDatosJuzgado.ValidarSeleccionBajas('Guardando Juicio');

  if (Fmodo = meModificacion) and chkFaltaDemanda.Checked then
    if IsEmptyString(GetMailEstudioJuridico(fraAbogadosPropios.Value)) then
      begin
        pgDetallesJuicio.ActivePage := tsGestion;
        Verificar(True, chkFaltaDemanda, 'El estudio no registra email cargado.')
      end;

  if FModoOriginal = meAlta then
    if (rgEnvioSiniestro.Enabled) and (rgEnvioSiniestro.ItemIndex = -1) then
      begin
        pgDetallesJuicio.ActivePage := tsGestion;
        Verificar(True, rgEnvioSiniestro, 'Debe indicar si se envi� siniestro.')
      end;

  BeginTrans(true);

  if (FModo = meAlta) then
  begin
    FIdJuicioEnTramite := GetSecNextVal('LEGALES.SEQ_LJT_ID');
    EjecutarSqlST('INSERT INTO LEGALES.LJT_JUICIOENTRAMITE (' +
                  '  jt_id, jt_idestado, JT_FECHAASIGN, jt_fechaingreso, JT_FECHAINGRESORAJ) ' +
                  'VALUES (' + SqlValue(FIdJuicioEnTramite) +  ', NULL, sysdate, sysdate, sysdate)');
  end;

  //Guardo en el hist�rico de Estados
  GuardarCambioEstado;

  //Guardo el Hist�rico de Reservas
  //GuardarCambioReserva;

(*
  if (FModoOriginal = memodificacion) and
     (FImporteDemandado = 0) and
     (fraReclamoSentenciaReclamo.TotalDemanda <> 0) then
  begin
    direccionesMail := Get_DireccionesEnvioMail('LEGIMPDEM');
    EnviarMailBD(direccionesMail,'Carga de Importe Demandado',[oAutoFirma],
        'El Juicio con numero de carpeta '+edNroCarpeta.Text+' se le ha cargado un importe demandado.',
        nil,0,tcDefault,False);
  end;
*)

  sSqlTrans := TSql.Create('legales.ljt_juicioentramite');
  sSqlTrans.SqlType := stUpdate;
  sSqlTrans.PrimaryKey.Add('jt_id', FIdJuicioEnTramite);

  try
    sSqlTrans.Fields.AddString('jt_caratula', trim(edCARATULA.Text));
    sSqlTrans.Fields.AddString('jt_demandante', trim(edDemandante.Text));
    sSqlTrans.Fields.AddString('jt_demandado', trim(edDemandado.Text));
    sSqlTrans.Fields.AddInteger('jt_idabogado', fraAbogadosPropios.Codigo);

    {Ticket 65770
    sSqlTrans.Fields.addDate('JT_FECHAASIGN', edFECHAASIGNADO.Date);
    }

    {Ticket 67270 se asigna la fecha actual a el campo JT_FECHAASIGN}
    edFECHAASIGNADO.Date := DBDate;

    sSqlTrans.Fields.AddInteger('jt_idtipo', fraTipoJuicio.Codigo);

    if (Not FMediacion) or (FMediacion and (fraDatosJuzgado.Enabled)) then
    begin
      sSqlTrans.Fields.AddInteger('jt_idjurisdiccion', fraDatosJuzgado.Jurisdiccion);
      sSqlTrans.Fields.AddInteger('jt_idfuero', fraDatosJuzgado.Fuero);
      sSqlTrans.Fields.AddInteger('jt_idjuzgado', fraDatosJuzgado.Juzgado);
      sSqlTrans.Fields.AddInteger('jt_idsecretaria', fraDatosJuzgado.Secretaria);
      sSqlTrans.Fields.AddString('JT_NROEXPEDIENTE', fraDatosJuzgado.NroExpediente);
      sSqlTrans.Fields.AddString('JT_ANIOEXPEDIENTE', fraDatosJuzgado.AnioExpediente);
      if fraDatosJuzgado.NroExpediente <> '' then
        sSqlTrans.Fields.AddString('JT_EXPEDIENTE', '');
      if fraDatosJuzgado.SinExpediente then
        sSqlTrans.Fields.AddString('JT_SINEXPEDIENTE', 'S')
      else
        sSqlTrans.Fields.AddString('JT_SINEXPEDIENTE', 'N');

    end
    else
    begin
      sSqlTrans.Fields.AddInteger('jt_idjurisdiccion', 0);
      sSqlTrans.Fields.AddInteger('jt_idfuero', 0);
      sSqlTrans.Fields.AddInteger('jt_idjuzgado', 0);
      sSqlTrans.Fields.AddInteger('jt_idsecretaria', 0);
      sSqlTrans.Fields.AddString('jt_expediente', '');
    end;

    {Ticket 65770
    if (Not FMediacion) then
      sSqlTrans.Fields.AddDate('jt_fechaingreso', fraDatosJuzgado.FechaIngreso)
    else
      sSqlTrans.Fields.AddDate('jt_fechaingreso', 0);
    }

    sSqlTrans.Fields.AddInteger('jt_idestado', fraEstado.Codigo);
    sSqlTrans.Fields.AddDate('jt_fechanotificacionjuicio', edFECHANOTIFICACION.Date);
    sSqlTrans.Fields.AddString('jt_descripcion', edtDescripcion.Text);
    sSqlTrans.Fields.AddString('jt_resultado', mResultadoProbable.Text);
    {if ceReservaCapital.EditType <> etPassword then
    begin
      sSqlTrans.Fields.AddExtended('JT_IMPORTERESERVAHONORARIOS', ceReservaHonorarios.FloatValue, 2);
      sSqlTrans.Fields.AddExtended('JT_IMPORTERESERVA', ceReservaCapital.FloatValue, 2);
    end;
    }
    if chkReservaCapital.Checked then
    begin
      sSqlTrans.Fields.Add('JT_RESERVACAPITALMANUAL', 'S');
      sSqlTrans.Fields.AddExtended('JT_IMPORTERESERVA', ceReservaCapital.Value, 2);
    end
    else
      sSqlTrans.Fields.Add('JT_RESERVACAPITALMANUAL', 'N');

    if chkReservaHonorarios.Checked then
    begin
      sSqlTrans.Fields.Add('JT_RESERVAHONORARIOSMANUAL', 'S');
      sSqlTrans.Fields.AddExtended('JT_IMPORTERESERVAHONORARIOS', ceReservaHonorarios.Value, 2);
    end
    else
      sSqlTrans.Fields.Add('JT_RESERVAHONORARIOSMANUAL', 'N');

    if chkReservaGestion.Visible then
    begin
      if chkReservaGestion.Checked then
      begin
        sSqlTrans.Fields.Add('JT_RESERVAGESTIONMANUAL', 'S');
        sSqlTrans.Fields.Add('JT_RESERVAGESTION', ceReservaGestion.Value, 2);
      end
      else
        sSqlTrans.Fields.Add('JT_RESERVAGESTIONMANUAL', 'N');
    end;

    sSqlTrans.Fields.AddExtended('JT_IMPORTEEMBARGO', 0);

//    sSqlTrans.Fields.AddExtended('JT_RESERVAHONORARIOCALCULADA', ceReservaHonorariosCalculada.Value, 2, true);
//    sSqlTrans.Fields.AddExtended('JT_RESERVACAPITALCALCULADA', ceReservaCapitalCalculada.Value, 2, true);
   // sSqlTrans.Fields.AddInteger('JT_IDNIVELSEGURIDAD', fraNivelSeguridad.Codigo, true);
    sSqlTrans.Fields.AddExtended('JT_IMPORTEDEMANDADO', fraReclamoSentenciaReclamo.TotalDemanda, 2);
    sSqlTrans.Fields.Add('jt_idcaracterintervencion', fraCaracterIntervencion.Codigo);
    sSqlTrans.Fields.AddInteger('JT_JUICIONOSINIESTRO', Ord(chkJuicioNoSiniestro.Checked));
    if chkARecuperar.Checked then
      sSqlTrans.Fields.AddString('JT_ARECUPERAR', 'S')
    else
      sSqlTrans.Fields.AddString('JT_ARECUPERAR', 'N');

    if (((Fmodo = meAlta) and (chkARecuperar.Checked)) or
       (chkARecuperar.Checked and not FARecuperar )) then
    begin
      nroCarpeta := ValorSql('SELECT NVL(jt_numerocarpeta, 0) ' +
                                  '  FROM legales.ljt_juicioentramite ' +
                                  ' WHERE jt_id = ' + SqlValue(FIdJuicioEnTramite) );


      sDireccionesMail := Get_DireccionesEnvioMail('LEGAREC');
      sAsunto          := 'INICIAR EL PROCESO DE RECUPERO';

      sCuerpo := sAsunto + CRLF + 'N�mero de Carpeta: '+nroCarpeta;

      EnviarMailBD(sDireccionesMail, sAsunto, [oAutoFirma], sCuerpo, nil, 0, tcDefault, False);

      with GetQuery(
        ' SELECT sj_idsiniestro, SUBSTR(em_nombre,0,100) AS empresa '+
        '   FROM afi.aem_empresa, '+
        '        legales.lsj_siniestrosjuicioentramite, '+
        '        art.sex_expedientes, '+
        '        legales.lod_origendemanda '+
        '  WHERE od_id = sj_idorigendemanda '+
        '    AND sj_idsiniestro = ex_id '+
        '    AND ex_cuit = em_cuit '+
        '    AND od_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+
        '    AND od_fechabaja IS NULL '+
        '    AND sj_fechabaja IS NULL') do
      try
        while not Eof do
        begin
          EjecutarStoreST('art.siniestro.do_grabar_recuperosiniestro ('+
                  SqlValue(FieldByName('sj_idsiniestro').AsString)+','+
                  ' ''E'','+
                  SqlValue(FieldByName('empresa').AsString)+','+
                  SqlValue('Nro de carpeta '+nroCarpeta+'.')+','+
                  SqlValue(Sesion.UserID)+' );');
          Next;
        end;
      finally
        Free;
      end;
    end;

    sSqlTrans.Fields.AddInteger('JT_FEDERAL', Ord(chkFederal.Checked));
    sSqlTrans.Fields.AddInteger('JT_GPBA', Ord(chkGPBA.Checked));
    if chkGPBAMalaPraxis.Checked then
      sSqlTrans.Fields.AddString('JT_GPBAMALAPRAXIS', 'S')
    else
      sSqlTrans.Fields.AddString('JT_GPBAMALAPRAXIS', 'N');

    sSqlTrans.Fields.AddInteger('JT_REBELDIA', Ord(chkRebeldia.Checked));
//    sSqlTrans.Fields.AddExtended('JT_IMPORTERECURSOEXTRAORD', edIMPORTESRECEXTRAORD.Value, 2, true);

    if FMediacion then
    begin
      sSqlTrans.Fields.AddInteger('JT_IDTIPOMEDIACION', fraTipoMediacion.Codigo);
      sSqlTrans.Fields.AddInteger('JT_IDORGANISMOMEDIACION', fraOrganismoMediacion.Codigo);
      sSqlTrans.Fields.AddInteger('JT_IDMEDIADOR', fraMediador.Codigo);
      sSqlTrans.Fields.AddString('JT_EXPEDIENTEMEDIACION', edNroExpedienteMediacion.text);
    end;

    sSqlTrans.Fields.Add('JT_CONDICIONDENOSEGURO',chkCondicionNoSeguro.Checked);
    sSqlTrans.Fields.Add('JT_NUMEROORDENRAJ', edNroOrdenRAJ.Text);

    {Ticket 65770
    sSqlTrans.Fields.AddDate('JT_FECHAINGRESORAJ', edFECHAINGRESORAJ.Date);
    }

    if Fmodo = meAlta then
    begin
      sSqlTrans.Fields.AddDateTime('jt_fechaalta',DBDateTime);
      sSqlTrans.Fields.Add('jt_usualta', Sesion.LoginName);
      sSqlTrans.Fields.Add('jt_estadomediacion', 'J');
      GuardarInstanciaInicioJuicion(FIdJuicioEnTramite,
                                    fraDatosJuzgado.Jurisdiccion,
                                    fraDatosJuzgado.Fuero,
                                    fraDatosJuzgado.Juzgado,
                                    fraDatosJuzgado.Secretaria,
                                    fraDatosJuzgado.Instancia,
                                    fraDatosJuzgado.NroExpediente,
                                    fraDatosJuzgado.AnioExpediente,
                                    fraDatosJuzgado.SinExpediente,
                                    fraDatosJuzgado.FechaIngreso,
                                    Sesion.LoginName);
    end
    else
    begin
      if fraDatosJuzgado.edNroExpediente.Modified or fraDatosJuzgado.edAnioExpediente.Modified or
         fraDatosJuzgado.dteFechaIngreso.Modified then
        ActualizarInstanciaJuicio(FIdJuicioEnTramite,
                                  fraDatosJuzgado.Jurisdiccion,
                                  fraDatosJuzgado.Fuero,
                                  fraDatosJuzgado.Juzgado,
                                  fraDatosJuzgado.Secretaria,
                                  fraDatosJuzgado.Instancia,
                                  fraDatosJuzgado.NroExpediente,
                                  fraDatosJuzgado.AnioExpediente,
                                  fraDatosJuzgado.SinExpediente,
                                  fraDatosJuzgado.FechaIngreso,
                                  Sesion.LoginName);
      sSqlTrans.Fields.AddDateTime ('jt_fechamodif', DBDateTime);
      sSqlTrans.Fields.Add('jt_usumodif', Sesion.LoginName);
      sSqlTrans.Fields.addDate('jt_fechafinjuicio', edFECHAFINJUICIO.Date);
      sSqlTrans.Fields.addDate('jt_fechasentencia', edFECHASENTENCIA.Date);
    end;
    EjecutarSQLST(sSqlTrans.Sql, tmNone);

    GuardarAsignacionAbogado;
    GuardarGestion;
    ProcesoBloqueoPagos;
//TKT19916    ActualizarSiniestrosJuicio;

    if Fmodo = meAlta then
    	ObtenerNumeroCarpeta;

    if (FModo <> meAlta) then
    begin
      tbCalcularReservaClick(nil);
      GuardarReserva;
      tbCalculaReservaGestionClick(nil);
      GuardarReservaGestion;
    end;

    CommitTrans(true);
  except
    on E: Exception do
    begin
      Rollback(true);
    	raise Exception.Create('Error al guardar juicio: ' + E.Message);
    end;
  end;
end;


procedure TfrmAdminstracionJuicioParteDemandanda.ObtenerNumeroCarpeta;
var
 nroCarpeta : integer;
begin
    EjecutarStoreST('art.Legales.AsignarProximoNroCarpeta( ' + SqlInteger(FIdJuicioEnTramite) +  ',''J''); ');
    nroCarpeta := ValorSqlInteger('SELECT NVL(jt_numerocarpeta, 0) ' +
                                  '  FROM legales.ljt_juicioentramite ' +
                                  ' WHERE jt_id = ' + SqlValue(FIdJuicioEnTramite) );
    CommitTrans(true);
    MessageDlg('Se gener� la carpeta N� ' + Inttostr(nroCarpeta), mtInformation, [mbOK], 0);
    edNroCarpeta.Text := Inttostr(nroCarpeta);
end;

procedure TfrmAdminstracionJuicioParteDemandanda.OcultarControles;
begin
  edFECHAASIGNADO.Visible := False;
  edFECHAASIGNADO.Date := DBDate;

  lblFechaAsignacion.Visible := False;

  edFECHAINGRESORAJ.Visible := False;
  lblFechaRegistracionRAJ.Visible := False;

  //Ticket 65772
  lbl_JT_FECHAALTA.Visible := True;
  ed_JT_FECHAALTA.Visible := True;

  //Ticket 65773
  lblExpediente.Visible := False;
  edNroOrdenRAJ.Visible := False;

  fraDatosJuzgado.dteFechaIngreso.Visible := False;
  fraDatosJuzgado.lblFechaIngreso.Visible := False;

  edNroOrdenRAJ.Top := 133;
  lblExpediente.Top := 133;
  chkCondicionNoSeguro.Top := 133;

end;

function TfrmAdminstracionJuicioParteDemandanda.AltaJuicio: Boolean;
begin
  FMediacion := false;
  FIdJuicioGestion := ART_EMPTY_ID;
  Caption := LJT_GESTION_ALTA;
  FModoOriginal := meAlta;
  FCantBloqueoPagosInicial := 0;
  fraDatosJuzgado.Init(PERMITIREXPEDIENTE, PERMITIRINSTANCIAS);
  VCLExtra.LockControls(fraDatosJuzgado, false);
  fraDatosJuzgado.Enabled := true;
  fraEstado.ExtraCondition := ' AND ej_etapa LIKE ''%J%''';
  psSentenciaMediacion.ActivePageIndex := 0;
  tbFijarSentencia.Enabled := false;
  tbVerPagosPendientes.Enabled := false;
  tbReasignarAbogado.Enabled := false;
  tbElevacionAJuicio.Enabled := false;
  tbBloquear.Enabled := false;
  FNivelAccesoUsuario := GetNivelAccesoUsuarioAJuicio;
  SetearControlesJuicio;
  FFaltaDemanda := False;
  FEnvioSiniestro := '';
  FDevolvioSiniestro := '';
  result := Alta;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.Modificacion(Tabla: TSDQuery);
begin
  FModo := meModificacion;
  FModoOriginal := meModificacion;
  FIdJuicioEnTramite := Tabla.FieldByName('jt_id').AsInteger;
  FIdJuicioRelacionado := Tabla.FieldByName('jt_idjuiciorelacionado').AsInteger;
  FIdJuicioGestion := Tabla.FieldByName('jg_id').AsInteger;
  FFaltaDemanda := (Tabla.FieldByName('jg_faltademanda').AsString = 'S');
  FEnvioSiniestro := Tabla.FieldByName('jg_devolviosin').AsString;
  FDevolvioSiniestro := Tabla.FieldByName('jg_enviosin').AsString;
  FCantBloqueoPagosInicial := ValorSql(
    ' SELECT COUNT(*) '+
    '   FROM legales.lbp_bloqueopagosiniestro bp, legales.lsj_siniestrosjuicioentramite, '+
    '        legales.lod_origendemanda, art.sex_expedientes '+
    '  WHERE ex_id = bp_idexpediente '+
    '    AND sj_idsiniestro = bp_idexpediente '+
    '    AND sj_idorigendemanda = od_id '+
    '    AND od_idjuicioentramite = bp_idjuicioentramite '+
    '    AND bp_estadobloqueo = 1 '+
    '    AND bp_fechabaja IS NULL '+
    '    AND bp_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite));

  LimpiarCampos;

  if Tabla.FieldByName('jt_estadomediacion').AsString = 'M' then
  begin
    Caption := LJT_GESTION_MODIFMEDIACION;
    FMediacion := True;
    psSentenciaMediacion.ActivePageIndex := 1;
    fraDatosJuzgado.Init(NOPERMITIREXPEDIENTE, NOPERMITIRINSTANCIAS);
    fraEstado.ExtraCondition := ' AND ej_etapa LIKE ''%M%''';
    tbFijarSentencia.Enabled := False;
    tbVerPagosPendientes.Enabled := False;
  end
  else begin
    Caption := LJT_GESTION_MODIF;
    FMediacion := false;
    fraDatosJuzgado.Init(PERMITIREXPEDIENTE, PERMITIRINSTANCIAS);
    fraEstado.ExtraCondition := ' AND ej_etapa LIKE ''%J%''';
    psSentenciaMediacion.ActivePageIndex := 0;
    tbElevacionAJuicio.Enabled := False;
  end;

  fraDatosJuzgado.ValidaFechaIngreso := False;

  DoCargarDatos(Tabla);
  Seguridad.Ejecutar;
  SetearControlesJuicio;
  ShowModal;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.fraEstadoOnChange(Sender: TObject);
begin
  if (Not FMediacion) and (fraEstado.Value = 2) then //Terminado
  begin
    ceReservaCapital.Value := 0;
    ceReservaCapital.ReadOnly := true;
    ceReservaHonorarios.Value := 0;
    ceReservaHonorarios.ReadOnly := true;

    MsgBox('Al dar por terminado el juicio las reservas pasan a cero.', MB_ICONINFORMATION);
  end
  else begin
    if FNivelAccesoUsuario > NIVELINTERMEDIO then
    begin
      ceReservaCapital.ReadOnly := false;
      ceReservaHonorarios.ReadOnly := false;
    end;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.fraTipoEventoOnChange(Sender: TObject);
begin
  if ((fraTipoEvento.Codigo = '681') or (fraTipoEvento.Codigo = '381')) and (edNroAudiencia.Text <> '') then
  begin
    edNroAudiencia.Visible := True;
    tbVerAudiencia.Visible := True;
    lbNroAudiencia.Visible := True;
  end
  else
  begin
    edNroAudiencia.Visible := False;
    tbVerAudiencia.Visible := False;
    lbNroAudiencia.Visible := False;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbEdicionOrigenDemandaClick(
  Sender: TObject);
begin
  inherited;
  with TfrmAbmOrigenDemanda.Create(self) do
  try
    //Ticket 65384
    FechaNotificacion := edFECHANOTIFICACION.Date;
    TipoParte := False;
    ModificacionOrigenDemanda(sdqOrigenDemanda);
    sdqOrigenDemanda.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
    sdqOrigenDemanda.Refresh;
  finally
    free;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbNuevoOrigenDemandaClick(
  Sender: TObject);
begin
  with TfrmAbmOrigenDemanda.Create(self) do
  try
    //Ticket 65384   (NUEVO ORIGEN DEMANDA)
    FechaNotificacion := edFECHANOTIFICACION.Date;
    TipoParte := False;
    AltaOrigenDemanda(FIdJuicioEnTramite);
    sdqOrigenDemanda.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
    sdqOrigenDemanda.Refresh;
  finally
    free;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.fraDatosJuzgadobtnInstanciasAnterioresClick(
  Sender: TObject);
begin

  with TfrmInstanciasJuicio.Create(self) do
  try
    ParteActora := False;
    ValidaFechaIngreso := False;
    MostrarInstanciasJuicio(FIdJuicioEnTramite, edFECHANOTIFICACION.Date);

    fraDatosJuzgado.Cargar(FIdJuicioEnTramite);
    ReCargarSentencia;
    OcultarControles;
  finally
    Free;

  end;

end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbCalcularReservaClick(
  Sender: TObject);
begin
//  if (not chkReservaCapital.Checked) and (not ceReservaCapital.ReadOnly) then
    ceReservaCapital.Text := ValorSql(
      ' SELECT art.legales.get_reservacapitaljuicios ('+SqlValue(FIdJuicioEnTramite)+')'+
      '   FROM DUAL ');
//  if not chkReservaHonorarios.Checked and (not ceReservaHonorarios.ReadOnly)then
    ceReservaHonorarios.Text := ValorSql(
      ' SELECT art.legales.get_reservahonorariojuicio ('+SqlValue(FIdJuicioEnTramite)+')'+
      '   FROM DUAL ');
end;

procedure TfrmAdminstracionJuicioParteDemandanda.GuardarReserva;
begin
//  if (ceReservaCapital.PasswordChar <> '*') then
//  begin
    EjecutarSqlST(
      ' UPDATE legales.ljt_juicioentramite '+
      '    SET jt_importereserva = '+SqlNumber(Extended(ceReservaCapital.Value))+', '+
      '        jt_importereservahonorarios = '+ SqlNumber(Extended(ceReservaHonorarios.Value))+
      '  WHERE jt_id = '+SqlValue(FIdJuicioEnTramite));
//  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.GuardarReservaGestion;
begin
   EjecutarSqlST(
     ' UPDATE legales.ljt_juicioentramite '+
     '    SET JT_RESERVAGESTION = '+SqlNumber(Extended(ceReservaGestion.Value))+
     '  WHERE jt_id = '+SqlValue(FIdJuicioEnTramite));
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbCalculaReservaGestionClick(
  Sender: TObject);
begin
  if (not chkReservaGestion.Checked) and (ceReservaGestion.Visible) then
    ceReservaGestion.Text := ValorSql(
      ' SELECT art.legales.get_reservaGestion ('+SqlValue(FIdJuicioEnTramite)+')'+
      '   FROM DUAL ');
end;


procedure TfrmAdminstracionJuicioParteDemandanda.tbBorrarSentenciaClick(Sender: TObject);
begin
  EjecutarSqlST(
   ' UPDATE legales.ljt_juicioentramite '+
   '    SET jt_importesentencia = NULL, '+
   '        jt_idtiporesultadosentencia = NULL, '+
   '        jt_detallesentencia = NULL, '+
   '        jt_fechasentencia = NULL, '+
   '        jt_interesessentencia = NULL, '+
   '        jt_fecharecepsentencia = NULL, '+
   '        jt_montocondena = NULL,  ' +
   '        jt_porcentajeincapacidad = NULL  ' +
   '  WHERE jt_numerocarpeta = '+SqlValue(edNroCarpeta.Text));

  EjecutarSqlST(
   ' UPDATE legales.lij_instanciajuicioentramite '+
   '    SET ij_interesessentencia = NULL, '+
   '        ij_fechasentencia = NULL, '+
   '        ij_detallesentencia = NULL, '+
   '        ij_importesentencia = NULL, '+
   '        ij_fecharecepsentencia = NULL, '+
   '        ij_idtiporesultadosentencia = NULL, '+
   '        ij_montocondena = NULL,  ' +
   '        ij_porcentajeincapacidad = NULL  ' +
   '  WHERE ij_idjuicioentramite = (SELECT jt_id '+
   '                                  FROM legales.ljt_juicioentramite '+
   '                                 WHERE jt_numerocarpeta = '+SqlValue(edNroCarpeta.Text)+')');
  sdqBlanqueoSentencia.ParamByName('jt_id').AsInteger := FIdJuicioEnTramite;
  sdqBlanqueoSentencia.Open;
  DoCargarDatos(sdqBlanqueoSentencia);
end;

procedure TfrmAdminstracionJuicioParteDemandanda.GuardarGestion;
var
  sSql: String;
  bEsAlta: Boolean;
begin
  if Fmodo in [meAlta, meModificacion] then
    begin
      if Fmodo = meAlta then
        bEsAlta := True
      else
        begin
          sSql := 'SELECT 1 ' +
                    'FROM LJG_JUICIOGESTION ' +
                   'WHERE JG_IDJUICIOENTRAMITE = :IdJuicio';
          bEsAlta := not ExisteSqlEx(sSql, [FIdJuicioEnTramite]);
        end;

      with TSql.Create('ljg_juiciogestion') do
        try
          if bEsAlta then
            begin
              SqlType := stInsert;
              PrimaryKey.AddInteger('jg_id', GetSecNextVal('SEQ_LJG_ID'));
            end
          else
            begin
              SqlType := stUpdate;
              PrimaryKey.AddInteger('jg_id', FIdJuicioGestion);
            end;

          Fields.AddInteger('jg_idjuicioentramite',     FIdJuicioEnTramite);

          if (FFaltaDemanda <> chkFaltaDemanda.Checked) or (Fmodo = meAlta) then
          begin
            Fields.Add('jg_faltademanda',                 String(Iif(chkFaltaDemanda.Checked, 'S', 'N')));
            Fields.Add('jg_faltademanda_usumodif',        Sesion.UserID);
            Fields.Add('jg_faltademanda_fechamodif',      exDateTime);
          end;

          if (FDevolvioSiniestro <> Iif(chkDevolvioSiniestro.Checked, 'S', 'N')) then
          begin
            Fields.Add('jg_enviosin',                     String(Iif(chkDevolvioSiniestro.Checked, 'S', 'N')));
            Fields.Add('jg_enviosin_usumodif',            Sesion.UserID);
            Fields.Add('jg_enviosin_fechamodif',          exDateTime);
          end;

          if (FEnvioSiniestro <> Iif(rgEnvioSiniestro.ItemIndex = 0, 'S', Iif(rgEnvioSiniestro.ItemIndex = 1, 'N', ''))) then
          begin
            Fields.Add('jg_devolviosin',                  String(Iif(rgEnvioSiniestro.ItemIndex = 0, 'S', Iif(rgEnvioSiniestro.ItemIndex = 1, 'N', ''))));
            Fields.Add('jg_devolviosin_usumodif',         Sesion.UserID);
            Fields.Add('jg_devolviosin_fechamodif',       exDateTime);
          end;

          EjecutarSQLST(Sql, tmNone);
        finally
          Free;
        end;

      if not FFaltaDemanda and chkFaltaDemanda.Checked then
        begin
          EnviarMailFaltaDemanda;
          GuardarEventoJuicioEnTramite(FIdJuicioEnTramite);
        end;

      FFaltaDemanda := chkFaltaDemanda.Checked;
    end;
end;

function TfrmAdminstracionJuicioParteDemandanda.GetMailEstudioJuridico(IdAbogado: TTableId): String;
var
  sSql: String;
begin
  sSql := 'SELECT BO_DIRELECTRONICA ' +
            'FROM LEGALES.LBO_ABOGADO ' +
           'WHERE BO_ID = :Id';

  Result := ValorSqlEx(sSql, [IdAbogado]);
end;

procedure TfrmAdminstracionJuicioParteDemandanda.GuardarEventoJuicioEnTramite(IdJuicio: TTableId);
begin
  with TSql.Create('legales.let_eventojuicioentramite') do
    try
      SqlType := stInsert;

      PrimaryKey.AddInteger('et_id',              GetSecNextVal('LEGALES.SEQ_LET_ID'));
      Fields.Add('et_fechaevento',                exDate);
      Fields.AddInteger('et_idjuicioentramite',   FIdJuicioEnTramite);
      Fields.AddInteger('et_idtipoevento',        604);
      Fields.Add('et_usualta',                    Sesion.UserID);
      Fields.Add('et_fechaalta',                  exDateTime);

      EjecutarSQLST(Sql, tmNone);
    finally
      Free;
    end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.EnviarMailFaltaDemanda;
var
  sCuerpo, sAsunto, sDireccionesMail: String;
begin
  sDireccionesMail := GetMailEstudioJuridico(fraAbogadosPropios.Value);
  sAsunto          := 'JD N� '+edNroCarpeta.Text+' - Car�tula: ' + edDemandante.Text + ' C/ ' + edDemandado.Text + ' ' + edCARATULA.Text +
                      ' - EXPTE '+fraDatosJuzgado.NroExpediente +'/'+ fraDatosJuzgado.AnioExpediente;

  sCuerpo := sAsunto + CRLF +
             'Atento a que en el presente pleito, no nos ha llegado v�a c�dula copia de la demanda interpuesta ' +
             'en los presentes actuados, les solicitamos nos remitan URGENTE, una copia de la misma, as� como ' +
             'el n�mero de DNI del actor para verificar la existencia de siniestro.' + CRLF +
             'Asimismo, resulta de suma importancia contar con los datos y la documentaci�n ut supra mencionada, ' +
             'a los efectos de  efectuar el c�lculo de las reservas correspondiente al juicio.' + CRLF +
             'Les informamos que el cumplimiento de lo solicitado mas arriba, es condici�n "sine qua non" para poder ' +
             'efectuar el pago del adelanto de los honorarios.' + CRLF +
             'Muchas Gracias';

  EnviarMailBD(sDireccionesMail, sAsunto, [oAutoFirma], sCuerpo, nil, 0, tcDefault, False);
end;

procedure TfrmAdminstracionJuicioParteDemandanda.chkJuicioNoSiniestroClick(Sender: TObject);
begin
  VCLExtra.LockControls(gbGestionSiniestro, chkJuicioNoSiniestro.Checked);

  if chkJuicioNoSiniestro.Checked then
    begin
      rgEnvioSiniestro.ItemIndex   := -1;
      chkDevolvioSiniestro.Checked := False;
    end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.ActivarControlesAlta(activar: boolean);
begin
  inherited;
  VclExtra.LockControls([tsImportes], not activar);
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbVerImagenesClick(Sender: TObject);
var
  sSql, sIdArchivos: String;
begin
  if not VerificarClaveExiste(ID_CARPETA_JUICIOPD, edNroCarpeta.Text, FarId) then
    MsgBox('La Carpeta no existe.', MB_ICONERROR)
  else
    begin
      sSql := 'SELECT LISTAGG(ARID, '', '') WITHIN GROUP (ORDER BY ARID) LISTA_ARID ' +
                'FROM (SELECT DISTINCT TRIM(TO_CHAR(AR_ID)) ARID ' +
                        'FROM LEGALES.LJT_JUICIOENTRAMITE, LEGALES.LPL_PAGOLEGAL, RCE_CHEQUEEMITIDO, ARCHIVO.RAR_ARCHIVO ' +
                       'WHERE PL_IDCHEQUEEMITIDO = CE_ID ' +
                         'AND PL_IDJUICIOENTRAMITE = JT_ID ' +
                         'AND JT_ESTADOMEDIACION = ''J'' ' +
                         'AND JT_NUMEROCARPETA = :NroCarpeta ' +
                         'AND AR_CLAVE = ART.ARCHIVO.GETCLAVEARMADA(1, TO_CHAR(CE_ORDENPAGO), NULL, NULL, NULL) ' +
                         'AND AR_TIPO = :TipoTesoOP ' +
                       'UNION ALL ' +
                      'SELECT TRIM(TO_CHAR(AR_ID)) ARID ' +
                        'FROM ARCHIVO.RAR_ARCHIVO ' +
                       'WHERE AR_ID = :IdRAR)';
      sIdArchivos := ValorSqlEx(sSql, [edNroCarpeta.Text, ID_CARPETA_TESORERIA, FarId]);

      if not IsEmptyString(sIdArchivos) then
        TFrmDetalleArchivo.MostrarDetalleArchivos(Self, sIdArchivos, True, '', True, FarId);
    end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbEdicionPagoClick(
  Sender: TObject);
begin
  inherited;
  with TfrmPagoConceptosLegalesRegulados.Create(self) do
  try
    ModoParteDemandada;
  	ModificacionPago(sdqPagoLegal);
    sdqPagoLegal.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
    sdqPagoLegal.Refresh;
  finally
  	Free;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbIngresoPagoClick(
  Sender: TObject);
begin
  inherited;
  with TfrmPagoConceptosLegalesRegulados.Create(self) do
  try
    ModoParteDemandada;
  	AltaPago(FIdJuicioEnTramite);
    sdqPagoLegal.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
    sdqPagoLegal.Refresh;
  finally
     free;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.dbgPagosEfectuadosDblClick(
  Sender: TObject);
begin
  tbEdicionPagoClick(nil);
end;

procedure TfrmAdminstracionJuicioParteDemandanda.dbgPagosEfectuadosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  CalcControlWidthLeft;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbFijarSentenciaClick(
  Sender: TObject);
begin
   with TfrmFijarImportesSentencia.Create(Self) do
  begin
    try
      federalsistemico := chkFederal.checked;
      PreValidarFijarSentencia;
      FijarSentencia(FIdJuicioEnTramite, FModo, edFECHANOTIFICACION.Date);

      if FModo <> meConsulta then
      begin
        ReCargarSentencia;
      end
    finally
      free;
    end;
  end;

end;

procedure TfrmAdminstracionJuicioParteDemandanda.SumatoriaImportes;
begin
  CalcControlWidthLeft;

  lbSumatoria.Caption := 'Total Pagado : $'+ValorSql(
    ' SELECT TO_CHAR(art.legales.get_importepagosjucio('+SqlValue(FIdJuicioEnTramite)+')'+
           ' , ''9G999G999G999G999D99'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '') '+
    '   FROM DUAL ');

    // Ticket 66098
    lblSumatoriaPagosConRet.Text := ValorSql(
    ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalretenidopagosjd('+SqlValue(FIdJuicioEnTramite)+'), 0)'+
           ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
    '   FROM DUAL ');

    lblSumatoriaPagosSinRet.Text := ValorSql(
    ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalpagosjd('+SqlValue(FIdJuicioEnTramite)+'), 0)'+
           ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
    '   FROM DUAL ');

end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbVerAudienciaClick(
  Sender: TObject);
begin
  inherited;
  with TfrmAudiencia.Create(Self) do
  try
    FormStyle := fsNormal;
    Visible := False;
    edFechaAudienciaDesdeFiltro.Date := edFechaEventoDesde.Date;
    edFechaAudienciaHastaFiltro.Date := edFechaEventoDesde.Date;
    ModoVista(FIdJuicioEnTramite);
  finally
    Free;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.CalcControlWidthLeft;
var
  I, sumWidth: Integer;
begin
    // Ticket 66098
    sumWidth := 20;
    for I := 0 to dbgPagosEfectuados.Columns.Count -1 do begin

      if dbgPagosEfectuados.Columns[I].FieldName = 'PL_IMPORTECONRETENCION' then  begin
        lblSumatoriaPagosConRet.Left := sumWidth;
        lblSumatoriaPagosConRet.Width := dbgPagosEfectuados.Columns[I].Width;
      end;
      if dbgPagosEfectuados.Columns[I].FieldName = 'PL_IMPORTEPAGO' then  begin
        lblSumatoriaPagosSinRet.Left := sumWidth;
        lblSumatoriaPagosSinRet.Width := dbgPagosEfectuados.Columns[I].Width;
      end;
      sumWidth := sumWidth + dbgPagosEfectuados.Columns[I].Width;

    end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.CargarDatosEvento(Campos : TFields);
begin
  inherited;
  edNroAudiencia.Text := Campos.FieldByName('au_nroaudiencia').AsString;
  if not Campos.FieldByName('et_respuesta').IsNull then
  begin
    lbRespuesta.Visible := True;
    lbAgregarRespuesta.Visible := False;
  end
  else
  begin
    lbRespuesta.Visible := False;
    lbAgregarRespuesta.Visible := True;
  end;
  edRespuestaEvento.Clear;
  edRespuestaEvento.Text := Campos.FieldByName('et_respuesta').AsString;


  if ((fraTipoEvento.Codigo = '681') or (fraTipoEvento.Codigo = '381')) and (edNroAudiencia.Text <> '') then
  begin
    edNroAudiencia.Visible := True;
    tbVerAudiencia.Visible := True;
    lbNroAudiencia.Visible := True;
  end
  else
  begin
    edNroAudiencia.Visible := False;
    tbVerAudiencia.Visible := False;
    lbNroAudiencia.Visible := False;
  end;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.pgDetallesJuicioChange(Sender: TObject);
begin
  inherited;
  case pgDetallesJuicio.ActivePageIndex of
  2:
    begin
      	with sdqEventoJuicioEnTramite do
      	if not Active then
        begin
          SQL.Text :=
          'SELECT et_id, et_fechaevento, et_observaciones, et_fechavencimiento, et_idtipoevento, lte_tipoevento.te_descripcion, '+
          '       et_respuesta, '+
          '       et_fechabaja, NVL((SELECT DISTINCT ''S'' '+
          '                                     FROM legales.lea_eventoarchivoasociado '+
          '                                    WHERE ea_ideventojuicioentramite = et_id '+
          '                                      AND ea_fechabaja IS NULL), ''N'') tieneadjunto, et_idaudiencia, au_nroaudiencia'+
          '  FROM legales.let_eventojuicioentramite, legales.lte_tipoevento, legales.lau_audiencia '+
          ' WHERE (et_idtipoevento = lte_tipoevento.te_id) '+
          '   AND et_idjuicioentramite = :idjuicioentramite '+
          '   AND et_idaudiencia = au_id(+) '+SortDialogEvento.OrderBy;
        	ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
          Open;
        end;
    end;
  end;
end;

function TfrmAdminstracionJuicioParteDemandanda.AltaEvento: Boolean;
begin
  LimpiarCamposEvento;
  FModoEventosSeguimientos := meAlta;
  FIdEventoJuicioEnTramite := -1;
  fraTipoEvento.ShowBajas := false;
  edNroOrdenRAJ.Clear;
  fraTipoEventoOnChange(nil);
  result :=  fpEventoSeguimiento.ShowModal = mrOK;
  sdqEventoJuicioEnTramite.ParamByName('idJuicioEnTramite').AsInteger := FIdJuicioEnTramite;
  sdqEventoJuicioEnTramite.Refresh;
  lbRespuesta.Visible := False;
  lbAgregarRespuesta.Visible := False;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbMarcarComoAltaClick(
  Sender: TObject);
begin
  EjecutarSqlST(
    ' UPDATE legales.ljt_juicioentramite '+
    '    SET jt_fechaexport = NULL, '+
    '        jt_expedienteexport = NULL, '+
    '        jt_usuexport = NULL '+
    '  WHERE jt_id = '+SqlValue(FIdJuicioEnTramite));
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbFormularioAltaJuicioClick(
  Sender: TObject);
var
  sdqData: TSDQuery;
begin
  if ExisteSql(' SELECT 1 FROM legales.lod_origendemanda '+
               '  WHERE od_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+
               '    AND od_fechabaja IS NULL') then
  begin
    sdqData := GetQuery(
        ' SELECT od_id '+
        '   FROM legales.lod_origendemanda '+
        '  WHERE od_idjuicioentramite = '+SqlValue(FIdJuicioEnTramite)+
        '   AND od_fechabaja IS NULL ');
    try
      while not sdqData.Eof do
      begin
        with TrptAltaJuicio.Create(Self) do
        try
          ArmarQrp(FIdJuicioEnTramite,sdqData.FieldByName('od_id').AsInteger);
        finally
          Free;
        end;
        sdqData.Next;
      end;
    finally
      sdqData.Free;
    end;
  end
  else
    with TrptAltaJuicio.Create(Self) do
    try
      ArmarQrp(FIdJuicioEnTramite,0);
    finally
      Free;
    end;

end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbEnvioMailClick(
  Sender: TObject);
begin
  with TfrmMoldeEnvioMailEvento.Create(Self) do
  begin
    FormStyle := fsNormal;
    Visible := False;
    Cargar(FIdJuicioEnTramite);
    ShowModal;
  end;
  if sdqEventoJuicioEnTramite.Active then
    sdqEventoJuicioEnTramite.Refresh;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.lbRespuestaClick(
  Sender: TObject);
begin
  pnRespuesta.ShowModal;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.btRespuestaAceptarClick(
  Sender: TObject);
var
  textoareemplazar : String;
begin
  textoareemplazar := edRespuestaEvento.Text;
  ReplaceString( textoareemplazar,'<','');
  ReplaceString( textoareemplazar,'>','');
  edRespuestaEvento.Text := textoareemplazar;
  SaveBlob('SELECT et_respuesta ' +
           '  FROM legales.let_eventojuicioentramite ' +
           ' WHERE et_id = ' +  SqlValue(sdqEventoJuicioEnTramite.FieldByName('ET_ID').AsInteger),
           'UPDATE legales.let_eventojuicioentramite' +
           '   SET et_respuesta = :et_respuesta ' +
           ' WHERE et_id = ' +  SqlValue(sdqEventoJuicioEnTramite.FieldByName('ET_ID').AsInteger),
           'et_respuesta', edRespuestaEvento.Lines);
  pnRespuesta.ModalResult := mrOk;
end;

procedure TfrmAdminstracionJuicioParteDemandanda.tbReporteGestionInternaClick(
  Sender: TObject);
begin
  with TrptInformeGestion.Create(Self) do
  try
    MostrarPantalla(FIdJuicioEnTramite);
  finally
    free;
  end;
end;

end.



