unit unConsultaPagosLiquidacion;

interface

uses
  {$IFNDEF VER150}rxCurrEdit, rxToolEdit, rxPlacemnt, {$ELSE}CurrEdit, ToolEdit, Placemnt, {$ENDIF}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCustomConsulta, FieldHider, ShortCutControl,
  artSeguridad, QueryPrint, QueryToFile, ExportDialog, SortDlg, DB,
  SDEngine, Grids, DBGrids, RXDBCtrl, ArtComboBox, ArtDBGrid, ComCtrls,
  ToolWin, ExtCtrls, Mask, PatternEdit, IntEdit, unArtFrame,
  unArtDBAwareFrame, unFraCodigoDescripcion, unfraCodigoDescripcionExt,
  StdCtrls, FormPanel, DateComboBox, unGrids;

type
  TModo = (mJuicioDemandada, mJuicioActora, mMediacion, mSumario);

  TfrmConsultaLiquidacionPagos = class(TfrmCustomConsulta)
    ShortCutControl1: TShortCutControl;
    fpCambiarPreventor: TFormPanel;
    btnAceptarCambioPreventor: TButton;
    btnCancelarCambioPreventor: TButton;
    gbCopias: TGroupBox;
    lblCantidadCopias: TLabel;
    lblLiquidacion: TLabel;
    udCantidadReciboLiquidacion: TUpDown;
    edCantidadCopiasReciboLiquidacion: TIntEdit;
    udCantidadLiquidacion: TUpDown;
    edCantidadCopiasLiquidacion: TIntEdit;
    tbAprobacionPagos: TToolButton;
    cbPagosBloqueados: TCheckBox;
    cbPendientesDeAprobacion: TCheckBox;
    cbAprobadas: TCheckBox;
    cbConceptoDuplicado: TCheckBox;
    edEtapa: TIntEdit;
    lblEtapa: TLabel;
    Label1: TLabel;
    edNroLiquidacion: TIntEdit;
    edEmisionHasta: TDateComboBox;
    Label2: TLabel;
    edEmisionDesde: TDateComboBox;
    Label3: TLabel;
    edVencimientoHasta: TDateComboBox;
    Label4: TLabel;
    edVencimientoDesde: TDateComboBox;
    edAprobadoHasta: TDateComboBox;
    Label5: TLabel;
    edAprobadoDesde: TDateComboBox;
    Label6: TLabel;
    Label7: TLabel;
    edNumeroCheque: TIntEdit;
    sdqConsultaID: TFloatField;
    sdqConsultaIDBENEFICIARIO: TFloatField;
    sdqConsultaBENEFICIARIO: TFloatField;
    sdqConsultaTIPOBENEFICIARIO: TStringField;
    sdqConsultaCUITCUIL: TStringField;
    sdqConsultaPAGUESEA: TStringField;
    sdqConsultaCHEQUENOMBRE: TStringField;
    sdqConsultaUSUEMISION: TStringField;
    sdqConsultaFECHAEMISION: TDateTimeField;
    sdqConsultaFECHAVENCIMIENTO: TDateTimeField;
    sdqConsultaUSUARIOAPROBADO: TStringField;
    sdqConsultaFECHAAPROBADO: TDateTimeField;
    sdqConsultaIMPORTESINRETENCION: TFloatField;
    sdqConsultaIMPORTECONRETENCION: TFloatField;
    sdqConsultaSELECTED: TStringField;
    sdqConsultaDETALLE: TStringField;
    pnAprobacionConDup: TFormPanel;
    lbMotivo: TLabel;
    btnAceptarAprobConDup: TButton;
    btnCancelarAprobConDup: TButton;
    gbAprobacion: TGroupBox;
    cbAprobadoConDup: TCheckBox;
    cbRechazadoConDup: TCheckBox;
    edMotivo: TMemo;
    tbAprobacionduplicadosMultiple: TToolButton;
    sdqConsultaPAGOEXCLUSIVO: TStringField;
    plTotalesLiquidacion: TPanel;
    lbSumatoriaTotal: TLabel;
    procedure tbRefrescarClick(Sender: TObject);
    procedure tbNuevoClick(Sender: TObject);
    procedure tbModificarClick(Sender: TObject);
    procedure tbImprimirClick(Sender: TObject);
    procedure btnAceptarCambioPreventorClick(Sender: TObject);
    procedure GridCellClick(Column: TColumn);
    procedure FSFormDestroy(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure tbAprobacionPagosClick(Sender: TObject);
    procedure tbLimpiarClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure FSFormKeyPress(Sender: TObject; var Key: Char);
    procedure tbAprobacionduplicadosMultipleClick(Sender: TObject);
    procedure btnAceptarAprobConDupClick(Sender: TObject);
  private
    {$IFDEF VER150}
    Bookmark: TBookmarkStr;
    {$ELSE}
    Bookmark: TBookmark;
    {$ENDIF}
    FModoForm: TModo;
    sBarCode : String;
    SelectedList: TBookMarkLst;
    procedure SetModoForm(const Value: TModo);
    function IsBloqueada: Boolean;
    procedure ValidarSeleccion;
    procedure AprobarPago;
    { Private declarations }
  public
    { Public declarations }
    property ModoForm: TModo read FModoForm write SetModoForm;
  end;

var
  frmConsultaLiquidacionPagos: TfrmConsultaLiquidacionPagos;

implementation

uses
  unPagosLegales,vclExtra, unDmPrincipal, CustomDlgs, CUIT, StrFuncs, AnsiSql,
  unSesion, unRptReciboLiquidacionMultiple, unRptLiquidacionLegalesMultiples,
  Math, unLegales;

{$R *.dfm}

procedure TfrmConsultaLiquidacionPagos.SetModoForm(const Value: TModo);
begin
  FModoForm := Value;
  if FModoForm = mJuicioDemandada then
  begin
    Caption := 'Consulta Pagos Liquidaci�n Juicio Parte Demandada';
    lblEtapa.Caption := 'Juicio:';
    Name := 'frmLiquidacionesMultiplesDemandada';
  end;
  if FModoForm = mJuicioActora then
  begin
    Caption := 'Consulta Pagos Liquidaci�n Juicio Parte Actora';
    lblEtapa.Caption := 'Juicio:';
    Name := 'frmLiquidacionesMultiplesActora';
  end;
  if FModoForm = mMediacion then
  begin
    Caption := 'Consulta Pagos Liquidaci�n Mediaci�n';
    cbPagosBloqueados.Visible := False;
    lblEtapa.Caption := 'Mediaci�n:';
    Name := 'frmLiquidacionesMultiplesMediacion';
  end;
  if FModoForm = mSumario then
  begin
    Caption := 'Consulta Pagos Liquidaci�n Sumario';
    cbPagosBloqueados.Visible := False;
    lblEtapa.Caption := 'Sumario:';
    Name := 'frmLiquidacionesMultiplesSumario';
  end;
  Seguridad.Ejecutar;
end;

procedure TfrmConsultaLiquidacionPagos.tbRefrescarClick(Sender: TObject);
var
  sSql, Filtros : String;
begin

  if (FModoForm = mJuicioDemandada) or (FModoForm = mJuicioActora) then
  begin
    if not (cbPendientesDeAprobacion.Checked and cbAprobadas.Checked) then
    begin
      if cbPendientesDeAprobacion.Checked then
        Filtros := Filtros + ' AND lj_fechaaprobado IS NULL ';

      if cbAprobadas.Checked then
        Filtros := Filtros + ' AND lj_fechaaprobado IS NOT NULL ';
    end;

    if (not edEmisionDesde.IsEmpty) and (not edEmisionHasta.IsEmpty) then
      Verificar(
          edEmisionDesde.Date > edEmisionHasta.Date,
          edEmisionHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edEmisionDesde.IsEmpty) and (not edEmisionHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (lj_fechaemision BETWEEN ' + SqlValue(edEmisionDesde.Date)
          + '      AND ' + SqlValue(edEmisionHasta.Date) + '+1)'
    else if not edEmisionDesde.IsEmpty then
      Filtros := Filtros + ' AND lj_fechaemision >= ' + SqlValue(edEmisionDesde.Date)
    else if not edEmisionHasta.IsEmpty then
      Filtros := Filtros + ' AND lj_fechaemision <= ' + SqlValue(edEmisionHasta.Date);

    if (not edVencimientoDesde.IsEmpty) and (not edVencimientoHasta.IsEmpty) then
      Verificar(
          edVencimientoDesde.Date > edVencimientoHasta.Date,
          edVencimientoHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edVencimientoDesde.IsEmpty) and (not edVencimientoHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (lj_fechavencimiento BETWEEN ' + SqlValue(edVencimientoDesde.Date)
          + '      AND ' + SqlValue(edVencimientoHasta.Date) + '+1)'
    else if not edVencimientoDesde.IsEmpty then
      Filtros := Filtros + ' AND lj_fechavencimiento >= ' + SqlValue(edVencimientoDesde.Date)
    else if not edVencimientoHasta.IsEmpty then
      Filtros := Filtros + ' AND lj_fechavencimiento <= ' + SqlValue(edVencimientoHasta.Date);

    if (not edAprobadoDesde.IsEmpty) and (not edAprobadoHasta.IsEmpty) then
      Verificar(
          edAprobadoDesde.Date > edAprobadoHasta.Date,
          edAprobadoHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edAprobadoDesde.IsEmpty) and (not edAprobadoHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (lj_fechaaprobado BETWEEN ' + SqlValue(edAprobadoDesde.Date)
          + '      AND ' + SqlValue(edAprobadoHasta.Date) + '+1)'
    else if not edAprobadoDesde.IsEmpty then
      Filtros := Filtros + ' AND lj_fechaaprobado >= ' + SqlValue(edAprobadoDesde.Date)
    else if not edAprobadoHasta.IsEmpty then
      Filtros := Filtros + ' AND lj_fechaaprobado <= ' + SqlValue(edAprobadoHasta.Date);

    if cbPagosBloqueados.Checked then
    begin
      Filtros := Filtros +
        ' AND EXISTS ('+
        '  SELECT 1 '+
        '    FROM legales.ljt_juicioentramite, ljg_juiciogestion, legales.lpl_pagolegal '+
        '   WHERE jg_idjuicioentramite = pl_idjuicioentramite '+
        '     AND jt_id = jg_idjuicioentramite(+) '+
        '     AND jt_id = pl_idjuicioentramite '+
        '     AND pl_idliquidacion = lj_id '+
        '     AND pl_idbeneficiariopago = bp_id '+
        '     AND (   jg_faltademanda = ''S'' '+
        '          OR (    jg_enviosin = ''S'' '+
        '              AND jg_devolviosin = ''N'')))';
    end;

    if cbConceptoDuplicado.Checked then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lpl_pagolegal '+
                           ' WHERE pl_idliquidacion = lj_id '+
                           '   AND pl_estado NOT IN (''X'',''A'') '+
                           '   AND pl_duplicado = ''S'' '+
                           '   AND pl_estadoduplicidad IS NULL ) ';

    if (edEtapa.Text <> '') then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lpl_pagolegal, legales.ljt_juicioentramite '+
                           ' WHERE pl_idliquidacion = lj_id '+
                           '   AND pl_idjuicioentramite = jt_id'+
                           '   AND jt_numerocarpeta = '+SqlValue(edEtapa.Text)+')';

    if (edNumeroCheque.Text <> '') then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lpl_pagolegal, rce_chequeemitido '+
                           ' WHERE pl_idliquidacion = lj_id '+
                           '   AND pl_idchequeemitido = ce_id'+
                           '   AND CE_NUMERO  = '+SqlValue(edNumeroCheque.Text)+')';

    if FModoForm = mJuicioDemandada then
      Filtros := Filtros +
//        ' AND BP_ETAPA like ''%JD%'' '+
        '    AND EXISTS(SELECT 1 '+
        '           FROM legales.lpl_pagolegal, legales.ljt_juicioentramite '+
        '           WHERE pl_idliquidacion = lj_id '+
        '             AND jt_id = pl_idjuicioentramite '+
        '             AND jt_estadomediacion = ''J'' )'
    else
      Filtros := Filtros +
//        ' AND BP_ETAPA like ''%JA%'' '+
        '    AND EXISTS(SELECT 1 '+
        '           FROM legales.lpl_pagolegal, legales.ljt_juicioentramite '+
        '           WHERE pl_idliquidacion = lj_id '+
        '             AND jt_id = pl_idjuicioentramite '+
        '             AND jt_estadomediacion = ''A'' )';

    if edNroLiquidacion.Text <> '' then
      Filtros := Filtros + ' AND lj_id = '+SqlValue(edNroLiquidacion.Text);

    sSql :=
      ' SELECT lj_id ID, lj_idbeneficiario idbeneficiario, lj_beneficiario beneficiario,'+
      '        bp_descripcion tipobeneficiario, lj_cuitcuil cuitcuil, lj_paguesea paguesea, '+
      '        lj_chequenombre chequenombre, lj_usuemision usuemision, '+
      '        lj_fechaemision fechaemision, lj_fechavencimiento fechavencimiento, '+
      '        lj_usuarioaprobado AS usuarioaprobado, lj_fechaaprobado AS fechaaprobado, '+
      '        (SELECT SUM(NVL(pl_importepago, 0)) FROM legales.lpl_pagolegal '+
      '        WHERE pl_idliquidacion = lj_id AND pl_estado not in (''A'')) AS importesinretencion, '+
      '        (SELECT SUM(NVL(pl_importeconretencion, 0)) FROM legales.lpl_pagolegal '+
      '        WHERE pl_idliquidacion = lj_id AND pl_estado not in (''A'')) AS importeconretencion, lj_detalle AS detalle,'+
      '        lj_pagoexclusivo pagoexclusivo '+
      '   FROM legales.lbp_beneficiariopago, legales.llj_liquidacionjuicio '+
      '  WHERE bp_id = lj_idbeneficiario'+Filtros; //+ ' ORDER BY lj_id';
  end;
  if FModoForm = mMediacion then
  begin
    if not (cbPendientesDeAprobacion.Checked and cbAprobadas.Checked) then
    begin
      if cbPendientesDeAprobacion.Checked then
        Filtros := Filtros + ' AND lm_fechaaprobado IS NULL ';

      if cbAprobadas.Checked then
        Filtros := Filtros + ' AND lm_fechaaprobado IS NOT NULL ';
    end;

    if (not edEmisionDesde.IsEmpty) and (not edEmisionHasta.IsEmpty) then
      Verificar(
          edEmisionDesde.Date > edEmisionHasta.Date,
          edEmisionHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edEmisionDesde.IsEmpty) and (not edEmisionHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (lm_fechaemision BETWEEN ' + SqlValue(edEmisionDesde.Date)
          + '      AND ' + SqlValue(edEmisionHasta.Date) + '+1)'
    else if not edEmisionDesde.IsEmpty then
      Filtros := Filtros + ' AND lm_fechaemision >= ' + SqlValue(edEmisionDesde.Date)
    else if not edEmisionHasta.IsEmpty then
      Filtros := Filtros + ' AND lm_fechaemision <= ' + SqlValue(edEmisionHasta.Date);

    if (not edVencimientoDesde.IsEmpty) and (not edVencimientoHasta.IsEmpty) then
      Verificar(
          edVencimientoDesde.Date > edVencimientoHasta.Date,
          edVencimientoHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edVencimientoDesde.IsEmpty) and (not edVencimientoHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (lm_fechavencimiento BETWEEN ' + SqlValue(edVencimientoDesde.Date)
          + '      AND ' + SqlValue(edVencimientoHasta.Date) + '+1)'
    else if not edVencimientoDesde.IsEmpty then
      Filtros := Filtros + ' AND lm_fechavencimiento >= ' + SqlValue(edVencimientoDesde.Date)
    else if not edVencimientoHasta.IsEmpty then
      Filtros := Filtros + ' AND lm_fechavencimiento <= ' + SqlValue(edVencimientoHasta.Date);

    if (not edAprobadoDesde.IsEmpty) and (not edAprobadoHasta.IsEmpty) then
      Verificar(
          edAprobadoDesde.Date > edAprobadoHasta.Date,
          edAprobadoHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edAprobadoDesde.IsEmpty) and (not edAprobadoHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (lm_fechaaprobado BETWEEN ' + SqlValue(edAprobadoDesde.Date)
          + '      AND ' + SqlValue(edAprobadoHasta.Date) + '+1)'
    else if not edAprobadoDesde.IsEmpty then
      Filtros := Filtros + ' AND lm_fechaaprobado >= ' + SqlValue(edAprobadoDesde.Date)
    else if not edAprobadoHasta.IsEmpty then
      Filtros := Filtros + ' AND lm_fechaaprobado <= ' + SqlValue(edAprobadoHasta.Date);

    if cbConceptoDuplicado.Checked then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lpm_pagomediacion '+
                           ' WHERE pm_idliquidacion = lm_id '+
                           '   AND pm_duplicado = ''S'' '+
                           '   AND pm_estadoduplicidad IS NULL) ';

    if (edEtapa.Text <> '') then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lpm_pagomediacion,legales.lme_mediacion '+
                           ' WHERE pm_idliquidacion = lm_id '+
                           '   AND pm_idmediacion = me_id '+
                           '   AND ME_NUMEROFOLIO = '+SqlValue(edEtapa.Text)+')';

    if (edNumeroCheque.Text <> '') then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lpm_pagomediacion, rce_chequeemitido '+
                           ' WHERE pm_idliquidacion = lm_id '+
                           '   AND pm_idchequeemitido = ce_id'+
                           '   AND CE_NUMERO  = '+SqlValue(edNumeroCheque.Text)+')';

   if edNroLiquidacion.Text <> '' then
      Filtros := Filtros + ' AND lm_id = '+SqlValue(edNroLiquidacion.Text);

    sSql :=
      ' SELECT lm_id ID, lm_idbeneficiario idbeneficiario, lm_beneficiario beneficiario, '+
      '        bp_descripcion tipobeneficiario, lm_cuitcuil cuitcuil, lm_paguesea paguesea, '+
      '        lm_chequenombre chequenombre, lm_usuemision usuemision, lm_fechaemision fechaemision, '+
      '        lm_fechavencimiento fechavencimiento, '+
      '        lm_usuarioaprobado AS usuarioaprobado, lm_fechaaprobado AS fechaaprobado,'+
      '        (SELECT SUM(NVL(PM_IMPORTEPAGO, 0)) FROM legales.lpm_pagomediacion '+
      '        WHERE pm_idliquidacion = lm_id AND pm_estado not in (''A'')) AS importesinretencion, '+
      '        (SELECT SUM(NVL(pm_importeconretencion, 0)) FROM legales.lpm_pagomediacion '+
      '        WHERE pm_idliquidacion = lm_id AND pm_estado not in (''A'')) AS importeconretencion, lm_detalle AS detalle, '+
      '        lm_pagoexclusivo pagoexclusivo '+
      '   FROM legales.lbp_beneficiariopago, legales.llm_liquidacionmediacion '+
      '  WHERE bp_id = lm_idbeneficiario '+
      '    AND BP_ETAPA like ''%ME%'' '+Filtros; //+ ' ORDER BY lm_id';
  end;
  if FModoForm = mSumario then
  begin
    if not (cbPendientesDeAprobacion.Checked and cbAprobadas.Checked) then
    begin
      if cbPendientesDeAprobacion.Checked then
        Filtros := Filtros + ' AND ls_fechaaprobado IS NULL ';

      if cbAprobadas.Checked then
        Filtros := Filtros + ' AND ls_fechaaprobado IS NOT NULL ';
    end;

    if (not edEmisionDesde.IsEmpty) and (not edEmisionHasta.IsEmpty) then
      Verificar(
          edEmisionDesde.Date > edEmisionHasta.Date,
          edEmisionHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edEmisionDesde.IsEmpty) and (not edEmisionHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (ls_fechaemision BETWEEN ' + SqlValue(edEmisionDesde.Date)
          + '      AND ' + SqlValue(edEmisionHasta.Date) + '+1)'
    else if not edEmisionDesde.IsEmpty then
      Filtros := Filtros + ' AND ls_fechaemision >= ' + SqlValue(edEmisionDesde.Date)
    else if not edEmisionHasta.IsEmpty then
      Filtros := Filtros + ' AND ls_fechaemision <= ' + SqlValue(edEmisionHasta.Date);

    if (not edVencimientoDesde.IsEmpty) and (not edVencimientoHasta.IsEmpty) then
      Verificar(
          edVencimientoDesde.Date > edVencimientoHasta.Date,
          edVencimientoHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edVencimientoDesde.IsEmpty) and (not edVencimientoHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND ((SELECT MIN(ps_fechavencimientopago) FROM legales.lps_pagosumario WHERE ps_idliquidacion = ls_id) BETWEEN ' + SqlValue(edVencimientoDesde.Date)
          + '      AND ' + SqlValue(edVencimientoHasta.Date) + '+1)'
    else if not edVencimientoDesde.IsEmpty then
      Filtros := Filtros + ' AND (SELECT MIN(ps_fechavencimientopago) FROM legales.lps_pagosumario WHERE ps_idliquidacion = ls_id) >= ' + SqlValue(edVencimientoDesde.Date)
    else if not edVencimientoHasta.IsEmpty then
      Filtros := Filtros + ' AND (SELECT MIN(ps_fechavencimientopago) FROM legales.lps_pagosumario WHERE ps_idliquidacion = ls_id) <= ' + SqlValue(edVencimientoHasta.Date);

    if (not edAprobadoDesde.IsEmpty) and (not edAprobadoHasta.IsEmpty) then
      Verificar(
          edAprobadoDesde.Date > edAprobadoHasta.Date,
          edAprobadoHasta, 'La fecha HASTA no puede ser menor a la fecha DESDE.');

    if (not edAprobadoDesde.IsEmpty) and (not edAprobadoHasta.IsEmpty) then
      Filtros :=
          Filtros
          + ' AND (ls_fechaaprobado BETWEEN ' + SqlValue(edAprobadoDesde.Date)
          + '      AND ' + SqlValue(edAprobadoHasta.Date) + '+1)'
    else if not edAprobadoDesde.IsEmpty then
      Filtros := Filtros + ' AND ls_fechaaprobado >= ' + SqlValue(edAprobadoDesde.Date)
    else if not edAprobadoHasta.IsEmpty then
      Filtros := Filtros + ' AND ls_fechaaprobado <= ' + SqlValue(edAprobadoHasta.Date);

    if cbConceptoDuplicado.Checked then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lps_pagosumario '+
                           ' WHERE ps_idliquidacion = ls_id '+
                           '   AND ps_duplicado = ''S'' '+
                           '   AND ps_estadoduplicidad IS NULL ) ';

    if (edEtapa.Text <> '') then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lps_pagosumario, legales.lsu_sumario '+
                           ' WHERE ps_idliquidacion = ls_id '+
                           '   AND ps_idsumario = su_id'+
                           '   AND su_numerosumario = '+SqlValue(edEtapa.Text)+')';

    if (edNumeroCheque.Text <> '') then
      Filtros := Filtros + ' AND EXISTS(SELECT 1 '+
                           '  FROM legales.lps_pagosumario, rce_chequeemitido '+
                           ' WHERE ps_idliquidacion = ls_id '+
                           '   AND ps_idchequeemitido = ce_id'+
                           '   AND CE_NUMERO  = '+SqlValue(edNumeroCheque.Text)+')';

    if edNroLiquidacion.Text <> '' then
      Filtros := Filtros + ' AND ls_id = '+SqlValue(edNroLiquidacion.Text);

    sSql :=
      ' SELECT ls_id ID, ls_idbeneficiario idbeneficiario, ls_beneficiario beneficiario, '+
      '        bp_descripcion tipobeneficiario, ls_cuitcuil cuitcuil, ls_paguesea paguesea, '+
      '        ls_chequenombre chequenombre, ls_usuemision usuemision, ls_fechaemision fechaemision, '+
      '        (SELECT MIN(ps_fechavencimientopago) FROM legales.lps_pagosumario WHERE ps_idliquidacion = ls_id)  fechavencimiento, '+
      '        ls_usuarioaprobado AS usuarioaprobado, ls_fechaaprobado AS fechaaprobado,'+
      '        (SELECT SUM(NVL(ps_importepago, 0)) FROM legales.lps_pagosumario '+
      '        WHERE ps_idliquidacion = ls_id AND ps_estado not in (''A'')) AS importesinretencion, '+
      '        (SELECT SUM(NVL(ps_importeconretencion, 0)) FROM legales.lps_pagosumario '+
      '        WHERE ps_idliquidacion = ls_id AND ps_estado not in (''A'')) AS importeconretencion, ls_detalle AS detalle, '+
      '        ls_pagoexclusivo pagoexclusivo '+
      '   FROM legales.lbp_beneficiariopago, legales.lls_liquidacionsumario '+
      '  WHERE bp_id = ls_idbeneficiario '+
      '    AND BP_ETAPA like ''%SU%'' '+Filtros; //+ ' ORDER BY ls_id';
  end;

  //sdqConsulta.SQL.Text := sSql;
    sdqConsulta.SQL.Text := sSql + SortDialog.OrderBy;

  inherited;

    if sdqConsulta.Active and not sdqConsulta.IsEmpty then
      lbSumatoriaTotal.Caption := 'Total Liquidaciones: ' + IntToStr(sdqConsulta.RecordCount)
    else
     lbSumatoriaTotal.Caption := '';

end;

procedure TfrmConsultaLiquidacionPagos.tbNuevoClick(Sender: TObject);
begin
  inherited;
  Bookmark := sdqConsulta.Bookmark;
   with TfrmPagosLegales.Create(Self) do
  begin
    if FModoForm = mJuicioDemandada then
      ModoForm := mfJuicioDemandada;
    if FModoForm = mJuicioActora then
      ModoForm := mfJuicioActora;
    if FModoForm = mMediacion then
      ModoForm := mfMediacion;
    if FModoForm = mSumario then
      ModoForm := mfSumario;
    FormStyle := fsNormal;
    Visible := false;
    ShowModal;
  end;
  tbRefrescarClick(nil);
  try
    sdqConsulta.Bookmark := Bookmark;
  except
    Null;
  end;
end;

procedure TfrmConsultaLiquidacionPagos.tbModificarClick(Sender: TObject);
VAR
  idliq : Integer;
begin
  inherited;
  idliq := sdqConsulta.FieldByName('ID').AsInteger;
  Bookmark := sdqConsulta.Bookmark;
  with TfrmPagosLegales.Create(Self) do
  begin
    if FModoForm = mJuicioDemandada then
      ModoForm := mfJuicioDemandada;
    if FModoForm = mJuicioActora then
      ModoForm := mfJuicioActora;
    if FModoForm = mMediacion then
      ModoForm := mfMediacion;
    if FModoForm = mSumario then
      ModoForm := mfSumario;
    idLiquidacion := idliq;
    vclExtra.LockControls([fraTipoBeneficiario,fraBeneficiario], True);
    FormStyle := fsNormal;
    Visible := false;
    ShowModal;
  end;
  tbRefrescarClick(nil);
  try
    sdqConsulta.Bookmark := Bookmark;
  except
    Null;
  end;
end;

procedure TfrmConsultaLiquidacionPagos.tbImprimirClick(Sender: TObject);
var
  Modo : TModoForm;
  sSql,sUpdate : String;
  vFecha : TDate;
begin
  if sdqConsulta.IsEmpty then
    Exit;

  if (ModoForm = mJuicioDemandada) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND pl_duplicado = ''S'' '+
            '    AND pl_estado NOT IN (''A'') '+
            '    AND pl_estadoduplicidad IS NULL '
  else if (ModoForm = mJuicioActora) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND pl_duplicado = ''S'' '+
            '    AND pl_estado NOT IN (''A'') '+
            '    AND pl_estadoduplicidad IS NULL '
  else if (ModoForm = mMediacion) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpm_pagomediacion '+
            '  WHERE pm_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND pm_duplicado = ''S'' '+
            '    AND pm_estado NOT IN (''A'') '+
            '    AND pm_estadoduplicidad IS NULL '
  else if (ModoForm = mSumario) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lps_pagosumario '+
            '  WHERE ps_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND ps_duplicado = ''S'' '+
            '    AND ps_estado NOT IN (''A'') '+
            '    AND ps_estadoduplicidad IS NULL ';
  Verificar(ExisteSql(sSql),tbImprimir,'No se puede Imprimir tiene pendientes pagos duplicados');

  BeginTrans(True);
  try
    if fpCambiarPreventor.ShowModal = mrOK then
    begin
      CommitTrans(True);

      if (ModoForm = mJuicioDemandada) then
        Modo := mfJuicioDemandada
      else if (ModoForm = mJuicioActora) then
        Modo := mfJuicioActora
      else if (ModoForm = mMediacion) then
        Modo := mfMediacion
      else if (ModoForm = mSumario) then
        Modo := mfSumario
      else
        Modo := mfNone;

      if (ModoForm = mJuicioDemandada) or
         (ModoForm = mJuicioActora) or
         (ModoForm = mMediacion) then
      begin
        with TfrmRptReciboLiquidacionMultiple.Create(self) do
        try
          VistaPrevia(sdqConsulta.FieldByName('id').AsInteger,
                      edCantidadCopiasReciboLiquidacion.Value,Modo);
        finally
          free;
        end;
      end
      else
      begin
        vFecha := ValorSqlDateTime('SELECT MIN(PS_FECHAVENCIMIENTOPAGO) FROM legales.lps_pagosumario '+
                           ' WHERE ps_idliquidacion = '+SqlValue(sdqConsulta.FieldByName('id').AsInteger));
        sUpdate := 'UPDATE legales.lls_liquidacionsumario' +
            '   SET ls_fechavencimiento = '+SqlDate( vFecha)+
            ' WHERE ls_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger);
        EjecutarSqlST(sUpdate);
      end;


      with TrptLiquidacionLegalesMultiples.Create(Self) do
      try
        VistaPrevia(sdqConsulta.FieldByName('id').AsInteger,
                    edCantidadCopiasLiquidacion.Value,Modo);
      finally
        Free;
      end;
      sdqConsulta.Refresh;
    end
    else
      Rollback(True);
  except
    on E: Exception do begin
       Rollback(true);
       ErrorMsg(E, 'Error al guardar la impresiones.');
    end;
  end;
  tbRefrescarClick(nil);
end;

procedure TfrmConsultaLiquidacionPagos.btnAceptarCambioPreventorClick(
  Sender: TObject);
var
  sSQL : String;
begin
  if ModoForm in [mJuicioDemandada, mJuicioActora]then
  begin
    sSql :=
      'UPDATE legales.llj_liquidacionjuicio' +
      '   SET lj_usuemision = '+ SqlValue(Sesion.LoginName) + ','+
      '       lj_fechaemision = art.actualdate, '+
      '       lj_fechavencimiento = art.actualdate + 30'+
      ' WHERE lj_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger)+
      '   AND lj_usuemision IS NULL ';
    EjecutarSqlST(sSql);

    sSql :=
      'UPDATE legales.lpl_pagolegal' +
      '   SET pl_usuarioemision = ' + SqlValue(Sesion.LoginName) +
      '     , pl_fechaemision = art.actualdate' +
      '     , pl_fechavencimiento = art.actualdate + 30' +
      ' WHERE pl_usuarioemision is null' +
      '   AND PL_IDLIQUIDACION = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger)+
      '   AND pl_estado not in (''X'',''A'')';
    EjecutarSqlST(sSql);  
  end
  else if ModoForm = mMediacion then
  begin
    sSql :=
      'UPDATE legales.llm_liquidacionmediacion' +
      '   SET lm_usuemision = '+ SqlValue(Sesion.LoginName) + ','+
      '       lm_fechaemision = art.actualdate, '+
      '       lm_fechavencimiento = art.actualdate + 30'+
      ' WHERE lm_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger)+
      '   AND lm_usuemision IS NULL ';
    EjecutarSqlST(sSql);

    sSql :=
      'UPDATE legales.lpm_pagomediacion' +
      '   SET pm_usuarioemision = ' + SqlValue(Sesion.LoginName) +
      '     , pm_fechaemision = art.actualdate' +
      '     , pm_fechavencimiento = art.actualdate + 30' +
      ' WHERE pm_usuarioemision is null' +
      '   AND pm_idliquidacion = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger)+
      '   AND pm_estado not in (''X'',''A'')';
    EjecutarSqlST(sSql);
  end
  else if ModoForm = mSumario then
  begin
    sSql :=
      'UPDATE legales.lls_liquidacionsumario' +
      '   SET ls_usuemision = '+ SqlValue(Sesion.LoginName) + ','+
      '       ls_fechaemision = art.actualdate, '+
      '       ls_fechavencimiento = art.actualdate + 30'+
      ' WHERE ls_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger)+
      '   AND ls_usuemision IS NULL ';
    EjecutarSqlST(sSql);

    sSql :=
      'UPDATE legales.lps_pagosumario' +
      '   SET ps_usuarioemision = ' + SqlValue(Sesion.LoginName) +
      '     , ps_fechaemision = art.actualdate' +
      '     , ps_fechavencimiento = art.actualdate + 30' +
      ' WHERE ps_usuarioemision is null' +
      '   AND ps_idliquidacion = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger)+
      '   AND ps_estado not in (''X'',''A'')';
    EjecutarSqlST(sSql);
  end;
  fpCambiarPreventor.ModalResult := mrOk;
end;

function TfrmConsultaLiquidacionPagos.IsBloqueada: Boolean;
var
  Filtros : String;
begin
  If (ModoForm = mJuicioDemandada) or (ModoForm = mJuicioActora) then
  begin
    if FModoForm = mJuicioDemandada then
      Filtros := Filtros + ' AND BP_ETAPA like ''%JD%'' '
    else
      Filtros := Filtros + ' AND BP_ETAPA like ''%JA%'' ';
    Result :=  ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.ljt_juicioentramite, ljg_juiciogestion, '+
      '        legales.lbp_beneficiariopago, legales.lpl_pagolegal, '+
      '        legales.llj_liquidacionjuicio '+
      '  WHERE bp_id = lj_idbeneficiario '+
      '    AND jt_id = jg_idjuicioentramite(+) '+
      '    AND jt_id = pl_idjuicioentramite '+
      '    AND pl_idliquidacion = lj_id '+
      '    AND pl_estado NOT IN(''A'', ''X'') '+
      '    AND lj_id = '+SqlValue(sdqConsulta.FieldByName('ID').AsString)+
      '    AND (   jg_faltademanda = ''S'' '+
      '     OR (   jg_enviosin = ''S'' '+
      '        AND jg_devolviosin = ''N'')) '+Filtros);
  end
  else
    Result := False;
end;

procedure TfrmConsultaLiquidacionPagos.GridCellClick(Column: TColumn);
begin
  inherited;
  if sdqConsulta.Active and not sdqConsulta.IsEmpty and (Column.FieldName = 'SELECTED') then
  begin
    if SelectedList.IndexOf(sdqConsulta.FieldByName('ID').AsString) = -1 then
    begin
      ValidarSeleccion;
      SelectedList.AddObject(sdqConsulta.FieldByName('ID').AsString, sdqConsulta.GetBookmark);
    end
    else
      SelectedList.Delete(SelectedList.IndexOf(sdqConsulta.FieldByName('ID').AsString));
    Column.Grid.Refresh;
  end;
end;

procedure TfrmConsultaLiquidacionPagos.FSFormDestroy(Sender: TObject);
begin
  SelectedList.Free;
  inherited;
end;

procedure TfrmConsultaLiquidacionPagos.GridDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  if Column.FieldName = 'SELECTED' then
  begin
    DBGrid.Canvas.FillRect(Rect);
    Check := 0;
    if SelectedList.IndexOf(sdqConsulta.FieldByName('ID').AsString) > -1 then
      Check := DFCS_CHECKED;
    R := Rect;
    InflateRect(R, -2, -2); //Disminuye el tama�o del CheckBox
    DrawFrameControl(DBGrid.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TfrmConsultaLiquidacionPagos.GridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
    GridCellClick(Grid.ColumnByField['SELECTED']);
end;

procedure TfrmConsultaLiquidacionPagos.FormCreate(Sender: TObject);
begin
  tbAprobacionPagos.Left := tbImprimir.Left +5;
  tbAprobacionduplicadosMultiple.Left := tbImprimir.Left +10;
  SelectedList := TBookMarkLst.Create;
  edEmisionDesde.Date := DBDate;
  lbSumatoriaTotal.Caption := '';
  inherited;
end;

procedure TfrmConsultaLiquidacionPagos.ValidarSeleccion;
var
  sSql : String;
begin
  if (ModoForm = mJuicioDemandada) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND pl_duplicado = ''S'' '+
            '    AND pl_estado NOT IN (''A'') '+
            '    AND pl_estadoduplicidad IS NULL '
  else if (ModoForm = mJuicioActora) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND pl_duplicado = ''S'' '+
            '    AND pl_estado NOT IN (''A'') '+
            '    AND pl_estadoduplicidad IS NULL '
  else if (ModoForm = mMediacion) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpm_pagomediacion '+
            '  WHERE pm_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND pm_duplicado = ''S'' '+
            '    AND pm_estado NOT IN (''A'') '+
            '    AND pm_estadoduplicidad IS NULL '
  else if (ModoForm = mSumario) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lps_pagosumario '+
            '  WHERE ps_idliquidacion = '+sdqConsulta.FieldByName('ID').AsString+
            '    AND ps_duplicado = ''S'' '+
            '    AND ps_estado NOT IN (''A'') '+
            '    AND ps_estadoduplicidad IS NULL ';
  Verificar(ExisteSql(sSql),tbImprimir,'No se puede aprobar tiene pendientes pagos duplicados');

  if (ModoForm = mJuicioDemandada) or (ModoForm = mJuicioActora) then
  begin
    Verificar(sdqConsulta.FieldByName('usuemision').AsString = '',Grid,
                     'No puede autorizarse el pago debe imprimirse previamente.');

    Verificar( IsBloqueada(), Grid, 'Este pago tiene bloqueada su liquidaci�n.');

    if (ModoForm = mJuicioDemandada) and ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.llj_liquidacionjuicio, legales.lpl_pagolegal '+
      '  WHERE pl_idliquidacion = lj_id '+
      '    AND pl_conpago = 131 '+
      '    AND pl_idliquidacion = '+SqlValue(sdqConsulta.FieldByName('ID').AsString)) then
      InfoHint(Grid,'Usted va a liquidar un importe de Capital, recuerde que de corresponder deber� modificar la reserva.');

    Verificar(ExisteSql(
                    ' SELECT 1 '+
                    '   FROM legales.ljt_juicioentramite '+
                    '  WHERE jt_estadomediacion = ''J'' '+
                    '    AND jt_id IN(SELECT pl_idjuicioentramite '+
                    '                   FROM legales.lpl_pagolegal, legales.llj_liquidacionjuicio '+
                    '                  WHERE pl_idliquidacion = lj_id '+
                    '                    AND pl_estado IN(''C'', ''E'') '+
                    '                    AND lj_id = '+SqlValue(sdqConsulta.FieldByName('ID').AsString) +')'+
                    '    AND NOT EXISTS(SELECT 1 '+
                    '                     FROM legales.lod_origendemanda '+
                    '                    WHERE od_fechabaja IS NULL '+
                    '                      AND od_idjuicioentramite = jt_id) ')
                    , Grid, 'No puede autorizarse el pago ya que algun juicio no tiene Origen de Demanda.');

    Verificar(ExisteSql(
                    '  SELECT 1 '+
                    '    FROM legales.ljt_juicioentramite '+
                    '   WHERE jt_estadomediacion = ''J'' '+
                    '    AND jt_id IN(SELECT pl_idjuicioentramite '+
                    '                   FROM legales.lpl_pagolegal, legales.llj_liquidacionjuicio '+
                    '                  WHERE pl_idliquidacion = lj_id '+
                    '                    AND pl_estado IN(''C'', ''E'') '+
                    '                    AND lj_id = '+SqlValue(sdqConsulta.FieldByName('ID').AsString) +')'+
                    '     AND NOT EXISTS (SELECT 1 '+
                    '                   FROM legales.lrt_reclamojuicioentramite '+
                    '                  WHERE rt_idjuicioentramite = jt_id AND rt_fechabaja IS NULL)'), Grid,
                    'No puede autorizarse el pago ya que no tiene Motivo de Reclamo.');

  end;
  if (ModoForm = mMediacion ) then
  begin
    Verificar(sdqConsulta.FieldByName('usuemision').AsString = '',Grid,
                     'No puede autorizarse el pago debe imprimirse previamente.');
  end;
  if (ModoForm = mSumario ) then
  begin
    Verificar(sdqConsulta.FieldByName('usuemision').AsString = '',Grid,
                     'No puede autorizarse el pago debe imprimirse previamente.');
  end;
end;

procedure TfrmConsultaLiquidacionPagos.AprobarPago;
var
  i : Integer;
begin
  try
    for i:=0 to SelectedList.Count-1 do
    begin
      BeginTrans(True);
      DBGrid.DataSource.DataSet.GotoBookmark(SelectedList.Objects[i]);
      if (ModoForm = mJuicioActora) or (ModoForm = mJuicioDemandada) then
      begin
        if ExisteSql(
        ' SELECT 1 '+
        '   FROM legales.llj_liquidacionjuicio '+
        '  WHERE lj_id = '+ SqlValue(SelectedList.Strings[i]) +
        '    AND lj_fechaaprobado IS NULL ') then
        begin
          EjecutarSqlST('update legales.lpl_pagolegal ' +
                        '   set pl_usuarioaprobado = ' + SqlValue(Sesion.LoginName) + ', ' +
                        '       pl_fechaaprobado   = SYSDATE, ' +
                        '       pl_estado = ''E'' ' +
                        ' where PL_IDLIQUIDACION = ' + SqlValue(SelectedList.Strings[i]) +
                        '   and pl_estado NOT IN(''E'', ''A'', ''X'')');

          // Desasigno el pago en legales.lir_importesreguladosjuicio si es un pago
          // previamente autorizado y anulado

          EjecutarSqlST('UPDATE legales.llj_liquidacionjuicio ' +
                        '   SET lj_usuarioaprobado = ' + SqlValue(Sesion.LoginName) + ', ' +
                        '       lj_fechaaprobado   = SYSDATE ' +
                        ' WHERE lj_id = ' + SqlValue(SelectedList.Strings[i]));

          EjecutarSqlST('UPDATE legales.lir_importesreguladosjuicio ' +
                        '   SET ir_nropago = null' +
                        ' WHERE ir_nropago IN ( '+
                        '       SELECT pl_id '+
                        '         FROM legales.lpl_pagolegal '+
                        '        WHERE pl_idliquidacion = '+SqlValue(SelectedList.Strings[i])+
                        '          AND pl_estado NOT IN(''E'', ''A'', ''X'')'+
                        '          AND (   pl_importeconretencion < 0 '+
                        '               OR pl_importepago < 0)) ');

          with GetQuery(
            ' SELECT pl_id, pl_idembargo, pl_conpago, pl_importepago,pl_idjuicioentramite '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+SqlValue(SelectedList.Strings[i]) )do
          try
            while not Eof do
            begin
              if FieldByName('pl_conpago').AsInteger = CONPAGO_EMBARGO then
              // Inserto en la lae_aplicacionembargo
                DoInsertarAplicacionEmbargo(FieldByName('pl_importepago').AsFloat, FieldByName('pl_idembargo').AsInteger);

              if FieldByName('pl_conpago').AsInteger = CONPAGO_RECEXTR then
              // Inserto en la lar_aplicacionrecursoext..
                DoInsertarAplicacionRecExtraordinario(FieldByName('pl_importepago').AsFloat, FieldByName('pl_idjuicioentramite').AsInteger);
              Next;
            end;

          finally
            Free;
          end;
        end
        else
          MsgBox('Ya esta aprobada la liquidacion '+SelectedList.Strings[i], MB_ICONERROR);
      end;
      if (ModoForm = mMediacion) then
      begin
        if ExisteSql(
        ' SELECT 1 '+
        '   FROM legales.llm_liquidacionmediacion '+
        '  WHERE lm_id = '+ SqlValue(SelectedList.Strings[i]) +
        '    AND lm_fechaaprobado IS NULL ') then
        begin
          EjecutarSqlST('update legales.lpm_pagomediacion ' +
                        '   set pm_usuarioaprobado = ' + SqlValue(Sesion.LoginName) + ', ' +
                        '       pm_fechaaprobado   = SYSDATE, ' +
                        '       pm_estado = ''E'' ' +
                        ' where pm_idliquidacion = ' + SqlValue(SelectedList.Strings[i]) +
                        '   and pm_estado NOT IN(''E'', ''A'', ''X'')');

          EjecutarSqlST('UPDATE legales.llm_liquidacionmediacion ' +
                        '   SET lm_usuarioaprobado = '+ SqlValue(Sesion.LoginName) + ', ' +
                        '       lm_fechaaprobado   = SYSDATE '+
                        ' WHERE lm_id = ' + SqlValue(SelectedList.Strings[i]));

          // Desasigno el pago en legales.lir_importesreguladosjuicio si es un pago
          // previamente autorizado y anulado

          EjecutarSqlST('UPDATE legales.lim_importemediacion ' +
                        '   SET im_nropago = NULL' +
                        ' WHERE im_nropago IN ( '+
                        '       SELECT pm_id '+
                        '         FROM legales.lpm_pagomediacion '+
                        '        WHERE pm_idliquidacion = '+SqlValue(SelectedList.Strings[i])+
                        '          AND pm_estado NOT IN(''E'', ''A'', ''X'') '+
                        '          AND (   pm_importeconretencion < 0 '+
                        '               OR pm_importepago < 0)) ');
        end
        else
          MsgBox('Ya esta aprobada la liquidacion '+SelectedList.Strings[i], MB_ICONERROR);
      end;
      if (ModoForm = mSumario) then
      begin
        if ExisteSql(
        ' SELECT 1 '+
        '   FROM legales.lls_liquidacionsumario '+
        '  WHERE ls_id = '+ SqlValue(SelectedList.Strings[i]) +
        '    AND ls_fechaaprobado IS NULL ') then
        begin
          EjecutarSqlST('update legales.lps_pagosumario ' +
                        '   set ps_usuarioaprobado = ' + SqlValue(Sesion.LoginName) + ', ' +
                        '       ps_fechaaprobado   = SYSDATE, ' +
                        '       ps_estado = ''E'' ' +
                        ' where ps_idliquidacion = ' + SqlValue(SelectedList.Strings[i]) +
                        '   and ps_estado NOT IN(''E'', ''A'', ''X'')');

          EjecutarSqlST('UPDATE legales.lls_liquidacionsumario ' +
                        '   SET ls_usuarioaprobado = '+ SqlValue(Sesion.LoginName) + ', ' +
                        '       ls_fechaaprobado   = SYSDATE '+
                        ' WHERE ls_id = ' + SqlValue(SelectedList.Strings[i]));

          EjecutarSqlST('UPDATE legales.lis_importesentenciasumario ' +
                        '   SET is_nropago = NULL' +
                        ' WHERE is_nropago IN ( '+
                        '       SELECT ps_id '+
                        '         FROM legales.lps_pagosumario '+
                        '        WHERE ps_idliquidacion = '+SqlValue(SelectedList.Strings[i])+
                        '          AND ps_estado NOT IN(''E'', ''A'', ''X'') '+
                        '          AND (   ps_importeconretencion < 0 '+
                        '               OR ps_importepago < 0)) ');
        end
        else
          MsgBox('Ya esta aprobada la liquidacion '+SelectedList.Strings[i], MB_ICONERROR);
      end;
    CommitTrans(True);
    end;
{$IFDEF VER150}
    for i:=0 to SelectedList.Count - 1 do
      sdqConsulta.FreeBookmark(TBookmark(SelectedList.Objects[i]));
{$ENDIF}
    SelectedList.Clear;
    Grid.Refresh;
  except
    on E: Exception do begin
       Rollback(true);
       ErrorMsg(E, 'Error al guardar.');
    end;
  end;
end;

procedure TfrmConsultaLiquidacionPagos.tbAprobacionPagosClick(
  Sender: TObject);
begin
  if MsgBox( '�Esta Ud. seguro que desea Aprobar las liquidaciones?', MB_ICONINFORMATION + MB_YESNO, 'Atenci�n' ) = ID_YES then
  begin
    AprobarPago;
    tbRefrescarClick(nil);
  end;
end;

procedure TfrmConsultaLiquidacionPagos.tbLimpiarClick(Sender: TObject);
{$IFDEF VER150}
var
  i: integer;
{$ENDIF}
begin
  cbPendientesDeAprobacion.Checked := False;
  cbAprobadas.Checked := False;
  cbPagosBloqueados.Checked := False;

{$IFDEF VER150}
  for i:=0 to SelectedList.Count - 1 do
    sdqConsulta.FreeBookmark(TBookmark(SelectedList.Objects[i]));
{$ENDIF}
  SelectedList.Clear;
  Grid.Refresh;
end;

procedure TfrmConsultaLiquidacionPagos.GridKeyPress(Sender: TObject;
  var Key: Char);
var
  idliq : Integer;
  codigoant : String;
const
  BARCODE_LENGTH = 15;
begin
  Verificar(sdqConsulta.IsEmpty, DBGrid, 'La grilla se encuentra vac�a.');
  if (Key in ['0'..'9']) then
  begin
    if Length (sBarCode) < BARCODE_LENGTH then
      sBarCode := sBarCode + Key;

    if (Length (sBarCode) >= BARCODE_LENGTH) then
    begin
      idliq := StrToInt(sBarCode);
      if sdqConsulta.Locate('ID', idliq, []) then
      begin
        sBarCode := '';
        GridCellClick(DBGrid.Columns[0])
      end
      else
      begin
        codigoant := sBarCode;
        sBarCode := '';
        Verificar(True, DBGrid, 'No se ha encontrado la liquidaci�n. '+codigoant);
      end;
    end;
    Key := #0
  end
end;

procedure TfrmConsultaLiquidacionPagos.FSFormKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  GridKeyPress(Sender,Key);
end;

procedure TfrmConsultaLiquidacionPagos.tbAprobacionduplicadosMultipleClick(Sender: TObject);
begin
  if MsgBox( 'Se modificaran todos los registros duplicados de las liquidaciones seleccionados que no est�n aprobadas ni rechazadas.�Desea Continuar?', MB_ICONINFORMATION + MB_YESNO, 'Atenci�n' ) = ID_YES then
  begin
    cbAprobadoConDup.Checked := False;
    cbRechazadoConDup.Checked := False;
    edMotivo.Clear;
    pnAprobacionConDup.ShowModal;
  end;
end;

procedure TfrmConsultaLiquidacionPagos.btnAceptarAprobConDupClick(
  Sender: TObject);
var
  i : Integer;
  sSql, estado : String;
begin
  Verificar(not cbAprobadoConDup.Checked and not cbRechazadoConDup.Checked, gbAprobacion,'Se debe seleccionar si es Rechazado o Aprobado.');
  Verificar(edMotivo.Text = '', edMotivo, 'Debe ingresar un motivo.');

  pnAprobacionConDup.ModalResult := mrOk;
  sdqConsulta.Refresh;
  try
    for i:=0 to SelectedList.Count-1 do
    begin
      BeginTrans(True);
      DBGrid.DataSource.DataSet.GotoBookmark(SelectedList.Objects[i]);

      if (ModoForm = mJuicioDemandada) or (ModoForm = mJuicioActora) then
      begin
        if cbAprobadoConDup.Checked then
          estado := ' pl_estadoduplicidad = ''A'' '
        else if cbRechazadoConDup.Checked then
          estado := ' pl_estadoduplicidad = ''R'', pl_estado = ''A'' ';

        sSql := ' UPDATE legales.lpl_pagolegal '+
                '    SET pl_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
                '        PL_FECHAAPROBACION = sysdate, '+
                '        PL_USUAPROBACION = '+SqlValue(Sesion.LoginName)+','+estado+
                '  WHERE pl_idliquidacion = '+SqlValue(SelectedList.Strings[i])+
                '    AND pl_duplicado = ''S'' '+
                '    AND pl_estadoduplicidad IS NULL '+
                '    AND pl_estado NOT IN(''E'', ''A'', ''X'')';
      end
      else if (ModoForm = mMediacion) then
      begin
        if cbAprobadoConDup.Checked then
          estado := ' pm_estadoduplicidad = ''A'' '
        else if cbRechazadoConDup.Checked then
          estado := ' pm_estadoduplicidad = ''R'', pm_estado = ''A'' ';
        sSql := ' UPDATE legales.lpm_pagomediacion '+
                '    SET pm_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
                '        PM_FECHAAPROBACION = sysdate, '+
                '        PM_USUAPROBACION = '+SqlValue(Sesion.LoginName)+','+estado+
                '  WHERE pm_idliquidacion = '+SqlValue(SelectedList.Strings[i])+
                '    AND pm_duplicado = ''S'' '+
                '    AND pm_estadoduplicidad IS NULL '+
                '    AND pm_estado NOT IN(''E'', ''A'', ''X'')';
      end
      else if (ModoForm = mSumario) then
      begin
        if cbAprobadoConDup.Checked then
          estado := ' ps_estadoduplicidad = ''A'' '
        else if cbRechazadoConDup.Checked then
          estado := ' ps_estadoduplicidad = ''R'', ps_estado = ''A'' ';

        sSql := ' UPDATE legales.lps_pagosumario '+
                '    SET ps_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
                '        PS_FECHAAPROBACION = sysdate, '+
                '        PS_USUAPROBACION = '+SqlValue(Sesion.LoginName)+','+estado+
                '  WHERE ps_idliquidacion = '+SqlValue(SelectedList.Strings[i])+
                '    AND ps_duplicado = ''S'' '+
                '    AND ps_estadoduplicidad IS NULL '+
                '    AND ps_estado NOT IN(''E'', ''A'', ''X'')';
      end;
      EjecutarSqlST(ssql);

    end;
    CommitTrans(True);
    SelectedList.Clear;
    Grid.Refresh;
  except
    on E: Exception do begin
       Rollback(true);
       ErrorMsg(E, 'Error al querer aprobar duplicados multiples.'+e.Message);
    end;
  end;
  tbRefrescarClick(nil);
end;

end.
