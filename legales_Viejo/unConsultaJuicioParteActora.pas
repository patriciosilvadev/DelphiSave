unit unConsultaJuicioParteActora;

interface

uses
  Windows,   Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unConsultaJuiciosEnTramite, FieldHider, ShortCutControl,
  Placemnt, artSeguridad, QueryPrint, QueryToFile, ExportDialog, SortDlg,
  DB, SDEngine, Grids, DBGrids, RXDBCtrl, ArtComboBox, ArtDBGrid, ComCtrls,
  ToolWin, CurrEdit, ToolEdit, DateComboBox, PatternEdit,
  unfraAbogadosLegales, StdCtrls, unArtFrame, unArtDBAwareFrame,
  unABMSeguimientoJuiciosParteActora, unDmPrincipal, unConstLegales,
  unFraCodigoDescripcion, Mask, IntEdit, ExtCtrls, unfraCPR_PRESTADOR,
  unfraCtbTablas, unFraEmpresa, unArtDbFrame, unFraTrabajador, RxPlacemnt,
  RxCurrEdit, RxToolEdit;

type
  TfrmConsultaJuicioParteActora = class(TfrmConsultaJuiciosEnTramite)
    nbOrigenDemanda: TNotebook;
    pnTrabajador: TPanel;
    grpTrabajador: TGroupBox;
    fraTrabajadorOrigenDemanda: TfraTrabajador;
    pnEmpresaAfiliada: TPanel;
    GroupBox2: TGroupBox;
    lblCuitEmpresa: TLabel;
    fraEmpresaDemandante: TfraEmpresa;
    gbOrigenEmpresa: TGroupBox;
    lbCUIT: TLabel;
    lbRSocial: TLabel;
    edCuitEmpresa: TMaskEdit;
    edtRazonSocialEmpresa: TEdit;
    gbPersona: TGroupBox;
    lblCuil: TLabel;
    lblTipoDocumento: TLabel;
    lblDNI: TLabel;
    edCuilPersona: TMaskEdit;
    edNroDocumentoPersona: TPatternEdit;
    fraTipoDocumento: TfraCtbTablas;
    GroupBox6: TGroupBox;
    gbContratoOrigenDemandaPrestador: TGroupBox;
    fraEmpresaPrestador: TfraCPR_PRESTADOR;
    GroupBox8: TGroupBox;
    gbContratoOrigenDemandaProveedor: TGroupBox;
    fraEmpresaProveedor: TfraCPR_PRESTADOR;
    ShortCutControl1: TShortCutControl;
    chkDemInterruptiva: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure tbRefrescarClick(Sender: TObject);
    procedure tbLimpiarClick(Sender: TObject);
    procedure tbNuevoClick(Sender: TObject); override;
    procedure tbSalirClick(Sender: TObject);
  private
    sFrom: String;
    sSelect: String;
    sWhere: String;
    procedure CalcularFiltro(var from, where: String);
    procedure CalcularSelect(var Select: String);
  protected
    procedure ChangeReclamante(Sender: TObject); override;
    procedure DoCargaAdministracionJuicio(Sender: TObject); override;
  public
    { Public declarations }
  end;

var
  frmConsultaJuicioParteActora: TfrmConsultaJuicioParteActora;

implementation
{$R *.dfm}
uses
  Strfuncs, AnsiSql, unSesion, SDCommon;

const
  OD_TRABAJADOR = 0;
  OD_EMPRESAAFILIADA  = 1;
  OD_EMPRESA  = 2;
  OD_PERSONA = 3;
  OD_PRESTADOR = 4;
  OD_PROVEEDOR  = 5;

  REC_TRABAJADOR = 1;
  REC_DERECHOHABIENTE = 2;
  REC_FAMILIARNODERECHOHABIENTE = 3;
  REC_EMPRESA = 4;
  REC_PRESTADOR = 5;
  REC_EMPRESANOAFILIADA = 6;
  REC_PROVEEDOR = 7;
  REC_PERSONAFISICA = 8;



procedure TfrmConsultaJuicioParteActora.tbRefrescarClick(Sender: TObject);
begin
	sWhere  := '';
  sFrom   := '';
  sSelect := '';

  CalcularFiltro(sFrom, sWhere);
  CalcularSelect(sSelect);
  if (fraReclamante.IsSelected) then
  begin
    case nbOrigenDemanda.PageIndex of
      OD_TRABAJADOR      : begin
                           if fraTrabajadorOrigenDemanda.mskCUIL.Text <> '' then
                             sWhere := sWhere + ' AND LOD.OD_CUITCUIL = ' + SqlValue(fraTrabajadorOrigenDemanda.mskCUIL.Text);
                           end;
      OD_EMPRESAAFILIADA : begin
                           if fraEmpresaDemandante.IsSelected then
                             begin
                               if pos('SEX_EXPEDIENTES', sFrom) = 0 then
                                 sFrom := sFrom  + ', SEX_EXPEDIENTES EXPE ';

                             if pos('LSJ_SINIESTROSJUICIOENTRAMITE', sFrom) = 0 then
                               sFrom := sFrom  + ', legales.LSJ_SINIESTROSJUICIOENTRAMITE LSJ ';

                               sFrom := sFrom   + ' ,CTJ_TRABAJADORES, CMP_EMPRESAS ';
                               sWhere := sWhere + ' AND LOD.OD_ID = LSJ.SJ_IDORIGENDEMANDA ';
                               sWhere := sWhere + ' AND MP_CUIT = EX_CUIT';
                               sWhere := sWhere + ' AND TJ_CUIL = EX_CUIL';
                               sWhere := sWhere + ' AND EX_SINIESTRO = LSJ.sj_siniestro';
                               sWhere := sWhere + ' AND EXPE.ex_orden = LSJ.sj_orden';
                               sWhere := sWhere + ' AND EXPE.ex_recaida = LSJ.sj_recaida';
                               sWhere := sWhere + ' and MP_CUIT = ' + SqlValue(fraEmpresaDemandante.CUIT);
                             end;

                             if fraEmpresaDemandante.edContrato.Text <> '' then
                               sWhere := sWhere + ' AND OD_CONTRATO ='+ SqlValue(fraEmpresaDemandante.Contrato);
                             if fraEmpresaDemandante.CUIT <> '' then
                               sWhere := sWhere + ' AND OD_CUITCUIL ='+ SqlValue(fraEmpresaDemandante.CUIT);
                             if fraEmpresaDemandante.RazonSocial <> '' then
                               sWhere := sWhere + ' AND OD_NOMBRE ='+ SqlValue(fraEmpresaDemandante.RazonSocial);
                           end;
      OD_EMPRESA         : begin
                           if edCuitEmpresa.Text <> '' then
                             sWhere := sWhere + ' AND LOD.OD_CUITCUIL = ' + SqlValue(edCuitEmpresa.Text);
                           if edtRazonSocialEmpresa.Text <> '' then
                             sWhere := sWhere + ' AND LOD.OD_NOMBRE = ' + SqlValue(edtRazonSocialEmpresa.Text);
                           end;
      OD_PERSONA         : begin
                           if edCuilPersona.Text <> '' then
                             sWhere := sWhere + ' AND LOD.OD_CUITCUIL = ' + SqlValue(edCuilPersona.Text);
                           if fraTipoDocumento.Codigo <> '' then
                             sWhere := sWhere + ' AND LOD.OD_IDTIPODOCUMENTO = ' + SqlValue(fraTipoDocumento.Codigo);
                           if edNroDocumentoPersona.Text <> '' then
                             sWhere := sWhere + ' AND LOD.OD_NUMERODOCUMENTO = ' + SqlValue(edNroDocumentoPersona.Text);
                           end;
      OD_PRESTADOR       : begin
                           if fraEmpresaPrestador.mskCA_CLAVE.Text <> '' then
                             sWhere := sWhere + ' AND OD_CUITCUIL = '+SqlValue(fraEmpresaPrestador.CUIT);
                           if fraEmpresaPrestador.cmbCA_DESCRIPCION.Text <> '' then
                             sWhere := sWhere + ' AND OD_NOMBRE = '+SqlValue(fraEmpresaPrestador.RazonSocial);
                           end;
      OD_PROVEEDOR       : begin
                           if fraEmpresaProveedor.mskCA_CLAVE.Text <> '' then
                             sWhere := sWhere + ' AND OD_CUITCUIL = '+SqlValue(fraEmpresaProveedor.CUIT);
                           if fraEmpresaProveedor.cmbCA_DESCRIPCION.Text <> '' then
                             sWhere := sWhere + ' AND OD_NOMBRE = '+SqlValue(fraEmpresaProveedor.RazonSocial);
                           end;
    end;
  end;
  if chkDemInterruptiva.Checked then
    sWhere := sWhere + ' AND JT_DEMINTERRUPTIVA = ''S'' ';
  sdqConsulta.SQL.Text :=
  	'SELECT DISTINCT decode(JT_ESTADOMEDIACION, ''M'', ''Mediaci�n'', ''AM'', ''Mediaci�n-Juicio'', ''Juicio Parte Actora'') MediacionJuicio,' +
    							 ' ljt_juicioentramite.jt_demandante, ljt_juicioentramite.jt_demandado,' +
                   ' ljt_juicioentramite.jt_caratula, lju_jurisdiccion.ju_descripcion, lfu_fuero.fu_descripcion,' +
                   ' ljz_juzgado.jz_descripcion, lin_instancia.in_descripcion, lsc_secretaria.sc_descripcion,' +
                   ' ljt_juicioentramite.jt_idfuero, ljt_juicioentramite.jt_idjuzgado,' +
                   ' ljt_juicioentramite.jt_idsecretaria, ljt_juicioentramite.jt_idjurisdiccion,' +
                   ' ljt_juicioentramite.jt_id, ljt_juicioentramite.jt_usubaja, ljt_juicioentramite.jt_usumodif,' +
                   ' ljt_juicioentramite.jt_fechamodif, ljt_juicioentramite.jt_usualta,' +
                   ' ljt_juicioentramite.jt_fechaalta, ljt_juicioentramite.jt_descripcion,' +
                   ' ljt_juicioentramite.jt_importereserva, ljt_juicioentramite.jt_importereservahonorarios,' +
                   ' ljt_juicioentramite.jt_fechaasign, jt_nroexpediente||nvl2(jt_anioexpediente,''/''|| jt_anioexpediente,'''') jt_expediente,' +
                   ' ljt_juicioentramite.jt_resultado, ljt_juicioentramite.jt_fechafinjuicio,' +
                   ' ljt_juicioentramite.jt_idtipo, ljt_juicioentramite.jt_fechanotificacionjuicio,' +
                   ' ljt_juicioentramite.jt_idestado, ljt_juicioentramite.jt_idabogado,' +
                   ' ljt_juicioentramite.jt_registracion, ljt_juicioentramite.jt_importedemandado,' +
                   ' ljt_juicioentramite.JT_IMPORTESENTENCIA, ljt_juicioentramite.jt_fechaingreso,' +
                   ' ljt_juicioentramite.jt_bloqueado, ljt_juicioentramite.jt_usuariobloquea, lbo_abogado.bo_nombre,' +
                   ' lej_estadojuicio.ej_descripcion, ljt_juicioentramite.JT_RESERVAHONORARIOCALCULADA,' +
                   ' ljt_juicioentramite.JT_RESERVACAPITALCALCULADA, ljt_juicioentramite.JT_JUICIONOSINIESTRO,' +
                   ' ljt_juicioentramite.jt_fecharecepsentencia, ljt_juicioentramite.JT_FECHAAPROBACIONRESERVAS,' +
                   ' ljt_juicioentramite.JT_NUMEROCARPETA ' + sSelect +
    					' FROM legales.ljt_juicioentramite, legales.lju_jurisdiccion, legales.lfu_fuero, legales.ljz_juzgado,' +
              		 ' legales.lin_instancia, legales.lsc_secretaria, legales.lbo_abogado, legales.lnu_nivelusuario,' +
                   ' legales.lej_estadojuicio ' + sFrom  +
    				 ' WHERE ((ljt_juicioentramite.jt_idjurisdiccion = lju_jurisdiccion.ju_id(+))' +
               ' AND (ljt_juicioentramite.jt_idfuero        = lfu_fuero.fu_id(+))' +
               ' AND (ljt_juicioentramite.jt_idjuzgado      = ljz_juzgado.jz_id(+))' +
               ' AND (lin_instancia.in_id(+)                   = ljz_juzgado.jz_idinstancia)' +
               ' AND (ljt_juicioentramite.jt_idsecretaria   = lsc_secretaria.sc_id(+))' +
               ' AND (ljt_juicioentramite.jt_idabogado      = lbo_abogado.bo_id(+))' +
               ' AND (ljt_juicioentramite.jt_idestado       = lej_estadojuicio.ej_id(+))' +
               ' AND (ljt_juicioentramite.jt_idnivelseguridad <= lnu_nivelusuario.nu_idnivelseguridad)' +
               ' AND (LJT_JUICIOENTRAMITE.JT_ESTADOMEDIACION LIKE ''%A%'') '+
               ' AND (lnu_nivelusuario.nu_usuario = ' + SqlValue(Sesion.LoginName) + ')) ' + sWhere;

	sdqConsulta.SQL.Add(SortDialog.OrderBy);

  inherited;

  CalcularSumatoria;
  if (Assigned(Sender)) and (sdqConsulta.RecordCount = 1) and (tbModificar.Enabled) then
  	DoCargaAdministracionJuicio(nil);

end;

procedure TfrmConsultaJuicioParteActora.tbLimpiarClick(Sender: TObject);
begin
  inherited;
  edNroExpediente.Clear;
  edAnioExpediente.Clear;
  edExpedienteExport.Clear;
//  edNombrePersona.Text := '';
//  edCuil.Text := '';
  fraEmpresaDemandante.Clear;
end;

procedure TfrmConsultaJuicioParteActora.CalcularFiltro(var from,
  where: String);
begin
////*********************** GENERAL ********************** //////
  if not IsEmptyString(edNroCarpeta.Text) then
  begin
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_NUMEROCARPETA = ' +  edNroCarpeta.Text + #13#10;
    Exit;
  end;

  if not (chkJuicios.checked and chkMediaciones.checked) then
  begin
    if chkJuicios.checked then
      Where := Where + ' AND (LJT_JUICIOENTRAMITE.JT_ESTADOMEDIACION = ''J'' OR LJT_JUICIOENTRAMITE.JT_ESTADOMEDIACION = ''JM'') ';

    if chkMediaciones.checked then
      Where := Where + ' AND (LJT_JUICIOENTRAMITE.JT_ESTADOMEDIACION = ''M'' OR LJT_JUICIOENTRAMITE.JT_ESTADOMEDIACION = ''JM'') ';
  end;

  if chkBloqueado.Checked then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.jt_bloqueado = ''S'' ';

  if fraTipoMediacion.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDTIPOMEDIACION=' + fraTipoMediacion.Codigo;

  if fraTipoJuicio.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDTIPO=' + fraTipoJuicio.Codigo  + #13#10;

  if fraEstado.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDESTADO=' + fraEstado.Codigo  + #13#10;

  if not IsEmptyString(edDemandante.Text) then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_demandante LIKE ''%' + edDemandante.Text + '%''';

  if not IsEmptyString(edDemandado.Text) then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_DEMANDADO LIKE ''%' + edDemandado.Text + '%''';

  if not IsEmptyString(edCARATULA.Text) then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_CARATULA LIKE ''%' + edCARATULA.Text + '%''';

  if fraAbogadosPropios.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDABOGADO=' + fraAbogadosPropios.Codigo;


  if fraAbogadosParteActora.IsSelected then
  begin
    //Join con origen demanda;
    From := From + ', LEGALES.LOD_ORIGENDEMANDA LOD ,LEGALES.LBO_ABOGADO LBOA ';
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_ID = LOD.OD_IDJUICIOENTRAMITE ' + #13#10;
    Where := Where + ' AND LOD.OD_IDABOGADO = LBOA.BO_ID ' + #13#10;
    Where := Where + ' AND LOD.OD_IDABOGADO = ' + fraAbogadosParteActora.Codigo  + #13#10;
  end;

  if fraJurisdiccion.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDJURISDICCION=' + fraJurisdiccion.Codigo;

  if fraFuero.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDFUERO=' + fraFuero.Codigo;

  if fraJuzgado.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDJUZGADO=' + fraJuzgado.Codigo;

  if fraSecretaria.IsSelected then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_IDSECRETARIA=' + fraSecretaria.Codigo;


  if not IsEmptyString(edNroExpediente.Text)  then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_NROEXPEDIENTE=' + SqlString(edNroExpediente.Text, true);

  if not IsEmptyString(edAnioExpediente.Text)  then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_ANIOEXPEDIENTE=' + SqlString(edAnioExpediente.Text, true);

  if not IsEmptyString(edExpedienteExport.Text)  then
    Where := Where + ' AND NVL(jt_expedienteexport, LPAD(NVL(sc_codigosrt, ''0''), 4, 0) || ''-'' || '+
                     '     LPAD(NVL(REPLACE(jt_nroexpediente, ''-'', ''''), jt_numerocarpeta), 10, 0) '+
                     '     || ''/'' || LPAD(NVL(jt_anioexpediente, TO_CHAR(NVL(jt_fechaingreso, '+
                     '     jt_fechanotificacionjuicio), ''YY'')), 2, 0)) = ' + SqlValue(edExpedienteExport.Text);

  if not CmbIniDde.IsEmpty then
  begin
    if not CmbIniHta.IsEmpty then
    	Where := Where + ' AND ' + SqlBetween('LJT_JUICIOENTRAMITE.jt_fechanotificacionjuicio', CmbIniDde.Date, CmbIniHta.Date)
    else
    	Where := Where + ' AND ' + SqlBetween('LJT_JUICIOENTRAMITE.jt_fechanotificacionjuicio', CmbIniDde.Date, 0);
  end
  else
    if not CmbIniHta.IsEmpty then
    	Where := Where + ' AND ' + SqlBetween('LJT_JUICIOENTRAMITE.jt_fechanotificacionjuicio', 0, CmbIniHta.Date);

  if chkFechadeCierre.Checked then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_FECHAFINJUICIO IS NULL ' + #13#10
  else if not CmbCierreDde.IsEmpty  then
  begin
  	if not CmbCierreHta.IsEmpty then
    	Where := Where + ' AND ' + SqlBetween('LJT_JUICIOENTRAMITE.JT_FECHAFINJUICIO ',CmbCierreDde.Date, CmbCierreHta.Date)
    else
			Where := Where + ' AND ' + SqlBetween('LJT_JUICIOENTRAMITE.JT_FECHAFINJUICIO ',CmbCierreDde.Date, 0);
  end
  else if not CmbCierreHta.IsEmpty then
    Where := Where + ' AND ' + SqlBetween('LJT_JUICIOENTRAMITE.JT_FECHAFINJUICIO ', 0, CmbCierreHta.Date);

  if chkSinAbogadoDesignado.Checked then
    Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_FECHAASIGNACION IS NULL ' + #13#10
  else if not edFechaAsignDesde.IsEmpty then
  begin
  	if not edFechaAsignHasta.IsEmpty then
      Where := Where + SqlBetween( ' AND LJT_JUICIOENTRAMITE.JT_FECHAASIGNACION ', edFechaAsignDesde.Date, edFechaAsignHasta.Date)
    else
      Where := Where + SqlBetween( ' AND LJT_JUICIOENTRAMITE.JT_FECHAASIGNACION ', edFechaAsignDesde.Date, 0);
  end
  else if not edFechaAsignHasta.IsEmpty then
  	Where := Where + SqlBetween( ' AND LJT_JUICIOENTRAMITE.JT_FECHAASIGNACION ', 0, edFechaAsignHasta.Date);

  //Fecha desde hasta corresponde a las fechas de inicio de citas-.!!!!
  if not dcbFechaCitaDesde.IsEmpty then
  begin
    if not dcbFechaCitaHasta.IsEmpty then
    begin
      Where := Where + SqlBetween( ' AND lja_juicioentramiteagenda.ja_fechainicio ', dcbFechaCitaDesde.Date, dcbFechaCitaHasta.Date) + ' and lja_juicioentramiteagenda.ja_idnrojuicio = LJT_JUICIOENTRAMITE.jt_id(+) ';
      From := From + ', legales.lja_juicioentramiteagenda';
    end
    else
    begin
      Where := Where + SqlBetween( ' AND lja_juicioentramiteagenda.ja_fechainicio ', dcbFechaCitaDesde.Date, 0) +
                                   ' and lja_juicioentramiteagenda.ja_idnrojuicio = LJT_JUICIOENTRAMITE.jt_id(+) ';
      From := From + ', legales.lja_juicioentramiteagenda';
    end;
  end
  else if not dcbFechaCitaHasta.IsEmpty then
  begin
  	Where := Where + SqlBetween( ' AND lja_juicioentramiteagenda.ja_fechainicio ', 0, dcbFechaCitaHasta.Date) +
                                 ' and lja_juicioentramiteagenda.ja_idnrojuicio = LJT_JUICIOENTRAMITE.jt_id(+) ';
    From := From + ', legales.lja_juicioentramiteagenda';
  end;

  Where := Where + SqlBetween(' AND LJT_JUICIOENTRAMITE.JT_IMPORTESENTENCIA ', edImpReclaDesde.Value, edImpReclaHasta.Value);
  Where := Where + SqlBetween(' AND LJT_JUICIOENTRAMITE.JT_IMPORTEDEMANDADO ', edImpDemaDesde.Value, edImpDemaHasta.Value);

  if fraEmpresaDemandante.IsSelected or
     fraReclamante.IsSelected or
     fraEmpresaFiltro.IsSelected or
     not IsEmptyString(edSiniestro.Text) then
  begin
    if pos('LOD_ORIGENDEMANDA', From) = 0 then
    begin
      From := From + ', LEGALES.LOD_ORIGENDEMANDA LOD ';
      Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_ID = LOD.OD_IDJUICIOENTRAMITE ';
    end;
  end;

  if fraReclamo.IsSelected then
  begin
    if pos('LRT_RECLAMOJUICIOENTRAMITE', From) = 0 then
    begin
      From := From + ', LEGALES.LRT_RECLAMOJUICIOENTRAMITE LRT';
      Where := Where + ' AND LJT_JUICIOENTRAMITE.JT_ID = LRT.RT_IDJUICIOENTRAMITE AND LRT.RT_IDRECLAMO = ' + SqlValue(fraReclamo.Codigo);
    end;
  end;

  if fraEmpresaFiltro.IsSelected then
    Where := Where + ' AND od_id IN ( SELECT sj_idorigendemanda FROM legales.lsj_siniestrosjuicioentramite, '+
                     '           art.sex_expedientes WHERE ex_cuit = '+SqlValue(fraEmpresaFiltro.CUIT)+
                     '           AND sj_orden = ex_orden AND sj_recaida = ex_recaida AND sj_siniestro = ex_siniestro '+
                     '           AND SJ_FECHABAJA IS NULL) AND od_fechabaja IS NULL ';

  if fraReclamante.IsSelected then
  	Where := Where + ' AND LOD.OD_IDRECLAMANTE = ' + SqlValue(fraReclamante.Codigo);

  if fraReclamo.IsSelected then
  	Where := Where + ' AND LRT.RT_IDRECLAMO = ' + SqlValue(fraReclamo.Codigo);

  if not IsEmptyString(edSiniestro.Text) then
  begin
    From := From   + ' ,SEX_EXPEDIENTES EXPE, LEGALES.LSJ_SINIESTROSJUICIOENTRAMITE LSJ ';
    where := Where + ' AND LOD.OD_ID = LSJ.SJ_IDORIGENDEMANDA AND EXPE.EX_SINIESTRO = LSJ.sj_siniestro AND EXPE.EX_SINIESTRO = ' + SqlValue(edSiniestro.Text);
  end;
{
  if fraEmpresaDemandante.IsSelected then
  begin
    if pos('SEX_EXPEDIENTES', From) = 0 then
      from := from  + ', SEX_EXPEDIENTES EXPE ';

    if pos('LSJ_SINIESTROSJUICIOENTRAMITE', From) = 0 then
      from := from  + ', legales.LSJ_SINIESTROSJUICIOENTRAMITE LSJ ';

    From := From   + ' ,CTJ_TRABAJADORES, CMP_EMPRESAS ';
    where := Where + ' AND LOD.OD_ID = LSJ.SJ_IDORIGENDEMANDA ';
    where := Where + ' AND MP_CUIT = EX_CUIT';
    where := Where + ' AND TJ_CUIL = EX_CUIL';
    where := Where + ' AND EX_SINIESTRO = LSJ.sj_siniestro';
    where := Where + ' AND EXPE.ex_orden = LSJ.sj_orden';
    where := Where + ' AND EXPE.ex_recaida = LSJ.sj_recaida';
    where := where + ' and MP_CUIT = ' + SqlValue(fraEmpresaDemandante.CUIT);
  end;
}
	if (fraTipoEvento.IsSelected) or
     (not edFechaEventodde.IsEmpty) or
     (not edFechaEventohta.IsEmpty) or
     (not edFechaVencEventodde.IsEmpty) or
     (not edFechaVencEventohta.IsEmpty) or
     (not edFechaCargaEventodde.IsEmpty) or
     (not edFechaCargaEventohta.IsEmpty) then
	begin
  	from := from  + ', legales.let_eventojuicioentramite, legales.lte_tipoevento ';

    where := Where + ' AND ((legales.let_eventojuicioentramite.et_idjuicioentramite = LJT_JUICIOENTRAMITE.jt_id) ' +
                     ' AND (let_eventojuicioentramite.et_idtipoevento =  legales.lte_tipoevento.te_id) ' +
                     ' AND (legales.let_eventojuicioentramite.et_fechabaja is null)) ' ;

    if fraTipoEvento.IsSelected then
    	Where := Where + ' AND (let_eventojuicioentramite.et_idtipoevento = ' + SqlValue(fraTipoEvento.Value)  + ') ';

    if not edFechaEventodde.IsEmpty then
    begin
    	if not edFechaEventohta.IsEmpty then
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechaevento ', edFechaEventodde.Date, edFechaEventohta.Date)
      else
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechaevento ', edFechaEventodde.Date, 0);
    end
    else
    	if not edFechaEventohta.IsEmpty then
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechaevento ', 0, edFechaEventohta.Date);

    if not edFechaVencEventodde.IsEmpty then
    begin
    	if not edFechaVencEventohta.IsEmpty then
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechavencimiento ', edFechaVencEventodde.Date, edFechaVencEventohta.Date)
      else
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechavencimiento ', edFechaVencEventodde.Date, 0);
    end
    else
    	if not edFechaVencEventohta.IsEmpty then
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechavencimiento ', 0, edFechaVencEventohta.Date);

    if not edFechaCargaEventodde.IsEmpty then
    begin
    	if not edFechaCargaEventohta.IsEmpty then
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechaalta ', edFechaCargaEventodde.Date, edFechaCargaEventohta.Date)
      else
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechaalta ', edFechaCargaEventodde.Date, 0);
    end
    else
    	if not edFechaCargaEventohta.IsEmpty then
      	Where := Where + SqlBetween(' AND legales.let_eventojuicioentramite.et_fechaalta ', 0, edFechaCargaEventohta.Date);
	end;
end;

procedure TfrmConsultaJuicioParteActora.CalcularSelect(var Select: String);
var
  sWhere: String;
begin
  if (not fraTipoEvento.IsSelected) and
     (edFechaEventodde.IsEmpty) and
     (edFechaEventohta.IsEmpty) and
     (edFechaVencEventodde.IsEmpty) and
     (edFechaVencEventohta.IsEmpty) and
     (edFechaCargaEventodde.IsEmpty) and
     (edFechaCargaEventohta.IsEmpty) then
  begin
  	Select := Select +   ', (SELECT LTE.te_descripcion ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND LET.et_fechaevento = (SELECT MAX(LET2.et_fechaevento) ' +
                         '                  FROM legales.let_eventojuicioentramite LET2 ' +
                         '                  WHERE LET2.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '                  AND LET2.et_fechabaja IS NULL) ' +
                         '  AND ROWNUM = 1 ' +
                         ' ) Evento ';

    Select := Select +   ', (SELECT LET.et_fechaevento ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND LET.et_fechaevento = (SELECT MAX(LET2.et_fechaevento) ' +
                         '                  FROM legales.let_eventojuicioentramite LET2 ' +
                         '                  WHERE LET2.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '                  AND LET2.et_fechabaja IS NULL) ' +
                         '  AND ROWNUM = 1 ' +
                         ' ) FechaEvento ';

    Select := Select +   ', (SELECT LET.et_fechavencimiento ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND LET.et_fechaevento = (SELECT MAX(LET2.et_fechaevento) ' +
                         '                  FROM legales.let_eventojuicioentramite LET2 ' +
                         '                  WHERE LET2.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '                  AND LET2.et_fechabaja IS NULL) ' +
                         '  AND ROWNUM = 1 ' +
                         ' ) FechaVencEvento ';

    Select := Select +   ', (SELECT LET.et_fechaalta ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND LET.et_fechaevento = (SELECT MAX(LET2.et_fechaevento) ' +
                         '                  FROM legales.let_eventojuicioentramite LET2 ' +
                         '                  WHERE LET2.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '                  AND LET2.et_fechabaja IS NULL) ' +
                         '  AND ROWNUM = 1 ' +
                         ' ) FechaCargaEvento ';

(*
                         '  AND LET.et_id = (SELECT MAX(LET2.et_id) ' +
                         '                  FROM legales.let_eventojuicioentramite LET2 ' +
                         '                  WHERE LET2.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '                  AND LET2.et_fechabaja IS NULL) ' +
                         ' ) Evento ';
*)
	end
  else
  begin
    if fraTipoEvento.IsSelected then
    	sWhere := sWhere + ' AND (LET.et_idtipoevento = ' + SqlValue(fraTipoEvento.Value)  + ') ';

    if not edFechaEventodde.IsEmpty then
    begin
    	if not edFechaEventohta.IsEmpty then
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechaevento ', edFechaEventodde.Date, edFechaEventohta.Date)
      else
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechaevento ', edFechaEventodde.Date, 0);
    end
    else
    	if not edFechaEventohta.IsEmpty then
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechaevento ', 0, edFechaEventohta.Date);

    if not edFechaVencEventodde.IsEmpty then
    begin
    	if not edFechaVencEventohta.IsEmpty then
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechavencimiento ', edFechaVencEventodde.Date, edFechaVencEventohta.Date)
      else
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechavencimiento ', edFechaVencEventodde.Date, 0);
    end
    else
    	if not edFechaVencEventohta.IsEmpty then
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechavencimiento ', 0, edFechaVencEventohta.Date);

    if not edFechaCargaEventodde.IsEmpty then
    begin
    	if not edFechaCargaEventohta.IsEmpty then
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechaalta ', edFechaCargaEventodde.Date, edFechaCargaEventohta.Date)
      else
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechaalta ', edFechaCargaEventodde.Date, 0);
    end
    else
    	if not edFechaCargaEventohta.IsEmpty then
      	sWhere := sWhere + SqlBetween(' AND LET.et_fechaalta ', 0, edFechaCargaEventohta.Date);

    Select := Select +   ', (SELECT LTE.te_descripcion ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND rownum = 1 ';
    Select := Select + sWhere + ' ) Evento ';

    Select := Select +   ', (SELECT LET.et_fechaevento ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND rownum = 1 ';
    Select := Select + sWhere + ' ) FechaEvento ';

    Select := Select +   ', (SELECT LET.et_fechavencimiento ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND rownum = 1 ';
    Select := Select + sWhere + ' ) FechaVencEvento ';

    Select := Select +   ', (SELECT LET.et_fechaalta ' +
                         '  FROM legales.lte_tipoevento LTE, legales.let_eventojuicioentramite LET ' +
                         '  WHERE LET.et_idjuicioentramite = ljt_juicioentramite.jt_id ' +
                         '  AND LTE.te_id = LET.et_idtipoevento ' +
                         '  AND LET.et_fechabaja IS NULL ' +
                         '  AND rownum = 1 ';
    Select := Select + sWhere + ' ) FechaCargaEvento ';
  end;
end;

procedure TfrmConsultaJuicioParteActora.FormCreate(Sender: TObject);
begin
  inherited;
  fraEmpresaDemandante.ShowBajas := True;
  with fraTipoEvento do
  begin
    TableName   := 'legales.lte_tipoevento';
    FieldID     := 'te_id';
    FieldCodigo := 'te_id';
    FieldDesc   := 'te_descripcion';
    FieldBaja   := 'te_fechabaja';
    ExtraCondition := ' AND te_etapa like ''%A%''';
    Showbajas   := False;
  end;
  fraTipoDocumento.Clave := 'TDOC';
  fraEstado.ExtraCondition := ' AND ej_etapa LIKE ''%A%''';
  fraReclamo.ExtraCondition := ' AND RC_ETAPA like ''%A%'''; 
end;

procedure TfrmConsultaJuicioParteActora.tbNuevoClick(Sender: TObject);
begin
  with TfrmAdminstracionJuicioParteActora.Create(Self) do
  try
    if AltaJuicio then
    begin
      if sdqConsulta.Active then
        sdqConsulta.Refresh;
    end;
  finally
    Free;
  end;
end;

procedure TfrmConsultaJuicioParteActora.DoCargaAdministracionJuicio(
  Sender: TObject);
begin
  if not sdqConsulta.IsEmpty then
  begin
    with TfrmAdminstracionJuicioParteActora.Create(Self) do
    try
      sdqModificacionRegistro.ParamByName('jt_id').AsInteger := sdqConsulta.FieldByName('jt_id').AsInteger;
      try
        sdqModificacionRegistro.Open;

        Modificacion(sdqModificacionRegistro);

      except
        on E : ESDEngineError do
        begin
          if E.NativeError = 54 then
          begin
            Rollback(true);
            MessageDlg('El registro est� siendo utilizado por el usuario ' + GetInfoBloqueo(sdqConsulta.FieldByName('jt_id').AsInteger, 'J') + '.' + #13#10 + 'Por esa raz�n no podr� guardar ning�n cambio.', mtWarning, [mbOK], 0);
            sdqConsultaRegistro.ParamByName('jt_id').AsInteger := sdqConsulta.FieldByName('jt_id').AsInteger;
            sdqConsultaRegistro.Open;
            ConsultarJuicio(sdqConsultaRegistro);
          end;
        end;
      end;
    finally
      sdqModificacionRegistro.Close;
      sdqConsultaRegistro.Close;
      sdqConsulta.Refresh;
      Free;
    end;
  end;
end;

procedure TfrmConsultaJuicioParteActora.tbSalirClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmConsultaJuicioParteActora.ChangeReclamante(Sender: TObject);
var
  Reclamante: Integer;
begin
  if fraReclamante.IsSelected then
  begin
    nbOrigenDemanda.Enabled := true;
    Reclamante := strtoint(fraReclamante.Codigo);
    case Reclamante of
      REC_TRABAJADOR                : nbOrigenDemanda.PageIndex := OD_TRABAJADOR;
      REC_DERECHOHABIENTE           : nbOrigenDemanda.PageIndex := OD_PERSONA;
      REC_FAMILIARNODERECHOHABIENTE : nbOrigenDemanda.PageIndex := OD_PERSONA;
      REC_EMPRESA                   : nbOrigenDemanda.PageIndex := OD_EMPRESAAFILIADA;
      REC_EMPRESANOAFILIADA         : nbOrigenDemanda.PageIndex := OD_EMPRESA;
      REC_PRESTADOR                 : nbOrigenDemanda.PageIndex := OD_PRESTADOR;
      REC_PROVEEDOR                 : nbOrigenDemanda.PageIndex := OD_PROVEEDOR;
      REC_PERSONAFISICA             : nbOrigenDemanda.PageIndex := OD_PERSONA;
    end;
   end else
     nbOrigenDemanda.Enabled := false;
end;

end.
