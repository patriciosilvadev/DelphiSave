unit unPagosLegales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unCustomGridABM, FieldHider, ShortCutControl, Placemnt,
  artSeguridad, QueryPrint, QueryToFile, ExportDialog, SortDlg, DB,
  SDEngine, StdCtrls, ExtCtrls, FormPanel, Grids, DBGrids, RXDBCtrl,
  ArtComboBox, ArtDBGrid, ComCtrls, ToolWin, Mask, PatternEdit, IntEdit,
  unArtFrame, unArtDBAwareFrame, unFraCodigoDescripcion,
  unfraCodigoDescripcionExt, CurrEdit, ToolEdit, DateComboBox,
  unDmPrincipal, Buttons, RxCurrEdit, RxToolEdit, RxPlacemnt;

type
  TModoForm = (mfJuicioDemandada, mfJuicioActora, mfMediacion, mfSumario, mfNone);

  TfrmPagosLegales = class(TfrmCustomGridABM)
    lblNroLiquidacion: TLabel;
    edNroLiquidacion: TIntEdit;
    lblTipoBeneficiario: TLabel;
    fraTipoBeneficiario: TfraCodigoDescripcionExt;
    lblBeneficiario: TLabel;
    fraBeneficiario: TfraCodigoDescripcionExt;
    ShortCutControl1: TShortCutControl;
    fpImpresionLiquidacion: TFormPanel;
    btnAceptarImpresion: TButton;
    btnCancelarCambioPreventor: TButton;
    gbCopias: TGroupBox;
    lblCantidadCopias: TLabel;
    lblLiquidacion: TLabel;
    udCantidadReciboLiquidacion: TUpDown;
    edCantidadCopiasReciboLiquidacion: TIntEdit;
    udCantidadLiquidacion: TUpDown;
    edCantidadCopiasLiquidacion: TIntEdit;
    fpJuzgado: TFormPanel;
    btnAcept: TButton;
    btnCancel: TButton;
    lbEtapaJuzgado: TLabel;
    fraJuicioJuzgado: TfraCodigoDescripcionExt;
    pnAprobacionConDup: TFormPanel;
    btnAceptarAprobConDup: TButton;
    btnCancelarAprobConDup: TButton;
    tbAprobacionConceptosDuplicados: TToolButton;
    gbAprobacion: TGroupBox;
    cbAprobadoConDup: TCheckBox;
    cbRechazadoConDup: TCheckBox;
    lbMotivo: TLabel;
    edMotivo: TMemo;
    GroupBox1: TGroupBox;
    lblEtapa: TLabel;
    lblConceptoPago: TLabel;
    Bevel1: TBevel;
    lblNroFactura: TLabel;
    lblFechaFacturaPago: TLabel;
    lblDetalleFacturaPago: TLabel;
    lblImpSujetoaRetGanaciasPago: TLabel;
    lblImporteSinRetGanaciasPago: TLabel;
    lblFechaVencimiento: TLabel;
    lbFechaRecepcionFactura: TLabel;
    lbSector: TLabel;
    lbIntereses: TLabel;
    fraConceptoPago: TfraCodigoDescripcionExt;
    pnlFactura: TPanel;
    peLetraFactura: TPatternEdit;
    meSituacionFactura: TMaskEdit;
    meNumeroFactura: TMaskEdit;
    edFechaFacturaPago: TDateComboBox;
    edObservaciones: TEdit;
    edImpSujetoaRetGanaciasPago: TCurrencyEdit;
    edImpSinRetencionesGanPagos: TCurrencyEdit;
    dcbFechaVencimientoPago: TDateComboBox;
    edFechaRecepcionFactura: TDateComboBox;
    fraSectores: TfraCodigoDescripcionExt;
    fraInteresesInstancias: TfraCodigoDescripcionExt;
    gbComprobantes: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    edComprobante: TEdit;
    edBUDI: TEdit;
    gbReclamo: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    btnBuscarEmbargo: TBitBtn;
    edEmbargo: TCurrencyEdit;
    edRecursoExtraord: TCurrencyEdit;
    btnBuscarJuicio: TBitBtn;
    gbPago: TGroupBox;
    lblPagueseA: TLabel;
    lblChequeA: TLabel;
    Label4: TLabel;
    edChequeAlaOrdenDe: TEdit;
    fraPagueseA: TfraCodigoDescripcionExt;
    chkPagoExclusivo: TCheckBox;
    Label3: TLabel;
    Label2: TLabel;
    edDetalleImpresion: TMemo;
    tbEditar: TToolButton;
    Panel1: TPanel;
    btnAceptarEdicion: TButton;
    btnCancelarEdicion: TButton;
    pnlBottom: TPanel;
    fraEtapa: TfraCodigoDescripcionExt;
    chkEnviarADelegacion: TCheckBox;
    fpPagoElectronico: TFormPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edCBU1: TIntEdit;
    edJuzgado: TEdit;
    edSecretaria: TEdit;
    edExpediente: TEdit;
    edFuero: TEdit;
    edCaratula: TEdit;
    edNroOficio: TEdit;
    edCBU2: TPatternEdit;
    ToolBar1: TToolBar;
    tbGuardar: TToolButton;
    tbLimpiarPagoElec: TToolButton;
    tbSalirPagoElec: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    tbMEP: TToolButton;
    tbSeparador2: TToolButton;
    lbCuotas: TLabel;
    edCuotas: TPatternEdit;
    plTotalesPago: TPanel;
    lbSumatoria: TLabel;
    lblSumatoriaPagosConRet: TEdit;
    lblSumatoriaPagosSinRet: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure tbRefrescarClick(Sender: TObject);
    procedure tbModificarClick(Sender: TObject);
    procedure btnAceptarImpresionClick(Sender: TObject);
    procedure tbImprimirClick(Sender: TObject);
    procedure tbEliminarClick(Sender: TObject);
    procedure GridGetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure fraBeneficiariocmbDescripcionDropDown(Sender: TObject);
    procedure tbNuevoClick(Sender: TObject);
    procedure fraPagueseAcmbDescripcionChange(Sender: TObject);
    procedure tbAprobacionConceptosDuplicadosClick(Sender: TObject);
    procedure cbRechazadoConDupClick(Sender: TObject);
    procedure cbAprobadoConDupClick(Sender: TObject);
    procedure btnAceptarAprobConDupClick(Sender: TObject);
    procedure btnBuscarJuicioClick(Sender: TObject);
    procedure btnBuscarEmbargoClick(Sender: TObject);
    procedure tbEditarClick(Sender: TObject);
    procedure btnCancelarEdicionClick(Sender: TObject);
    procedure btnAceptarEdicionClick(Sender: TObject);
    procedure chkEnviarADelegacionClick(Sender: TObject);
    procedure btnCancelarPagoElectClick(Sender: TObject);
    procedure tbLimpiarPagoElecClick(Sender: TObject);
    procedure tbSalirPagoElecClick(Sender: TObject);
    procedure tbMEPClick(Sender: TObject);
    procedure tbGuardarClick(Sender: TObject);
    procedure chkPagoExclusivoClick(Sender: TObject);
    procedure GridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    FModoForm: TModoForm;
    FIDLiquidacion : Integer;
    FExtraConditionConceptoPago : String;
    FIdPago :Integer;
    FNumPago : Integer;
    idJuicio : Integer;
    FNroOficio : String;
    FJuzgado : String;
    FSecretaria : String;
    FExpediente : String;
    FFuero : String;
    FCaratula : String;
    FCBU1 : String;
    FCBU2 : String;
    FPlandePago : Boolean;
    procedure SetModoForm(const Value: TModoForm);
    procedure fraTipoBeneficiarioChange(Sender: TObject);
    procedure fraEtapaOnChange(Sender: TObject);
    procedure fraBeneficiarioChange(Sender: TObject);
    procedure GuardarJuicio;
    procedure GuardarMediacion;
    procedure GuardarSumario;
    procedure ValidarJuicio;
    procedure SetLiquidacion(const value : Integer);
    procedure LoadJuicio;
    procedure ValidarMediacion;
    procedure ValidarSumario;
    procedure LoadMediacion;
    procedure LoadSumario;
    procedure ConceptoPagoOnChange(Sender : Tobject);
    procedure HabilitarMEP;
    function isCargaCuotas(idJuicio : Integer; iConceptoPago : integer): Boolean;
    procedure SumatoriaImportes;
    procedure CalcControlWidthLeft;
  public
    property ModoForm: TModoForm read FModoForm write SetModoForm;
    property idLiquidacion: Integer read FIDLiquidacion write SetLiquidacion;
  protected
    procedure ClearControls; override;
    function DoABM: Boolean; override;
    procedure LoadControls; override;
    function Validar: Boolean; override;
  end;

var
  frmPagosLegales: TfrmPagosLegales;

implementation

{$R *.dfm}

uses
  AnsiSql, unSesion, SqlFuncs, VclExtra, unCustomConsulta, unComunes, CustomDlgs,
  StrFuncs, General, CUIT, unLegales, unRptReciboLiquidacionMultiple,unBuscarJuicio,
  unRptLiquidacionLegalesMultiples, unMoldeEnvioMail, unBuscarEmbargo, Numeros;

{ TfrmPagosLegales }

procedure TfrmPagosLegales.SetModoForm(const Value: TModoForm);
begin
  FModoForm := Value;
  if FModoForm = mfJuicioDemandada then
  begin
    lblEtapa.Caption := 'Juicio';
    fraTipoBeneficiario.ExtraCondition := fraTipoBeneficiario.ExtraCondition + ' AND BP_ETAPA like ''%JD%'' ';
    Sql.TableName := 'legales.llj_liquidacionjuicio';
    FExtraConditionConceptoPago := ' cp_tipo = ''L'' AND cp_automatico = ''N'' ';
    lbFechaRecepcionFactura.Visible := True;
    edFechaRecepcionFactura.Visible := True;
    gbReclamo.Visible := True;
    lbCuotas.Visible := True;
    edCuotas.Visible := true;
    fpAbm.Height := 310;
  end;
  if FModoForm = mfJuicioActora then
  begin
    lblEtapa.Caption := 'Juicios';
    fraTipoBeneficiario.ExtraCondition := fraTipoBeneficiario.ExtraCondition + ' AND BP_ETAPA like ''%JA%'' ';
    Sql.TableName := 'legales.llj_liquidacionjuicio';
    FExtraConditionConceptoPago := ' cp_tipo = ''A'' AND cp_automatico = ''N'' ';
    lbFechaRecepcionFactura.Visible := True;
    edFechaRecepcionFactura.Visible := True;
    gbReclamo.Visible := True;
    lbCuotas.Visible := False;
    edCuotas.Visible := False;
    fpAbm.Height := 310;
  end;
  if FModoForm = mfMediacion then
  begin
    lblEtapa.Caption := 'Mediaci�n';
    fraTipoBeneficiario.ExtraCondition := fraTipoBeneficiario.ExtraCondition + ' AND BP_ETAPA like ''%ME%'' ';
    Sql.TableName := 'legales.llm_liquidacionmediacion';
    FExtraConditionConceptoPago := ' cp_tipo = ''D''  AND cp_automatico = ''N'' ';
    lbFechaRecepcionFactura.Visible := True;
    edFechaRecepcionFactura.Visible := True;
    lbCuotas.Visible := False;
    edCuotas.Visible := False;
    fpAbm.Height := 275;
  end;
  if FModoForm = mfSumario then
  begin
    lblEtapa.Caption := 'Sumario';
    fraTipoBeneficiario.ExtraCondition := fraTipoBeneficiario.ExtraCondition + ' AND BP_ETAPA like ''%SU%'' ';
    Sql.TableName := 'legales.lls_liquidacionsumario';
    FExtraConditionConceptoPago := ' cp_tipo = ''U''  AND cp_automatico = ''N'' ';
    lbFechaRecepcionFactura.Visible := False;
    edFechaRecepcionFactura.Visible := False;
    lbSector.Visible := True;
    fraSectores.Visible := True;
    gbComprobantes.Visible := True;
    lbCuotas.Visible := False;
    edCuotas.Visible := False;
    fpAbm.Height := 330;
  end;

  Self.Caption := 'Pagos ' + lblEtapa.Caption;
end;

procedure TfrmPagosLegales.SumatoriaImportes;
begin
    CalcControlWidthLeft;

    lbSumatoria.Caption := 'Totales ';
    lblSumatoriaPagosConRet.Text := '';
    lblSumatoriaPagosSinRet.Text := '';

    if FModoForm = mfJuicioDemandada then begin

     // Ticket 66098
      lblSumatoriaPagosConRet.Text := ValorSql(
      ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalretenidoliquidacionjd('+SqlValue(idLiquidacion)+'), 0)'+
             ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
      '   FROM DUAL ');

      lblSumatoriaPagosSinRet.Text := ValorSql(
      ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalliquidacionjd('+SqlValue(idLiquidacion)+'), 0)'+
             ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
      '   FROM DUAL ');

    end
    else if FModoForm = mfJuicioActora then begin
      lblSumatoriaPagosConRet.Text := ValorSql(
      ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalretenidoliquidacionja('+SqlValue(idLiquidacion)+'), 0)'+
             ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
      '   FROM DUAL ');

      lblSumatoriaPagosSinRet.Text := ValorSql(
      ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalliquidacionja('+SqlValue(idLiquidacion)+'), 0)'+
             ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
      '   FROM DUAL ');
    end
    else if FModoForm = mfMediacion then begin
      lblSumatoriaPagosConRet.Text := ValorSql(
      ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalretenidoliquidacionme('+SqlValue(idLiquidacion)+'), 0)'+
             ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
      '   FROM DUAL ');

      lblSumatoriaPagosSinRet.Text := ValorSql(
      ' SELECT LTRIM(TO_CHAR(NVL(art.legales.get_totalliquidacionme('+SqlValue(idLiquidacion)+'), 0)'+
             ' , ''L999G999G990D00'', ''NLS_NUMERIC_CHARACTERS = '''',.'''' '')) '+
      '   FROM DUAL ');
    end
    else begin
      plTotalesPago.Visible := False;
    end;

end;

procedure TfrmPagosLegales.FormCreate(Sender: TObject);
begin
  FNumPago := 0;
  vclextra.LockControls([edNroLiquidacion ], True);
  fraEtapa.OnChange := fraEtapaOnChange;
  with fraTipoBeneficiario do
  begin
    TableName   := 'legales.lbp_beneficiariopago';
    FieldID     := 'bp_id';
    FieldCodigo := 'bp_id';
    FieldDesc   := 'bp_descripcion';
    FieldBaja   := 'bp_fechabaja';
    Showbajas   := false;
    OnChange    := fraTipoBeneficiarioChange;
    ExtraCondition := ' AND EXISTS(SELECT 1 ' +
                      '            FROM art.scp_conpago, legales.lbc_beneficiarioconceptopago ' +
                      '            WHERE bp_id = bc_idbeneficiariopago ' +
                      '             AND bc_fechabaja IS NULL)';
//hacer una nueva tabla de conceptos de pagos de legales y agregar el campo carga multiple
//                      '             AND cp_cargamultiple = ''S'')';
  end;

  with fraInteresesInstancias do
  begin
    TableName   := 'legales.lii_interesesinstancia';
    FieldID     := 'ii_id';
    FieldCodigo := 'ii_id';
    FieldDesc   := 'ii_descripcion';
    FieldBaja   := 'ii_fechabaja';
    Showbajas   := False;
  end;

  with fraConceptoPago do
  begin
    TableName   := 'art.scp_conpago';
    FieldID     := 'cp_conpago';
    FieldCodigo := 'cp_conpago';
    FieldDesc   := 'cp_denpago';
    FieldBaja   := 'cp_fbaja';
    Showbajas   := true;
    OnChange    := ConceptoPagoOnChange;
  end;

  with fraSectores do
  begin
    TableName   := 'ART.USC_SECTORES';
    FieldID     := 'SC_ID';
    FieldCodigo := 'SC_ID';
    FieldDesc   := 'SC_DESCRIPCION';
    FieldBaja   := 'SC_FECHABAJA';
    ShowBajas 	:= True;
  end;

  with fraJuicioJuzgado do
  begin
    FieldID     := 'jt_id';
    FieldCodigo := 'jt_numerocarpeta';
    FieldDesc   := 'jt_demandante || '' C/ '' || jt_demandado || '' '' || jt_caratula ';
    TableName   := 'legales.ljt_juicioentramite';
    Sql         := ' SELECT DISTINCT jt_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                   '                 jt_numerocarpeta ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                   '                 jt_demandante || '' C/ '' || jt_demandado '+
                   '                 || '' '' || jt_caratula ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                   '   FROM legales.ljt_juicioentramite '+
                   '  WHERE 1 = 1 ';
  end;

  vclExtra.LockControls([fraBeneficiario,edCuotas],True);
  vclExtra.LockControls([fraPagueseA],True);
  tbNuevo.Enabled := False;
  tbSeparador2.Left := tbSalir.Left -1;
  tbMEP.Left := tbSalir.Left -1;
  tbEditar.Left := tbSalir.Left -1;
  tbAprobacionConceptosDuplicados.Left := tbSalir.Left -1;
  inherited;
end;

procedure TfrmPagosLegales.fraTipoBeneficiarioChange(Sender: TObject);
begin
  vclExtra.LockControls([fraBeneficiario, fraPagueseA],not fraTipoBeneficiario.IsSelected);
  fraBeneficiario.Clear;
  fraPagueseA.Clear;
  chkEnviarADelegacion.Enabled := false;
  if (fraTipoBeneficiario.Value = 1) and ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
    with fraBeneficiario do
    begin
      FieldID     := 'jz_id';
      FieldCodigo := 'jz_id';
      FieldDesc   := 'ju_descripcion || '' '' || fu_descripcion || '' '' || '+
                     'jz_descripcion || '' '' || sc_descripcion ';
      TableName   := 'legales.ljz_juzgado';
      ExtraTables := ',legales.ljt_juicioentramite, legales.lju_jurisdiccion, legales.lfu_fuero, legales.lsc_secretaria ';

      Sql         := ' SELECT DISTINCT jz_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jz_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 ju_descripcion || '' '' || fu_descripcion || '' '' || '+
                     '                 jz_descripcion || '' '' || sc_descripcion '+ ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.ljt_juicioentramite, legales.lju_jurisdiccion, '+
                     '        legales.ljz_juzgado, legales.lfu_fuero, legales.lsc_secretaria '+
                     '  WHERE 1 = 1 '+
                     '    AND (    (ju_id = jt_idjurisdiccion) '+
                     '         AND (ju_id = jz_idjurisdiccion) '+
                     '         AND (jz_id = jt_idjuzgado) '+
                     '         AND (fu_id = jt_idfuero) '+
                     '         AND (fu_id = jz_idfuero) '+
                     '         AND (sc_id = jt_idsecretaria))';
      ExtraCondition := '    AND (    (ju_id = jt_idjurisdiccion) '+
                     '         AND (ju_id = jz_idjurisdiccion) '+
                     '         AND (jz_id = jt_idjuzgado) '+
                     '         AND (fu_id = jt_idfuero) '+
                     '         AND (fu_id = jz_idfuero) '+
                     '         AND (sc_id = jt_idsecretaria))';

{      FieldDesc   := 'ju_descripcion || '' '' || fu_descripcion || '' '' || '+
                     'jz_descripcion || '' '' || sc_descripcion || '' '' || in_descripcion';
      TableName   := 'legales.ljz_juzgado';
      ExtraTables := ',legales.lij_instanciajuicioentramite, legales.lju_jurisdiccion, legales.lfu_fuero, '+
                     ' legales.lin_instancia, legales.lsc_secretaria';
      Sql         := ' SELECT DISTINCT jz_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jz_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 ju_descripcion || '' '' || fu_descripcion || '' '' || '+
                     '                 jz_descripcion || '' '' || sc_descripcion || '' '' || '+
                     '                 in_descripcion'     + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lij_instanciajuicioentramite, legales.lju_jurisdiccion, '+
                     '        legales.ljz_juzgado, legales.lfu_fuero, legales.lin_instancia, '+
                     '        legales.lsc_secretaria'+
                     '  WHERE 1 = 1 '+
                     '    AND (    (ju_id = ij_idjurisdiccion) '+
                     '         AND (ju_id = jz_idjurisdiccion) '+
                     '         AND (jz_id = ij_idjuzgado) '+
                     '         AND (fu_id = ij_idfuero) '+
                     '         AND (fu_id = jz_idfuero) '+
                     '         AND (in_id = ij_idinstancia) '+
                     '         AND (in_id = jz_idinstancia) '+
                     '         AND (sc_id = ij_idsecretaria)) ';

      ExtraCondition := '    AND (    (ju_id = ij_idjurisdiccion) '+
                        '         AND (ju_id = jz_idjurisdiccion) '+
                        '         AND (jz_id = ij_idjuzgado) '+
                        '         AND (fu_id = ij_idfuero) '+
                        '         AND (fu_id = jz_idfuero) '+
                        '         AND (in_id = ij_idinstancia) '+
                        '         AND (in_id = jz_idinstancia) '+
                        '         AND (sc_id = ij_idsecretaria)) ';
}
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
      HabilitarMEP;
    end;

  if (fraTipoBeneficiario.Value = 1) and (FModoForm = mfSumario) then
    with fraBeneficiario do
    begin
      FieldID     := 'jz_id';
      FieldCodigo := 'jz_id';
      FieldDesc   := 'ju_descripcion || '' '' || fu_descripcion || '' '' || '+
                     'jz_descripcion || '' '' || sc_descripcion ';
      TableName   := 'legales.ljz_juzgado';
      ExtraTables := ',legales.lij_instanciajuicioentramite, legales.lju_jurisdiccion, legales.lfu_fuero, '+
                     ' legales.lin_instancia, legales.lsc_secretaria';
      Sql         := ' SELECT DISTINCT jz_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jz_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 ju_descripcion || '' '' || fu_descripcion || '' '' || '+
                     '                 jz_descripcion || '' '' || sc_descripcion '+ ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lsu_sumario , legales.lju_jurisdiccion, '+
                     '        legales.ljz_juzgado, legales.lfu_fuero, legales.lsc_secretaria'+
                     '  WHERE 1 = 1 '+
                     '    AND ( (ju_id = su_idjurisdiccion) '+
                     '    AND (ju_id = jz_idjurisdiccion ) '+
                     '    AND (jz_id = su_idjuzgado) '+
                     '    AND (fu_id = su_idfuero) '+
                     '    AND (fu_id = jz_idfuero) '+
                     '    AND (sc_id = su_idsecretaria)) ';

      ExtraCondition :=
                     '    ( (ju_id = su_idjurisdiccion) '+
                     '    AND (ju_id = jz_idjurisdiccion ) '+
                     '    AND (jz_id = su_idjuzgado) '+
                     '    AND (fu_id = su_idfuero) '+
                     '    AND (fu_id = jz_idfuero) '+
                     '    AND (sc_id = su_idsecretaria)) ';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;


  if (fraTipoBeneficiario.Value = 2) then
    with fraBeneficiario do
    begin
      FieldID     := 'tj_id';
      FieldCodigo := 'tj_id';
      FieldDesc   := 'tj_nombre';
      TableName   := 'ctj_trabajador';
      ExtraTables := ', art.sex_expedientes, legales.lme_mediacion';
      Sql         := ' SELECT DISTINCT tj_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 tj_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 tj_nombre '    + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM ctj_trabajador , art.sex_expedientes, legales.lme_mediacion '+
                     '  WHERE 1 = 1 '+
                     '    AND me_idexpediente = ex_id ' +
                     '    AND ex_cuil = tj_cuil';
      ExtraCondition := 'AND me_idexpediente = ex_id ' +
                     ' AND ex_cuil = tj_cuil';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;

  if (fraTipoBeneficiario.Value = 3) then
    with fraBeneficiario do
    begin
      FieldID     := 'pe_id';
      FieldCodigo := 'pe_id';
      FieldDesc   := 'pe_nombre';
      TableName   := 'legales.lpe_perito';
      ExtraTables := ',legales.ljt_juicioentramite, legales.lpj_peritajejuicio';
      Sql         := ' SELECT DISTINCT pe_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 pe_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 pe_nombre '    + ' AS ' + CD_ALIAS_DESC + ', ' +
                     '                 pe_fechabaja ' + ' AS ' + CD_ALIAS_BAJA + ' ' +
                     '   FROM legales.lpe_perito ,legales.ljt_juicioentramite, legales.lpj_peritajejuicio '+
                     '  WHERE 1 = 1 '+
                     ' AND pj_fechabaja IS NULL ' +
                     ' AND pj_idperito = pe_id ' +
                     ' AND pj_idjuicioentramite = jt_id';
      ShowBajas   := False;
      ExtraCondition := ' AND pj_fechabaja IS NULL ' +
                     ' AND pj_idperito = pe_id ' +
                     ' AND pj_idjuicioentramite = jt_id';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;

  if (fraTipoBeneficiario.Value = 5) and ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
  begin
    with fraBeneficiario do
    begin
      FieldID     := 'bo_id';
      FieldCodigo := 'bo_id';
      FieldDesc   := 'bo_nombre';
      TableName   := 'legales.lbo_abogado';
      ExtraTables := ', legales.laa_abogadoasignado';
      Sql         := ' SELECT DISTINCT bo_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 bo_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 bo_nombre '    + ' AS ' + CD_ALIAS_DESC + ', ' +
                     '                 bo_fechabaja ' + ' AS ' + CD_ALIAS_BAJA + ', ' +
                     '                 bo_iddelegacion ' +
                     ' FROM legales.laa_abogadoasignado, legales.lbo_abogado WHERE 1= 1 '+
                     ' AND aa_idabogado = bo_id';
      ShowBajas   := False;
      ExtraCondition := ' AND aa_idabogado = bo_id';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;
    chkEnviarADelegacion.Enabled := true;
  end;

  if (fraTipoBeneficiario.Value = 5) and (FModoForm = mfMediacion) then
  begin
    with fraBeneficiario do
    begin
      FieldID     := 'bo_id';
      FieldCodigo := 'bo_id';
      FieldDesc   := 'bo_nombre';
      TableName   := 'legales.lbo_abogado';
      ExtraTables := ', legales.lme_mediacion';
      Sql         := ' SELECT DISTINCT bo_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 bo_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 bo_nombre '    + ' AS ' + CD_ALIAS_DESC + ', ' +
                     '                 bo_fechabaja ' + ' AS ' + CD_ALIAS_BAJA + ', ' +
                     '                 bo_iddelegacion ' +
                     ' FROM legales.lme_mediacion, legales.lbo_abogado WHERE 1= 1 '+
                     ' AND me_idabogado = bo_id';
      ShowBajas   := False;
      ExtraCondition := ' AND me_idabogado = bo_id';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;
    chkEnviarADelegacion.Enabled := true;
  end;

  if (fraTipoBeneficiario.Value = 7) and ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
    with fraBeneficiario do
    begin
      FieldID     := 'bo_id';
      FieldCodigo := 'bo_id';
      FieldDesc   := 'bo_nombre';
      TableName   := 'legales.lbo_abogado';
      ExtraTables := ', legales.lod_origendemanda';
      Sql         := ' SELECT DISTINCT bo_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 bo_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 bo_nombre '    + ' AS ' + CD_ALIAS_DESC + ', ' +
                     '                 bo_fechabaja ' + ' AS ' + CD_ALIAS_BAJA + ', ' +
                     '                 bo_iddelegacion ' +
                     ' FROM legales.lod_origendemanda, legales.lbo_abogado WHERE 1= 1 '+
                     ' AND od_idabogado = bo_id '+
                        ' AND od_fechabaja IS NULL';
      ShowBajas   := False;
      ExtraCondition := ' AND od_idabogado = bo_id '+
                        ' AND od_fechabaja IS NULL';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;

  if (fraTipoBeneficiario.Value = 7) and (FModoForm = mfSumario) then
    with fraBeneficiario do
    begin
      FieldID     := 'bo_id';
      FieldCodigo := 'bo_id';
      FieldDesc   := 'bo_nombre';
      TableName   := 'legales.lbo_abogado';
      ExtraTables := ', legales.lsu_sumario';
      Sql         := ' SELECT DISTINCT bo_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 bo_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 bo_nombre '    + ' AS ' + CD_ALIAS_DESC + ', ' +
                     '                 bo_fechabaja ' + ' AS ' + CD_ALIAS_BAJA + ' ' +
                     ' FROM legales.lsu_sumario, legales.lbo_abogado WHERE 1= 1 '+
                     ' AND bo_id = su_abogadosumariante ';
      ShowBajas   := False;
      ExtraCondition := ' AND bo_id = su_abogadosumariante ';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;

  if (fraTipoBeneficiario.Value = 7) and (FModoForm = mfMediacion) then
    with fraBeneficiario do
    begin
      FieldID     := 'bo_id';
      FieldCodigo := 'bo_id';
      FieldDesc   := 'bo_nombre';
      TableName   := 'legales.lbo_abogado';
      ExtraTables := ', legales.lme_mediacion';
      Sql         := ' SELECT DISTINCT bo_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 bo_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 bo_nombre '    + ' AS ' + CD_ALIAS_DESC + ', ' +
                     '                 bo_fechabaja ' + ' AS ' + CD_ALIAS_BAJA + ' ' +
                     ' FROM legales.lme_mediacion, legales.lbo_abogado WHERE 1= 1 '+
                     ' AND me_idabogadoactora = bo_id ';
      ShowBajas   := False;
      ExtraCondition := ' AND me_idabogadoactora = bo_id ';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;

  if (fraTipoBeneficiario.Value = 6) then
    with fraBeneficiario do
    begin
      FieldID     := 'bp_id';
      FieldCodigo := 'bp_id';
      FieldDesc   := 'bp_descripcion';
      TableName   := 'legales.lbp_beneficiariopago ';
      ExtraCondition := ' AND bp_id = 6';
      MinSearchLength := 0;
      OnChange    := fraBeneficiarioChange;
      Value := 6;
      fraBeneficiarioChange(Sender);
    end;

  if (fraTipoBeneficiario.Value = 41) then
    with fraBeneficiario do
    begin
      FieldID     := 'bp_id';
      FieldCodigo := 'bp_id';
      FieldDesc   := 'bp_descripcion';
      TableName   := 'legales.lbp_beneficiariopago ';
      ExtraCondition := ' AND bp_id = 41';
      MinSearchLength := 0;
      OnChange    := fraBeneficiarioChange;
      Value := 41;
      fraBeneficiarioChange(Sender);
    end;

  if (fraTipoBeneficiario.Value = 61) then
    with fraBeneficiario do
    begin
      FieldID     := 'bp_id';
      FieldCodigo := 'bp_id';
      FieldDesc   := 'bp_descripcion';
      TableName   := 'legales.lbp_beneficiariopago ';
      ExtraCondition := ' AND bp_id = 61';
      MinSearchLength := 0;
      OnChange    := fraBeneficiarioChange;
      Value := 61;
      fraBeneficiarioChange(Sender);
    end;

  if (fraTipoBeneficiario.Value = 81) then
    with fraBeneficiario do
    begin
      FieldID     := 'md_id';
      FieldCodigo := 'md_id';
      FieldDesc   := 'md_nombre';
      TableName   := 'legales.lmd_mediador';
      ExtraTables := ', legales.lme_mediacion';
      Sql         := ' SELECT DISTINCT md_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 md_id '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 md_nombre '    + ' AS ' + CD_ALIAS_DESC + ' ' +
                     ' FROM legales.lme_mediacion, legales.lmd_mediador WHERE 1= 1 '+
                     ' AND me_idmediador = md_id ';
      ExtraCondition := ' AND me_idmediador = md_id ';
      MinSearchLength := 4;
      OnChange    := fraBeneficiarioChange;
    end;

  if (ModoForm = mfJuicioDemandada) or
     (ModoForm = mfJuicioActora) or
     (ModoForm = mfMediacion) then
  begin
    if strtoint(fraTipoBeneficiario.Codigo) = 2 then
    begin
      with fraPagueseA do
      begin
        TableName 		 := 'ctj_trabajador';
        FieldId 			 := 'tj_id';
        FieldCodigo 	 := 'tj_cuil';
        FieldDesc 		 := 'tj_nombre';
      end;
    end
    else
    begin
      with fraPagueseA do
      begin
        TableName 		 := 'spa_pagoacre';
        FieldId 			 := 'pa_cuitcuil';
        FieldCodigo 	 := 'pa_cuitcuil';
        FieldDesc 		 := 'pa_denomina';
        ExtraCondition := ' AND pa_acreedor IN (''OA'', ''PA'') AND pa_formacobro IN (''CH'', ''PE'', ''TR'')';
      end;
    end;
  end
  else
  begin
    with fraPagueseA do
    begin
      TableName 		 := 'spa_pagoacre';
      FieldId 			 := 'pa_cuitcuil';
      FieldCodigo 	 := 'pa_cuitcuil';
      FieldDesc 		 := 'pa_denomina';
      ExtraCondition := ' AND pa_acreedor IN (''OA'', ''PA'') AND pa_formacobro IN (''CH'', ''PE'')';
    end;
  end;
end;

procedure TfrmPagosLegales.fraBeneficiarioChange(Sender: TObject);
var
  sWhere : String;
begin
  if FModoForm = mfJuicioDemandada then
    sWhere := ' AND jt_estadomediacion = ''J'' '
  else if FModoForm = mfJuicioActora then
    sWhere := ' AND jt_estadomediacion = ''A'' ';

  if (fraTipoBeneficiario.Value = 2) then
    with fraEtapa do
    begin
      FieldID     := 'me_id';
      FieldCodigo := 'me_numerofolio';
      FieldDesc   := ' me_demandante || '' C/ '' || me_demandado || '' '' || '+
                     ' NVL(mr_descripcion, '''')';
      TableName   := 'legales.lme_mediacion';
      ExtraTables := ',legales.lmr_motivoreclamo, ctj_trabajador, art.sex_expedientes';
      Sql         := ' SELECT DISTINCT me_id '        + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 me_numerofolio '        + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 me_demandante || '' C/ '' || me_demandado || '' '' || '+
                     '                 NVL(mr_descripcion, '''') '    + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lmr_motivoreclamo, ctj_trabajador, art.sex_expedientes,legales.lme_mediacion '+
                     '  WHERE 1 = 1 '+
                     '  AND me_idexpediente = ex_id '+
                     '     AND ex_cuil = tj_cuil '+
                     '     AND me_idmotivoreclamo = mr_id(+) '+
                     '     AND tj_id = '+SqlValue(fraBeneficiario.Value);
      ExtraCondition := '  AND me_idexpediente = ex_id '+
                     '     AND ex_cuil = tj_cuil '+
                     '     AND me_idmotivoreclamo = mr_id(+) '+
                     '     AND tj_id = '+SqlValue(fraBeneficiario.Value);
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 3) then
    with fraEtapa do
    begin
      FieldID     := 'jt_id';
      FieldCodigo := 'jt_numerocarpeta';
      FieldDesc   := 'jt_demandante || '' C/ '' || jt_demandado || '' '' || jt_caratula ';
      TableName   := 'legales.ljt_juicioentramite';
      ExtraTables := ',legales.lpe_perito, legales.lpj_peritajejuicio';
      Sql         := ' SELECT DISTINCT jt_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jt_numerocarpeta ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 jt_demandante || '' C/ '' || jt_demandado '+
                     '                 || '' '' || jt_caratula ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lpe_perito ,legales.ljt_juicioentramite, legales.lpj_peritajejuicio '+
                     '  WHERE 1 = 1 '+
                     '  AND pe_fechabaja IS NULL '+
                     '     AND pj_fechabaja IS NULL '+
                     '     AND pj_idperito = pe_id '+
                     '     AND pj_idjuicioentramite = jt_id '+
                     '     AND pe_id = '+SqlValue(fraBeneficiario.Value)+sWhere;
      ExtraCondition := '  AND pe_fechabaja IS NULL '+
                     '     AND pj_fechabaja IS NULL '+
                     '     AND pj_idperito = pe_id '+
                     '     AND pj_idjuicioentramite = jt_id '+
                     '     AND pe_id = '+SqlValue(fraBeneficiario.Value)+sWhere;
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 1) and ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
    with fraEtapa do
    begin
      FieldID     := 'jt_id';
      FieldCodigo := 'jt_numerocarpeta';
      FieldDesc   := 'jt_demandante || '' C/ '' || jt_demandado || '' '' '+'|| jt_caratula';
      TableName   := 'legales.ljt_juicioentramite';
      Sql         := ' SELECT DISTINCT jt_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jt_numerocarpeta ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 jt_demandante || '' C/ '' || jt_demandado || '' '' '+
                     '                 || jt_caratula ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.ljt_juicioentramite '+
                     '  WHERE 1 = 1 '+sWhere;
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 1) and (FModoForm = mfSumario) then
    with fraEtapa do
      begin
        FieldID     := 'SU_ID';
        FieldCodigo := 'SU_NUMEROSUMARIO';
        FieldDesc   := 'su_numeroexpediente || ''/'' || su_anioexpediente ';
        TableName   := 'legales.lsu_sumario';
        Sql         := ' SELECT DISTINCT su_id' + ' AS ' + CD_ALIAS_ID + ', ' +
                       '                 su_numerosumario ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                       '                 su_numeroexpediente || ''/'' '+
                       '                 || su_anioexpediente ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                       '            FROM legales.lsu_sumario '+
                       '           WHERE 1= 1 ';
      end;

  if (fraTipoBeneficiario.Value = 5) and ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
    with fraEtapa do
    begin
      FieldID     := 'jt_id';
      FieldCodigo := 'jt_numerocarpeta';
      FieldDesc   := 'jt_demandante || '' C/ '' || jt_demandado || '' '' '+'|| jt_caratula';
      TableName   := 'legales.ljt_juicioentramite';
      ExtraTables := ',legales.laa_abogadoasignado, legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT jt_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jt_numerocarpeta ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 jt_demandante || '' C/ '' || jt_demandado || '' '' '+
                     '                 || jt_caratula ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.ljt_juicioentramite, legales.laa_abogadoasignado, legales.lbo_abogado '+
                     '  WHERE 1 = 1 '+
                     ' AND bo_fechabaja IS NULL '+
                     ' AND aa_idabogado = bo_id '+
                     ' AND jt_id = aa_idjuicioentramite '+
                     ' AND bo_id = '+SqlValue(fraBeneficiario.Value)+sWhere;
      ExtraCondition := ' AND bo_fechabaja IS NULL '+
                        ' AND aa_idabogado = bo_id '+
                        ' AND jt_id = aa_idjuicioentramite '+
                        ' AND bo_id = '+SqlValue(fraBeneficiario.Value)+sWhere;
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 5) and (FModoForm = mfMediacion) then
    with fraEtapa do
    begin
      FieldID     := 'me_id';
      FieldCodigo := 'me_numerofolio';
      FieldDesc   := ' me_demandante || '' C/ '' || me_demandado || '' '' || mr_descripcion ';
      TableName   := 'legales.lme_mediacion';
      ExtraTables := ',legales.laa_abogadoasignado, legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT me_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 me_numerofolio ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 me_demandante || '' C/ '' || me_demandado || '' '' '+
                     '                 || mr_descripcion ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lmr_motivoreclamo, legales.lme_mediacion, legales.lbo_abogado '+
                     '  WHERE 1 = 1 '+
                     ' AND bo_fechabaja IS NULL '+
                     ' AND me_idabogado = bo_id '+
                     ' AND me_idmotivoreclamo = mr_id(+) '+
                     ' AND bo_id = '+SqlValue(fraBeneficiario.Value);
      ExtraCondition := ' AND bo_fechabaja IS NULL '+
                        ' AND me_idabogado = bo_id '+
                        ' AND me_idmotivoreclamo = mr_id(+) '+
                        ' AND bo_id = '+SqlValue(fraBeneficiario.Value);
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 7) and ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
    with fraEtapa do
    begin
      FieldID     := 'jt_id';
      FieldCodigo := 'jt_numerocarpeta';
      FieldDesc   := 'jt_demandante || '' C/ '' || jt_demandado || '' '' || jt_caratula ';
      TableName   := 'legales.ljt_juicioentramite';
      ExtraTables := ',legales.lod_origendemanda, legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT jt_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 jt_numerocarpeta ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 jt_demandante || '' C/ '' || jt_demandado || '' '' '+
                     '                 || jt_caratula ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lod_origendemanda, legales.lbo_abogado, legales.ljt_juicioentramite '+
                     '  WHERE 1 = 1 '+
                     ' AND bo_fechabaja IS NULL '+
                        ' AND od_idabogado = bo_id '+
                        ' AND od_fechabaja IS NULL '+
                        ' AND od_idjuicioentramite = jt_id '+
                        ' AND bo_id = '+SqlValue(fraBeneficiario.Value)+sWhere;
      ExtraCondition := ' AND bo_fechabaja IS NULL '+
                        ' AND od_idabogado = bo_id '+
                        ' AND od_fechabaja IS NULL '+
                        ' AND od_idjuicioentramite = jt_id '+
                        ' AND bo_id = '+SqlValue(fraBeneficiario.Value)+sWhere;
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 7) and (FModoForm = mfSumario) then
    with fraEtapa do
    begin
      FieldID     := 'su_id';
      FieldCodigo := 'su_numerosumario';
      FieldDesc   := 'su_numeroexpediente || ''/'' || su_anioexpediente';
      TableName   := 'legales.lsu_sumario';
      ExtraTables := ',legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT su_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 su_numerosumario ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 su_numeroexpediente '+
                     '         || ''/'' || su_anioexpediente ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lsu_sumario, legales.lbo_abogado '+
                     '  WHERE 1 = 1 '+
                     ' AND bo_fechabaja IS NULL '+
                     '     AND bo_id = su_abogadosumariante '+
                     '     AND bo_id = '+SqlValue(fraBeneficiario.Value);
      ExtraCondition := ' AND bo_fechabaja IS NULL '+
                     '     AND bo_id = su_abogadosumariante '+
                     '     AND bo_id = '+SqlValue(fraBeneficiario.Value);
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 7) and (FModoForm = mfMediacion) then
    with fraEtapa do
    begin
      FieldID     := 'me_id';
      FieldCodigo := 'me_numerofolio';
      FieldDesc   := 'me_demandante || '' C/ '' || me_demandado || '' '' || NVL(mr_descripcion, '''') ';
      TableName   := 'legales.lsu_sumario';
      ExtraTables := ',legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT me_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 me_numerofolio ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 me_demandante || '' C/ '' || me_demandado '+
                     '                 || '' '' || NVL(mr_descripcion, '''') ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lmr_motivoreclamo, legales.lme_mediacion, legales.lbo_abogado '+
                     '  WHERE 1 = 1 '+
                     ' AND bo_fechabaja IS NULL '+
                        ' AND me_idabogadoactora = bo_id '+
                        ' AND me_idmotivoreclamo = mr_id(+) '+
                        ' AND bo_id = '+SqlValue(fraBeneficiario.Value);
      ExtraCondition := ' AND bo_fechabaja IS NULL '+
                        ' AND me_idabogadoactora = bo_id '+
                        ' AND me_idmotivoreclamo = mr_id(+) '+
                        ' AND bo_id = '+SqlValue(fraBeneficiario.Value);
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 6) then
    with fraEtapa do
    begin
      FieldID     := 'su_id';
      FieldCodigo := 'su_numerosumario';
      FieldDesc   := 'su_numeroexpediente || ''/'' || su_anioexpediente ';
      TableName   := 'legales.lsu_sumario';
      ExtraTables := ',legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT su_id' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 su_numerosumario ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 su_numeroexpediente || ''/'' '+
                     '                 || su_anioexpediente ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '            FROM legales.lsu_sumario, legales.lbo_abogado '+
                     '           WHERE 1= 1 '+
                     '             AND bo_fechabaja IS NULL '+
                     '             AND bo_id = su_abogadosumariante ';
       ExtraCondition := ' AND bo_fechabaja IS NULL '+
                         ' AND bo_id = su_abogadosumariante ';
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 41) then
    with fraEtapa do
    begin
      FieldID     := 'su_id';
      FieldCodigo := 'su_numerosumario';
      FieldDesc   := 'su_numeroexpediente || ''/'' || su_anioexpediente ';
      TableName   := 'legales.lsu_sumario';
      //ExtraTables := ',legales.lbo_abogado';
      Sql         := ' SELECT DISTINCT su_id' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 su_numerosumario ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 su_numeroexpediente || ''/'' '+
                     '                 || su_anioexpediente ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '            FROM legales.lsu_sumario --, legales.lbo_abogado '+
                     '           WHERE 1 = 1 AND --bo_fechabaja IS NULL '+
                     '             --AND bo_id = su_abogadosumariante ';
      //ExtraCondition := ' AND bo_fechabaja IS NULL '+
      //                  ' AND bo_id = su_abogadosumariante ';
      MinSearchLength := 4;
    end;

  if (fraTipoBeneficiario.Value = 61) then
    with fraEtapa do
    begin
      FieldID     := 'me_id';
      FieldCodigo := 'me_numerofolio';
      FieldDesc   := ' me_demandante || '' C/ '' || me_demandado || '' '' || NVL(mr_descripcion, '''') ';
      TableName   := 'legales.lme_mediacion';
      Sql         := ' SELECT DISTINCT me_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 me_numerofolio ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 me_demandante || '' C/ '' || me_demandado '+
                     '                 || '' '' || NVL(mr_descripcion, '''') ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lmr_motivoreclamo, legales.lme_mediacion '+
                     '  WHERE 1 = 1 ' +
                     '    AND me_idmotivoreclamo = mr_id(+) ';
      ExtraCondition := ' AND me_idmotivoreclamo = mr_id(+) ';
      MinSearchLength :=4;
    end;

  if (fraTipoBeneficiario.Value = 81) then
    with fraEtapa do
    begin
      FieldID     := 'me_id';
      FieldCodigo := 'me_numerofolio';
      FieldDesc   := ' me_demandante || '' C/ '' || me_demandado || '' '' || NVL(mr_descripcion, '''') ';
      TableName   := 'legales.lme_mediacion';
      ExtraTables := ',legales.lmd_mediador';
      Sql         := ' SELECT DISTINCT me_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                     '                 me_numerofolio ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                     '                 me_demandante || '' C/ '' || me_demandado '+
                     '                 || '' '' || NVL(mr_descripcion, '''') ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                     '   FROM legales.lmr_motivoreclamo, legales.lme_mediacion, legales.lmd_mediador '+
                     '  WHERE 1 = 1 '+
                     '    AND me_idmotivoreclamo = mr_id(+) '+
                     ' AND me_idmediador = md_id '+
                     '    AND md_id = '+SqlValue(fraBeneficiario.Value);
      ExtraCondition := ' AND me_idmediador = md_id '+
                     '    AND me_idmotivoreclamo = mr_id(+) '+
                     '    AND md_id = '+SqlValue(fraBeneficiario.Value);
      MinSearchLength :=4;
    end;
  tbNuevo.Enabled := fraBeneficiario.IsSelected;
end;

procedure TfrmPagosLegales.ClearControls;
begin
  inherited;
  fraSectores.Clear;
  if fraTipoBeneficiario.Value = 1 then
  begin
    vclExtra.LockControls([fraEtapa], True);

    if idJuicio <= 0 then
    begin
      if ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) then
        idJuicio := ValorSqlInteger(
                      'SELECT DISTINCT pl_idjuicioentramite '+
                      '  FROM legales.lpl_pagolegal '+
                      ' WHERE pl_idliquidacion = '+SqlValue(idLiquidacion))
      else if (FModoForm = mfSumario) then
        idJuicio := ValorSqlInteger(
                      'SELECT DISTINCT PS_IDSUMARIO '+
                      '  FROM legales.lps_pagosumario '+
                      ' WHERE ps_idliquidacion = '+SqlValue(idLiquidacion));


    end;

    fraEtapa.Value := idJuicio;
    fraEtapaOnChange(nil);
  end
  else
  begin
    fraEtapa.Clear;
    vclExtra.LockControls([fraEtapa], False);
  end;
  fraInteresesInstancias.Clear;
  fraConceptoPago.Clear;
  peLetraFactura.Clear;
  meSituacionFactura.Clear;
  meNumeroFactura.Clear;
  edFechaFacturaPago.Clear;
  edObservaciones.Clear;
  edImpSujetoaRetGanaciasPago.Clear;
  edImpSinRetencionesGanPagos.Clear;
  dcbFechaVencimientoPago.Clear;
  edFechaRecepcionFactura.Clear;
  edComprobante.Clear;
  edBUDI.Clear;
  edRecursoExtraord.Clear;
  edRecursoExtraord.Tag := 0;
  edEmbargo.Clear;
  edEmbargo.Tag := 0;
  FIdPago := 0;
  edCuotas.Clear;
  FPlandePago := False;
end;

function TfrmPagosLegales.DoABM: Boolean;
var
  existeMulta : Boolean;
begin
  BeginTrans(True);
  //try
    Sql.Clear;
    if (FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora) then
    begin
      GuardarJuicio;
    end
    else if (FModoForm = mfMediacion) then
    begin
      GuardarMediacion;
    end
    else if (FModoForm = mfSumario) then
    begin
      existeMulta := False;
      if (edNroLiquidacion.Text <> '') and (fraConceptoPago.Codigo = '180') then
      begin
        existeMulta := ExisteSql(' SELECT 1 '+
                                 '   FROM legales.lps_pagosumario '+
                                  '  WHERE ps_idliquidacion = '+SqlValue(idLiquidacion)+
                                  '   AND ps_conpago = 180');
      end;
      GuardarSumario;
      if (fraConceptoPago.Codigo = '180') and (ModoABM = maAlta) and not existeMulta then
      begin
        EjecutarSqlST(
        'UPDATE legales.lls_liquidacionsumario' +
        '   SET ls_detalle = ls_detalle || '' ''||'+ SqlValue(edObservaciones.Text) +
        ' WHERE ls_id = ' + SqlValue(idLiquidacion));
        edDetalleImpresion.Text := edDetalleImpresion.Text +' ' + edObservaciones.Text;
      end;
    end;


    CommitTrans(True);
    vclExtra.LockControls([fraTipoBeneficiario,fraBeneficiario,fraPagueseA,
                           edChequeAlaOrdenDe,edDetalleImpresion,chkPagoExclusivo, chkEnviarADelegacion], True);
    Result := True;
  {except
    on E: Exception do begin
       Result := false;
       Rollback(true);
       ErrorMsg(E, 'Error al guardar las liquidaciones.');
    end;
  end;}
  tbRefrescarClick(nil);
end;

procedure TfrmPagosLegales.GuardarJuicio;
var
  NumPago,iIndex, iddelegacion : Integer;
  NroFacturaCalculada : Boolean;
  sSqlTrans: TSql;
  sJuiciosFacRep,chequenombre, sSitFactura, duplicado, sPagos, ListaMail, Asunto, Body, tipoJuicio, sWhereFac : String;
  sGPBA : String;
begin
  if not IsEmptyString(edChequeAlaOrdenDe.Text) then
  begin
    chequeNombre := edChequeAlaOrdenDe.Text;
  end
  else
  begin
    chequeNombre := fraBeneficiario.Descripcion;
  end;

  if edNroLiquidacion.Text = '' then
  begin
    FIDLiquidacion := GetSecNextVal('LEGALES.SEQ_LLJ_ID');

    if chkEnviarADelegacion.Enabled then
      iddelegacion := fraBeneficiario.sdqDatos.FieldByName('bo_iddelegacion').AsInteger
    else
      iddelegacion := 0;

    if (FModoForm = mfJuicioDemandada) then
      EjecutarSqlST(' INSERT INTO legales.llj_liquidacionjuicio '+
                    '   (lj_id, lj_idbeneficiario, lj_beneficiario,lj_cuitcuil, lj_paguesea,'+
                    '    lj_detalle,lj_chequenombre, lj_pagoexclusivo, lj_delegacion, lj_enviaradelegacion, '+
                    '    lj_nrooficio, lj_juzgado, lj_secretaria, lj_expediente, lj_fuero, lj_caratula, '+
                    '    lj_cbu1, lj_cbu2) '+
                    '       VALUES( '+SqlValue(idLiquidacion)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                        SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                        SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+ ','+
                        SqlValue(chequenombre)+','+
                        SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N'))) +','+
                        SqlInteger(iddelegacion, True) +',' +
                        SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +','+
                        SqlValue(FNroOficio)+','+SqlValue(FJuzgado)+','+
                        SqlValue(FSecretaria)+','+SqlValue(FExpediente)+','+
                        SqlValue(FFuero)+','+SqlValue(FCaratula)+','+
                        SqlValue(FCBU1)+','+SqlValue(FCBU2)+')')
    else
      EjecutarSqlST(' INSERT INTO legales.llj_liquidacionjuicio '+
                    '   (lj_id, lj_idbeneficiario, lj_beneficiario,lj_cuitcuil, lj_paguesea,'+
                    '    lj_detalle,lj_chequenombre, lj_pagoexclusivo, lj_delegacion, lj_enviaradelegacion) '+
                    '       VALUES( '+SqlValue(idLiquidacion)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                        SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                        SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+ ','+
                        SqlValue(chequenombre)+','+
                        SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N'))) +','+
                        SqlInteger(iddelegacion, True) +',' +
                        SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +')')
  end;
  if FNumPago = 0 then
    NumPago := Get_ProxNumPagoLegal(fraEtapa.Value)
  else
    NumPago := FNumPago;

  if edFechaFacturaPago.IsEmpty then
  	edFechaFacturaPago.Date := DBDate;

  NroFacturaCalculada := False;

  if IsEmptyString(meSituacionFactura.Text) or IsEmptyString(meNumeroFactura.Text) then
  begin
    peLetraFactura.Text     := 'A';
    meNumeroFactura.Text    := lPad(fraEtapa.Value ,'0', 6) + lPad(NumPago , '0', 2);
    meSituacionFactura.Text := lPad(fraTipoBeneficiario.Codigo, '0', 2) +
                               lPad(fraBeneficiario.Value, '0', 2);
    NroFacturaCalculada := True;
  end;

  if ModoABM = maModificacion then
    sWhereFac := ' AND pl_id <> '+ SqlValue(FIdPago)
  else
    sWhereFac := '';
  with GetQuery(
      '  SELECT jt_numerocarpeta '+
      '    FROM legales.lpl_pagolegal, legales.ljt_juicioentramite '+
      '   WHERE pl_iddetallebeneficiario = '+SqlValue(fraBeneficiario.Codigo)+
      '     AND pl_idjuicioentramite = jt_id '+
      '     AND pl_idbeneficiariopago = '+SqlValue(fraTipoBeneficiario.Codigo)+
      '     AND pl_letrafactura = '+SqlValue(peLetraFactura.Text)+
      '     AND pl_cuitcuil = '+SqlValue(fraPagueseA.Codigo)+
      '     AND pl_situacionfactura = '+SqlValue(meSituacionFactura.Text)+
      '     AND pl_numerofactura = '+SqlValue(meNumeroFactura.Text)+
      '     AND pl_estado IN(''C'', ''E'') '+ sWhereFac) do
  try
    sJuiciosFacRep := '';
    while not Eof do
    begin
      if sJuiciosFacRep = ''then
        sJuiciosFacRep := FieldByName('jt_numerocarpeta').AsString
      else
        sJuiciosFacRep := sJuiciosFacRep+', '+ FieldByName('jt_numerocarpeta').AsString;
          Next;
        end;
    finally
      Free;
    end;

  Verificar( sJuiciosFacRep <> '' ,peLetraFactura,
      'Ya existe el numero de factura para el mismo beneficiario.En los juicios: '+sJuiciosFacRep );
  Verificar(IsEmptyString(peLetraFactura.Text), peLetraFactura, 'Debe indicar la letra de la factura.');

  sSqlTrans := TSql.Create('legales.lpl_pagolegal');

  sSqlTrans.Fields.AddInteger('pl_idjuicioentramite',		 fraEtapa.Value);
  sSqlTrans.Fields.AddInteger('pl_conpago', 						 fraConceptoPago.Codigo);
  sSqlTrans.Fields.AddString('pl_estado', 							 'C');
  sSqlTrans.Fields.AddDate('pl_fechapago', 							 DBDateTime, True);
  sSqlTrans.Fields.AddString('pl_letrafactura', 				 peLetraFactura.Text, True);
  sSqlTrans.Fields.AddString('pl_situacionfactura', 		 meSituacionFactura.Text, True);
  sSqlTrans.Fields.AddString('pl_numerofactura', 				 meNumeroFactura.Text, True);
  sSqlTrans.Fields.AddDate('pl_fechafactura', 					 edFechaFacturaPago.Date, True);
  sSqlTrans.Fields.AddDate('pl_fecharecepfactura',			 edFechaRecepcionFactura.Date, True);
  sSqlTrans.Fields.AddString('pl_comentario', 					 edObservaciones.Text, True);
  sSqlTrans.Fields.AddExtended('pl_importepago', 				 edImpSinRetencionesGanPagos.Value, 2, True);
  sSqlTrans.Fields.AddExtended('pl_importeconretencion', edImpSujetoaRetGanaciasPago.Value, 2, True);
  sSqlTrans.Fields.AddDate('pl_fechavencimientopago', 	 dcbFechaVencimientoPago.Date, True);
  sSqlTrans.Fields.Add('pl_nrofacturagenrada', 					 NroFacturaCalculada);
  sSqlTrans.Fields.Add('pl_pagoexclusivo', 					     String(Iif(chkPagoExclusivo.Checked, 'S', 'N')));
  sSqlTrans.Fields.Add('pl_idliquidacion', 					     idLiquidacion);

  if not fraInteresesInstancias.ReadOnly then
    sSqlTrans.Fields.Add('pl_idintereses', 					     fraInteresesInstancias.Codigo)
  else
    sSqlTrans.Fields.Add('pl_idintereses', 					     exNull);


  if ModoABM = maAlta then
  begin
    sSqlTrans.SqlType := stInsert;
    FIdPago := GetSecNextVal('legales.seq_lpl_id');
    sSqlTrans.PrimaryKey.AddInteger('pl_id', 	 						 FIdPago);
    sSqlTrans.Fields.AddInteger('pl_numpago', 						 NumPago);
    sSqlTrans.Fields.AddInteger('pl_idbeneficiariopago', 	 fraTipoBeneficiario.Codigo, True);
    sSqlTrans.Fields.AddString('pl_detallebeneficiario', 	 fraBeneficiario.Descripcion, True);
    sSqlTrans.Fields.AddString('pl_iddetallebeneficiario', fraBeneficiario.Value);
    sSqlTrans.Fields.AddString('pl_usualta', 							 Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('pl_fechaalta', 					 DBDateTime);
    if (FModoForm = mfJuicioDemandada) then
    begin
      sGPBA := ValorSql('SELECT DECODE (jt_gpba, 0, ''N'', 1, ''S'') ' +
                        '  FROM legales.ljt_juicioentramite ' +
                        ' WHERE jt_id = '+SqlValue(fraEtapa.Value));
      sSqlTrans.Fields.AddString('PL_GPBA', sGPBA);
    end;

    if ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.llj_liquidacionjuicio '+
      '  WHERE lj_id = '+ SqlValue(idLiquidacion)+
      '    AND lj_cuitcuil IS NOT NULL ') then
    begin
      with GetQuery(
        ' SELECT lj_cuitcuil, lj_paguesea, lj_chequenombre '+
        '   FROM legales.llj_liquidacionjuicio '+
        '  WHERE lj_id = '+SqlValue(idLiquidacion)) do
      try
        sSqlTrans.Fields.AddString('pl_cuitcuil', FieldByName('lj_cuitcuil').AsString);
        sSqlTrans.Fields.AddString('pl_paguesea', FieldByName('lj_paguesea').AsString);
        sSqlTrans.Fields.AddString('pl_chequenombre', FieldByName('lj_chequenombre').AsString);
      finally
        Free;
      end;
    end;
  end
  else
  begin
    sSqlTrans.SqlType := stUpdate;
    sSqlTrans.PrimaryKey.Add('pl_id', 					 FIdPago);
    sSqlTrans.Fields.AddString('pl_usumodif', 		 Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('pl_fechamodif', DBDateTime);
  end;

  if isCargaCuotas(fraEtapa.Value, fraConceptoPago.Value) then
  begin
    sSqlTrans.Fields.AddInteger('PL_NROCUOTA', edCuotas.Text,True);
  end
  else
  begin
    sSqlTrans.Fields.AddInteger('PL_NROCUOTA', 0,True);
  end;

  duplicado := IsConceptoDuplicado(fraEtapa.Value,FIdPago,StrToInt(fraConceptoPago.Codigo),'JD');
  if (fraConceptoPago.Codigo = '142') then
  begin
    duplicado := 'N';
  end;
  if (duplicado = 'S') then
  begin
    if isCargaCuotas(fraEtapa.Value, fraConceptoPago.Value) and
       not ExisteSql('SELECT 1 '+
                 '  FROM legales.lpl_pagolegal '+
                 ' WHERE pl_idjuicioentramite = '+SqlValue(fraEtapa.Value)+
                 '   AND pl_id <> '+SqlValue(FIdPago)+
                 '   AND pl_estado IN(''C'') '+
                 '   AND pl_conpago = '+SqlValue(fraConceptoPago.Value)) then
    begin
      duplicado := 'N';
    end
    else
    begin
      if (MsgBox( 'El Pago es Duplicado �Desea guardarlo de todas formas?', MB_ICONINFORMATION + MB_YESNO, 'Atenci�n' ) = ID_NO) then
      begin
        fpAbm.ModalResult := mrCancel;
        Abort;
      end;
    end;
  end;

  sSqlTrans.Fields.Add('PL_DUPLICADO',  duplicado);

  EjecutarSQLST(sSqlTrans.Sql);


  if edEmbargo.Tag > 0 then
  begin
    // Reemplazo el valor del campo pl_numpago..
    NumPago := Get_ProxNumPagoLegal(fraEtapa.Value);
    iIndex := sSqlTrans.Fields.FieldByName['pl_numpago'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSqlTrans.Fields.AddInteger('pl_numpago', NumPago);

    // Agrego un registro igual con el importe en negativo..
    iIndex := sSqlTrans.Fields.FieldByName['pl_importepago'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSqlTrans.Fields.AddExtended('pl_importepago', -edEmbargo.Value, 2, True);

    // Traigo el id para este nuevo registro..
    iIndex := sSqlTrans.PrimaryKey.FieldByName['pl_id'].Index;
    sSqlTrans.PrimaryKey.Delete(iIndex);
    sSqlTrans.PrimaryKey.AddInteger('pl_id', GetSecNextVal('legales.seq_lpl_id'));

    // Reemplazo el valor del campo pl_numerofactura..
    iIndex := sSqlTrans.Fields.FieldByName['pl_numerofactura'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSitFactura := lPad(fraEtapa.Value ,'0', 6) + lPad(NumPago , '0', 2);
    sSqlTrans.Fields.AddString('pl_numerofactura', sSitFactura, True);

    // Reemplazo el valor del campo pl_conpago..
    iIndex := sSqlTrans.Fields.FieldByName['pl_conpago'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSqlTrans.Fields.AddInteger('pl_conpago', 109);

    // Dejo en NULL el importe con retenci�n..
    iIndex := sSqlTrans.Fields.FieldByName['pl_importeconretencion'].Index;
    sSqlTrans.Fields.Delete(iIndex);

    // Agrego el valor del campo pl_idembargo..
    sSqlTrans.Fields.AddInteger('pl_idembargo', edEmbargo.Tag);

    EjecutarSQLST(sSqlTrans.Sql);
	end;

  if edRecursoExtraord.Tag > 0 then
  begin
    // Reemplazo el valor del campo pl_numpago..
    NumPago := Get_ProxNumPagoLegal(fraEtapa.Value);
    iIndex := sSqlTrans.Fields.FieldByName['pl_numpago'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSqlTrans.Fields.AddInteger('pl_numpago', NumPago);

    // Agrego un registro igual con el importe en negativo..
    iIndex := sSqlTrans.Fields.FieldByName['pl_importepago'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSqlTrans.Fields.AddExtended('pl_importepago', -edRecursoExtraord.Value, 2, True);

    // Traigo el id para este nuevo registro..
    iIndex := sSqlTrans.PrimaryKey.FieldByName['pl_id'].Index;
    sSqlTrans.PrimaryKey.Delete(iIndex);
    sSqlTrans.PrimaryKey.AddInteger('pl_id', GetSecNextVal('legales.seq_lpl_id'));

    // Reemplazo el valor del campo pl_numerofactura..
    iIndex := sSqlTrans.Fields.FieldByName['pl_numerofactura'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSitFactura := lPad(fraEtapa.Value ,'0', 6) + lPad(NumPago , '0', 2);
    sSqlTrans.Fields.AddString('pl_numerofactura', sSitFactura, True);

    // Reemplazo el valor del campo pl_conpago..
    iIndex := sSqlTrans.Fields.FieldByName['pl_conpago'].Index;
    sSqlTrans.Fields.Delete(iIndex);
    sSqlTrans.Fields.AddInteger('pl_conpago', CONPAGO_RECEXTR);

    // Dejo en NULL el importe con retenci�n..
    if assigned(sSqlTrans.Fields.FieldByName['pl_importeconretencion']) then
      begin
        iIndex := sSqlTrans.Fields.FieldByName['pl_importeconretencion'].Index;
        sSqlTrans.Fields.Delete(iIndex);
      end;

    // Dejo en NULL el id del embargo..
    if assigned(sSqlTrans.Fields.FieldByName['pl_idembargo']) then
      begin
        iIndex := sSqlTrans.Fields.FieldByName['pl_idembargo'].Index;
        sSqlTrans.Fields.Delete(iIndex);
      end;

    EjecutarSQLST(sSqlTrans.Sql);
	end;

  if (duplicado = 'S') and ((sdqConsulta.FieldByName('duplicado').AsString = 'N') or (ModoABM = maAlta)) then
  begin
    with GetQuery(
      ' SELECT jt_numerocarpeta, cp_conpago, cp_denpago, pl_importepago, '+
      '        pl_importeconretencion, pl_idliquidacion '+
      '   FROM legales.lpl_pagolegal, legales.ljt_juicioentramite, art.scp_conpago '+
      '  WHERE pl_idjuicioentramite = jt_id '+
      '    AND pl_conpago = '+SqlValue(fraConceptoPago.Codigo)+
      '    AND pl_idjuicioentramite = '+SqlValue(fraEtapa.Value)+
      '    AND pl_estado IN (''C'',''E'') '+
      '    AND pl_conpago = cp_conpago ') do
    try
      while not Eof do
        begin
          sPagos := sPagos+ 'N�mero de Carpeta: '+FieldByName('jt_numerocarpeta').AsString+#13#10+
                    'Concepto de Pago: '+FieldByName('cp_conpago').AsString+'-'+FieldByName('cp_denpago').AsString+#13#10+
                    'Importe sin Retenci�n:'+FieldByName('pl_importepago').AsString+#13#10+
                    'Importe con Retenci�n:'+FieldByName('pl_importeconretencion').AsString+#13#10+
                    'N�mero de Liquidaci�n:'+FieldByName('pl_idliquidacion').AsString+#13#10+#13#10;
          Next;
        end;
    finally
      Free;
    end;

    tipoJuicio := ValorSql('SELECT jt_estadomediacion FROM legales.ljt_juicioentramite, legales.lpl_pagolegal '+
                           'WHERE pl_idjuicioentramite = jt_id AND pl_id = '+SqlValue(FIdPago));

    if tipoJuicio = 'J' then
      ListaMail := Get_DireccionesEnvioMail('LEGJJDME')
    else 
      ListaMail := Get_DireccionesEnvioMail('LEGJJA');

    Asunto := 'Liquidaci�n con Concepto de pagos duplicados.';
    Body := 'Los pagos son: '+ #13#10+ sPagos;
    EnviarMailBD(ListaMail, Asunto, [oAutoFirma, oDeleteAttach], Body, nil, 0, tcDefault, false);
  end;

  if duplicado = 'S' then
    MsgBox('El Concepto de Pago ya existe, Por tal motivo requiere autorizaci�n.', MB_ICONEXCLAMATION + MB_OK);
  if edNroLiquidacion.Text = '' then
    edNroLiquidacion.Text := IntToStr(idLiquidacion);
end;

procedure TfrmPagosLegales.GuardarMediacion;
var
  NumPago, iddelegacion : Integer;
  NroFacturaCalculada : Boolean;
  sSqlTrans: TSql;
  chequeNombre, duplicado, sPagos, ListaMail, Asunto, Body,sWhereFac, sMediacionFacRep : String;
  sGPBA : String;
begin
  if not IsEmptyString(edChequeAlaOrdenDe.Text) then
  begin
    chequeNombre := edChequeAlaOrdenDe.Text;
  end
  else
  begin
    chequeNombre := fraBeneficiario.Descripcion;
  end;

  if edNroLiquidacion.Text = '' then
  begin
    FIDLiquidacion := GetSecNextVal('LEGALES.SEQ_LLM_ID');

    if chkEnviarADelegacion.Enabled then
      iddelegacion := fraBeneficiario.sdqDatos.FieldByName('bo_iddelegacion').AsInteger
    else
      iddelegacion := 0;

    EjecutarSqlST(' INSERT INTO legales.llm_liquidacionmediacion '+
                  '             (lm_id, lm_idbeneficiario, lm_beneficiario, lm_cuitcuil, lm_paguesea,'+
                  '    lm_detalle,lm_chequenombre, lm_pagoexclusivo, lm_delegacion, lm_enviaradelegacion) '+
                  '       VALUES( '+SqlValue(idLiquidacion)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                      SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                      SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+ ','+
                      SqlValue(chequenombre)+','+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+ ','+
                      SqlInteger(iddelegacion, True) +','+
                      SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +')');

  end;

  if FNumPago = 0 then
    NumPago := Get_ProxNumPagoMediacion(fraEtapa.Value)
  else
    NumPago := FNumPago;

  if edFechaFacturaPago.IsEmpty then
  	edFechaFacturaPago.Date := DBDate;

  NroFacturaCalculada := False;

  if IsEmptyString(meSituacionFactura.Text) or IsEmptyString(meNumeroFactura.Text) then
  begin
    peLetraFactura.Text     := 'A';
    meNumeroFactura.Text    := lPad(fraEtapa.Value ,'0', 6) + lPad(NumPago , '0', 2);
    meSituacionFactura.Text := lPad(fraTipoBeneficiario.Codigo, '0', 2) +
                               lPad(fraBeneficiario.Value, '0', 2);
    NroFacturaCalculada := True;
  end;

  if ModoABM = maModificacion then
    sWhereFac := ' AND pm_id <> '+ SqlValue(FIdPago)
  else
    sWhereFac := '';

  with GetQuery(
      '  SELECT me_numerofolio '+
      '    FROM legales.lpm_pagomediacion, legales.lme_mediacion '+
      '   WHERE pm_iddetallebeneficiario = '+SqlValue(fraBeneficiario.Codigo)+
      '     AND pm_idmediacion = me_id '+
      '     AND pm_idbeneficiariopago = '+SqlValue(fraTipoBeneficiario.Codigo)+
      '     AND pm_letrafactura = '+SqlValue(peLetraFactura.Text)+
      '     AND pm_cuitcuil = '+SqlValue(fraPagueseA.Codigo)+
      '     AND pm_situacionfactura = '+SqlValue(meSituacionFactura.Text)+
      '     AND pm_numerofactura = '+SqlValue(meNumeroFactura.Text)+
      '     AND pm_estado IN(''C'', ''E'') '+ sWhereFac) do
  try
    sMediacionFacRep := '';
    while not Eof do
    begin
      if sMediacionFacRep = ''then
        sMediacionFacRep := FieldByName('me_numerofolio').AsString
      else
        sMediacionFacRep := sMediacionFacRep+', '+ FieldByName('me_numerofolio').AsString;
          Next;
        end;
    finally
      Free;
    end;

  Verificar( sMediacionFacRep <> '' ,peLetraFactura,'Ya existe el numero de factura para el mismo beneficiario.Las mediaciones : '+sMediacionFacRep);

  Verificar(IsEmptyString(peLetraFactura.Text), peLetraFactura, 'Debe indicar la letra de la factura.');

  sSqlTrans := TSql.Create('legales.lpm_pagomediacion');

  sSqlTrans.Fields.AddInteger('pm_idmediacion',		       fraEtapa.Value);
  sSqlTrans.Fields.AddInteger('pm_conpago', 						 fraConceptoPago.Codigo);
  sSqlTrans.Fields.AddString('pm_estado', 							 'C');
  sSqlTrans.Fields.AddDate('pm_fechapago', 							 DBDateTime, True);
  sSqlTrans.Fields.AddString('pm_letrafactura', 				 peLetraFactura.Text, True);
  sSqlTrans.Fields.AddString('pm_situacionfactura', 		 meSituacionFactura.Text, True);
  sSqlTrans.Fields.AddString('pm_numerofactura', 				 meNumeroFactura.Text, True);
  sSqlTrans.Fields.AddDate('pm_fechafactura', 					 edFechaFacturaPago.Date, True);
  sSqlTrans.Fields.AddDate('pm_fecharecepfactura',			 edFechaRecepcionFactura.Date, True);
  sSqlTrans.Fields.AddString('pm_comentario', 					 edObservaciones.Text, True);
  sSqlTrans.Fields.AddExtended('pm_importepago', 				 edImpSinRetencionesGanPagos.Value, 2, True);
  sSqlTrans.Fields.AddExtended('pm_importeconretencion', edImpSujetoaRetGanaciasPago.Value, 2, True);
  sSqlTrans.Fields.AddDate('pm_fechavencimientopago', 	 dcbFechaVencimientoPago.Date, True);
  sSqlTrans.Fields.Add('pm_nrofacturagenerada', 				 NroFacturaCalculada);
  sSqlTrans.Fields.Add('pm_pagoexclusivo', 					     String(Iif(chkPagoExclusivo.Checked, 'S', 'N')));
  sSqlTrans.Fields.Add('pm_idliquidacion', 					     idLiquidacion);

  if not fraInteresesInstancias.ReadOnly then
    sSqlTrans.Fields.Add('pm_idintereses', 					     fraInteresesInstancias.Codigo)
  else
    sSqlTrans.Fields.Add('pm_idintereses', 					     exNull);

  if ModoABM = maAlta then
  begin
    sSqlTrans.SqlType := stInsert;
    FIdPago := GetSecNextVal('legales.seq_lpm_id');
    sSqlTrans.PrimaryKey.AddInteger('pm_id', 	 						 FIdPago);
    sSqlTrans.Fields.AddInteger('pm_numpago', 						 NumPago);
    sSqlTrans.Fields.AddInteger('pm_idbeneficiariopago', 	 fraTipoBeneficiario.Codigo, True);
    sSqlTrans.Fields.AddString('pm_detallebeneficiario', 	 fraBeneficiario.Descripcion, True);
    sSqlTrans.Fields.AddString('pm_iddetallebeneficiario', fraBeneficiario.Value);
    sSqlTrans.Fields.AddString('pm_usualta', 							 Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('pm_fechaalta', 					 DBDateTime);

    sGPBA := ValorSql('SELECT me_gpba ' +
                      '  FROM legales.lme_mediacion ' +
                      ' WHERE me_id = '+SqlValue(fraEtapa.Value));
    sSqlTrans.Fields.AddString('PM_GPBA', sGPBA);

    if ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.llm_liquidacionmediacion '+
      '  WHERE lm_id = '+ SqlValue(idLiquidacion)+
      '    AND lm_cuitcuil IS NOT NULL ') then
    begin
      with GetQuery(
        ' SELECT lm_cuitcuil, lm_paguesea, lm_chequenombre '+
        '   FROM legales.llm_liquidacionmediacion '+
        '  WHERE lm_id = '+SqlValue(idLiquidacion)) do
      try
        sSqlTrans.Fields.AddString('pm_cuitcuil', FieldByName('lm_cuitcuil').AsString);
        sSqlTrans.Fields.AddString('pm_paguesea', FieldByName('lm_paguesea').AsString);
        sSqlTrans.Fields.AddString('pm_chequenombre', FieldByName('lm_chequenombre').AsString);
      finally
        Free;
      end;
    end;
  end
  else
  begin
    sSqlTrans.SqlType := stUpdate;
    sSqlTrans.PrimaryKey.Add('pm_id', 					 FIdPago);
    sSqlTrans.Fields.AddString('pm_usumodif', 		 Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('pm_fechamodif', DBDateTime);
  end;

  duplicado := IsConceptoDuplicado(fraEtapa.Value,FIdPago,StrToInt(fraConceptoPago.Codigo),'ME');
  if (duplicado = 'S') and
     (MsgBox( 'El Pago es Duplicado �Desea guardarlo de todas formas?', MB_ICONINFORMATION + MB_YESNO, 'Atenci�n' ) = ID_NO) then
  begin
    fpAbm.ModalResult := mrCancel;
    Abort;
  end; 

  sSqlTrans.Fields.Add('PM_DUPLICADO',  duplicado);

  EjecutarSQLST(sSqlTrans.Sql);

  if (duplicado = 'S') and ((sdqConsulta.FieldByName('duplicado').AsString = 'N') or (ModoABM = maAlta)) then
  begin
    with GetQuery(
      ' SELECT me_numerofolio, cp_conpago, cp_denpago, pm_importepago, '+
      '        pm_importeconretencion, pm_idliquidacion '+
      '   FROM legales.lpm_pagomediacion, legales.lme_mediacion, art.scp_conpago '+
      '  WHERE pm_idmediacion = me_id '+
      '    AND pm_conpago = '+SqlValue(fraConceptoPago.Codigo)+
      '    AND pm_idmediacion = '+SqlValue(fraEtapa.Value)+
      '    AND pm_estado IN (''C'',''E'') '+
      '    AND pm_conpago = cp_conpago ') do
    try
      while not Eof do
        begin
          sPagos := sPagos+ 'N�mero de Folio: '+FieldByName('me_numerofolio').AsString+#13#10+
                    'Concepto de Pago: '+FieldByName('cp_conpago').AsString+'-'+FieldByName('cp_denpago').AsString+#13#10+
                    'Importe sin Retenci�n:'+FieldByName('pm_importepago').AsString+#13#10+
                    'Importe con Retenci�n:'+FieldByName('pm_importeconretencion').AsString+#13#10+
                    'N�mero de Liquidaci�n:'+FieldByName('pm_idliquidacion').AsString+#13#10+#13#10;
          Next;
        end;
    finally
      Free;
    end;

    ListaMail := Get_DireccionesEnvioMail('LEGJJDME');
    Asunto := 'Liquidaci�n con Concepto de pagos duplicados.';
    Body := 'Los pagos son: '+ #13#10+ sPagos;
    EnviarMailBD(ListaMail, Asunto, [oAutoFirma, oDeleteAttach], Body, nil, 0, tcDefault, false);
  end;

  if duplicado = 'S' then
    MsgBox('El Concepto de Pago ya existe, Por tal motivo requiere autorizaci�n.', MB_ICONEXCLAMATION + MB_OK);

  if edNroLiquidacion.Text = '' then
    edNroLiquidacion.Text := IntToStr(idLiquidacion);
end;

procedure TfrmPagosLegales.GuardarSumario;
var
  NumPago, iddelegacion : Integer;
  NroFacturaCalculada : Boolean;
  sSqlTrans: TSql;
  chequeNombre, duplicado, sPagos, ListaMail, Asunto, Body,sWhereFac : String;
begin
  if not IsEmptyString(edChequeAlaOrdenDe.Text) then
  begin
    chequeNombre := edChequeAlaOrdenDe.Text;
  end
  else
  begin
    chequeNombre := fraBeneficiario.Descripcion;
  end;
  if edNroLiquidacion.Text = '' then
  begin
    FIDLiquidacion := GetSecNextVal('LEGALES.SEQ_LLS_ID');

    if chkEnviarADelegacion.Enabled then
      iddelegacion := fraBeneficiario.sdqDatos.FieldByName('bo_iddelegacion').AsInteger
    else
      iddelegacion := 0;

    EjecutarSqlST(' INSERT INTO legales.lls_liquidacionsumario '+
                  '             (LS_ID, LS_IDBENEFICIARIO, LS_BENEFICIARIO,ls_cuitcuil, ls_paguesea,'+
                  '    ls_detalle, ls_chequenombre, ls_pagoexclusivo, ls_delegacion, ls_enviaradelegacion) '+
                  '       VALUES( '+SqlValue(idLiquidacion)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                      SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                      SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+ ','+
                      SqlValue(chequenombre)+','+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+ ','+
                      SqlInteger(iddelegacion, True) +','+
                      SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +')');
  end;

  if FNumPago = 0 then
    NumPago := Get_ProxNumPagoMediacion(fraEtapa.Value)
  else
    NumPago := FNumPago;

  if edFechaFacturaPago.IsEmpty then
  	edFechaFacturaPago.Date := DBDate;

  NroFacturaCalculada := False;

  if IsEmptyString(meSituacionFactura.Text) or IsEmptyString(meNumeroFactura.Text) then
  begin
    peLetraFactura.Text     := 'A';
    meNumeroFactura.Text    := lPad(fraEtapa.Value ,'0', 6) + lPad(NumPago , '0', 2);
    meSituacionFactura.Text := lPad(fraTipoBeneficiario.Codigo, '0', 2) +
                               lPad(fraBeneficiario.Value, '0', 2);
    NroFacturaCalculada := True;
  end;

  if ModoABM = maModificacion then
    sWhereFac := ' AND ps_id <> '+ SqlValue(FIdPago)
  else
    sWhereFac := '';

  Verificar( ExisteSql(
      '  SELECT 1 '+
      '    FROM legales.lps_pagosumario '+
      '   WHERE PS_IDDETALLEBENEFICIARIO = '+SqlValue(fraBeneficiario.Codigo)+
      '     AND PS_IDBENEFICIARIOPAGO = '+SqlValue(fraTipoBeneficiario.Codigo)+
      '     AND PS_LETRAFACTURA = '+SqlValue(peLetraFactura.Text)+
      '     AND ps_cuitcuil = '+SqlValue(fraPagueseA.Codigo)+
      '     AND PS_SITUACIONFACTURA = '+SqlValue(meSituacionFactura.Text)+
      '     AND PS_NUMEROFACTURA = '+SqlValue(meNumeroFactura.Text)+
      '     AND PS_ESTADO IN(''C'', ''E'') '+sWhereFac),peLetraFactura,'Ya existe el numero de factura para el mismo beneficiario.');

  Verificar(IsEmptyString(peLetraFactura.Text), peLetraFactura, 'Debe indicar la letra de la factura.');

  sSqlTrans := TSql.Create('legales.lps_pagosumario');

  sSqlTrans.Fields.AddInteger('PS_IDSUMARIO',		         fraEtapa.Value);
  sSqlTrans.Fields.AddInteger('PS_CONPAGO', 						 fraConceptoPago.Codigo);
  sSqlTrans.Fields.AddString('PS_ESTADO', 							 'C');
  sSqlTrans.Fields.AddDate('PS_FECHAPAGO', 							 DBDateTime, True);
  sSqlTrans.Fields.AddString('PS_LETRAFACTURA', 				 peLetraFactura.Text, True);
  sSqlTrans.Fields.AddString('PS_SITUACIONFACTURA', 		 meSituacionFactura.Text, True);
  sSqlTrans.Fields.AddString('PS_NUMEROFACTURA', 				 meNumeroFactura.Text, True);
  sSqlTrans.Fields.AddDate('PS_FECHAFACTURA', 					 edFechaFacturaPago.Date, True);
  sSqlTrans.Fields.AddString('PS_COMENTARIO', 					 edObservaciones.Text, True);
  sSqlTrans.Fields.AddExtended('PS_IMPORTEPAGO', 				 edImpSinRetencionesGanPagos.Value, 2, True);
  sSqlTrans.Fields.AddExtended('PS_IMPORTECONRETENCION', edImpSujetoaRetGanaciasPago.Value, 2, True);
  sSqlTrans.Fields.AddDate('PS_FECHAVENCIMIENTOPAGO', 	 dcbFechaVencimientoPago.Date, True);
  sSqlTrans.Fields.Add('PS_NROFACTURAGENRADA', 				 NroFacturaCalculada);
  sSqlTrans.Fields.Add('PS_PAGOEXCLUSIVO', 					     String(Iif(chkPagoExclusivo.Checked, 'S', 'N')));
  sSqlTrans.Fields.Add('PS_IDLIQUIDACION', 					     idLiquidacion);
  sSqlTrans.Fields.AddString('ps_idsector', 						 fraSectores.Codigo,True);
  sSqlTrans.Fields.AddString('ps_comprobantepago', 			 edComprobante.Text, True);
  sSqlTrans.Fields.AddString('ps_budi', 								 edBUDI.Text, True);

  if not fraInteresesInstancias.ReadOnly then
    sSqlTrans.Fields.Add('ps_idintereses', 					     fraInteresesInstancias.Codigo)
  else
    sSqlTrans.Fields.Add('ps_idintereses', 					     exNull);

  if ModoABM = maAlta then
  begin
    sSqlTrans.SqlType := stInsert;
    FIdPago := GetSecNextVal('legales.seq_lps_id');
    sSqlTrans.PrimaryKey.AddInteger('PS_ID', 	 						 FIdPago);
    sSqlTrans.Fields.AddInteger('PS_NUMPAGO', 						 NumPago);
    sSqlTrans.Fields.AddInteger('PS_IDBENEFICIARIOPAGO', 	 fraTipoBeneficiario.Codigo, True);
    sSqlTrans.Fields.AddString('PS_DETALLEBENEFICIARIO', 	 fraBeneficiario.Descripcion, True);
    sSqlTrans.Fields.AddString('PS_IDDETALLEBENEFICIARIO', fraBeneficiario.Value);
    sSqlTrans.Fields.AddString('PS_USUALTA', 							 Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('PS_FECHAALTA', 					 DBDateTime);
    if ExisteSql(
      ' SELECT 1 '+
      '   FROM legales.lls_liquidacionsumario '+
      '  WHERE ls_id = '+ SqlValue(idLiquidacion)+
      '    AND ls_cuitcuil IS NOT NULL ') then
    begin
      with GetQuery(
        ' SELECT ls_cuitcuil, ls_paguesea, ls_chequenombre '+
        '   FROM legales.lls_liquidacionsumario '+
        '  WHERE ls_id = '+SqlValue(idLiquidacion)) do
      try
        sSqlTrans.Fields.AddString('ps_cuitcuil', FieldByName('ls_cuitcuil').AsString);
        sSqlTrans.Fields.AddString('ps_paguesea', FieldByName('ls_paguesea').AsString);
        sSqlTrans.Fields.AddString('ps_chequenombre', FieldByName('ls_chequenombre').AsString);
      finally
        Free;
      end;
    end;
  end
  else
  begin
    sSqlTrans.SqlType := stUpdate;
    sSqlTrans.PrimaryKey.Add('PS_ID', 					 FIdPago);
    sSqlTrans.Fields.AddString('PS_USUMODIF', 		 Sesion.LoginName);
    sSqlTrans.Fields.AddDateTime('PS_FECHAMODIF', DBDateTime);
  end;

  duplicado := IsConceptoDuplicado(fraEtapa.Value,FIdPago,StrToInt(fraConceptoPago.Codigo),'ME');
  if (duplicado = 'S') and
     (MsgBox( 'El Pago es Duplicado �Desea guardarlo de todas formas?', MB_ICONINFORMATION + MB_YESNO, 'Atenci�n' ) = ID_NO) then
  begin
    fpAbm.ModalResult := mrCancel;
    Abort;
  end;

  sSqlTrans.Fields.Add('PS_DUPLICADO',  duplicado);

  EjecutarSQLST(sSqlTrans.Sql);

  if (duplicado = 'S') and ((sdqConsulta.FieldByName('duplicado').AsString = 'N') or (ModoABM = maAlta)) then
  begin
    with GetQuery(
      ' SELECT su_numerosumario, cp_conpago, cp_denpago, ps_importepago, '+
      '        ps_importeconretencion, ps_idliquidacion '+
      '   FROM legales.lps_pagosumario, legales.lsu_sumario, art.scp_conpago '+
      '  WHERE ps_idsumario = su_id '+
      '    AND ps_conpago = '+SqlValue(fraConceptoPago.Codigo)+
      '    AND ps_idsumario = '+SqlValue(fraEtapa.Value)+
      '    AND ps_estado IN (''C'',''E'') '+
      '    AND ps_conpago = cp_conpago ') do
    try
      while not Eof do
        begin
          sPagos := sPagos+ 'N�mero de Sumario: '+FieldByName('su_numerosumario').AsString+#13#10+
                    'Concepto de Pago: '+FieldByName('cp_conpago').AsString+'-'+FieldByName('cp_denpago').AsString+#13#10+
                    'Importe sin Retenci�n:'+FieldByName('ps_importepago').AsString+#13#10+
                    'Importe con Retenci�n:'+FieldByName('ps_importeconretencion').AsString+#13#10+
                    'N�mero de Liquidaci�n:'+FieldByName('ps_idliquidacion').AsString+#13#10+#13#10;
          Next;
        end;
    finally
      Free;
    end;
    ListaMail := Get_DireccionesEnvioMail('LEGJSU');
    Asunto := 'Liquidaci�n con Concepto de pagos duplicados.';
    Body := 'Los pagos son: '+ #13#10+ sPagos;
    EnviarMailBD(ListaMail, Asunto, [oAutoFirma, oDeleteAttach], Body, nil, 0, tcDefault, false);
  end;

  if duplicado = 'S' then
    MsgBox('El Concepto de Pago ya existe, Por tal motivo requiere autorizaci�n.', MB_ICONEXCLAMATION + MB_OK);

  if edNroLiquidacion.Text = '' then
    edNroLiquidacion.Text := IntToStr(idLiquidacion);
end;

procedure TfrmPagosLegales.LoadControls;
begin
  inherited;
  ClearControls;
  if (FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora) then
  begin
    LoadJuicio;
  end
  else if (FModoForm = mfMediacion) then
  begin
   LoadMediacion;
  end
  else if (FModoForm = mfSumario) then
  begin
   LoadSumario;
  end;
end;

procedure TfrmPagosLegales.LoadJuicio;
var
  FExtraMultiple : String;
begin
  fraEtapa.Value := sdqConsulta.FieldByName('idetapa').AsInteger;
  peLetraFactura.Text := sdqConsulta.FieldByName('letrafactura').AsString;
  meSituacionFactura.Text := sdqConsulta.FieldByName('situacionfactura').AsString;
  meNumeroFactura.Text := sdqConsulta.FieldByName('numerofactura').AsString;
  edFechaFacturaPago.Date := sdqConsulta.FieldByName('fechafactura').AsDateTime;
  edFechaRecepcionFactura.Date := sdqConsulta.FieldByName('fecharecepfactura').AsDateTime;
  edObservaciones.Text := sdqConsulta.FieldByName('comentario').AsString;
  edImpSinRetencionesGanPagos.Text := sdqConsulta.FieldByName('importepago').AsString;
  edImpSujetoaRetGanaciasPago.Text := sdqConsulta.FieldByName('importeconretencion').AsString;
  dcbFechaVencimientoPago.Date := sdqConsulta.FieldByName('fechavencimientopago').AsDateTime;
  chkPagoExclusivo.Checked := sdqConsulta.FieldByName('pagoexclusivo').AsString = 'S';
  chkEnviarADelegacion.Checked := sdqConsulta.FieldByName('enviaradelegacion').AsString = 'S';
  FIDLiquidacion := sdqConsulta.FieldByName('idliquidacion').AsInteger;
  FIdPago := sdqConsulta.FieldByName('id').AsInteger;
  FNumPago := sdqConsulta.FieldByName('numpago').AsInteger;
  if ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) and
     (fraTipoBeneficiario.Codigo <> '1') then
    FExtraMultiple := ' AND CP_PAGOMULTIPLE = ''S'' '
  else
    FExtraMultiple := '';
  if not sdqConsulta.FieldByName('nrocuota').IsNull then
  begin
    edCuotas.Text := sdqConsulta.FieldByName('nrocuota').AsString;
    FPlandePago := True;
  end
  else
  begin
    FPlandePago := False;
    edCuotas.Clear;
  end;
  fraConceptoPago.ExtraJoinCondition := FExtraConditionConceptoPago + FExtraMultiple +
                                        ' AND (cp_fbaja IS NULL OR cp_conpago = '+
                                        sdqConsulta.FieldByName('conpago').AsString+') ';
  fraConceptoPago.Codigo := sdqConsulta.FieldByName('conpago').AsString;
  ConceptoPagoOnChange(nil);
  if not fraInteresesInstancias.ReadOnly then
  begin
    fraInteresesInstancias.Codigo := sdqConsulta.FieldByName('idintereses').AsString;
  end;
end;

procedure TfrmPagosLegales.LoadMediacion;
begin
  fraEtapa.Value := sdqConsulta.FieldByName('idetapa').AsInteger;
  peLetraFactura.Text := sdqConsulta.FieldByName('letrafactura').AsString;
  meSituacionFactura.Text := sdqConsulta.FieldByName('situacionfactura').AsString;
  meNumeroFactura.Text := sdqConsulta.FieldByName('numerofactura').AsString;
  edFechaFacturaPago.Date := sdqConsulta.FieldByName('fechafactura').AsDateTime;
  edFechaRecepcionFactura.Date := sdqConsulta.FieldByName('fecharecepfactura').AsDateTime;
  edObservaciones.Text := sdqConsulta.FieldByName('comentario').AsString;
  edImpSinRetencionesGanPagos.Text := sdqConsulta.FieldByName('importepago').AsString;
  edImpSujetoaRetGanaciasPago.Text := sdqConsulta.FieldByName('importeconretencion').AsString;
  dcbFechaVencimientoPago.Date := sdqConsulta.FieldByName('fechavencimientopago').AsDateTime;
  chkPagoExclusivo.Checked := sdqConsulta.FieldByName('pagoexclusivo').AsString = 'S';
  chkEnviarADelegacion.Checked := sdqConsulta.FieldByName('enviaradelegacion').AsString = 'S';
  FIDLiquidacion := sdqConsulta.FieldByName('idliquidacion').AsInteger;
  FIdPago := sdqConsulta.FieldByName('id').AsInteger;
  FNumPago := sdqConsulta.FieldByName('numpago').AsInteger;
  fraConceptoPago.ExtraJoinCondition := FExtraConditionConceptoPago +
                                        ' AND (cp_fbaja IS NULL OR cp_conpago = '+
                                        sdqConsulta.FieldByName('conpago').AsString+') ';
  fraConceptoPago.Codigo := sdqConsulta.FieldByName('conpago').AsString;
  ConceptoPagoOnChange(nil);
  if fraInteresesInstancias.Enabled then
  begin
    fraInteresesInstancias.Codigo := sdqConsulta.FieldByName('idintereses').AsString;
  end;
end;

procedure TfrmPagosLegales.LoadSumario;
begin
  fraEtapa.Value := sdqConsulta.FieldByName('idetapa').AsInteger;
  peLetraFactura.Text := sdqConsulta.FieldByName('letrafactura').AsString;
  meSituacionFactura.Text := sdqConsulta.FieldByName('situacionfactura').AsString;
  meNumeroFactura.Text := sdqConsulta.FieldByName('numerofactura').AsString;
  edFechaFacturaPago.Date := sdqConsulta.FieldByName('fechafactura').AsDateTime;
  //edFechaRecepcionFactura.Date := sdqConsulta.FieldByName('fecharecepfactura').AsDateTime;
  edObservaciones.Text := sdqConsulta.FieldByName('comentario').AsString;
  edImpSinRetencionesGanPagos.Text := sdqConsulta.FieldByName('importepago').AsString;
  edImpSujetoaRetGanaciasPago.Text := sdqConsulta.FieldByName('importeconretencion').AsString;
  dcbFechaVencimientoPago.Date := sdqConsulta.FieldByName('fechavencimientopago').AsDateTime;
  chkPagoExclusivo.Checked := sdqConsulta.FieldByName('pagoexclusivo').AsString = 'S';
  chkEnviarADelegacion.Checked := sdqConsulta.FieldByName('enviaradelegacion').AsString = 'S';
  FIDLiquidacion := sdqConsulta.FieldByName('idliquidacion').AsInteger;
  FIdPago := sdqConsulta.FieldByName('id').AsInteger;
  FNumPago := sdqConsulta.FieldByName('numpago').AsInteger;
  fraConceptoPago.ExtraJoinCondition := FExtraConditionConceptoPago +
                                        ' AND (cp_fbaja IS NULL OR cp_conpago = '+
                                        sdqConsulta.FieldByName('conpago').AsString+') ';
  fraConceptoPago.Codigo := sdqConsulta.FieldByName('conpago').AsString;
  fraSectores.Codigo := sdqConsulta.FieldByName('idsector').AsString;
  edComprobante.Text := sdqConsulta.FieldByName('comprobantepago').AsString;
  edBUDI.Text        := sdqConsulta.FieldByName('budi').AsString;
  ConceptoPagoOnChange(nil);
  if fraInteresesInstancias.Enabled then
  begin
    fraInteresesInstancias.Codigo := sdqConsulta.FieldByName('idintereses').AsString;
  end;
end;



function TfrmPagosLegales.Validar: Boolean;
begin

  if (FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora) then
  begin
    ValidarJuicio;
  end
  else if (FModoForm = mfMediacion) then
  begin
    ValidarMediacion;
  end
  else if (FModoForm = mfSumario) then
  begin
    ValidarSumario;
  end;
  Result := True;
end;

procedure TfrmPagosLegales.ValidarJuicio;
var
  sSql : String;
  eImporte1,eImporte2: Extended;
begin
  Verificar(fraConceptoPago.Codigo = '', fraConceptoPago,'Debe completar un concepto de pago.');
  Verificar(fraTipoBeneficiario.Codigo ='',fraTipoBeneficiario,'Debe completar un Tipo Beneficiario.');
  Verificar(not fraBeneficiario.IsSelected, fraBeneficiario,'Debe especificar un beneficiario');
  Verificar(fraPagueseA.Codigo = '', fraPagueseA,'Debe completar el Autorizado al Cobro.');
  Verificar(not IsCUIT(fraPagueseA.Codigo) and not IsCUIL(fraPagueseA.Codigo), fraPagueseA,'No puede autorizarse el pago pu�s el Autorizado no tiene un CUIT/CUIL v�lido.');
  Verificar((edImpSujetoaRetGanaciasPago.Value + edImpSinRetencionesGanPagos.Value) = 0,edImpSujetoaRetGanaciasPago ,
            'Debe especificar un monto v�lido para el pago.');
  Verificar(not edFechaFacturaPago.IsValid,edFechaFacturaPago ,'Debe ingresar una fecha v�lida para la factura');
  Verificar( (edFechaFacturaPago.Date > DBDate) or edFechaFacturaPago.IsEmpty
            ,edFechaFacturaPago ,'Debe especificar una fecha de factura previa a la fecha actual.');
  Verificar(not dcbFechaVencimientoPago.IsValid,dcbFechaVencimientoPago ,'Debe ingresar una fecha v�lida para el vencimiento');
  Verificar((dcbFechaVencimientoPago.Date < DBDate) or
            dcbFechaVencimientoPago.IsEmpty,dcbFechaVencimientoPago ,
            'No puede especificar una fecha de vencimiento anterior a la fecha actual.');
  Verificar((edFechaRecepcionFactura.Date = 0)and (fraConceptoPago.Codigo = '88'),
            edFechaRecepcionFactura,'Debe ingresar la fecha de recepci�n de factura.'
            );
  Verificar(ExisteSql('SELECT * FROM legales.ljt_juicioentramite WHERE jt_idestado = 3 AND jt_id = '+SqlValue(fraEtapa.Value)),
            fraEtapa,'El juicio esta cargado como error de carga.');

  if isCargaCuotas(fraEtapa.Value, fraConceptoPago.Value) and
     (ExisteSql('SELECT 1 '+
                '  FROM legales.lpl_pagolegal '+
                ' WHERE pl_idjuicioentramite = '+SqlValue(fraEtapa.Value)+
                '   AND pl_id <> '+SqlValue(FIdPago)+
                '   AND pl_estado IN(''C'') '+
                '   AND pl_conpago = '+SqlValue(fraConceptoPago.Value)))  then
  begin
    MsgBox('Debe aprobase previamente el concepto cargado.');
    Abort;
  end;

  if edRecursoExtraord.Tag > 0 then
  begin
  	sSql :=
      'SELECT NVL(SUM(ar_importe * tr_operacion), 0) total' +
       ' FROM ltr_tipoaplicacionrecext, lar_aplicacionrecursoext' +
      ' WHERE tr_id = ar_idtipoaplicacion' +
        ' AND ar_fechabaja IS NULL' +
        ' AND (   tr_generapago = ''S''' +
             ' OR tr_reintegro = ''S'')' +
        ' AND ar_idjuicio = :idjuicio';
		eImporte1 := ValorSqlExtendedEx(sSql, [fraEtapa.Value]);

    sSql :=
      'SELECT jt_importerecursoextraord' +
       ' FROM legales.ljt_juicioentramite' +
      ' WHERE jt_id = :juicioid';
    eImporte2 := ValorSqlExtendedEx(sSql, [fraEtapa.Value]);

    Verificar(ToleranceCompare2(edRecursoExtraord.Value + eImporte1, eImporte2) > 0, edRecursoExtraord, 'El importe aplicado no puede ser mayor al monto del juicio.');
    Verificar(ToleranceCompare2(edRecursoExtraord.Value, edImpSujetoaRetGanaciasPago.Value + edImpSinRetencionesGanPagos.Value) > 0,
              edRecursoExtraord, 'El importe del recurso extraordinario no puede ser superior al total del pago.');
	end;

end;


procedure TfrmPagosLegales.ValidarMediacion;
begin
  Verificar(fraConceptoPago.Codigo = '', fraConceptoPago,'Debe completar un concepto de pago.');
  Verificar(fraTipoBeneficiario.Codigo ='',fraTipoBeneficiario,'Debe completar un Tipo Beneficiario.');
  Verificar(not fraBeneficiario.IsSelected, fraBeneficiario,'Debe especificar un beneficiario');
  Verificar(fraPagueseA.Codigo = '', fraPagueseA,'Debe completar el Autorizado al Cobro.');
  Verificar(not IsCUIT(fraPagueseA.Codigo) and not IsCUIL(fraPagueseA.Codigo), fraPagueseA,'No puede autorizarse el pago pu�s el Autorizado no tiene un CUIT/CUIL v�lido.');
  Verificar((edImpSujetoaRetGanaciasPago.Value + edImpSinRetencionesGanPagos.Value) = 0,edImpSujetoaRetGanaciasPago ,
            'Debe especificar un monto v�lido para el pago.');
  Verificar(not edFechaFacturaPago.IsValid,edFechaFacturaPago ,'Debe ingresar una fecha v�lida para la factura');
  Verificar( (edFechaFacturaPago.Date > DBDate) or edFechaFacturaPago.IsEmpty
            ,edFechaFacturaPago ,'Debe especificar una fecha de factura previa a la fecha actual.');
  Verificar(not dcbFechaVencimientoPago.IsValid,dcbFechaVencimientoPago ,'Debe ingresar una fecha v�lida para el vencimiento');
  Verificar((dcbFechaVencimientoPago.Date < DBDate) or
            dcbFechaVencimientoPago.IsEmpty,dcbFechaVencimientoPago ,
            'No puede especificar una fecha de vencimiento anterior a la fecha actual.');
  Verificar(ExisteSql('SELECT * FROM legales.lme_mediacion WHERE me_IDESTADO = 3 AND me_id = '+SqlValue(fraEtapa.Value)),
            fraEtapa,'La mediacion esta cargada como error de carga.');

end;

procedure TfrmPagosLegales.ValidarSumario;
begin
  Verificar(fraConceptoPago.Codigo = '', fraConceptoPago,'Debe completar un concepto de pago.');
  Verificar(fraTipoBeneficiario.Codigo ='',fraTipoBeneficiario,'Debe completar un Tipo Beneficiario.');
  Verificar(not fraBeneficiario.IsSelected, fraBeneficiario,'Debe especificar un beneficiario');
  Verificar(fraPagueseA.Codigo = '', fraPagueseA,'Debe completar el Autorizado al Cobro.');
  Verificar(not IsCUIT(fraPagueseA.Codigo) and not IsCUIL(fraPagueseA.Codigo), fraPagueseA,'No puede autorizarse el pago pu�s el Autorizado no tiene un CUIT/CUIL v�lido.');
  Verificar((edImpSujetoaRetGanaciasPago.Value + edImpSinRetencionesGanPagos.Value) = 0,edImpSujetoaRetGanaciasPago ,
            'Debe especificar un monto v�lido para el pago.');
  Verificar(not edFechaFacturaPago.IsValid,edFechaFacturaPago ,'Debe ingresar una fecha v�lida para la factura');
  Verificar( (edFechaFacturaPago.Date > DBDate) or edFechaFacturaPago.IsEmpty
            ,edFechaFacturaPago ,'Debe especificar una fecha de factura previa a la fecha actual.');
  Verificar(not dcbFechaVencimientoPago.IsValid,dcbFechaVencimientoPago ,'Debe ingresar una fecha v�lida para el vencimiento');
  Verificar((dcbFechaVencimientoPago.Date < DBDate) or
            dcbFechaVencimientoPago.IsEmpty,dcbFechaVencimientoPago ,
            'No puede especificar una fecha de vencimiento anterior a la fecha actual.');
  Verificar(ExisteSql('SELECT * FROM legales.lsu_sumario WHERE SU_IDESTADO = 3 AND su_id = '+SqlValue(fraEtapa.Value)),
            fraEtapa,'El sumario esta cargado como error de carga.');
  {Verificar((edFechaRecepcionFactura.Date = 0)and (fraConceptoPago.Codigo = '88'),
            edFechaRecepcionFactura,'Debe ingresar la fecha de recepci�n de factura.'
            );
  }
  Verificar(not fraSectores.IsSelected, fraSectores,'Debe completar el �rea/Sector.');
end;


procedure TfrmPagosLegales.tbRefrescarClick(Sender: TObject);
var
  sSql, sOrderBy : String;
begin
  sOrderBy := '';
  if FModoForm = mfJuicioDemandada then
  begin
    sSql :=
      ' SELECT pl_id AS ID, pl_idliquidacion AS idliquidacion, '+
      '        DECODE(pl_estado, ''C'', ''Cargado'', ''A'', ''Anulado'', ''X'', '+
      '        ''Cancelado'', ''E'', ''Aprobado'', '''') AS estado,pl_estado letraestado, cp_denpago AS concepto, '+
      '        pl_idbeneficiariopago idbeneficiario, LJ_BENEFICIARIO AS beneficiario,bp_descripcion AS tipobeneficiario, '+
      '        pl_detallebeneficiario AS detallebeneficiario , '+
      '        (SELECT jt_numerocarpeta || '' - '' || jt_demandante || '' C/ '' || '+
      '        jt_demandado || '' '' || jt_caratula FROM legales.ljt_juicioentramite WHERE jt_id = PL_IDJUICIOENTRAMITE) AS beneficiariodesc, '+
      '        pl_importeconretencion AS importeconretencion, pl_importepago AS importepago, '+
      '        pl_letrafactura || ''-'' || pl_situacionfactura || ''-'' || pl_numerofactura AS nrofactura, '+
      '        pl_fechafactura AS fechafactura, ce_ordenpago AS ordennro, ce_fechaop AS ordenfecha, '+
      '        ce_numero AS chequenro, ce_fechacheque AS chequefecha, pl_comentario AS comentario, '+
      '        to_descripcion AS operacion, pl_idjuicioentramite AS idetapa, pl_letrafactura AS letrafactura, '+
      '        pl_situacionfactura AS situacionfactura, pl_numerofactura AS numerofactura, '+
      '        pl_fecharecepfactura AS fecharecepfactura, pl_fechavencimientopago AS fechavencimientopago, '+
      '        pl_numpago AS numpago, pl_conpago AS conpago, '+
      '        lj_chequenombre AS chequenombre,pl_idembargo AS idembargo, pl_idintereses as idintereses, '+
      '        PL_DUPLICADO duplicado, PL_ESTADODUPLICIDAD letraestadodupli, lj_detalle detalle, '+
      '        DECODE(PL_ESTADODUPLICIDAD, ''A'', ''Aprobado'', ''R'', ''Rechazado'', '''') AS estadoduplicado, '+
      '        PL_FECHAAPROBADO fechaaprobacion, PL_MOTIVOAPROBACION motivoaprobacion, '+
      '        lj_cuitcuil cuitcuil, lj_paguesea paguesea, lj_pagoexclusivo pagoexclusivo, lj_enviaradelegacion enviaradelegacion,   '+
      '        lj_nrooficio nrooficio, lj_juzgado juzgado, lj_secretaria secretaria, lj_expediente expediente, lj_fuero fuero, '+
      '        lj_caratula caratula, lj_cbu1 cbu1, lj_cbu2 cbu2, pl_nrocuota nrocuota '+
      '   FROM rce_chequeemitido, legales.lpl_pagolegal lpl, legales.lbp_beneficiariopago lbp, '+
      '        art.scp_conpago scp, legales.lto_tipooperacion lto, legales.llj_liquidacionjuicio '+
      '  WHERE (    (pl_idbeneficiariopago = bp_id(+)) '+
      '         AND (pl_conpago = cp_conpago) '+
      '         AND (pl_idtipooperacion = to_id(+))) '+
      '    AND ce_id(+) = pl_idchequeemitido '+
      '    AND pl_idliquidacion = lj_id '+
      '    AND BP_ETAPA like ''%JD%'' '+
      '    AND EXISTS(SELECT 1 '+
      '           FROM legales.lpl_pagolegal, legales.ljt_juicioentramite '+
      '           WHERE pl_idliquidacion = lj_id '+
      '             AND jt_id = pl_idjuicioentramite '+
      '             AND jt_estadomediacion = ''J'' )'+
      '    AND LJ_ID = '+SqlValue(idLiquidacion);

  end;
  if FModoForm = mfJuicioActora then
  begin
    sSql :=
      ' SELECT pl_id AS ID, pl_idliquidacion AS idliquidacion, '+
      '        DECODE(pl_estado, ''C'', ''Cargado'', ''A'', ''Anulado'', ''X'', '+
      '        ''Cancelado'', ''E'', ''Aprobado'', '''') AS estado,pl_estado letraestado, cp_denpago AS concepto, '+
      '        pl_idbeneficiariopago AS idbeneficiario, LJ_BENEFICIARIO AS beneficiario,bp_descripcion AS tipobeneficiario, '+
      '        pl_detallebeneficiario AS detallebeneficiario , '+
      '        (SELECT jt_numerocarpeta || '' - '' || jt_demandante || '' C/ '' || '+
      '        jt_demandado || '' '' || jt_caratula FROM legales.ljt_juicioentramite WHERE jt_id = PL_IDJUICIOENTRAMITE) AS beneficiariodesc, '+
      '        pl_importeconretencion AS importeconretencion, pl_importepago AS importepago, '+
      '        pl_letrafactura || ''-'' || pl_situacionfactura || ''-'' || pl_numerofactura AS nrofactura, '+
      '        pl_fechafactura AS fechafactura, ce_ordenpago AS ordennro, ce_fechaop AS ordenfecha, '+
      '        ce_numero AS chequenro, ce_fechacheque AS chequefecha, pl_comentario AS comentario, '+
      '        to_descripcion AS operacion, pl_idjuicioentramite AS idetapa, pl_letrafactura AS letrafactura, '+
      '        pl_situacionfactura AS situacionfactura, pl_numerofactura AS numerofactura, '+
      '        pl_fecharecepfactura AS fecharecepfactura, pl_fechavencimientopago AS fechavencimientopago, '+
      '        pl_numpago AS numpago, pl_conpago AS conpago, '+
      '        lj_chequenombre AS chequenombre, pl_idintereses as idintereses, lj_detalle detalle, '+
      '        PL_DUPLICADO duplicado, PL_ESTADODUPLICIDAD letraestadodupli, '+
      '        DECODE(PL_ESTADODUPLICIDAD, ''A'', ''Aprobado'', ''R'', ''Rechazado'', '''') AS estadoduplicado, '+
      '        PL_FECHAAPROBADO fechaaprobacion, PL_MOTIVOAPROBACION motivoaprobacion, '+
      '        lj_cuitcuil cuitcuil, lj_paguesea paguesea, lj_pagoexclusivo pagoexclusivo, lj_enviaradelegacion enviaradelegacion '+
      '   FROM rce_chequeemitido, legales.lpl_pagolegal lpl, legales.lbp_beneficiariopago lbp, '+
      '        art.scp_conpago scp, legales.lto_tipooperacion lto, legales.llj_liquidacionjuicio '+
      '  WHERE (    (pl_idbeneficiariopago = bp_id(+)) '+
      '         AND (pl_conpago = cp_conpago) '+
      '         AND (pl_idtipooperacion = to_id(+))) '+
      '    AND ce_id(+) = pl_idchequeemitido '+
      '    AND BP_ETAPA like ''%JA%'' '+
      '    AND pl_idliquidacion = lj_id '+
      '    AND EXISTS(SELECT 1 '+
      '           FROM legales.lpl_pagolegal, legales.ljt_juicioentramite '+
      '           WHERE pl_idliquidacion = lj_id '+
      '             AND jt_id = pl_idjuicioentramite '+
      '             AND jt_estadomediacion = ''A'' )'+
      '    AND LJ_ID = '+SqlValue(idLiquidacion);

  end;
  if FModoForm = mfMediacion then
  begin
    sSql :=
      ' SELECT pm_id AS ID, pm_idliquidacion AS idliquidacion, '+
      '        DECODE(pm_estado, ''C'', ''Cargado'', ''A'', ''Anulado'', ''X'', '+
      '        ''Cancelado'', ''E'', ''Aprobado'', '''') AS estado,pm_estado letraestado, cp_denpago AS concepto, '+
      '        pm_idbeneficiariopago AS idbeneficiario, LM_BENEFICIARIO AS beneficiario,bp_descripcion AS tipobeneficiario, '+
      '        pm_detallebeneficiario AS detallebeneficiario , '+
      '        (SELECT me_numerofolio || '' - '' || me_demandante || '' C/ '' '+
      '        || me_demandado || '' '' || NVL(mr_descripcion, '''') FROM legales.lme_mediacion,legales.lmr_motivoreclamo '+
      '        WHERE me_id = pm_idmediacion AND me_idmotivoreclamo = mr_id(+) ) AS beneficiariodesc, '+
      '        pm_importeconretencion AS importeconretencion, pm_importepago AS importepago, '+
      '        pm_letrafactura || ''-'' || pm_situacionfactura || ''-'' || pm_numerofactura AS nrofactura, '+
      '        pm_fechafactura AS fechafactura, ce_ordenpago AS ordennro, ce_fechaop AS ordenfecha, '+
      '        ce_numero AS chequenro, ce_fechacheque AS chequefecha, pm_comentario AS comentario, '+
      '        to_descripcion AS operacion, pm_idmediacion AS idetapa, pm_letrafactura AS letrafactura, '+
      '        pm_situacionfactura AS situacionfactura, pm_numerofactura AS numerofactura, '+
      '        pm_fecharecepfactura AS fecharecepfactura, pm_fechavencimientopago AS fechavencimientopago, '+
      '        pm_numpago AS numpago, pm_conpago AS conpago, '+
      '        lm_chequenombre AS chequenombre, pm_idintereses as idintereses, lm_detalle detalle, '+
      '        PM_DUPLICADO duplicado, PM_ESTADODUPLICIDAD letraestadodupli, '+
      '        DECODE(PM_ESTADODUPLICIDAD, ''A'', ''Aprobado'', ''R'', ''Rechazado'', '''') AS estadoduplicado, '+
      '        PM_FECHAAPROBADO fechaaprobacion, PM_MOTIVOAPROBACION motivoaprobacion,'+
      '        lm_cuitcuil cuitcuil, lm_paguesea paguesea, lm_pagoexclusivo pagoexclusivo, lm_enviaradelegacion enviaradelegacion '+
      '   FROM rce_chequeemitido, legales.lpm_pagomediacion lpm, legales.lbp_beneficiariopago lbp, '+
      '        art.scp_conpago scp, legales.lto_tipooperacion lto, legales.llm_liquidacionmediacion '+
      '  WHERE lpm.pm_idbeneficiariopago = lbp.bp_id(+) '+
      '    AND lpm.pm_conpago = scp.cp_conpago '+
      '    AND lpm.pm_idtipooperacion = lto.to_id(+) '+
      '    AND pm_idliquidacion = lm_id '+
      '    AND BP_ETAPA like ''%ME%'' '+
      '    AND pm_idchequeemitido = ce_id(+) '+
      '    AND lm_id = '+ SqlValue(idLiquidacion);

      sOrderBy := ' order by FECHAAPROBACION ';

  end;
  if FModoForm = mfSumario then
  begin
    sSql :=
      ' SELECT ps_id AS ID, ps_idliquidacion AS idliquidacion, '+
      '        DECODE(ps_estado, ''C'', ''Cargado'', ''A'', ''Anulado'', ''X'', '+
      '        ''Cancelado'', ''E'', ''Aprobado'', '''') AS estado, ps_estado letraestado, cp_denpago AS concepto, '+
      '        ps_idbeneficiariopago AS idbeneficiario, bp_descripcion AS tipobeneficiario, '+
      '        ps_detallebeneficiario AS detallebeneficiario, LS_BENEFICIARIO AS beneficiario , '+
      '        (SELECT su_numerosumario || '' - '' || su_numeroexpediente || ''/'' || su_anioexpediente '+
      '        FROM legales.lsu_sumario WHERE su_id = ps_idsumario ) as beneficiariodesc,'+
      '        ps_importeconretencion AS importeconretencion, ps_importepago AS importepago, '+
      '        ps_letrafactura || ''-'' || ps_situacionfactura || ''-'' || ps_numerofactura AS nrofactura, '+
      '        ps_fechafactura AS fechafactura, ce_ordenpago AS ordennro, ce_fechaop AS ordenfecha, '+
      '        ce_numero AS chequenro, ce_fechacheque AS chequefecha, ps_comentario AS comentario, '+
      '        NULL AS operacion, ps_idsumario AS idetapa, ps_letrafactura AS letrafactura, '+
      '        ps_situacionfactura AS situacionfactura, ps_numerofactura AS numerofactura, '+
      '        ps_fechavencimientopago AS fechavencimientopago,ps_idsector AS idsector, '+
      '        ps_numpago AS numpago, ps_conpago AS conpago, '+
      '        ls_chequenombre AS chequenombre, ps_idintereses as idintereses, ls_detalle detalle,'+
      '        PS_DUPLICADO duplicado, PS_ESTADODUPLICIDAD letraestadodupli, '+
      '        DECODE(PS_ESTADODUPLICIDAD, ''A'', ''Aprobado'', ''R'', ''Rechazado'', '''') AS estadoduplicado,'+
      '        PS_FECHAAPROBADO fechaaprobacion, PS_MOTIVOAPROBACION motivoaprobacion, ps_comprobantepago comprobantepago, ps_budi budi, '+
      '        ls_cuitcuil cuitcuil, ls_paguesea paguesea, ls_pagoexclusivo pagoexclusivo, ls_enviaradelegacion enviaradelegacion '+
      '   FROM rce_chequeemitido, legales.lps_pagosumario lps, legales.lbp_beneficiariopago lbp,'+
      '        scp_conpago scp, legales.lls_liquidacionsumario '+
      '  WHERE lbp.bp_id(+) = lps.ps_idbeneficiariopago '+
      '    AND scp.cp_conpago = lps.ps_conpago '+
      '    AND ps_idliquidacion = ls_id '+
      '    AND BP_ETAPA like ''%SU%'' '+
      '    AND ps_idchequeemitido = ce_id(+) '+
      '    AND ls_id = '+SqlValue(idLiquidacion);

  end;

  if (SortDialog.OrderBy <> '') then
    sdqConsulta.SQL.Text := sSql + SortDialog.OrderBy
  else
    sdqConsulta.SQL.Text := sSql + sOrderBy;

    SumatoriaImportes;

  inherited;
end;

procedure TfrmPagosLegales.SetLiquidacion(const value: Integer);
begin
  edNroLiquidacion.Text := IntToStr(value);
  FIDLiquidacion := value;
  (*
  SortDialog.SortFields.Clear;
  LoadDynamicSortFields(SortDialog.SortFields, Grid.Columns);
  SortDialog.SortFields.ItemsByField['nrofactura'].Order := otDescending;
    *)
  sdqConsulta.SQL.Text := sdqConsulta.SQL.Text + SortDialog.OrderBy;

  tbRefrescarClick(nil);
  fraTipoBeneficiario.Value := sdqConsulta.FieldByName('idbeneficiario').AsInteger;
  fraTipoBeneficiarioChange(nil);
  fraBeneficiario.value := sdqConsulta.FieldByName('beneficiario').AsInteger;
  fraBeneficiarioChange(nil);
  edDetalleImpresion.Text := sdqConsulta.FieldByName('detalle').AsString;
  fraPagueseA.Codigo := sdqConsulta.FieldByName('cuitcuil').AsString;
  edChequeAlaOrdenDe.Text := sdqConsulta.FieldByName('chequenombre').AsString;
  chkPagoExclusivo.Checked := sdqConsulta.FieldByName('pagoexclusivo').AsString = 'S';
  vclExtra.LockControls([fraTipoBeneficiario,fraBeneficiario,fraPagueseA,
                           edChequeAlaOrdenDe,edDetalleImpresion,chkPagoExclusivo, chkEnviarADelegacion], True);
  HabilitarMEP;
  if FModoForm = mfJuicioDemandada then
  begin
     FNroOficio  := sdqConsulta.FieldByName('nrooficio').AsString;
     FJuzgado    := sdqConsulta.FieldByName('juzgado').AsString;
     FSecretaria := sdqConsulta.FieldByName('secretaria').AsString;
     FExpediente := sdqConsulta.FieldByName('expediente').AsString;
     FFuero      := sdqConsulta.FieldByName('fuero').AsString;
     FCaratula   := sdqConsulta.FieldByName('caratula').AsString;
     FCBU1       := sdqConsulta.FieldByName('cbu1').AsString;
     FCBU2       := sdqConsulta.FieldByName('cbu2').AsString;
  end;
end;

procedure TfrmPagosLegales.tbModificarClick(Sender: TObject);
begin
  vclextra.LockControls(fraInteresesInstancias, True);

  if (sdqConsulta.FieldByName('DUPLICADO').AsString = 'S') and
     (sdqConsulta.FieldByName('letraestadodupli').IsNull) then
  begin
    MsgBox('El pago est� duplicado y pendiente de aprobacion.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;

  if (sdqConsulta.FieldByName('letraestadodupli').AsString = 'R') then
  begin
    MsgBox('El pago est� rechazado por duplicado.' + #13 +
           'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
    Exit
  end;


  if (FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora) then
  begin
    if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'A') or
     (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'X') then
    begin
      MsgBox('El pago est� dado de baja.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;

    if sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E' then
    begin
      MsgBox('El pago ha sido aprobado.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;

    if (sdqConsulta.FieldByName('importeconretencion').AsCurrency < 0) or
       (sdqConsulta.FieldByName('importepago').AsCurrency < 0) then
    begin
      if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E') then
        MsgBox('El pago corresponde a una anulaci�n previa ya aprobada.' + #13 +
               'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK)
      else
        MsgBox('El pago corresponde a una anulaci�n previa.' + #13 +
               'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;
  end
  else if (FModoForm = mfMediacion) then
  begin
    if sdqConsulta.IsEmpty then
      Exit;

    if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'A') or
       (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'X') then
    begin
      MsgBox('El pago est� dado de baja.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;

    if sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E' then
    begin
      MsgBox('El pago ha sido aprobado.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;

    if (sdqConsulta.FieldByName('importeconretencion').AsCurrency < 0) or
       (sdqConsulta.FieldByName('importepago').AsCurrency < 0) then
    begin
      if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E') then
        MsgBox('El pago corresponde a una anulaci�n previa ya aprobada.' + #13 +
               'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK)
      else
        MsgBox('El pago corresponde a una anulaci�n previa.' + #13 +
               'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;
  end
  else if (FModoForm = mfSumario) then
  begin
    if sdqConsulta.IsEmpty then
      Exit;

    if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'A') or
       (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'X') then
    begin
      MsgBox('El pago est� dado de baja.' + #13 +
             'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;

    if (sdqConsulta.FieldByName('importeconretencion').AsCurrency < 0) or
       (sdqConsulta.FieldByName('importepago').AsCurrency < 0) then
    begin
      if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E') then
        MsgBox('El pago corresponde a una anulaci�n previa ya aprobada.' + #13 +
               'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK)
      else
        MsgBox('El pago corresponde a una anulaci�n previa.' + #13 +
               'Sus datos no pueden ser modificados.', MB_ICONERROR + MB_OK);
      Exit
    end;
  end;
  VCLExtra.LockControls([edEmbargo, btnBuscarEmbargo, edRecursoExtraord, btnBuscarJuicio]);
  inherited;
end;

procedure TfrmPagosLegales.btnAceptarImpresionClick(Sender: TObject);
var
  sSQL : String;

begin
//  if sdqConsulta.FieldByName('letraestado').AsString <> 'E' then
//  begin
    if ModoForm in [mfJuicioDemandada, mfJuicioActora]then
    begin
      sSql :=
        'UPDATE legales.llj_liquidacionjuicio' +
        '   SET lj_usuemision = '+ SqlValue(Sesion.LoginName) + ','+
        '       lj_fechaemision = art.actualdate, '+
        '       lj_fechavencimiento = art.actualdate + 30'+
        ' WHERE lj_id = ' + SqlValue(idLiquidacion)+
        '   AND lj_usuemision IS NULL ';
      EjecutarSqlST(sSql);

      sSql :=
        'UPDATE legales.lpl_pagolegal' +
        '   SET pl_usuarioemision = ' + SqlValue(Sesion.LoginName) +
        '     , pl_fechaemision = art.actualdate' +
        '     , pl_fechavencimiento = art.actualdate + 30' +
        ' WHERE pl_usuarioemision is null' +
        '   AND PL_IDLIQUIDACION = ' + SqlValue(idLiquidacion)+
        '   AND pl_estado not in (''X'',''A'')';
      EjecutarSqlST(sSql);
    end
    else if ModoForm = mfMediacion then
    begin
      sSql :=
        'UPDATE legales.llm_liquidacionmediacion' +
        '   SET lm_usuemision = '+ SqlValue(Sesion.LoginName) + ','+
        '       lm_fechaemision = art.actualdate, '+
        '       lm_fechavencimiento = art.actualdate + 30'+
        ' WHERE lm_id = ' + SqlValue(idLiquidacion)+
        '   AND lm_usuemision IS NULL ';
      EjecutarSqlST(sSql);

      sSql :=
        'UPDATE legales.lpm_pagomediacion' +
        '   SET pm_usuarioemision = ' + SqlValue(Sesion.LoginName) +
        '     , pm_fechaemision = art.actualdate' +
        '     , pm_fechavencimiento = art.actualdate + 30' +
        ' WHERE pm_usuarioemision is null' +
        '   AND pm_idliquidacion = ' + SqlValue(idLiquidacion)+
        '   AND pm_estado not in (''X'',''A'')';
      EjecutarSqlST(sSql);
    end
    else if ModoForm = mfSumario then
    begin
      sSql :=
        'UPDATE legales.lls_liquidacionsumario' +
        '   SET ls_usuemision = '+ SqlValue(Sesion.LoginName) + ','+
        '       ls_fechaemision = art.actualdate '+
    //    '       ls_fechavencimiento= art.actualdate + 30'+
        ' WHERE ls_id = ' + SqlValue(idLiquidacion)+
        '   AND ls_usuemision IS NULL ';
      EjecutarSqlST(sSql);

      sSql :=
        'UPDATE legales.lps_pagosumario' +
        '   SET ps_usuarioemision = ' + SqlValue(Sesion.LoginName) +
        '     , ps_fechaemision = art.actualdate' +
     //   '     , ps_fechavencimiento = art.actualdate + 30' +
        ' WHERE ps_usuarioemision is null' +
        '   AND ps_idliquidacion = ' + SqlValue(idLiquidacion)+
        '   AND ps_estado not in (''X'',''A'')';
      EjecutarSqlST(sSql);
    end;
//  end;
  fpImpresionLiquidacion.ModalResult := mrOk;
end;

procedure TfrmPagosLegales.tbImprimirClick(Sender: TObject);
var
  vFecha : TDate;
  sSql,sUpdate : String;
begin
  if sdqConsulta.IsEmpty then
    Exit;

  if (ModoForm = mfJuicioDemandada) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+sdqConsulta.FieldByName('idliquidacion').AsString+
            '    AND pl_duplicado = ''S'' '+
            '    AND pl_estado NOT IN (''A'') '+
            '    AND pl_estadoduplicidad IS NULL '
  else if (ModoForm = mfJuicioActora) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpl_pagolegal '+
            '  WHERE pl_idliquidacion = '+sdqConsulta.FieldByName('idliquidacion').AsString+
            '    AND pl_duplicado = ''S'' '+
            '    AND pl_estado NOT IN (''A'') '+
            '    AND pl_estadoduplicidad IS NULL '
  else if (ModoForm = mfMediacion) then
    sSql := ' SELECT 1 '+
            '   FROM legales.lpm_pagomediacion '+
            '  WHERE pm_idliquidacion = '+sdqConsulta.FieldByName('idliquidacion').AsString+
            '    AND pm_duplicado = ''S'' '+
            '    AND pm_estado NOT IN (''A'') '+
            '    AND pm_estadoduplicidad IS NULL '
  else if (ModoForm = mfSumario) then
  begin
    sSql := ' SELECT 1 '+
            '   FROM legales.lps_pagosumario '+
            '  WHERE ps_idliquidacion = '+sdqConsulta.FieldByName('idliquidacion').AsString+
            '    AND ps_duplicado = ''S'' '+
            '    AND ps_estado NOT IN (''A'') '+
            '    AND ps_estadoduplicidad IS NULL ';
  end;
  Verificar(ExisteSql(sSql),tbImprimir,'No se puede Imprimir tiene pendientes pagos duplicados');

  BeginTrans(True);
  try
    if fpImpresionLiquidacion.ShowModal = mrOK then
    begin
      CommitTrans(True);
      if (ModoForm = mfJuicioDemandada) or
         (ModoForm = mfJuicioActora) or
         (ModoForm = mfMediacion) then
      begin
        with TfrmRptReciboLiquidacionMultiple.Create(self) do
        try
          VistaPrevia(idLiquidacion,edCantidadCopiasReciboLiquidacion.Value,ModoForm);
        finally
          free;
        end;
      end
      else
      begin
        vFecha := ValorSqlDateTime('SELECT MIN(PS_FECHAVENCIMIENTOPAGO) FROM legales.lps_pagosumario '+
                           ' WHERE ps_idliquidacion = '+SqlValue(idLiquidacion));
        sUpdate := 'UPDATE legales.lls_liquidacionsumario' +
            '   SET ls_fechavencimiento = '+SqlDate( vFecha)+
            ' WHERE ls_id = ' + SqlValue(idLiquidacion);
        EjecutarSql(sUpdate);
      end;

      with TrptLiquidacionLegalesMultiples.Create(Self) do
      try
        VistaPrevia(idLiquidacion, edCantidadCopiasLiquidacion.Value,ModoForm);
      finally
        Free;
      end;
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

procedure TfrmPagosLegales.tbEliminarClick(Sender: TObject);
var
  IdPago, IdLiq,
  NumPago: integer;
begin
  if sdqConsulta.IsEmpty then
    Exit;
  BeginTrans(True);
  try
    if (ModoForm = mfJuicioDemandada) or
       (ModoForm = mfJuicioActora) then
    begin

      if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'A') or
         (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'X') then
      begin
        MsgBox('El pago ya est� dado de baja.', MB_ICONERROR + MB_OK);
        Exit
      end;

      if (sdqConsulta.FieldByName('importeconretencion').AsCurrency < 0) or
         (sdqConsulta.FieldByName('importepago').AsCurrency < 0) then
      begin
        if (sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E') and (sdqConsulta.FieldByName('idembargo').IsNull) then
        begin
          MsgBox('El pago no puede darse de baja ' + #13 +
                 'ya que corresponde a una anulaci�n previa ya autorizada.', MB_ICONERROR + MB_OK);
          Exit;
        end;
      end;

      if MessageDlg('�Confirma la Cancelaci�n del Pago Seleccionado?',
                        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        Exit;

      //Si el estado es Cargada, cancelo y ya, sino tengo que generar un movimiento contrario.
      if sdqConsulta.FieldByName('LETRAESTADO').AsString = 'C' then
      begin
        // Cancelo el pago
        EjecutarSqlST('UPDATE legales.lpl_pagolegal ' +
                      '   SET pl_estado = ''A'', ' +
                      '       pl_importeconretencion = NULL, ' +
                      '       pl_importepago = NULL, ' +
                      '       pl_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                      '       pl_fechamodif = SYSDATE ' +
                      ' WHERE pl_id = ' + SqlValue(sdqConsulta.FieldByName('ID').AsInteger));

        // Desasigno el pago en legales.lir_importesreguladosjuicio
        EjecutarSqlST('UPDATE legales.lir_importesreguladosjuicio ' +
                      '   SET ir_nropago = NULL ' +
                      ' WHERE ir_nropago = ' + SqlValue(sdqConsulta.FieldByName('ID').AsInteger));
      end
      else if sdqConsulta.FieldByName('LETRAESTADO').AsString = 'E' then begin
        // Agrego el registro de movimiento contrario

        IdLiq := GetSecNextVal('LEGALES.SEQ_LLJ_ID');
        EjecutarSqlST(' INSERT INTO legales.llj_liquidacionjuicio '+
                  '   (lj_id, lj_idbeneficiario, lj_beneficiario,lj_cuitcuil, lj_paguesea,'+
                  '    lj_detalle,lj_chequenombre ) '+
                  '       VALUES( '+SqlValue(IdLiq)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                      SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                      SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+','+
                      SqlValue(edChequeAlaOrdenDe.Text)+')');

        IdPago  := GetSecNextVal('LEGALES.seq_lpl_id');
        NumPago := Get_ProxNumPagoLegal(sdqConsulta.FieldByName('idetapa').AsInteger);

        EjecutarSqlST('INSERT INTO legales.lpl_pagolegal ' +
                      '(pl_id, pl_numpago, pl_fechapago, pl_conpago, ' +
                      ' pl_fechaemision, pl_cuitcuil, pl_letrafactura, ' +
                      ' pl_situacionfactura, pl_numerofactura, pl_fechafactura, ' +
                      ' pl_importepago, pl_formapago, pl_comentario, ' +
                      ' pl_estado, pl_fechavencimiento, pl_usuarioaprobado, ' +
                      ' pl_fechaaprobado, pl_importeconretencion, pl_chequenombre, ' +
                      ' pl_idjuicioentramite, pl_idtipooperacion, ' +
                      ' pl_movimientooperacion, pl_idbeneficiariopago, ' +
                      ' pl_detallebeneficiario, pl_fechavencimientopago, pl_paguesea, ' +
                      ' pl_iddetallebeneficiario, pl_idembargo, ' +
                      ' pl_nrofacturagenrada, pl_usualta, pl_fechaalta, pl_idliquidacion) ' +
                      ' SELECT ' + SqlValue (IdPago) + ', ' + SqlValue (NumPago) + ', ' +
                      '        pl_fechapago, pl_conpago, ' +
                      '        pl_fechaemision, pl_cuitcuil, pl_letrafactura, ' +
                      '        lPad(pl_idbeneficiariopago, 2, ''0'') || lPad(pl_iddetallebeneficiario, 2, ''0''), ' +
                      '        lPad(pl_idjuicioentramite, 6, ''0'') || lPad(' + SqlValue (NumPago) + ', 2, ''0''), ' +
                      '        pl_fechafactura, ' +
                      '        nvl(pl_importepago, 0) * -1, pl_formapago, pl_comentario, ' +
                      '        ''C'', pl_fechavencimiento,NULL,NULL, ' +
                      '        NVL(pl_importeconretencion,0) * -1, pl_chequenombre, ' +
                      '        pl_idjuicioentramite, pl_idtipooperacion, ' +
                      '        pl_movimientooperacion, pl_idbeneficiariopago, ' +
                      '        pl_detallebeneficiario, pl_fechavencimientopago, pl_paguesea, ' +
                      '        pl_iddetallebeneficiario, pl_idembargo, ' +
                      '        pl_nrofacturagenrada, ' + SqlValue(Sesion.LoginName) + ', SYSDATE, ' +SqlValue(IdLiq)+
                      '   FROM legales.lpl_pagolegal ' +
                      '  WHERE pl_id = ' + sdqConsulta.FieldByName('id').AsString);

        // Cancelo el pago
        EjecutarSqlST('UPDATE legales.lpl_pagolegal ' +
                      '   SET pl_estado = ''X'', ' +
                      '       pl_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                      '       pl_fechamodif = SYSDATE ' +
                      ' WHERE pl_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));

        // Desasigno el pago en legales.lir_importesreguladosjuicio
        EjecutarSqlST('UPDATE legales.lir_importesreguladosjuicio ' +
                      '   SET ir_nropago = NULL ' + //+ SqlValue (IdPago) +
                      ' WHERE ir_nropago = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));

                      (*

        if sdqConsulta.FieldByName('conpago').AsInteger = CONPAGO_RECEXTR then
          // Inserto en la lar_aplicacionrecursoext..
          DoInsertarAplicacionRecExtraordinario(sdqConsulta.FieldByName('importepago').AsFloat,
                                                sdqConsulta.FieldByName('idetapa').AsInteger, True);

        if sdqConsulta.FieldByName('conpago').AsInteger = CONPAGO_EMBARGO then
          // Inserto en la lae_aplicacionembargo..
          DoInsertarAplicacionEmbargo(sdqConsulta.FieldByName('importepago').AsFloat, sdqConsulta.FieldByName('idembargo').AsInteger, True);
*)          
      end
      else InvalidMsg(Grid, 'No se puede cancelar un pago en este estado.', 'Cancelaci�n de Pago');

      sdqConsulta.Refresh;
    end
    else if ModoForm = mfMediacion then
    begin
      if (sdqConsulta.FieldByName('letraestado').AsString = 'A') or
         (sdqConsulta.FieldByName('letraestado').AsString = 'X') then
      begin
        MsgBox('El pago ya est� dado de baja.', MB_ICONERROR + MB_OK);
        Exit
      end;

      if (sdqConsulta.FieldByName('importeconretencion').AsCurrency < 0) or
         (sdqConsulta.FieldByName('importepago').AsCurrency < 0) then
      begin
        if (sdqConsulta.FieldByName('letraestado').AsString = 'E') then
          MsgBox('El pago no puede darse de baja ' + #13 +
                 'ya que corresponde a una anulaci�n previa ya autorizada.', MB_ICONERROR + MB_OK)
        else
          MsgBox('El pago no puede darse de baja ' + #13 +
                 'ya que corresponde a una anulaci�n previa.', MB_ICONERROR + MB_OK);
        Exit
      end;

      if MessageDlg('�Confirma la Cancelaci�n del Pago Seleccionado?',
                        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        Exit;

      //Si el estado es Cargada, cancelo y ya, sino tengo que generar un movimiento contrario.
      if sdqConsulta.FieldByName('letraestado').AsString = 'C' then
      begin
        // Cancelo el pago
        EjecutarSqlST('UPDATE legales.lpm_pagomediacion ' +
                      '   SET pm_estado = ''A'', ' +
                      '       pm_importeconretencion = NULL, ' +
                      '       pm_importepago = NULL, ' +
                      '       pm_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                      '       pm_fechamodif = SYSDATE ' +
                      ' WHERE pm_id = ' + SqlValue(sdqConsulta.FieldByName('ID').AsInteger));

        // Desasigno el pago en legales.lim_importemediacion
        EjecutarSqlST('UPDATE legales.lim_importemediacion ' +
                      '   SET im_nropago = NULL ' +
                      ' WHERE im_nropago = ' + SqlValue(sdqConsulta.FieldByName('ID').AsInteger));
      end
      else if sdqConsulta.FieldByName('letraestado').AsString = 'E' then begin
        // Agrego el registro de movimiento contrario
        IdLiq := GetSecNextVal('LEGALES.SEQ_LLM_ID');
        EjecutarSqlST(' INSERT INTO legales.llm_liquidacionmediacion '+
                  '             (lm_id, lm_idbeneficiario, lm_beneficiario, lm_cuitcuil, lm_paguesea,'+
                  '    lm_detalle,lm_chequenombre) '+
                  '       VALUES( '+SqlValue(IdLiq)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                      SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                      SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+ ','+
                      SqlValue(edChequeAlaOrdenDe.Text)+')');

        IdPago  := GetSecNextVal('LEGALES.seq_lpm_id');
        NumPago := Get_ProxNumPagoMediacion(sdqConsulta.FieldByName('idetapa').AsInteger);

        EjecutarSqlST('INSERT INTO legales.lpm_pagomediacion ' +
                      '(pm_id, pm_numpago, pm_fechapago, pm_conpago, ' +
                      ' pm_fechaemision, pm_cuitcuil, pm_letrafactura, ' +
                      ' pm_situacionfactura, pm_numerofactura, pm_fechafactura, ' +
                      ' pm_importepago, pm_comentario, ' +
                      ' pm_estado, pm_fechavencimiento, pm_usuarioaprobado, ' +
                      ' pm_fechaaprobado, pm_importeconretencion, pm_chequenombre, ' +
                      ' pm_idmediacion, pm_idtipooperacion, ' +
                      ' pm_idbeneficiariopago, ' +
                      ' pm_detallebeneficiario, pm_fechavencimientopago, pm_paguesea, ' +
                      ' pm_iddetallebeneficiario, ' +
                      ' pm_usualta, pm_fechaalta,pm_idliquidacion) ' +
                      ' SELECT ' + SqlValue (IdPago) + ', ' + SqlValue (NumPago) + ', ' +
                      '        pm_fechapago, pm_conpago, ' +
                      '        pm_fechaemision, pm_cuitcuil, pm_letrafactura, ' +
                      '        pm_situacionfactura, pm_numerofactura, pm_fechafactura, ' +
                      '        nvl(pm_importepago, 0) * -1, pm_comentario, ' +
                      '        ''C'', pm_fechavencimiento, NULL, NULL, ' +
                      '        NVL(pm_importeconretencion,0) * -1, pm_chequenombre, ' +
                      '        pm_idmediacion, pm_idtipooperacion, ' +
                      '        pm_idbeneficiariopago, ' +
                      '        pm_detallebeneficiario, pm_fechavencimientopago, pm_paguesea, ' +
                      '        pm_iddetallebeneficiario, ' + SqlValue(Sesion.LoginName) + ', SYSDATE, ' +SqlValue(IdLiq)+
                      '   FROM legales.lpm_pagomediacion ' +
                      '  WHERE pm_id = ' + sdqConsulta.FieldByName('id').AsString);

        // Cancelo el pago
        EjecutarSqlST('UPDATE legales.lpm_pagomediacion ' +
                      '   SET pm_estado = ''X'', ' +
                      '       pm_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                      '       pm_fechamodif = SYSDATE ' +
                      ' WHERE pm_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));

        // Desasigno el pago en legales.lim_importemediacion
        EjecutarSqlST('UPDATE legales.lim_importemediacion ' +
                      '   SET im_nropago = ' + SqlValue (IdPago) +
                      ' WHERE im_nropago = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));
      end
      else InvalidMsg(Grid, 'No se puede cancelar un pago en este estado.', 'Cancelaci�n de Pago');
      sdqConsulta.Refresh;
    end
    else if ModoForm = mfSumario then
    begin
      if (sdqConsulta.FieldByName('letraestado').AsString = 'A') or
         (sdqConsulta.FieldByName('letraestado').AsString = 'X') then
      begin
        MsgBox('El pago ya est� dado de baja.', MB_ICONERROR + MB_OK);
        Exit
      end;

      if (sdqConsulta.FieldByName('importeconretencion').AsCurrency < 0) or
         (sdqConsulta.FieldByName('importepago').AsCurrency < 0) then
      begin
        if (sdqConsulta.FieldByName('letraestado').AsString = 'E') then
          MsgBox('El pago no puede darse de baja ' + #13 +
                 'ya que corresponde a una anulaci�n previa ya autorizada.', MB_ICONERROR + MB_OK)
        else
          MsgBox('El pago no puede darse de baja ' + #13 +
                 'ya que corresponde a una anulaci�n previa.', MB_ICONERROR + MB_OK);
        Exit
      end;

      if MessageDlg('�Confirma la Cancelaci�n del Pago Seleccionado?',
                        mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
        Exit;

      //Si el estado es Cargada, cancelo y ya, sino tengo que generar un movimiento contrario.
      if sdqConsulta.FieldByName('letraestado').AsString = 'C' then
      begin
        // Cancelo el pago
        EjecutarSqlST('UPDATE legales.lps_pagosumario ' +
                      '   SET ps_estado = ''A'', ' +
                      '       ps_importeconretencion = NULL, ' +
                      '       ps_importepago = NULL, ' +
                      '       ps_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                      '       ps_fechamodif = SYSDATE ' +
                      ' WHERE ps_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));

        // Desasigno el pago en legales.lis_importesentenciasumario
        EjecutarSqlST('UPDATE legales.lis_importesentenciasumario ' +
                      '   SET is_nropago = NULL ' +
                      ' WHERE is_nropago = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));
      end
      else if sdqConsulta.FieldByName('letraestado').AsString = 'E' then begin
        // Agrego el registro de movimiento contrario
        IdLiq := GetSecNextVal('LEGALES.SEQ_LLS_ID');
        EjecutarSqlST(' INSERT INTO legales.lls_liquidacionsumario '+
                  '             (LS_ID, LS_IDBENEFICIARIO, LS_BENEFICIARIO,ls_cuitcuil, ls_paguesea,'+
                  '    ls_detalle, ls_chequenombre) '+
                  '       VALUES( '+SqlValue(IdLiq)+','+SqlValue(fraTipoBeneficiario.Value)+','+
                      SqlValue(fraBeneficiario.Value)+','+SqlValue(fraPagueseA.Codigo)+','+
                      SqlValue(fraPagueseA.Descripcion)+ ','+ SqlValue(edDetalleImpresion.Text)+ ','+
                      SqlValue(edChequeAlaOrdenDe.Text)+')');

        IdPago := GetSecNextVal('legales.seq_lps_id');
        NumPago := ValorSql('SELECT NVL(max(ps_numpago), 0) '+
                            '  FROM legales.lps_pagosumario ' +
                            ' WHERE ps_idsumario = ' + SqlValue(sdqConsulta.FieldByName('idetapa').AsInteger), '0') + 1;

        EjecutarSqlST('INSERT INTO legales.lps_pagosumario ' +
                      '(ps_id, ps_numpago, ps_fechapago, ps_conpago, ' +
                      ' ps_fechaemision, ps_cuitcuil, ps_letrafactura, ' +
                      ' ps_situacionfactura, ps_numerofactura, ps_fechafactura, ' +
                      ' ps_importepago, ps_comentario, ' +
                      ' ps_estado, ps_fechavencimiento, ps_usuarioaprobado, ' +
                      ' ps_fechaaprobado, ps_importeconretencion, ps_chequenombre, ' +
                      ' ps_idsumario, ps_idbeneficiariopago, ' +
                      ' ps_detallebeneficiario, ps_fechavencimientopago, ps_paguesea, ' +
                      ' ps_iddetallebeneficiario, ps_idsector, ps_comprobantepago, ' +
                      ' ps_budi, ps_nrofacturagenrada, ps_usualta, ps_fechaalta, ps_idliquidacion) ' +
                      ' SELECT ' + SqlValue (IdPago) + ', ' + SqlValue (NumPago) + ', ' +
                      '        ps_fechapago, ps_conpago, ' +
                      '        ps_fechaemision, ps_cuitcuil, ps_letrafactura, ' +
                      '        ps_situacionfactura, ps_numerofactura, ps_fechafactura, ' +
                      '        nvl(ps_importepago, 0) * -1, ps_comentario, ' +
                      '        ''C'', ps_fechavencimiento, NULL, ' +
                      '        NULL, nvl(ps_importeconretencion,0) * -1, ps_chequenombre, ' +
                      '        ps_idsumario, ps_idbeneficiariopago, ' +
                      '        ps_detallebeneficiario, ps_fechavencimientopago, ps_paguesea, ' +
                      '        ps_iddetallebeneficiario, ps_idsector, ps_comprobantepago, ' +
                      '        ps_budi, ps_nrofacturagenrada, ''' + Sesion.LoginName + ''', SYSDATE, ' +SqlValue(IdLiq)+
                      '   FROM legales.lps_pagosumario ' +
                      '  WHERE ps_id = ' + sdqConsulta.FieldByName('id').AsString);

        // Cancelo el pago
        EjecutarSqlST('UPDATE legales.lps_pagosumario ' +
                      '   SET ps_estado = ''X'', ' +
                      '       ps_usumodif = ' + SqlValue (Sesion.LoginName) + ', ' +
                      '       ps_fechamodif = SYSDATE ' +
                      ' WHERE ps_id = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));

        // Desasigno el pago en legales.lis_importesentenciasumario
        EjecutarSqlST('UPDATE legales.lis_importesentenciasumario ' +
                      '   SET is_nropago = ' + SqlValue (IdPago) +
                      ' WHERE is_nropago = ' + SqlValue(sdqConsulta.FieldByName('id').AsInteger));
      end
      else InvalidMsg(Grid, 'No se puede cancelar un pago en este estado.', 'Cancelaci�n de Pago');

      sdqConsulta.Refresh;
    end;
    CommitTrans(True);
  except
    on E: Exception do begin
       Rollback(true);
       ErrorMsg(E, 'Error al Eliminar.');
    end;
  end
end;

procedure TfrmPagosLegales.GridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  CalcControlWidthLeft;
end;

procedure TfrmPagosLegales.GridGetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not sdqConsulta.IsEmpty and((Field.DataSet.FieldByName('LETRAESTADO').AsString = 'A') or
     (Field.DataSet.FieldByName('LETRAESTADO').AsString = 'X')) then
    AFont.Color := clRed
  else begin
    if not sdqConsulta.IsEmpty and((Field.DataSet.FieldByName('importepago').AsFloat < 0) or
       (Field.DataSet.FieldByName('importeconretencion').AsFloat < 0)) then
      AFont.Color := clBlue
  end;
  if not sdqConsulta.IsEmpty and (Field.DataSet.FieldByName('duplicado').AsString = 'S') then
    Background := clGreen;
end;

procedure TfrmPagosLegales.fraBeneficiariocmbDescripcionDropDown(
  Sender: TObject);
var
  sExtraCondition : String;
begin
  if fraTipoBeneficiario.Codigo = '1' then
  begin
    fraTipoBeneficiarioChange(nil);
    fraBeneficiario.MinSearchLength := 0;
    if ModoForm = mfSumario then
    begin
      lbEtapaJuzgado.Caption := 'Sumario';
      with fraJuicioJuzgado do
      begin
        FieldID     := 'SU_ID';
        FieldCodigo := 'SU_NUMEROSUMARIO';
        FieldDesc   := 'su_numeroexpediente || ''/'' || su_anioexpediente ';
        TableName   := 'legales.lsu_sumario';
        Sql         := ' SELECT DISTINCT su_id' + ' AS ' + CD_ALIAS_ID + ', ' +
                       '                 su_numerosumario ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                       '                 su_numeroexpediente || ''/'' '+
                       '                 || su_anioexpediente ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                       '            FROM legales.lsu_sumario '+
                       '           WHERE 1= 1 ';
      end;
    end;
    if (ModoForm = mfJuicioDemandada) or
       (ModoForm = mfJuicioActora) then
    begin
      lbEtapaJuzgado.Caption := 'Juicio';
      if (ModoForm = mfJuicioDemandada) then
        sExtraCondition := ' AND jt_estadomediacion = ''J'' '
      else if (ModoForm = mfJuicioActora) then
        sExtraCondition := ' AND jt_estadomediacion = ''A'' ';


      with fraJuicioJuzgado do
      begin
        FieldID     := 'jt_id';
        FieldCodigo := 'jt_numerocarpeta';
        FieldDesc   := 'jt_demandante || '' C/ '' || jt_demandado || '' '' || jt_caratula ';
        TableName   := 'legales.ljt_juicioentramite';
        Sql         := ' SELECT DISTINCT jt_id ' + ' AS ' + CD_ALIAS_ID + ', ' +
                       '                 jt_numerocarpeta ' + ' AS ' + CD_ALIAS_CODIGO + ', ' +
                       '                 jt_demandante || '' C/ '' || jt_demandado '+
                       '                 || '' '' || jt_caratula ' + ' AS ' + CD_ALIAS_DESC + ' ' +
                       '   FROM legales.ljt_juicioentramite '+
                       '  WHERE 1 = 1 '+sExtraCondition;
        ExtraCondition := sExtraCondition;
      end;
    end;
    fraJuicioJuzgado.Clear;
    if fpJuzgado.ShowModal = mrOk then
    begin
      idJuicio := fraJuicioJuzgado.Value;
      if (ModoForm = mfJuicioDemandada) or
       (ModoForm = mfJuicioActora) then
        fraBeneficiario.Sql := fraBeneficiario.Sql + ' AND jt_id = '+SqlValue(fraJuicioJuzgado.Value);
      if ModoForm = mfSumario then
        fraBeneficiario.Sql := fraBeneficiario.Sql + ' AND su_id = '+SqlValue(fraJuicioJuzgado.Value);
    end;
  end;
  inherited;
  fraBeneficiario.cmbDescripcionDropDown(Sender);
end;

procedure TfrmPagosLegales.tbNuevoClick(Sender: TObject);
var
  FExtraMultiple : String;
begin
  vclextra.LockControls(fraInteresesInstancias, True);
  if ((FModoForm = mfJuicioDemandada) or (FModoForm = mfJuicioActora)) and
     (fraTipoBeneficiario.Codigo <> '1') then
    FExtraMultiple := ' AND CP_PAGOMULTIPLE = ''S'' '
  else
    FExtraMultiple := '';

  fraConceptoPago.ExtraJoinCondition := FExtraConditionConceptoPago + FExtraMultiple+ ' AND cp_fbaja IS NULL ';
  VCLExtra.LockControls([edEmbargo, btnBuscarEmbargo, edRecursoExtraord, btnBuscarJuicio], False);
  inherited;
end;

procedure TfrmPagosLegales.ConceptoPagoOnChange(Sender : Tobject);
var
  descripcion : String;
  cantCuotas : Integer;
  maxCuotaJuicio : Integer;
begin
  edCuotas.Clear;
  if fraConceptoPago.IsSelected then
  begin
    descripcion := ValorSql(
      ' SELECT cp_descripcion '+
      '   FROM art.scp_conpago '+
      '  WHERE cp_conpago = '+SqlValue(fraConceptoPago.Codigo));
    if descripcion <> '' then
      InvalidMsg(fraConceptoPago,descripcion,'Descripci�n Pago');
    if descripcion = '(Tasa: Activa-Pasiva-Mixta-Espec�fica)' then
    begin
      vclextra.LockControls(fraInteresesInstancias, False);
    end
    else
    begin
      vclextra.LockControls(fraInteresesInstancias, True);
      fraInteresesInstancias.Clear;
    end;
    if (fraConceptoPago.Codigo = '181') and (ModoForm = mfSumario) and fraEtapa.IsSelected then
    begin
      edImpSinRetencionesGanPagos.Text := ValorSql('SELECT SU_MULTASRT * 0.015 '+
                                   '  FROM legales.lsu_sumario '+
                                   ' WHERE su_numerosumario = '+SqlValue(fraEtapa.Codigo));
      dcbFechaVencimientoPago.Date := ValorSqlDateTime('SELECT art.amebpba.calcdiashabiles(SU_FECHAINGRESOEXPEDIENTE,5) '+
                                   '  FROM legales.lsu_sumario '+
                                   ' WHERE su_numerosumario = '+SqlValue(fraEtapa.Codigo));
    end;
    if (fraConceptoPago.Codigo = '180') and (ModoForm = mfSumario) and fraEtapa.IsSelected then
    begin
      dcbFechaVencimientoPago.Date := ValorSqlDateTime('SELECT art.amebpba.calcdiashabiles(SU_FECHANOTIFBUDI,5) '+
                                   '  FROM legales.lsu_sumario '+
                                   ' WHERE su_numerosumario = '+SqlValue(fraEtapa.Codigo));
      edImpSinRetencionesGanPagos.Text :=
        ValorSql(' SELECT DECODE(su_instanciaadministrativa, ''N'' '+
                 '        , su_multasentecia, ''S'', su_multasrt) '+
                 '   FROM legales.lsu_sumario '+
                 '  WHERE su_numerosumario = '+SqlValue(fraEtapa.Codigo));
      edObservaciones.Text := 'Estos fondos deben ser imputados a la cuenta corriente N� 2820/76 '+
                              'SRT 7500/852 FONDO DE GARANT�A LEY 24.557 CUENTA RECAUDADORA del '+
                              'Banco de la Naci�n Argentina Sucursal Plaza de Mayo.';
    end;

    if Sender <> nil then
    begin
      if (fraConceptoPago.Codigo = '142') or (ModoForm <> mfJuicioDemandada) then
      begin
        edCuotas.Text := '';
      end
      else
      begin
        cantCuotas := ValorSqlInteger('SELECT nvl(cs_cantcuotaspermitidas,0) '+
                               '  FROM legales.lcs_conpagoporsentencia, legales.ljt_juicioentramite '+
                               '  WHERE (   cs_aplicatodassentencias = ''S'' '+
                               '         OR cs_idsentencia = jt_idtiporesultadosentencia '+
                               '        ) '+
                               '    AND jt_id = '+SqlValue(fraEtapa.Value)+
                               '    AND cs_idconpago = '+SqlValue(fraConceptoPago.Value));

        if cantCuotas > 0 then
        begin

          maxCuotaJuicio := ValorSqlInteger('SELECT MAX (NVL (pl_nrocuota, 0)) maxcuota '+
                                   '  FROM legales.lpl_pagolegal '+
                                   ' WHERE pl_idjuicioentramite = '+SqlValue(fraEtapa.Value)+
                                   '   AND pl_estado IN(''C'', ''E'') '+
                                   '   AND pl_conpago = '+SqlValue(fraConceptoPago.Value));
          if not ExisteSql('SELECT 1 '+
                                   '  FROM legales.lpl_pagolegal '+
                                   ' WHERE pl_idjuicioentramite = '+SqlValue(fraEtapa.Value)+
                                   '   AND pl_estado IN(''C'', ''E'') '+
                                   '   AND pl_conpago = '+SqlValue(fraConceptoPago.Value)) or (maxCuotaJuicio >0) then
          begin
            if maxCuotaJuicio >= cantCuotas then
            begin
               MsgBox('El concepto de pago ha superado el n�mero de cuotas permitidas. No se puede generar el alta.');
               edCuotas.Text := '';
               fraConceptoPago.Clear;
            end
            else
            begin
              if maxCuotaJuicio = 0 then
              begin
                if (MsgBox( '�Es un plan de pago?', MB_ICONINFORMATION + MB_YESNO, 'Plan de pago' ) = ID_YES)  then
                begin
                  edcuotas.Text := IntToStr(1);
                  FPlandePago := True;
                end
                else
                  FPlandePago := False;
              end
              else
              begin
                edcuotas.Text := IntToStr(maxCuotaJuicio+1);
                FPlandePago := True;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmPagosLegales.fraPagueseAcmbDescripcionChange(
  Sender: TObject);
begin
  edChequeAlaOrdenDe.Text := fraPagueseA.Descripcion;
end;

procedure TfrmPagosLegales.tbAprobacionConceptosDuplicadosClick(
  Sender: TObject);
begin
  Verificar(not((sdqConsulta.FieldByName('DUPLICADO').AsString = 'S') and
                sdqConsulta.FieldByName('letraestadodupli').IsNull),tbAprobacionConceptosDuplicados,
            'Debe ser Duplicado y no estar rechazado o aprobado.');
  cbAprobadoConDup.Checked := False;
  cbRechazadoConDup.Checked := False;
  edMotivo.Clear;
  pnAprobacionConDup.ShowModal;
end;

procedure TfrmPagosLegales.cbRechazadoConDupClick(Sender: TObject);
begin
  if cbAprobadoConDup.Checked and cbRechazadoConDup.Checked then
    cbAprobadoConDup.Checked := False;
end;

procedure TfrmPagosLegales.cbAprobadoConDupClick(Sender: TObject);
begin
  if cbRechazadoConDup.Checked and cbAprobadoConDup.Checked then
    cbRechazadoConDup.Checked := False;
end;

procedure TfrmPagosLegales.btnAceptarAprobConDupClick(Sender: TObject);
var
  sSql : String;
  estado : String;
begin
  Verificar(not cbAprobadoConDup.Checked and not cbRechazadoConDup.Checked, gbAprobacion,'Se debe seleccionar si es Rechazado o Aprobado.');
  Verificar(edMotivo.Text = '', edMotivo, 'Debe ingresar un motivo.');

  if (ModoForm = mfJuicioDemandada) or (ModoForm = mfJuicioActora) then
  begin
    if cbAprobadoConDup.Checked then
      estado := ' pl_estadoduplicidad = ''A'' '
    else if cbRechazadoConDup.Checked then
      estado := ' pl_estadoduplicidad = ''R'', pl_estado = ''A'' ';

    sSql := ' UPDATE legales.lpl_pagolegal '+
            '    SET pl_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
            '        PL_FECHAAPROBACION = sysdate, '+
            '        PL_USUAPROBACION = '+SqlValue(Sesion.LoginName)+','+estado+
            '  WHERE pl_id = '+sdqConsulta.FieldByName('id').AsString;
  end
  else if (ModoForm = mfMediacion) then
  begin
    if cbAprobadoConDup.Checked then
      estado := ' pm_estadoduplicidad = ''A'' '
    else if cbRechazadoConDup.Checked then
      estado := ' pm_estadoduplicidad = ''R'', pm_estado = ''A'' ';
    sSql := ' UPDATE legales.lpm_pagomediacion '+
            '    SET pm_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
            '        PM_FECHAAPROBACION = sysdate, '+
            '        PM_USUAPROBACION = '+SqlValue(Sesion.LoginName)+','+estado+
            '  WHERE pm_id = '+sdqConsulta.FieldByName('id').AsString;
  end
  else if (ModoForm = mfSumario) then
  begin
    if cbAprobadoConDup.Checked then
      estado := ' ps_estadoduplicidad = ''A'' '
    else if cbRechazadoConDup.Checked then
      estado := ' ps_estadoduplicidad = ''R'', ps_estado = ''A'' ';

    sSql := ' UPDATE legales.lps_pagosumario '+
            '    SET ps_motivoaprobacion = '+SqlValue(edMotivo.Text)+','+
            '        PS_FECHAAPROBACION = sysdate, '+
            '        PS_USUAPROBACION = '+SqlValue(Sesion.LoginName)+','+estado+
            '  WHERE ps_id = '+sdqConsulta.FieldByName('id').AsString;
  end;
  EjecutarSql(ssql);
  pnAprobacionConDup.ModalResult := mrOk;
  sdqConsulta.Refresh;
end;

procedure TfrmPagosLegales.btnBuscarJuicioClick(Sender: TObject);
begin
	Application.CreateForm(TfrmBuscarJuicio, frmBuscarJuicio);
  with frmBuscarJuicio do
	  if Buscar(fraEtapa.Value) then
    begin
    	edRecursoExtraord.Tag   := JuicioId;
  		edRecursoExtraord.Value := Importe;
    end;
end;

procedure TfrmPagosLegales.btnBuscarEmbargoClick(Sender: TObject);
begin
	Application.CreateForm(TfrmBuscarEmbargo, frmBuscarEmbargo);
  with frmBuscarEmbargo do
	  if Buscar(fraEtapa.Value) then
    begin
    	edEmbargo.Tag  := EmbargoId;
  		edEmbargo.Value := Importe;
    end;
end;

procedure TfrmPagosLegales.tbEditarClick(Sender: TObject);
begin
  if fraPagueseA.ReadOnly then
  begin
    Panel1.Visible := True;
    vclExtra.LockControls([fraPagueseA,edChequeAlaOrdenDe,edDetalleImpresion,chkPagoExclusivo, chkEnviarADelegacion],False);
    chkEnviarADelegacion.Enabled := (fraTipoBeneficiario.Value = 5);
    HabilitarMEP;
    vclExtra.LockControls([fraPagueseA,edChequeAlaOrdenDe,edDetalleImpresion,chkPagoExclusivo, chkEnviarADelegacion ],
                         (sdqConsulta.FieldByName('letraestado').AsString = 'E'));
  end;
end;

procedure TfrmPagosLegales.btnCancelarEdicionClick(Sender: TObject);
begin
  Panel1.Visible := False;
  vclExtra.LockControls([fraPagueseA,edChequeAlaOrdenDe,edDetalleImpresion,chkPagoExclusivo, chkEnviarADelegacion],True);
  edDetalleImpresion.Text := sdqConsulta.FieldByName('detalle').AsString;
  fraPagueseA.Codigo := sdqConsulta.FieldByName('cuitcuil').AsString;
  edChequeAlaOrdenDe.Text := sdqConsulta.FieldByName('chequenombre').AsString;
  chkPagoExclusivo.Checked := sdqConsulta.FieldByName('pagoexclusivo').AsString = 'S';
  HabilitarMEP;
end;

procedure TfrmPagosLegales.btnAceptarEdicionClick(Sender: TObject);
var
  iddelegacion: integer;
  sUpdatePagoElect : String;
begin
  Verificar(fraPagueseA.Codigo = '', fraPagueseA,'Debe completar el Autorizado al Cobro.');
  Verificar(not IsCUIT(fraPagueseA.Codigo) and not IsCUIL(fraPagueseA.Codigo), fraPagueseA,'No puede autorizarse el pago pu�s el Autorizado no tiene un CUIT/CUIL v�lido.');

  if chkEnviarADelegacion.Checked then
    iddelegacion := fraBeneficiario.sdqDatos.FieldByName('bo_iddelegacion').AsInteger
  else
    iddelegacion := 0;


  BeginTrans(True);
  try
    if (ModoForm = mfJuicioDemandada) or (ModoForm = mfJuicioActora) then
    begin
      if (ModoForm = mfJuicioDemandada) then
      begin
        sUpdatePagoElect := ', lj_nrooficio = '+SqlValue(FNroOficio)+', lj_juzgado = '+SqlValue(FJuzgado)+','+
                            ' lj_secretaria = '+SqlValue(FSecretaria )+', lj_expediente = '+SqlValue(FExpediente)+','+
                            ' lj_fuero = '+SqlValue(FFuero)+', lj_caratula = '+SqlValue(FCaratula)+','+
                            ' lj_cbu1 = '+SqlValue(FCBU1)+', lj_cbu2 = '+SqlValue(FCBU2);
      end
      else
        sUpdatePagoElect := '';


      EjecutarSqlST(
       ' UPDATE legales.llj_liquidacionjuicio '+
       '    SET lj_cuitcuil = '+SqlValue(fraPagueseA.Codigo)+','+
       '        lj_paguesea ='+SqlValue(fraPagueseA.Descripcion)+','+
       '        lj_detalle = '+SqlValue(edDetalleImpresion.Text)+','+
       '        lj_chequenombre = '+SqlValue(edChequeAlaOrdenDe.Text)+','+
       '        lj_delegacion = ' + SqlInteger(iddelegacion, True) +','+
       '        lj_enviaradelegacion = ' + SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +','+
       '        lj_pagoexclusivo = '+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+sUpdatePagoElect+
       '  WHERE lj_id = '+SqlValue(idLiquidacion));

      EjecutarSqlST(
       'UPDATE legales.lpl_pagolegal' +
       '   SET  PL_CUITCUIL = '+SqlValue(fraPagueseA.Codigo)+','+
       '        PL_PAGUESEA ='+SqlValue(fraPagueseA.Descripcion)+','+
       '        PL_CHEQUENOMBRE = '+SqlValue(edChequeAlaOrdenDe.Text)+','+
       '        PL_PAGOEXCLUSIVO = '+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+
       ' WHERE PL_IDLIQUIDACION = ' + SqlValue(idLiquidacion)+
       '   AND pl_estado not in (''X'',''A'')');

    end
    else if (ModoForm = mfMediacion) then
    begin
      EjecutarSqlST(
       ' UPDATE legales.llm_liquidacionmediacion '+
       '    SET lm_cuitcuil = '+SqlValue(fraPagueseA.Codigo)+','+
       '        lm_paguesea ='+SqlValue(fraPagueseA.Descripcion)+','+
       '        lm_detalle = '+SqlValue(edDetalleImpresion.Text)+','+
       '        lm_chequenombre = '+SqlValue(edChequeAlaOrdenDe.Text)+','+
       '        lm_delegacion = ' + SqlInteger(iddelegacion, True) +','+
       '        lm_enviaradelegacion = ' + SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +','+
       '        lm_pagoexclusivo = '+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+
       '  WHERE lm_id = '+SqlValue(idLiquidacion));

      EjecutarSqlST(
       'UPDATE legales.lpm_pagomediacion ' +
       '   SET  PM_CUITCUIL = '+SqlValue(fraPagueseA.Codigo)+','+
       '        PM_PAGUESEA ='+SqlValue(fraPagueseA.Descripcion)+','+
       '        PM_CHEQUENOMBRE = '+SqlValue(edChequeAlaOrdenDe.Text)+','+
       '        PM_PAGOEXCLUSIVO = '+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+
        ' WHERE PM_IDLIQUIDACION = ' + SqlValue(idLiquidacion)+
        '   AND PM_ESTADO not in (''X'',''A'')');
    end
    else if (ModoForm = mfSumario) then
    begin
      EjecutarSqlST(
       ' UPDATE legales.lls_liquidacionsumario '+
       '    SET ls_cuitcuil = '+SqlValue(fraPagueseA.Codigo)+','+
       '        ls_paguesea ='+SqlValue(fraPagueseA.Descripcion)+','+
       '        ls_detalle = '+SqlValue(edDetalleImpresion.Text)+','+
       '        ls_chequenombre = '+SqlValue(edChequeAlaOrdenDe.Text)+','+
       '        ls_delegacion = ' + SqlInteger(iddelegacion, True) +','+
       '        ls_enviaradelegacion = ' + SqlValue(String(Iif(chkEnviarADelegacion.Checked, 'S', 'N'))) +','+
       '        lS_pagoexclusivo = '+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+
       '  WHERE lS_id = '+SqlValue(idLiquidacion));

      EjecutarSqlST(
       'UPDATE legales.lps_pagosumario' +
       '   SET  PS_CUITCUIL = '+SqlValue(fraPagueseA.Codigo)+','+
       '        PS_PAGUESEA ='+SqlValue(fraPagueseA.Descripcion)+','+
       '        PS_CHEQUENOMBRE = '+SqlValue(edChequeAlaOrdenDe.Text)+','+
       '        PS_PAGOEXCLUSIVO = '+SqlValue(String(Iif(chkPagoExclusivo.Checked, 'S', 'N')))+
        ' WHERE PS_IDLIQUIDACION = ' + SqlValue(idLiquidacion)+
        '   AND pS_estado not in (''X'',''A'')');
    end;
    CommitTrans(True);
    Panel1.Visible := False;
    vclExtra.LockControls([fraPagueseA,edChequeAlaOrdenDe,edDetalleImpresion,chkPagoExclusivo, chkEnviarADelegacion],True);
    HabilitarMEP;
    tbRefrescarClick(nil);
  except
    on E: Exception do begin
       Rollback(true);
       ErrorMsg(E, 'Error al Actualizar.');
    end;
  end
end;


procedure TfrmPagosLegales.fraEtapaOnChange(Sender: TObject);
begin
  if (ModoForm = mfSumario) and fraEtapa.IsSelected then
  begin
    fraSectores.Codigo := ValorSql('SELECT su_area '+
                                   '  FROM legales.lsu_sumario '+
                                   ' WHERE su_numerosumario = '+SqlValue(fraEtapa.Codigo));
  end;
end;

procedure TfrmPagosLegales.chkEnviarADelegacionClick(Sender: TObject);
begin
  inherited;
  if chkEnviarADelegacion.Checked and
     ExisteSqlEx('SELECT 1 FROM LEGALES.LBO_ABOGADO WHERE BO_ID = :IDABOGADO AND BO_IDDELEGACION IS NULL', [fraBeneficiario.Value] ) then
  begin
    chkEnviarADelegacion.Checked := false;
    Verificar(true, chkEnviarADelegacion, 'El abogado no tiene la delegaci�n asociada.');
  end;

  if chkEnviarADelegacion.Checked and
     ExisteSqlEx('SELECT 1 FROM LEGALES.LBO_ABOGADO WHERE BO_ID = :IDABOGADO AND BO_IDDELEGACION = 840', [fraBeneficiario.Value] ) then
  begin
    chkEnviarADelegacion.Checked := false;
    Verificar(true, chkEnviarADelegacion, 'El abogado tiene la delegaci�n Capital asociada y esta no es v�lida para enviar un cheque.');
  end;
end;

procedure TfrmPagosLegales.btnCancelarPagoElectClick(Sender: TObject);
begin

  MsgBox('El pago electr�nico se ha eliminado.', MB_ICONINFORMATION + MB_OK);
  inherited;
end;

procedure TfrmPagosLegales.CalcControlWidthLeft;
var
  I, sumWidth: Integer;
begin
    // Ticket 66098
    sumWidth := 20;
    for I := 0 to Grid.Columns.Count -1 do begin

      if Grid.Columns[I].FieldName = 'IMPORTECONRETENCION' then  begin
        lblSumatoriaPagosConRet.Left := sumWidth;
        lblSumatoriaPagosConRet.Width := Grid.Columns[I].Width;
      end;
      if Grid.Columns[I].FieldName = 'IMPORTEPAGO' then  begin
        lblSumatoriaPagosSinRet.Left := sumWidth;
        lblSumatoriaPagosSinRet.Width := Grid.Columns[I].Width;
      end;
      sumWidth := sumWidth + Grid.Columns[I].Width;

    end;

end;

procedure TfrmPagosLegales.tbLimpiarPagoElecClick(Sender: TObject);
begin
  edNroOficio.Clear;
  edJuzgado.Clear;
  edSecretaria.Clear;
  edExpediente.Clear;
  edFuero.Clear;
  edCaratula.Clear;
  edCBU1.Clear;
  edCBU2.Clear;
  FNroOficio := '';
  FJuzgado := '';
  FSecretaria := '';
  FExpediente := '';
  FFuero := '';
  FCaratula := '';
  FCBU1 := '';
  FCBU2 := '';

  MsgBox('El pago electr�nico se ha eliminado.', MB_ICONINFORMATION + MB_OK);
  inherited;
end;

procedure TfrmPagosLegales.tbSalirPagoElecClick(Sender: TObject);
begin
  fpPagoElectronico.ModalResult := mrOk;
end;

procedure TfrmPagosLegales.tbMEPClick(Sender: TObject);
begin
  Verificar(not chkPagoExclusivo.Checked, tbMEP,'Debe ser pago exclusivo para poder cargar un pago electr�nico.');


  if FNroOficio = '' then
  begin
    if (sdqConsulta.FieldByName('letraestado').AsString <> 'E') then
    begin
      if idjuicio = 0 then
      begin
        idJuicio := ValorSql(
                      'SELECT DISTINCT pl_idjuicioentramite '+
                      '  FROM legales.lpl_pagolegal '+
                      ' WHERE pl_idliquidacion = '+SqlValue(idLiquidacion));
      end;
      with GetQuery(
      ' SELECT jz_descripcion AS juzgado, sc_descripcion AS secretaria, jt_nroexpediente '+
      '        || ''/'' || jt_anioexpediente AS nroexpediente, fu_descripcion AS fuero, '+
      '        jt_demandante || '' C/ '' || jt_demandado || '' '' || jt_caratula AS caratula '+
      '   FROM legales.ljt_juicioentramite, legales.ljz_juzgado, legales.lsc_secretaria, legales.lfu_fuero '+
      '  WHERE jt_idfuero = fu_id '+
      '    AND jt_idjuzgado = jz_id '+
      '    AND jt_idsecretaria = sc_id '+
      '    AND jt_id = '+SqlValue(idJuicio)
      ) do
      try
        edJuzgado.Text    := FieldByName('juzgado').AsString;
        edSecretaria.Text := FieldByName('secretaria').AsString;
        edExpediente.Text := FieldByName('nroexpediente').AsString;
        edFuero.Text      := FieldByName('fuero').AsString;
        edCaratula.Text   := FieldByName('caratula').AsString;
      finally
        Free;
      end;
    end;
  end
  else
  begin
    edNroOficio.Text := FNroOficio;
    edJuzgado.Text := FJuzgado;
    edSecretaria.Text := FSecretaria;
    edExpediente.Text := FExpediente;
    edFuero.Text := FFuero;
    edCaratula.Text := FCaratula;
    edCBU1.Text := FCBU1;
    edCBU2.Text := FCBU2;
  end;
  vclExtra.LockControls([edNroOficio, edJuzgado, edSecretaria, edExpediente,
                         edFuero, edCaratula, edCBU1, edCBU2 ],
                         (sdqConsulta.FieldByName('letraestado').AsString = 'E'));
  tbGuardar.Enabled := (sdqConsulta.FieldByName('letraestado').AsString <> 'E');
  tbLimpiarPagoElec.Enabled := tbGuardar.Enabled;
  fpPagoElectronico.ShowModal;
end;

procedure TfrmPagosLegales.tbGuardarClick(Sender: TObject);
begin
  Verificar(edNroOficio.Text = '',edNroOficio, 'Debe completarse el Nro. de Oficio.');
  Verificar(edJuzgado.Text = '',edJuzgado, 'Debe completarse el Juzgado.');
  Verificar(edSecretaria.Text = '',edSecretaria, 'Debe completarse la Secretaria.');
  Verificar(edExpediente.Text = '',edExpediente, 'Debe completarse el Expediente.');
  Verificar(edFuero.Text = '',edFuero, 'Debe completarse el Fuero.');
  Verificar(edCaratula.Text = '',edCaratula, 'Debe completarse la caratula.');
  Verificar((edCBU1.Text = '') or (edCBU2.Text = ''),edCBU1, 'Debe completarse el CBU.');
  Verificar(ValorSql('SELECT art.utiles.iscbuvalido('+SqlValue(edCBU1.Text)+', '+SqlValue(edCBU2.Text)+
                     ') FROM DUAL')= 'N', edCBU1, 'El CBU no es valido.');
  FNroOficio := edNroOficio.Text;
  FJuzgado := edJuzgado.Text;
  FSecretaria := edSecretaria.Text;
  FExpediente := edExpediente.Text;
  FFuero := edFuero.Text;
  FCaratula := edCaratula.Text;
  FCBU1 := edCBU1.Text;
  FCBU2 := edCBU2.Text;
  MsgBox('El pago electr�nico se guardo parcialmente.', MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPagosLegales.chkPagoExclusivoClick(Sender: TObject);
begin
  if FNroOficio <> '' then
  begin
    chkPagoExclusivo.Checked := True;
    InvalidMsg(chkPagoExclusivo,'Si tiene pago electr�nico debe estar marcado como pago exclusivo.');
  end;
  HabilitarMEP;
end;

procedure TfrmPagosLegales.HabilitarMEP;
begin
  if (fraTipoBeneficiario.Codigo = '1') and (FModoForm = mfJuicioDemandada) and 
     not fraPagueseA.ReadOnly then
    tbMEP.Enabled := True
  else
    tbMEP.Enabled := False;
end;

Function TfrmPagosLegales.isCargaCuotas(idJuicio : Integer; iConceptoPago : integer): Boolean;
begin
  result := ExisteSql('SELECT 1 '+
                      '  FROM legales.lcs_conpagoporsentencia, legales.ljt_juicioentramite '+
                      '  WHERE (   cs_aplicatodassentencias = ''S'' '+
                      '         OR cs_idsentencia = jt_idtiporesultadosentencia ) '+
                      '    AND jt_id = '+SqlValue(idJuicio)+
                      '    AND cs_idconpago = '+SqlValue(iConceptoPago)) and not
            ExisteSql('SELECT 1 '+
                      '   FROM legales.lpl_pagolegal, legales.ljt_juicioentramite, art.scp_conpago '+
                      '  WHERE pl_idjuicioentramite = jt_id '+
                      '    AND pl_conpago = '+SqlValue(fraConceptoPago.Codigo)+
                      '    AND pl_idjuicioentramite = '+SqlValue(fraEtapa.Value)+
                      '    AND pl_nrocuota is null '+
                      '    AND pl_estado IN (''C'',''E'') ');
end;

end.

