unit unRptEventos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, SDEngine, ExtCtrls;

type
  TfrmRptEventos = class(TForm)
    rptEventos: TQuickRep;
    sdqReporteDET: TSDQuery;
    qrbTitulo: TQRBand;
    qrbDetalle: TQRBand;
    sdqReporteCAB: TSDQuery;
    qrdOrden: TQRDBText;
    qrdCuit: TQRDBText;
    qrdEmpresa: TQRDBText;
    qrdCuil: TQRDBText;
    qrdTipoAccidente: TQRDBText;
    qrdAccidenteTransito: TQRDBText;
    qrdCaudaFin: TQRDBText;
    qrdNroEvento: TQRDBText;     
    qrdCodigo: TQRDBText;
    qrdDecripcionEvento: TQRDBText;
    qrdFechaEvento: TQRDBText;
    qrdObservaciones: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
  private
  public
  end;

var
  frmRptEventos: TfrmRptEventos;

implementation

{$R *.DFM}

end.


