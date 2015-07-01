unit unRptLiquidacionLegalesMultiples;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,unPagosLegales,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, SDEngine, ArtQReports;

type
  TrptLiquidacionLegalesMultiples = class(TQuickRep)
    sdqLiquidacion: TSDQuery;
    qrbTitulo: TQRBand;
    c: TQRBand;
    QRShape1: TQRShape;
    qrlTitulo: TQRLabel;
    qrlLiquidacionNumero: TQRLabel;
    qrdbNroLiquidacion: TQRDBText;
    qrlConcepto: TQRLabel;
    qrlImportes: TQRLabel;
    qrdbImporteConRetencion: TQRDBText;
    qrlFactura: TQRLabel;
    qrdbFactura: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    sdqPagos: TSDQuery;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    qreNumero: TQRExpr;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText7: TQRDBText;
    qrCaratula: TQRLabel;
    qrlCarpeta: TQRLabel;
    qrlBarras: TArtQRLabel;
    QRShape12: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText10: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    qriLogo: TQRImage;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText11: TQRDBText;
    QRLblDelegacion: TQRLabel;
    qrlFechaVencimiento: TQRLabel;
    lbfechavencimiento: TQRDBText;
    lbCBU: TQRLabel;
    lbPagoExclusivo: TQRLabel;
    lbFormaPago: TQRLabel;
    qrdbCBU: TQRDBText;
    qrdbPagoExclusivo: TQRDBText;
    qrdbFormaPago: TQRDBText;
    procedure qreNumeroPrint(sender: TObject; var Value: String);
    procedure ImpresionMontos(sender: TObject; var Value: String);
    procedure QRLblDelegacionPrint(sender: TObject; var Value: String);
  private
    procedure Carga(Modo :TModoForm);
  public
    procedure VistaPrevia(AIdLiquidacion, ACopias: Integer; Modo :TModoForm);
  end;

var
  rptLiquidacionLegalesMultiples: TrptLiquidacionLegalesMultiples;

implementation

uses
  AnsiSql, unDmPrincipal, Dialogs, StrFuncs;

{$R *.DFM}

procedure TrptLiquidacionLegalesMultiples.Carga(Modo: TModoForm);
var
  SQLSortQuery: string;
begin
  SQLSortQuery := ' ';
  if (Modo = mfJuicioDemandada ) or (Modo = mfJuicioActora) then
  begin
    SQLSortQuery := ' ORDER BY pl_fechaalta ASC ';

    sdqPagos.SQL.Text :=
      ' SELECT pl_denpago concepto, '' Observaciones:'' || pl_comentario AS observaciones, '+
      '        pl_letrafactura || ''-'' || SUBSTR(pl_numerofactura, 3, 6) AS nrofactura, jt_numerocarpeta numero, '+
      '        (jt_demandante || '' C/ '' || jt_demandado) autos, NVL(pl_importepago, 0) + NVL(pl_importeconretencion, 0) importepago '+
      '   FROM legales.ljt_juicioentramite ljt, legales.v_lpl_pagolegal lpl, legales.llj_liquidacionjuicio '+
      '  WHERE ljt.jt_id = lpl.pl_idjuicioentramite '+
      '    AND lj_id = :idliquidacion '+
      '    AND pl_estado NOT IN(''A'') '+
      '    AND lj_id = pl_idliquidacion ' + SQLSortQuery;

    sdqLiquidacion.SQL.Text :=
      ' SELECT   lj_id AS ID, lj_usuemision AS usuemision, lj_fechaemision AS fechaemision, lj_fechavencimiento AS fechavencimiento,lj_paguesea AS paguesea, '+
      '          lj_chequenombre AS chequenombre, SUM(NVL(pl_importepago, 0)) + SUM(NVL(pl_importeconretencion, 0)) AS total, '+
      '          SUM(NVL(pl_importepago, 0)) AS sinretencion, SUM(NVL(pl_importeconretencion, 0)) conretencion, lj_detalle detalle, ' +
      '          el_nombre delegacion,  lj_pagoexclusivo pagoexclusivo, CE_METODOPAGO formapago, lj_cbu1 || '' '' || lj_cbu2 cbu '+
      '     FROM rce_chequeemitido, art.del_delegacion, legales.llj_liquidacionjuicio, legales.lpl_pagolegal '+
      '    WHERE lj_id = pl_idliquidacion '+
      '      AND pl_estado IN(''C'', ''E'',''X'') '+
      '      AND ce_id(+) = pl_idchequeemitido '+
      '      AND lj_delegacion = el_id(+) ' +
      '      AND lj_id = :idliquidacion '+
      ' GROUP BY lj_id, lj_usuemision, lj_fechaemision, lj_paguesea, lj_chequenombre, lj_detalle, el_nombre,lj_fechavencimiento, '+
      '           lj_pagoexclusivo, CE_METODOPAGO, lj_cbu1, lj_cbu2 ';

    qrlCarpeta.Caption := 'Carpeta';
    qrCaratula.Caption := 'Car�tula';
    //qrdbVenPago.Enabled := False;
    //qrlVencPago.Enabled := False;
    qrlFechaVencimiento.Enabled := False;
    lbfechavencimiento.Enabled := False;
    lbPagoExclusivo.Enabled := True;
    qrdbPagoExclusivo.Enabled := True;
    lbFormaPago.Enabled := True;
    qrdbFormaPago.Enabled := True;
    lbCBU.Enabled := True;
    qrdbCBU.Enabled := True;
  end
  else if (Modo = mfMediacion ) then
  begin

    SQLSortQuery := ' ORDER BY pm_fechaalta ASC ';

    sdqPagos.SQL.Text :=
      ' SELECT cp_denpago concepto, '' Observaciones:'' || pm_comentario AS observaciones, '+
      '        pm_letrafactura ||  ''-'' || SUBSTR(pm_numerofactura, 3, 6) AS nrofactura, '+
      '        me_numerofolio numero, (me_demandante || '' C/ '' || me_demandado) autos, '+
      '        NVL(pm_importepago, 0) + NVL(pm_importeconretencion, 0) importepago '+
      '   FROM legales.lme_mediacion, legales.lpm_pagomediacion, legales.llm_liquidacionmediacion, ' +
      '        art.scp_conpago '+
      '  WHERE me_id = pm_idmediacion '+
      '    AND lm_id = :idliquidacion '+
      '    AND pm_estado NOT IN(''A'') '+
      '    AND pm_conpago = cp_conpago '+
      '    AND lm_id = pm_idliquidacion ' + SQLSortQuery;

    sdqLiquidacion.SQL.Text :=
       'SELECT   lm_id AS ID, lm_usuemision AS usuemision, ' +
       '         lm_fechaemision AS fechaemision, lm_paguesea AS paguesea, ' +
       '         lm_chequenombre AS chequenombre, ' +
       '         lm_fechavencimiento AS fechavencimiento, ' +
       '           SUM (NVL (pm_importepago, 0)) ' +
       '         + SUM (NVL (pm_importeconretencion, 0)) AS total, ' +
       '         SUM (NVL (pm_importepago, 0)) AS sinretencion, ' +
       '         SUM (NVL (pm_importeconretencion, 0)) conretencion, ' +
       '         lm_detalle detalle, el_nombre delegacion, ' +
       '         pm_pagoexclusivo pagoexclusivo, ce_metodopago formapago, NULL cbu ' +
       '    FROM rce_chequeemitido, ' +
       '         art.del_delegacion, ' +
       '         legales.llm_liquidacionmediacion, ' +
       '         legales.lpm_pagomediacion ' +
       '   WHERE lm_id = pm_idliquidacion ' +
       '     AND pm_estado IN (''C'', ''E'', ''X'') ' +
       '     AND lm_delegacion = el_id(+) ' +
       '     AND ce_id(+) = pm_idchequeemitido ' +
       '     AND lm_id = :idliquidacion ' +
       'GROUP BY lm_id, ' +
       '         lm_usuemision, ' +
       '         lm_fechaemision, ' +
       '         lm_paguesea, ' +
       '         lm_chequenombre, ' +
       '         lm_detalle, ' +
       '         el_nombre, ' +
       '         lm_fechavencimiento, ' +
       '         pm_pagoexclusivo, ' +
       '         ce_metodopago ' ;


    qrlCarpeta.Caption := 'Folio';
    qrCaratula.Caption := 'Car�tula';
    //qrdbVenPago.Enabled := False;
    //qrlVencPago.Enabled := False;
    qrlFechaVencimiento.Enabled := true;
    lbfechavencimiento.Enabled := true;
    lbPagoExclusivo.Enabled := true;
    qrdbPagoExclusivo.Enabled := true;
    lbFormaPago.Enabled := true;
    qrdbFormaPago.Enabled := true;
    lbCBU.Enabled := true;
    qrdbCBU.Enabled := true;
  end
  else if (Modo = mfSumario) then
  begin
    SQLSortQuery :=  ' ORDER BY ps_id ASC  ';
    sdqPagos.SQL.Text :=
      ' SELECT cp_denpago AS concepto, '' Observaciones:'' || ps_comentario AS observaciones, '+
      '        ps_letrafactura || ''-'' || SUBSTR(ps_numerofactura, 3, 6) AS nrofactura, '+
      '        su_numerosumario AS numero, (su_numeroexpediente  '+
      '        || '' / '' || su_anioexpediente) AS autos, '+
      '        NVL(ps_importepago, 0) + NVL(ps_importeconretencion, 0) importepago, '+
      '        ps_fechavencimientopago AS fechavencimiento '+
      '   FROM legales.lsu_sumario, legales.lps_pagosumario, legales.lls_liquidacionsumario, '+
      '        art.scp_conpago '+
      '  WHERE su_id = ps_idsumario '+
      '    AND ls_id = :idliquidacion '+
      '    AND ps_estado NOT IN(''A'') '+
      '    AND ps_conpago = cp_conpago '+
      '    AND ls_id = ps_idliquidacion ' + SQLSortQuery;


    sdqLiquidacion.SQL.Text :=
      ' SELECT   ls_id AS ID, ls_usuemision AS usuemision, ls_fechaemision AS fechaemision, '+
      '          ls_paguesea AS paguesea, ls_chequenombre AS chequenombre, ls_fechavencimiento AS fechavencimiento,'+
      '          SUM(NVL(ps_importepago, 0)) + SUM(NVL(ps_importeconretencion, 0)) AS total, '+
      '          SUM(NVL(ps_importepago, 0)) AS sinretencion, SUM(NVL(ps_importeconretencion, 0)) conretencion, ls_detalle detalle, ' +
      '          el_nombre delegacion '+
      '     FROM art.del_delegacion, legales.lls_liquidacionsumario, legales.lps_pagosumario '+
      '    WHERE ls_id = ps_idliquidacion '+
      '      AND ps_estado IN(''C'', ''E'', ''X'') '+
      '      AND ls_delegacion = el_id(+) ' +
      '      AND ls_id = :idliquidacion '+
      ' GROUP BY ls_id, ls_usuemision, ls_fechaemision, ls_paguesea, ls_chequenombre,ls_detalle, el_nombre,ls_fechavencimiento ';

    qrlCarpeta.Caption := 'Sumario';
    qrCaratula.Caption := 'Nro Expediente';
    qrlTitulo.Caption := 'LIQUIDACI�N SIN SINIESTRO';
    //qrdbVenPago.Enabled := True;
    //qrlVencPago.Enabled := True;
    qrlFechaVencimiento.Enabled := True;
    lbfechavencimiento.Enabled := True;
    lbPagoExclusivo.Enabled := False;
    qrdbPagoExclusivo.Enabled := False;
    lbFormaPago.Enabled := False;
    qrdbFormaPago.Enabled := False;
    lbCBU.Enabled := False;
    qrdbCBU.Enabled := False;
  end;
end;

procedure TrptLiquidacionLegalesMultiples.VistaPrevia(AIdLiquidacion, ACopias: Integer; Modo :TModoForm );
begin
  try
    qriLogo.Picture.Bitmap.LoadFromResourceName( hInstance, 'LOGO_2009_BYN_CHICO' );
    Carga(Modo);
    sdqLiquidacion.ParamByName('IDLIQUIDACION').AsInteger := AIdLiquidacion;
    sdqPagos.ParamByName('IDLIQUIDACION').AsInteger := AIdLiquidacion;
    sdqLiquidacion.Open;
    sdqPagos.Open;
    self.PrinterSettings.Copies := ACopias;
    self.PreviewModal;
  finally
    sdqPagos.Close;
    sdqLiquidacion.Close;
  end;
end;

procedure TrptLiquidacionLegalesMultiples.qreNumeroPrint(sender: TObject;
  var Value: String);
begin
  Value := sdqLiquidacion.FieldByName('ID').AsString;
  qrlBarras.Caption := '*'+LPad(sdqLiquidacion.FieldByName('ID').AsString,'0',15)+'*';
end;

procedure TrptLiquidacionLegalesMultiples.ImpresionMontos(sender: TObject;
  var Value: String);
begin
  Value := Get_AjusteDecimales(Value);
end;

procedure TrptLiquidacionLegalesMultiples.QRLblDelegacionPrint(
  sender: TObject; var Value: String);
begin
  if not sdqLiquidacion.FieldByName('delegacion').IsNull then
    Value := 'Enviar a delegaci�n ' + sdqLiquidacion.FieldByName('delegacion').AsString
  else
    Value := '';
end;

end.
