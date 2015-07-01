unit unRptReciboLiquidacionMultiple;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, unPagosLegales,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, SDEngine;

type
  TfrmRptReciboLiquidacionMultiple = class(TQuickRep)
    qrbTitulo: TQRBand;
    QRShape4: TQRShape;
    qrlLiquidacionNumero: TQRLabel;
    qrdbNroLiquidacion: TQRDBText;
    QRShape2: TQRShape;
    qrlTitulo: TQRLabel;
    qriLogo: TQRImage;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    sdqPagos: TSDQuery;
    sdqLiquidacion: TSDQuery;
    qrdbTotal: TQRDBText;
    QRLabel1: TQRLabel;
    qrlCantidadEnLetras: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    qrl: TQRLabel;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    qrlChequesANombreDe: TQRLabel;
    qrdbChequeANombreDe: TQRDBText;
    qrlConcepto: TQRLabel;
    qrlImportes: TQRLabel;
    qrlFactura: TQRLabel;
    qrCaratula: TQRLabel;
    qrlCarpeta: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape6: TQRShape;
    qrdbImporteConRetencion: TQRDBText;
    qrdbFactura: TQRDBText;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    QRShape13: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    lbCBU: TQRLabel;
    lbPagoExclusivo: TQRLabel;
    lbFormaPago: TQRLabel;
    qrdbCBU: TQRDBText;
    qrdbPagoExclusivo: TQRDBText;
    qrdbFormaPago: TQRDBText;
    procedure qrlCantidadEnLetrasPrint(sender: TObject; var Value: String);
    procedure ImpresionMontos(sender: TObject; var Value: String);
  private
    procedure Carga(Modo: TModoForm);

  public
    procedure VistaPrevia(AIdLiquidacion, ACopias: Integer; Modo : TModoForm);
  end;

var
  frmRptReciboLiquidacionMultiple: TfrmRptReciboLiquidacionMultiple;

implementation

uses
  Numeros, StrFuncs;
{$R *.DFM}

procedure TfrmRptReciboLiquidacionMultiple.Carga(Modo: TModoForm);
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
      '    AND NVL(pl_importepago, 0) + NVL(pl_importeconretencion, 0) > 0 '+
      '    AND lj_id = :idliquidacion '+
      '    AND pl_estado NOT IN(''A'' ) '+
      '    AND lj_id = pl_idliquidacion ' + SQLSortQuery;

    sdqLiquidacion.SQL.Text :=
      ' SELECT   lj_id AS ID, lj_usuemision AS usuemision, lj_fechaemision AS fechaemision, lj_paguesea AS paguesea, '+
      '          lj_chequenombre AS chequenombre, SUM(NVL(pl_importepago, 0)) + SUM(NVL(pl_importeconretencion, 0)) AS total, '+
      '          SUM(NVL(pl_importepago, 0)) AS sinretencion, SUM(NVL(pl_importeconretencion, 0)) conretencion, lj_detalle detalle, '+
      '          lj_pagoexclusivo pagoexclusivo, CE_METODOPAGO,  lj_cbu1 || '' '' || lj_cbu2 cbu '+
      '     FROM rce_chequeemitido, art.del_delegacion, legales.llj_liquidacionjuicio, legales.lpl_pagolegal '+
      '    WHERE lj_id = pl_idliquidacion '+
      '      AND pl_estado IN(''C'', ''E'', ''X'') '+
      '      AND lj_id = :idliquidacion '+
      '      AND ce_id(+) = pl_idchequeemitido '+
      '      AND lj_delegacion = el_id(+) '+
      ' GROUP BY lj_id, lj_usuemision, lj_fechaemision, lj_paguesea, lj_chequenombre,  lj_detalle, el_nombre, '+
      '          lj_fechavencimiento, lj_pagoexclusivo, CE_METODOPAGO, lj_cbu1, lj_cbu2 ';

    qrlCarpeta.Caption := 'Carpeta';
    qrCaratula.Caption := 'Car�tula';
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
      '   FROM legales.lme_mediacion, legales.lpm_pagomediacion, legales.llm_liquidacionmediacion, '+
      '        art.scp_conpago '+
      '  WHERE me_id = pm_idmediacion '+
      '    AND lm_id = :idliquidacion '+
      '    AND NVL(pm_importepago, 0) + NVL(pm_importeconretencion, 0) > 0 '+
      '    AND pm_estado NOT IN(''A'') '+
      '    AND pm_conpago = cp_conpago '+
      '    AND lm_id = pm_idliquidacion ' + SQLSortQuery;

    sdqLiquidacion.SQL.Text :=
      ' SELECT   lm_id AS ID, lm_usuemision AS usuemision, lm_fechaemision AS fechaemision, '+
      '          lm_paguesea AS paguesea, lm_chequenombre AS chequenombre, '+
      '          SUM(NVL(pm_importepago, 0)) + SUM(NVL(pm_importeconretencion, 0)) AS total, '+
      '          SUM(NVL(pm_importepago, 0)) AS sinretencion, SUM(NVL(pm_importeconretencion, 0)) conretencion, lm_detalle detalle, '+
      '          pm_pagoexclusivo pagoexclusivo, ce_metodopago, NULL CBU  '+
      '     FROM rce_chequeemitido, legales.llm_liquidacionmediacion, legales.lpm_pagomediacion '+
      '    WHERE lm_id = pm_idliquidacion '+
      '      AND pm_estado IN (''C'', ''E'', ''X'') '+
      '      AND ce_id(+) = pm_idchequeemitido '+
      '      AND lm_id = :idliquidacion '+
      ' GROUP BY lm_id, lm_usuemision, lm_fechaemision, lm_paguesea, lm_chequenombre, lm_detalle, pm_pagoexclusivo, ce_metodopago';


    qrlCarpeta.Caption := 'Folio';
    qrCaratula.Caption := 'Car�tula';

    lbPagoExclusivo.Enabled := TRUE;
    qrdbPagoExclusivo.Enabled := TRUE;
    lbFormaPago.Enabled := TRUE;
    qrdbFormaPago.Enabled := TRUE;
    lbCBU.Enabled := TRUE;
    qrdbCBU.Enabled := TRUE;

  end;
end;




procedure TfrmRptReciboLiquidacionMultiple.qrlCantidadEnLetrasPrint(sender: TObject;
  var Value: String);
begin
  Value := 'PESOS '+NumLetras(sdqLiquidacion.fieldbyname('total').AsCurrency, 2, true);
end;

procedure TfrmRptReciboLiquidacionMultiple.VistaPrevia(AIdLiquidacion, ACopias: Integer; Modo : TModoForm);
begin
  try
    Carga(Modo);
    qriLogo.Picture.Bitmap.LoadFromResourceName( hInstance, 'LOGO_2009_BYN_CHICO' );
    sdqLiquidacion.ParamByName('IDLIQUIDACION').AsInteger := AIdLiquidacion;
    sdqPagos.ParamByName('IDLIQUIDACION').AsInteger := AIdLiquidacion;
    sdqLiquidacion.Open;
    sdqPagos.Open;
    if sdqPagos.RecordCount > 0 then
    begin
      self.PrinterSettings.Copies := ACopias;
      self.PreviewModal;
    end;
  finally
    sdqLiquidacion.Close;
    sdqPagos.Close;
  end;
end;

procedure TfrmRptReciboLiquidacionMultiple.ImpresionMontos(sender: TObject;
  var Value: String);
begin
  Value := Get_AjusteDecimales(Value);
end;

end.
