unit unAdmSiniestros;

interface

uses
  {$IFDEF VER180} rxToolEdit, rxPlacemnt, {$ELSE} ToolEdit, Placemnt, {$ENDIF}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FSForm, unArtFrame, unArtDbFrame, unFraEmpresa, StdCtrls, ExtCtrls, ComCtrls,
  ToolWin, unFraTrabajador, unFraTrabajadorSiniestro, unArt, SqlFuncs,
  unArtDBAwareFrame, unSinForm, ShortCutControl, artSeguridad,
  Mask, PatternEdit, DateTimeEditors, IntEdit, JvExControls,
  JvComponent, JvXPCore, JvXPContainer, JvInstallLabel, JvStaticText, Spin,
  JvXPButtons, unCustomForm, ImgList, XPMenu, Buttons, unFraVistaTIFF,
  JvExExtCtrls, JvNetscapeSplitter, Menus, DB, SDEngine, unEstrategiaTIFF,
  pngimage, RxToolEdit, RxPlacemnt;

type
  TfrmAdmSiniestros = class(TfrmCustomForm)
    Seguridad: TSeguridad;
    ShortCutControl: TShortCutControl;
    pnlBottom: TPanel;
    pnlStatus: TPanel;
    pnlPapel: TPanel;
    btnAgregarHoja: TJvXPButton;
    edCantidadHojas: TIntEdit;
    btnQuitarHoja: TJvXPButton;
    pnlDatos: TPanel;
    chkAyudas: TCheckBox;
    btnEvolucionEstados: TJvXPButton;
    btnDocumentacion: TJvXPButton;
    pnlVisor: TPanel;
    Splitter: TJvNetscapeSplitter;
    pnlLeft: TPanel;
    pnlTop: TPanel;
    lbCUIT: TLabel;
    CUIL: TLabel;
    lbDelegacion: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    btnCambioDelegacion: TSpeedButton;
    fraTrabajador: TfraTrabajadorSiniestro;
    edDELEGACION: TEdit;
    fraEmpresa: TfraEmpresa;
    edJUICIO: TEdit;
    edGTRABAJO: TEdit;
    CoolBar: TCoolBar;
    ToolBar: TToolBar;
    tbNuevo: TToolButton;
    tbModificar: TToolButton;
    tbEliminar: TToolButton;
    tbSeparador1: TToolButton;
    tbGuardar: TToolButton;
    tbCancelar: TToolButton;
    tbSeparador2: TToolButton;
    tbRefrescar: TToolButton;
    tbLimpiar: TToolButton;
    tbSeparador3: TToolButton;
    tbImprimir: TToolButton;
    tbSeparador4: TToolButton;
    tbBuscarSiniestro: TToolButton;
    tbNomina: TToolButton;
    tbDatosEmpresa: TToolButton;
    tbSeparador5: TToolButton;
    tbModificarTrabajador: TToolButton;
    tbIncapacidadesPermanentes: TToolButton;
    tbObtenerImagen: TToolButton;
    tbSeparador6: TToolButton;
    tbSalir: TToolButton;
    pnlInfo: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    edEX_TIPO: TEdit;
    edEX_GRAVEDAD: TEdit;
    edFechaAccidente: TDateEdit;
    TabControl: TTabControl;
    ScrollBox: TScrollBox;
    btnUbicacion: TJvXPButton;
    edEX_ESTADO: TEdit;
    Label8: TLabel;
    ilColor2: TImageList;
    ilByN2: TImageList;
    tbViajar: TToolButton;
    tbEstablecimientos: TToolButton;
    mnuViajar: TPopupMenu;
    mnuViajarLiquidaciones: TMenuItem;
    mnuViajarIncapacidades: TMenuItem;
    sdqImagenes: TSDQuery;
    mnuImagenes: TPopupMenu;
    mnuObtenerSiguienteImagen: TMenuItem;
    pnlStats: TPanel;
    imgStats: TImage;
    pnlFechaDoc: TPanel;
    pnlDocs: TPanel;
    imgDocs: TImage;
    Label1: TLabel;
    edMEDIACIONES: TEdit;
    btnDatosLesion: TJvXPButton;
    btnJustifILT: TJvXPButton;
    procedure tbSalirClick(Sender: TObject);
    procedure FSFormCreate(Sender: TObject);
    procedure tbLimpiarClick(Sender: TObject);
    procedure tbGuardarClick(Sender: TObject);
    procedure tbNuevoClick(Sender: TObject);
    procedure tbModificarClick(Sender: TObject);
    procedure tbEliminarClick(Sender: TObject);
    procedure TabControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure TabControlChange(Sender: TObject);
    procedure tbCancelarClick(Sender: TObject);
    procedure tbRefrescarClick(Sender: TObject);
    procedure SeguridadAfterExecute(Sender: TObject);
    procedure tbModificarTrabajadorClick(Sender: TObject);
    procedure tbBuscarSiniestroClick(Sender: TObject);
    procedure tbNominaClick(Sender: TObject);
    procedure tbDatosEmpresaClick(Sender: TObject);
    procedure tbIncapacidadesPermanentesClick(Sender: TObject);
    procedure FSFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAgregarHojaClick(Sender: TObject);
    procedure btnQuitarHojaClick(Sender: TObject);
    procedure CambioAyuda(Sender: TObject);
    procedure btnCambioDelegacionClick(Sender: TObject);
    procedure btnEvolucionEstadosClick(Sender: TObject);
    procedure tbImprimirClick(Sender: TObject);
    procedure ScrollBoxMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBoxMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure btnDocumentacionClick(Sender: TObject);
    procedure fraTrabajadortbLimpiarClick(Sender: TObject);
    procedure fraTrabajadorcmbNombreDropDown(Sender: TObject);
    procedure tbObtenerImagenClick(Sender: TObject);
    procedure btnUbicacionClick(Sender: TObject);
    procedure tbViajarClick(Sender: TObject);
    procedure tbEstablecimientosClick(Sender: TObject);
    procedure mnuViajarLiquidacionesClick(Sender: TObject);
    procedure mnuViajarIncapacidadesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mnuObtenerSiguienteImagenClick(Sender: TObject);
    procedure btnDatosLesionClick(Sender: TObject);
    procedure btnJustifILTClick(Sender: TObject);
  private
    FCreating,
    FModificarTrabajador,
    FNomina,
    FDatosEmpresa,
    FCambioDelegacion,
    FEvolucionEstados,
    FDocumentacion,
    FUbicacion,
    FDatosLesion,
    FIncapacidadesPermanentes,
    FJustifILT: Boolean;
    ActiveForm: TSinForm;
    fraVistaTIFF: TfraVistaTIFF;
    eEstrategiaTiff: TEstrategiaTiff; // Estrategia para la visualizacion del tiff multi paginas o simple

    function  GetTipoDocumento(ADocumento: String = ''): String;
    function  TieneImagenesBloquedasRecientemente(AIdExpediente: Integer; AUsuario, ATipoDocumento: String): Boolean;

    procedure BlockFilters(AValue: boolean);
    procedure CambioPapel(ACantidad: integer);
    procedure CargoPapeles;
    procedure ChequeoPanelPapeles(BloquearTodo: boolean = False);
    procedure DesbloqueoFiltros;
    procedure NominasBuscarSiniestrosClick(Sender: TObject);
    procedure OnfraEmpresaChange(Sender: TObject);
    procedure RevisarImagenesDigitalizadas(ACodigoDocumento: String = ''; ADocumento: String = '');
    procedure edPageKeyPress(Sender: TObject; var Key: Char);
    procedure SetPage(AValue: Integer);
    procedure tbPageFirstClick(Sender: TObject);
    procedure tbPageLastClick(Sender: TObject);
    procedure tbPageNextClick(Sender: TObject);
    procedure tbPagePriorClick(Sender: TObject);
    procedure fraVistaTIFFtbImprimirClick(Sender: TObject);
    procedure VerStats;
    procedure VerificarVisorTIFF;
  public
    procedure AfterConstruction; override;
    procedure OnfraTrabajadorChange(Sender: TObject);    
  end;

var
  frmAdmSiniestros: TfrmAdmSiniestros;

implementation

uses
  unPrincipal, unDmPrincipal, CustomDlgs, unDenunciaGrave, unParteEvolutivo, VCLExtra,
  unContratoTrabajador, unDlgBusSiniestro, unConsulta, AnsiSql, unExpediente, unSiniestros,
  unParteEgreso, unParteIngreso, unEspera, unResumen, unOtros, unParteAuditoria,
  unCustomConsulta, General, unIncapacidadesPermanentes, unCambioDelegacion,
  unEvolucionDeEstados, unConsultaEmpresa, unConsultaNomina, unSituacionDocumental, SinEdit,
  unSesion, unUbicacionDenuncia, unCITRIX, unLiqIncapacidades, unTercerizadoras,
  unDlgBusEstablecimiento, unDenunciaStandard, unSegIncapacidades, ArchFuncs, IniFiles,
  DateUtils, Strfuncs, DateTimeFuncs, unComunes, Numeros, unDatosLesion, unDigitalizacion,
  unUtilsArchivo, unArchivo, unConstantArchivo, unJustificacionILT;

const
  PAGE_RESUMEN         = 0;
  PAGE_EXPEDIENTE      = 1;
  PAGE_DENUNCIA        = 2;
  PAGE_PARTEINGRESO    = 3;
  PAGE_PARTEEGRESO     = 4;
  PAGE_DENUNCIASGRAVES = 5;
  PAGE_OTROS           = 6;
  PAGE_PARTEEVOLUTIVO  = 7;
  PAGE_PARTEAUDITORIA  = 8;

{$R *.DFM}


{ TfrmAdmSiniestros }

procedure TfrmAdmSiniestros.OnfraEmpresaChange(Sender: TObject);
begin
  if Assigned(Sender) then { Si no fue llamado desde FraTrabajadorChange }
    fraTrabajador.Contrato := fraEmpresa.Contrato;

  tbNomina.Enabled := FNomina and fraEmpresa.IsSelected;
  tbDatosEmpresa.Enabled := FDatosEmpresa and fraEmpresa.IsSelected;
  tbEstablecimientos.Enabled := fraEmpresa.IsSelected;
end;

procedure TfrmAdmSiniestros.OnfraTrabajadorChange(Sender: TObject);
var
  sMensaje, ssql, fEgreso: string;
begin
  if fraTrabajador.TieneSiniestro then   // Plan - SML
  begin
    if Is_UsuarioSML(Sesion.UserID) and (not Is_SiniestroSML(fraTrabajador.sdqDatos.FieldByName('EX_ID').AsInteger)) then
    begin
      tbLimpiarClick(nil);
      Verificar(True, fraTrabajador.edSiniestro, 'Usted no posee permisos para visualizar este siniestro.');
    end;

  //  fraEmpresa.Value := fraTrabajador.sdqDatos.FieldByName('EM_ID').AsInteger;

    fraEmpresa.Contrato := fraTrabajador.Contrato;   // ESTO SE MODIFICO
    

    if (fraEmpresa.Value <> fraTrabajador.IdEmpresa) and (fraTrabajador.IdEmpresa <> ART_EMPTY_ID) then
      fraEmpresa.Value := fraTrabajador.IdEmpresa
    else
      OnfraEmpresaChange(nil);
  end;

  if Assigned(ActiveForm) and fraTrabajador.TieneSiniestro then
  begin
    ActiveForm.IdExpediente := fraTrabajador.sdqDatos.FieldByName('EX_ID').AsInteger;
    tbNuevo.Enabled := ActiveForm.AddButtonVisible;
  end;

  tbModificarTrabajador.Enabled := FModificarTrabajador; // and fraTrabajador.IsSelected;

  if fraTrabajador.IsSelected and fraTrabajador.TieneSiniestro then
  begin
    edFechaAccidente.Date := fraTrabajador.sdqDatos.FieldByName('EX_FECHAACCIDENTE').AsDateTime;
{
    edEX_GRAVEDAD.Text := NVL(fraTrabajador.sdqDatos.FieldByName('GRAVEDAD').AsString, '-');
    edEX_TIPO.Text := fraTrabajador.sdqDatos.FieldByName('TIPO').AsString;
}
    with GetQueryEx('SELECT EL_NOMBRE DELEGACION, GP_NOMBRE, GP_DESCRIPCION, EX_CUIT, ' +
                           'ART.SIN.Get_ListaNrosJuicioExp(EX_SINIESTRO, EX_ORDEN, EX_RECAIDA) JUICIO, ' +
                           'ART.SIN.Get_ListaNrosMediacionesExp(EX_ID) MEDIACIONES, ' +
                           'SE_DESCRIPCION || DECODE(SE_CERRADO, ''S'', '' ('' || EX_CAUSAFIN || '')'', '''') as ESTADO, ' +
                           'TG_DESCRIPCION as GRAVEDAD, TA_DESCRIPCION as TIPO, EX_FECHAACCIDENTE, ' +
                           '(SELECT 1 FROM SIN.SDL_DATOSLESION WHERE DL_IDEXPEDIENTE = EX_ID) as DATOS_LESION, ' +
                           '(SELECT 1 FROM SIN.SUD_UBICACIONDENUNCIA WHERE UD_IDEXPEDIENTE = EX_ID) as UBICACION_DENUNCIA ' +
                      'FROM DEL_DELEGACION, MGP_GTRABAJO, SEX_EXPEDIENTES, ' +
                           'SIN.STG_TIPOGRAVEDAD, SIN.STA_TIPOACCIDENTE, SIN.SSE_SINIESTROESTADO ' +
                     'WHERE EX_DELEGACION = EL_ID (+) ' +
                       'AND EX_GTRABAJO = GP_CODIGO (+) ' +
                       'AND EX_GRAVEDAD = TG_CODIGO (+) ' +
                       'AND EX_TIPO = TA_CODIGO (+) ' +
                       'AND EX_ESTADO = SE_CODIGO (+) ' +
                       'AND EX_ID = :IdExpediente', [ActiveForm.IdExpediente]) do
    try
      edDELEGACION.Text   := FieldByName('DELEGACION').AsString;
      edGTRABAJO.Text     := FieldByName('GP_NOMBRE').AsString +
                             Get_UsuGestor( ActiveForm.IdExpediente, True);
      edGTRABAJO.Hint     := FieldByName('GP_DESCRIPCION').AsString;
      edEX_ESTADO.Text    := FieldByName('ESTADO').AsString;
      edJUICIO.Text       := FieldByName('JUICIO').AsString;
      edJUICIO.Hint       := FieldByName('JUICIO').AsString;
      edMEDIACIONES.Text  := FieldByName('MEDIACIONES').AsString;
      edMEDIACIONES.Hint  := FieldByName('MEDIACIONES').AsString;
      edEX_GRAVEDAD.Text  := NVL(FieldByName('GRAVEDAD').AsString, '-');
      edEX_TIPO.Text      := FieldByName('TIPO').AsString;

      if Trim(edJUICIO.Text) > '' then
        InfoHint(edJUICIO, 'Existe uno o m�s juicios para el siniestro seleccionado.');

      if Trim(edMEDIACIONES.Text) > '' then
        InfoHint(edMEDIACIONES, 'Existe una o m�s mediaciones para el siniestro seleccionado.');

      ssql := ' select art.trabajador.get_fechaegresocontrato(:idtrab, :cont) from dual ';
      fEgreso := ValorSqlEx(ssql, [fraTrabajador.IdTrabajador, fraTrabajador.Contrato]);

      if (fEgreso <> '') and (StrToDate(fEgreso) >= FieldByName('ex_fechaaccidente').AsDateTime) then
        InfoHint(fraTrabajador, 'El trabajador egres� de la empresa');

      if FieldByName('DATOS_LESION').IsNull then
        btnDatosLesion.Font.Style := btnDatosLesion.Font.Style - [fsBold]
      else
        btnDatosLesion.Font.Style := btnDatosLesion.Font.Style + [fsBold];

      if FieldByName('UBICACION_DENUNCIA').IsNull then
        btnUbicacion.Font.Style := btnUbicacion.Font.Style - [fsBold]
      else
        btnUbicacion.Font.Style := btnUbicacion.Font.Style + [fsBold];

      BlockFilters(True);
      btnCambioDelegacion.Enabled        := FCambioDelegacion;
      btnEvolucionEstados.Enabled        := FEvolucionEstados;
      btnDocumentacion.Enabled           := FDocumentacion;
      btnUbicacion.Enabled               := FUbicacion;
      btnDatosLesion.Enabled             := FDatosLesion;
      tbIncapacidadesPermanentes.Enabled := FIncapacidadesPermanentes;
      btnJustifILT.Enabled               := FJustifILT;

      if fraEmpresa.IsEmpty then
        fraEmpresa.CUIT := FieldByName('EX_CUIT').AsString;
    finally
      Free;
    end;

    if Assigned(Sender) then
    with fraTrabajador.edSiniestro do
    begin
      if HasRecaidasAnterioresRechazadas(Siniestro, Orden, Recaida) {and ActiveForm.MostrarAyudasVisuales} then
        InfoHint(fraTrabajador.edSiniestro, 'Existen para el siniestro reca�das anteriores rechazadas.');

      sMensaje := GetMensajeEstadoEmpresa(Siniestro, Orden, Recaida);
      if (sMensaje > '') {and ActiveForm.MostrarAyudasVisuales} then
        InfoHint(fraEmpresa.edContrato, sMensaje);

      if not IsTrabajadorDeclarado(Siniestro, Orden, Recaida) and fraEmpresa.IsSelected {and ActiveForm.MostrarAyudasVisuales} then
        InfoHint(fraEmpresa.mskCUIT, 'El empleador omiti� declarar su obligaci�n de pago. Pagos a recuperar del empleador.'{, False, 'Informaci�n', blnInfo, 10});
    end;

    pnlStatus.Caption := 'Mostrando el siniestro ' + fraTrabajador.SiniestroSinCeros;
    pnlStatus.Color := $00BBC6BB;
    ChequeoPanelPapeles;
    CargoPapeles;
  end else
  begin
    fraTrabajador.ClearSiniestroStyle;
    edFechaAccidente.Clear;
    edEX_GRAVEDAD.Clear;
    edEX_TIPO.Clear;
    edEX_ESTADO.Clear;
    edDELEGACION.Clear;
    edGTRABAJO.Clear;
    edGTRABAJO.Hint := '';
    edJUICIO.Clear;
    edJUICIO.Hint := '';
    edMEDIACIONES.Clear;
    edMEDIACIONES.Hint := '';
    pnlStatus.Caption := 'Ud. no est� visualizando un siniestro';
    pnlStatus.Color := $00AAC6FF;
    ChequeoPanelPapeles(True);
    ActiveForm.IdExpediente := 0;
    BlockFilters(False);
    tbIncapacidadesPermanentes.Enabled := False;
    btnDatosLesion.Font.Style := btnDatosLesion.Font.Style - [fsBold];
    btnUbicacion.Font.Style := btnUbicacion.Font.Style - [fsBold];
  end;

  ActiveForm.dsDatosStateChange(nil);
end;

procedure TfrmAdmSiniestros.tbSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAdmSiniestros.FSFormCreate(Sender: TObject);
begin
  FCreating := True;
  edEX_GRAVEDAD.Clear;
  edEX_TIPO.Clear;
  edEX_ESTADO.Clear;

  mnuViajarLiquidaciones.Enabled := frmPrincipal.Seguridad.Claves.IsActive('VerLiquidaciones');  // por habilitaciones btn Viajar
  mnuViajarIncapacidades.Enabled := frmPrincipal.Seguridad.Claves.IsActive('VerIncapacidades');

  with fraEmpresa do
  begin
    OnChange := OnfraEmpresaChange;
    ShowBajas := True;
    UltContrato := True;
    Confidencialidad := True;
    Tercerizadoras := EsUsuarioDeTercerizadora;
  end;

  with fraTrabajador do
  begin
    OnChange := OnfraTrabajadorChange;
    MostrarRelaLaboral := False;
    ShowBajas := True;
    Tercerizadoras := EsUsuarioDeTercerizadora;    
  end;

  Splitter.Width := 10;
  VerStats;
end;

procedure TfrmAdmSiniestros.tbLimpiarClick(Sender: TObject);
begin
  fraEmpresa.Clear;
  fraTrabajador.Clear;
  edFechaAccidente.Clear;
  edEX_GRAVEDAD.Clear;
  edEX_TIPO.Clear;
  edEX_ESTADO.Clear;
  edDELEGACION.Clear;
  edGTRABAJO.Clear;
  edGTRABAJO.Hint := '';
  edJUICIO.Clear;
  edJUICIO.Hint := '';
  edMEDIACIONES.Clear;
  edMEDIACIONES.Hint := '';
  BlockFilters(False);

  { Botones Especiales }
  //tbModificarTrabajador.Enabled := False;
  tbNomina.Enabled := False;
  tbDatosEmpresa.Enabled := False;
  tbIncapacidadesPermanentes.Enabled := False;
  tbEstablecimientos.Enabled := False;

  DesbloqueoFiltros;
  
  if Assigned(ActiveForm) then
  begin
    ActiveForm.Clear;
    ActiveForm.IdExpediente := 0;
  end;

  if fraTrabajador.mskCUIL.CanFocus then
    fraTrabajador.mskCUIL.SetFocus;

  fraTrabajador.Change;
end;

function TfrmAdmSiniestros.GetTipoDocumento(ADocumento: String = ''): String;
begin
  if IsEmptyString(ADocumento) then
   case TabControl.TabIndex of
     PAGE_RESUMEN, PAGE_EXPEDIENTE:
       Result := '';
     PAGE_DENUNCIA:
       Result := 'DEN';
     PAGE_PARTEINGRESO:
       Result := 'PMI';
     PAGE_PARTEEGRESO:
       Result := 'PME';
     PAGE_DENUNCIASGRAVES:
       Result := 'DEG';
     PAGE_OTROS:
       Result := 'OTR';
     PAGE_PARTEEVOLUTIVO:
       Result := 'PEV';
     PAGE_PARTEAUDITORIA:
       Result := 'PAM';
     else
       Result := '';
   end
  else
    Result := ADocumento;
end;

procedure TfrmAdmSiniestros.RevisarImagenesDigitalizadas(ACodigoDocumento: String = ''; ADocumento: String = '');
var
  sSQL, sDocumento, sExtra, sArchivoCompleto, sPathCompleto: String;
  sClave: String;
  nSin, nOrd, nRec: Integer;
  bCopiaOk: Boolean;
  IdDocumento: TTableId;
begin
  VerificarVisorTIFF;
  if pnlVisor.Visible then
  begin
    if not IsEmptyString(ACodigoDocumento) then
    begin
      sDocumento := ADocumento;
    end else
    begin
      sDocumento := TabControl.Tabs[TabControl.TabIndex];
      sDocumento := Copy(sDocumento, 1, Pos('(', sDocumento) - 1);
    end;

    if (not sdqImagenes.FieldByName('GI_IDEXPEDIENTE').IsNull) and (sdqImagenes.FieldByName('GI_IDEXPEDIENTE').AsInteger <> ActiveForm.IdExpediente) then
    begin
      DecodeIdSiniestro(sdqImagenes.FieldByName('GI_IDEXPEDIENTE').AsInteger, nSin, nOrd, nRec);
      sExtra := CRLF + 'Tenga en cuenta que la imagen est� asociada a un siniestro diferente!' + CRLF + '(' + Armar_Siniestro(nSin, nOrd, nRec) + ')';
    end;

    if (not sdqImagenes.FieldByName('TD_CODIGO').IsNull) and (sdqImagenes.FieldByName('TD_CODIGO').AsString <> GetTipoDocumento(ACodigoDocumento)) then
      sExtra := sExtra + CRLF + 'Tenga en cuenta que la imagen est� asociada a un documento diferente!' + CRLF + '(' + sdqImagenes.FieldByName('TD_DESCRIPCION').AsString + ')';

    if sdqImagenes.FieldByName('GI_IDDOCUMENTO').IsNull and (GetTipoDocumento(ACodigoDocumento) > '') then
    begin
      if MsgAsk(Format('�Desea asociar la imagen con el tipo de documento actual?' + CRLF + '%s - Siniestro N� %s' + sExtra,
                [sDocumento, fraTrabajador.Siniestro])) then
      begin
        try
          BeginTrans;

          with fraTrabajador.edSiniestro do
          try
            sSQL :=  'UPDATE SIN.SGI_GESTIONIMAGENES ' +
                       'SET GI_IDEXPEDIENTE = :IDEXPEDIENTE, ' +
                           'GI_IDDOCUMENTO = (SELECT MAX(TD_ID) ' +
                                               'FROM ARCHIVO.RTD_TIPODOCUMENTO ' +
                                              'WHERE TD_CODIGO = :DOCUMENTO ' +
                                                'AND TD_SECTOR = ''ARCHSIN''), ' +
                           'GI_USUPROCESADO = :USUARIO, ' +
                           'GI_FECHAPROCESADO = SYSDATE ' +
                     'WHERE GI_ID = :ID';
            EjecutarSQLSTEx(sSQL, [ActiveForm.IdExpediente, GetTipoDocumento(ACodigoDocumento), Sesion.UserID, sdqImagenes.FieldByName('GI_ID').AsInteger]);

            bCopiaOk := DoCopiarArchivoDigitalizacion(ID_CARPETA_SINIESTRO, dcFax, fraVistaTIFF.Image, sArchivoCompleto, sPathCompleto);

            if bCopiaOk then
              begin
                IdDocumento := GetIdDocumentoArchivo(ID_CARPETA_SINIESTRO, GetTipoDocumento(ACodigoDocumento));
                if IdDocumento = ART_EMPTY_ID then
                  raise Exception.Create('El c�digo de documento ' + GetTipoDocumento(ACodigoDocumento) + ' no se encuentra definido en el sistema Adm. Gral. de Archivos, para el tipo de archivo: Siniestros.')
                else
                  begin
                    sClave := GetClaveArmada(2, IntToStr(Siniestro), IntToStr(Orden), '', '');
                    DoInsertRepositorioArchivo(dcFax, ID_CARPETA_SINIESTRO, sClave, IdDocumento, sPathCompleto, sArchivoCompleto, False);
                  end;
              end;

            CommitTrans;
          except
            on E: Exception do
            begin
              RollBack;
              MsgBox('Ocurri� un error al digitalizar la imagen actual, consulte con sistemas sobre el siguiente error.' + CRLF + E.Message);
            end;
          end;
        finally
          VerStats;
        end;
      end;
    end;
  end;
end;

procedure TfrmAdmSiniestros.VerStats;
var
  nCantidad: Integer;
begin
  nCantidad := ValorSQLIntegerEx('SELECT COUNT(*) FROM SIN.SGI_GESTIONIMAGENES WHERE GI_USUPROCESADO = :USER AND GI_FECHAPROCESADO >= ART.ACTUALDATE', [Sesion.UserID]);
  pnlStats.Caption := IntToStr(nCantidad);
  pnlStats.Visible := (nCantidad > 0);

  nCantidad := ValorSQLIntegerEx('SELECT COUNT(*) FROM ART.V_SCD_CARGADIARIA WHERE CD_FCARGA >= ART.ACTUALDATE AND CD_DOCUMENTO NOT IN(''INF'', ''ADM'') AND CD_USUALTA = :USER', [Sesion.UserID]);
  pnlDocs.Caption := IntToStr(nCantidad);
  pnlDocs.Visible := (nCantidad > 0);
end;

procedure TfrmAdmSiniestros.tbGuardarClick(Sender: TObject);
begin
  if Assigned(ActiveForm) then
  begin
    ActiveForm.Save;
    RevisarImagenesDigitalizadas;
    DesbloqueoFiltros;
    fraTrabajador.Change;
    VerStats;
  end;
end;

procedure TfrmAdmSiniestros.tbNuevoClick(Sender: TObject);
begin
  if Assigned(ActiveForm) and ActiveForm.PermisoAgregar then
  begin
    Verificar(Is_SiniestroCerrado_x_ErroDeCarga(ActiveForm.IdExpediente), edEX_ESTADO, Msg_SiniestroCerrado);
    Verificar((ActiveForm.ClassType <> TfrmExpediente) and (Trim(edEX_TIPO.Text) = ''), edEX_TIPO, Msg_ExpedienteSinCargar);
    try
      LockControls([fraEmpresa, fraTrabajador, edFechaAccidente], True);
      BlockFilters(False);

      ActiveForm.Insert;
      if ScrollBox.CanFocus then
      begin
        ScrollBox.SetFocus;
        PostMessage(ActiveForm.Handle, WM_NEXTDLGCTL, 0, 0);
        ScrollBox.VertScrollBar.Position := 0;
      end;
    except
      raise;
    end;
  end else
    InfoHint(nil, Msg_Permiso);
end;
                                                                                
procedure TfrmAdmSiniestros.tbModificarClick(Sender: TObject);
begin
  if Assigned(ActiveForm) and ActiveForm.PermisoEdicion then
  begin
    Verificar(Is_SiniestroCerrado_x_ErroDeCarga(ActiveForm.IdExpediente), edEX_ESTADO, Msg_SiniestroCerrado);
    Verificar((ActiveForm.ClassType <> TfrmExpediente) and (Trim(edEX_TIPO.Text) = ''), edEX_TIPO, Msg_ExpedienteSinCargar);
    ActiveForm.Edit;
    LockControls([fraEmpresa, fraTrabajador, edFechaAccidente], True);
    BlockFilters(False);

    if ScrollBox.CanFocus then
    begin
      ScrollBox.SetFocus;
      PostMessage(ActiveForm.Handle, WM_NEXTDLGCTL, 0, 0);
      ScrollBox.VertScrollBar.Position := 0;
    end;
  end else
    InfoHint(nil, Msg_Permiso);
end;

procedure TfrmAdmSiniestros.tbEliminarClick(Sender: TObject);
begin
  if Assigned(ActiveForm) and ActiveForm.PermisoEliminar then
  begin
    ActiveForm.Delete;
    DesbloqueoFiltros;
    fraTrabajador.Change;
  end;
end;

procedure TfrmAdmSiniestros.tbCancelarClick(Sender: TObject);
begin
  if Assigned(ActiveForm) then
  begin
    ActiveForm.Cancel;
    DesbloqueoFiltros;
    fraTrabajador.Change;
  end;
end;

procedure TfrmAdmSiniestros.tbRefrescarClick(Sender: TObject);
begin
  if Assigned(ActiveForm) then
  begin
    if ActiveForm.CanSaveCancel then
    begin
      if not MsgAsk('Este procedimiento recargar� los datos originales perdiendo los �ltimos cambios.' + #13#10 + '�Desea continuar?') then
        Abort;
    end;
    ActiveForm.Refresh;
    DesbloqueoFiltros;
    fraTrabajador.Change;
  end;
end;

procedure TfrmAdmSiniestros.TabControlChanging(Sender: TObject; var AllowChange: Boolean);
var
  iResultado: Integer;
begin
  if Assigned(ActiveForm) and ActiveForm.Modified then
  begin
    iResultado := MessageDlg('�Desea guardar los cambios antes de salir de la solapa activa?', mtConfirmation, [mbYes, mbNo, mbCancel], 0);

    case iResultado of
      IDYES:
        begin
          AllowChange := False;

          try
            if ActiveForm.Save then
            begin
              AllowChange := True;
              DesbloqueoFiltros;
              fraTrabajador.Change;
              FreeAndNil(ActiveForm);
            end;
          except
            on E: EAbort do
              AllowChange := False;
          end;
        end;
      IDNO:
        ActiveForm.Cancel(True);
      IDCANCEL:
        AllowChange := False;
    end;
  end;
end;

procedure TfrmAdmSiniestros.TabControlChange(Sender: TObject);
begin
  if not IsCitrix and not FCreating then
    IniciarEspera;
  try
    if Assigned(ActiveForm) then
      FreeAndNil(ActiveForm);

    case TabControl.TabIndex of
      PAGE_RESUMEN:
        ActiveForm := TfrmResumen.Create(Self);
      PAGE_EXPEDIENTE:
        ActiveForm := TfrmExpediente.Create(Self);
      PAGE_DENUNCIA:
        ActiveForm := TfrmDenunciaSTD.Create(Self);
      PAGE_PARTEINGRESO:
        ActiveForm := TfrmParteIngreso.Create(Self);
      PAGE_PARTEEGRESO:
        ActiveForm := TfrmParteEgreso.Create(Self);
      PAGE_DENUNCIASGRAVES:
        ActiveForm := TfrmDenunciaGrave.Create(Self);
      PAGE_OTROS:
        ActiveForm := TfrmOtros.Create(Self);
      PAGE_PARTEEVOLUTIVO:
        ActiveForm := TfrmParteEvolutivo.Create(Self);
      PAGE_PARTEAUDITORIA:
        ActiveForm := TfrmParteAuditoria.Create(Self);
    end;

    if Assigned(ActiveForm) then
    begin
      ActiveForm.Parent := ScrollBox;
//      ActiveForm.Align := alClient;

      ActiveForm.Left := 0;
      ActiveForm.Top := 0;
      ActiveForm.Width := ScrollBox.Width;
      ActiveForm.Anchors := [akLeft, akTop, akRight];

      ActiveForm.Visible := True;
      ActiveForm.Height := ActiveForm.Height + 1;

      if fraTrabajador.IsSelected and fraTrabajador.TieneSiniestro then
        ActiveForm.IdExpediente := fraTrabajador.sdqDatos.FieldByName('EX_ID').AsInteger;

      ActiveForm.dsDatosStateChange(nil);

      ChequeoPanelPapeles;
      CargoPapeles;
      tbNuevo.Enabled := ActiveForm.AddButtonVisible;
      CambioAyuda(nil);
    end;
  finally
    if not IsCitrix and not FCreating then
      DetenerEspera;
    DesbloqueoFiltros;
  end;
end;

procedure TfrmAdmSiniestros.SeguridadAfterExecute(Sender: TObject);
begin
  FModificarTrabajador := tbModificarTrabajador.Enabled;
  FNomina := tbNomina.Enabled;
  FDatosEmpresa := tbDatosEmpresa.Enabled;
  tbNomina.Enabled := False;
  tbDatosEmpresa.Enabled := False;
  tbEstablecimientos.Enabled := False;

  FIncapacidadesPermanentes := tbIncapacidadesPermanentes.Enabled;
  tbIncapacidadesPermanentes.Enabled := False;

  FCambioDelegacion := btnCambioDelegacion.Enabled;
  btnCambioDelegacion.Enabled := False;

  FEvolucionEstados := btnEvolucionEstados.Enabled;
  btnEvolucionEstados.Enabled := False;

  FDocumentacion := btnDocumentacion.Enabled;
  btnDocumentacion.Enabled := False;

  FUbicacion := btnUbicacion.Enabled;
  btnUbicacion.Enabled := False;

  FDatosLesion := btnDatosLesion.Enabled;
  btnDatosLesion.Enabled := False;

  FJustifILT := btnJustifILT.Enabled;
  btnJustifILT.Enabled := False;

end;

procedure TfrmAdmSiniestros.tbModificarTrabajadorClick(Sender: TObject);
begin
//  Verificar(fraTrabajador.IsEmpty, fraTrabajador.mskCUIL, 'No ha seleccionado ning�n trabajador para ver sus datos.');
  with TfrmContratoTrabajador.Create(Self) do
  try
    if Self.fraTrabajador.IsSelected and Self.fraTrabajador.TieneSiniestro then
      CargarDatosTrabajador(Self.fraTrabajador.Value, ValorSQLIntegerEx('SELECT RL_ID ' +
                                                                          'FROM CRL_RELACIONLABORAL ' +
                                                                         'WHERE RL_CONTRATO = :CONTRATO ' +
                                                                           'AND RL_IDTRABAJADOR = :IDTRABAJADOR', [Self.fraTrabajador.Contrato, Self.fraTrabajador.Value]))
    else if Self.fraTrabajador.IsSelected then
      BuscarTrabajadores(' TJ_CUIL = ' + SqlValue(Self.fraTrabajador.CUIL), ART_EMPTY_ID{fraEmpresa.Contrato})
    else
      DoCargarDatos(fraEmpresa.Contrato);    // por cambio de Alvaro en unContratoTrabajador: cambi� el procedimiento DoCargarDatos (parametros).

    ShowModal;
    fraTrabajador.Reload;
  finally
    Free;
  end;
end;

procedure TfrmAdmSiniestros.tbBuscarSiniestroClick(Sender: TObject);
var
  iOldIdTrabajador, iNewIdTrabajador: integer;
begin
  ShortCutControl.Enabled := False;
  try
    iOldIdTrabajador := fraTrabajador.IdSiniestro;
    iNewIdTrabajador := GetIdSiniestro(fraEmpresa.Value, fraTrabajador.Value, fraTrabajador.IdSiniestro, edFechaAccidente.Date);
    fraTrabajador.IdSiniestro := iNewIdTrabajador;
    if (fraTrabajador.IdSiniestro <> ART_EMPTY_ID) and (iOldIdTrabajador <> fraTrabajador.IdSiniestro) then
      fraTrabajador.Change;
  finally
    ShortCutControl.Enabled := True;
  end;
end;

procedure TfrmAdmSiniestros.tbNominaClick(Sender: TObject);
begin
  with TfrmConsultaNomina.Create(Self) do
  try
    Grid.OnDblClick := NominasBuscarSiniestrosClick;
    btnAceptar.OnClick := NominasBuscarSiniestrosClick;

    Caption := 'N�mina de la empresa ' + fraEmpresa.NombreEmpresa;
    Contrato := fraEmpresa.Contrato;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmAdmSiniestros.NominasBuscarSiniestrosClick(Sender: TObject);
var
  iOldIdTrabajador: integer;
begin
  while not (Sender is TCustomForm) do
    Sender := TWinControl(Sender).Parent; //busco el form padre

  with TfrmCustomConsulta(Sender) do
  begin                      //ver aca
    fraTrabajador.CUIL := sdqConsulta.FieldByName('TJ_CUIL').AsString;
    iOldIdTrabajador := fraTrabajador.IdSiniestro;
    fraTrabajador.IdSiniestro := GetIdSiniestro(fraEmpresa.Value, fraTrabajador.Value, fraTrabajador.IdSiniestro, edFechaAccidente.Date);
    if (fraTrabajador.IdSiniestro <> ART_EMPTY_ID) and (iOldIdTrabajador <> fraTrabajador.IdSiniestro) then
      fraTrabajador.Change;

    Close;
  end;
end;

procedure TfrmAdmSiniestros.tbDatosEmpresaClick(Sender: TObject);
begin
  with TfrmConsultaEmpresa.Create(Self) do
  try
    IdEmpresa := fraEmpresa.Value;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmAdmSiniestros.tbIncapacidadesPermanentesClick(Sender: TObject);
begin
 	frmIncapacidadesPermanentes := TfrmIncapacidadesPermanentes.Create(Self);
  frmIncapacidadesPermanentes.Mostrar(ActiveForm.IDExpediente);
end;

procedure TfrmAdmSiniestros.FSFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if pnlVisor.Visible and (ssCtrl in Shift) and (ssAlt in Shift) then
  begin
    case Key of
      VK_UP: fraVistaTIFF.Desplazamiento(fraVistaTIFF.btnArriba);
      VK_DOWN: fraVistaTIFF.Desplazamiento(fraVistaTIFF.btnAbajo);
      VK_LEFT: fraVistaTIFF.Desplazamiento(fraVistaTIFF.btnIzq);
      VK_RIGHT: fraVistaTIFF.Desplazamiento(fraVistaTIFF.btnDcha);
      VK_ADD: fraVistaTIFF.tbZoomIncClick(nil);
      VK_SUBTRACT: fraVistaTIFF.tbZoomDecClick(nil);
    end;
    if Key in [VK_UP, VK_DOWN, VK_LEFT, VK_RIGHT, VK_ADD, VK_SUBTRACT] then
      Key := 0;
  end;

  if (Key = VK_F8) and mnuObtenerSiguienteImagen.Enabled then
  begin
    mnuObtenerSiguienteImagen.Click;
    Key := 0;
  end;

  if (TabControl.TabIndex = PAGE_DENUNCIA) then
     ActiveForm.OnKeyDown(Sender, Key, Shift);


end;

function TfrmAdmSiniestros.TieneImagenesBloquedasRecientemente(AIdExpediente: Integer; AUsuario, ATipoDocumento: String): Boolean;
var
  sSQL: String;
begin
  sSQL := 'SELECT 1 ' +
            'FROM SIN.sgi_gestionimagenes ' +
           'WHERE gi_idexpediente = :idexpediente ' +
             'AND gi_usubloqueo = :usuario ' +
             'AND gi_fechadescartado IS NULL ' +
             'AND gi_fechaprocesado > SYSDATE - (1 / 24 / 4) ' + {15 minutos}
             'AND gi_iddocumento = (SELECT MAX(td_id) ' +
                                     'FROM archivo.rtd_tipodocumento ' +
                                    'WHERE td_codigo = :documento)';
  Result := ExisteSQLEx(sSQL, [AIdExpediente, AUsuario, ATipoDocumento]);
end;

procedure TfrmAdmSiniestros.btnAgregarHojaClick(Sender: TObject);
var
  sAuxiliar: String;
begin
  if TieneImagenesBloquedasRecientemente(ActiveForm.IDExpediente, Sesion.UserID, GetTipoDocumento) then
    sAuxiliar := '?' + CRLF + CRLF + 'Tenga en cuenta que no se generar� registro alguno de digitalizaci�n pues' + CRLF + 'Ud. tiene bloqueada una imagen de este siniestro actualmente.'
  else
    sAuxiliar := CRLF + 'y generar su correspondiente registro de digitalizaci�n?';

  if MsgAsk('�Confirma que desea incrementar la cantidad de papel de este documento' + sAuxiliar) then
    CambioPapel(1);
end;

procedure TfrmAdmSiniestros.btnQuitarHojaClick(Sender: TObject);
begin
  if MsgAsk('�Confirma que desea decrementar la cantidad de papel de este documento?') then
    CambioPapel(-1);
end;

procedure TfrmAdmSiniestros.CambioPapel(ACantidad: integer);
const
  SQL = 'UPDATE %s ' +
           'SET %s_CPAPEL = UTILES.IIF_COMPARA(''<'', NVL(%s_CPAPEL, 0) + (:Cantidad), 1, 1, NVL(%s_CPAPEL, 0) + (:Cantidad)), ' +
               '%s_USUMODIF = :USUARIO, ' +
               '%s_FECHAMODIF = SYSDATE ' +
         'WHERE %s = :ID';
begin
  case TabControl.TabIndex of
    PAGE_DENUNCIA:
      EjecutarSQLEx(Format(SQL, ['SIN.SDE_DENUNCIA', 'DE', 'DE', 'DE', 'DE', 'DE', 'DE_ID']), [ACantidad, ACantidad, Sesion.UserID, ActiveForm.sdqDatos.FieldByName('DE_ID').AsInteger]);
    PAGE_PARTEINGRESO:
      EjecutarSQLEx(Format(SQL, ['SIN.SPI_PARTEDEINGRESO', 'PI', 'PI', 'PI', 'PI', 'PI', 'PI_ID']), [ACantidad, ACantidad, Sesion.UserID, ActiveForm.sdqDatos.FieldByName('PI_ID').AsInteger]);
    PAGE_PARTEEGRESO:
      EjecutarSQLEx(Format(SQL, ['SIN.SPE_PARTEDEEGRESO', 'PE', 'PE', 'PE', 'PE', 'PE', 'PE_ID']), [ACantidad, ACantidad, Sesion.UserID, ActiveForm.sdqDatos.FieldByName('PE_ID').AsInteger]);
    PAGE_DENUNCIASGRAVES:
      EjecutarSQLEx(Format(SQL, ['SIN.SDG_DENUNCIAGRAVE', 'DG', 'DG', 'DG', 'DG', 'DG', 'DG_ID']), [ACantidad, ACantidad, Sesion.UserID, ActiveForm.sdqDatos.FieldByName('DG_ID').AsInteger]);
    PAGE_OTROS:
      EjecutarSQLEx(Format(SQL, ['SIN.SSA_SOLICITUDASISTENCIA', 'SA', 'SA', 'SA', 'SA', 'SA', 'SA_ID']), [ACantidad, ACantidad, Sesion.UserID, ActiveForm.sdqDatos.FieldByName('SA_ID').AsInteger]);
  end;

  if ACantidad = 1 then
    RevisarImagenesDigitalizadas;
  CargoPapeles;
end;

procedure TfrmAdmSiniestros.CargoPapeles;
const
  SQL = 'SELECT %s FROM %s WHERE %s = %d';
begin
  if ActiveForm.sdqDatos.Active and not ActiveForm.sdqDatos.IsEmpty then
    try
      case TabControl.TabIndex of
        PAGE_DENUNCIA:
          edCantidadHojas.Value := ValorSQLInteger(Format(SQL, ['DE_CPAPEL', 'SIN.SDE_DENUNCIA', 'DE_ID', ActiveForm.sdqDatos.FieldByName('DE_ID').AsInteger]));
        PAGE_PARTEINGRESO:
          edCantidadHojas.Value := ValorSQLInteger(Format(SQL, ['PI_CPAPEL', 'SIN.SPI_PARTEDEINGRESO', 'PI_ID', ActiveForm.sdqDatos.FieldByName('PI_ID').AsInteger]));
        PAGE_PARTEEGRESO:
          edCantidadHojas.Value := ValorSQLInteger(Format(SQL, ['PE_CPAPEL', 'SIN.SPE_PARTEDEEGRESO', 'PE_ID', ActiveForm.sdqDatos.FieldByName('PE_ID').AsInteger]));
        PAGE_DENUNCIASGRAVES:
          edCantidadHojas.Value := ValorSQLInteger(Format(SQL, ['DG_CPAPEL', 'SIN.SDG_DENUNCIAGRAVE', 'DG_ID', ActiveForm.sdqDatos.FieldByName('DG_ID').AsInteger]));
        PAGE_OTROS:
          edCantidadHojas.Value := ValorSQLInteger(Format(SQL, ['SA_CPAPEL', 'SIN.SSA_SOLICITUDASISTENCIA', 'SA_ID', ActiveForm.sdqDatos.FieldByName('SA_ID').AsInteger]));
      end;
    except
    end
  else
    edCantidadHojas.Value := 0;
end;

procedure TfrmAdmSiniestros.CambioAyuda(Sender: TObject);
begin
  if Assigned(ActiveForm) then
    ActiveForm.MostrarAyudasVisuales := chkAyudas.Checked;
end;

procedure TfrmAdmSiniestros.DesbloqueoFiltros;
begin
  LockControls([fraEmpresa, fraTrabajador, edFechaAccidente], False);
  if fraTrabajador.TieneSiniestro then
  begin
    BlockFilters(True);
    btnCambioDelegacion.Enabled := FCambioDelegacion;
    btnEvolucionEstados.Enabled := FEvolucionEstados;
    btnDocumentacion.Enabled    := FDocumentacion;
    btnUbicacion.Enabled        := FUbicacion;
    btnDatosLesion.Enabled      := FDatosLesion;
    btnJustifILT.Enabled        := FJustifILT;
  end;

  if fsBold in fraTrabajador.edSiniestro.FOrden.Font.Style then
    fraTrabajador.edSiniestro.FOrden.Color := clInfoBk;
  if fsBold in fraTrabajador.edSiniestro.FRecaida.Font.Style then
    fraTrabajador.edSiniestro.FRecaida.Color := clInfoBk;
end;

procedure TfrmAdmSiniestros.ChequeoPanelPapeles(BloquearTodo: boolean = False);
begin
  if BloquearTodo then
    pnlPapel.Visible := False
  else
    case TabControl.TabIndex of
      PAGE_RESUMEN, PAGE_EXPEDIENTE, PAGE_PARTEEVOLUTIVO, PAGE_PARTEAUDITORIA:
        pnlPapel.Visible := False;
      PAGE_DENUNCIA, PAGE_DENUNCIASGRAVES, PAGE_PARTEINGRESO, PAGE_PARTEEGRESO, PAGE_OTROS:
        pnlPapel.Visible := ActiveForm.TieneDatos;
    end;
end;

procedure TfrmAdmSiniestros.AfterConstruction;
begin
  inherited;
  TabControlChange(nil);
  FCreating := False;
end;

procedure TfrmAdmSiniestros.btnCambioDelegacionClick(Sender: TObject);
begin
  with TfrmCambioDelegacion.Create(Self) do
  try
    LoadControls(ActiveForm.IdExpediente);
    if ShowModal = mrOk then
      fraTrabajador.Change;
  finally
    Free;
  end;
end;

procedure TfrmAdmSiniestros.btnEvolucionEstadosClick(Sender: TObject);
begin
  with TfrmEvolucionDeEstados.Create(Self) do
  try
    LoadControls(ActiveForm.IdExpediente);
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfrmAdmSiniestros.tbImprimirClick(Sender: TObject);
begin
  ActiveForm.Print;
//  Visualizar(ActiveForm.qrReporte, GetValores(), [oAlwaysShowDialog, oAutoFirma, oForceDB]);
end;

procedure TfrmAdmSiniestros.ScrollBoxMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position + 3
end;

procedure TfrmAdmSiniestros.ScrollBoxMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScrollBox.VertScrollBar.Position := ScrollBox.VertScrollBar.Position - 3
end;

procedure TfrmAdmSiniestros.btnDocumentacionClick(Sender: TObject);
var
  sDocumento, sCodigoDocumento: String;
  bRevisar: Boolean;
begin
  frmSituacionDocumental := TfrmSituacionDocumental.Create(Self);
  with frmSituacionDocumental do
  try
    IDExpediente := ActiveForm.IdExpediente;
    lbSubtitulo.Caption := 'Estos son los documentos que contiene el siniestro ' + fraTrabajador.edSiniestro.SinOrdRec;
    MostrandoImagen := pnlVisor.Visible;
    ShowModal;
    bRevisar := pnlVisor.Visible and fraDO_CODIGO.IsSelected;
    sCodigoDocumento := fraDO_CODIGO.Codigo;
    sDocumento := fraDO_CODIGO.Descripcion;
  finally
    FreeAndNil(frmSituacionDocumental);
  end;

  if bRevisar then
    RevisarImagenesDigitalizadas(sCodigoDocumento, sDocumento);
end;

procedure TfrmAdmSiniestros.fraTrabajadortbLimpiarClick(Sender: TObject);
begin
  inherited;
  fraTrabajador.tbLimpiarClick(Sender);
  edFechaAccidente.Clear;
end;

procedure TfrmAdmSiniestros.BlockFilters(AValue: boolean);
begin
  btnCambioDelegacion.Enabled := AValue;
  btnEvolucionEstados.Enabled := AValue;
  btnDocumentacion.Enabled    := AValue;
  btnUbicacion.Enabled        := AValue;
  btnDatosLesion.Enabled      := AValue;
  btnAgregarHoja.Enabled      := AValue;
  btnQuitarHoja.Enabled       := AValue;
  btnJustifILT.Enabled        := AValue;
end;

procedure TfrmAdmSiniestros.fraTrabajadorcmbNombreDropDown(Sender: TObject);
begin
  inherited;
  if fraEmpresa.IsSelected and (fraTrabajador.Contrato <> fraEmpresa.Contrato) and not fraTrabajador.IsFiltering then
    fraTrabajador.Contrato := fraEmpresa.Contrato;
  fraTrabajador.cmbNombreDropDown(Sender);
end;


procedure TfrmAdmSiniestros.VerificarVisorTIFF;
begin
  if not Assigned(fraVistaTIFF) then
  begin
    fraVistaTIFF := TfraVistaTIFF.Create(pnlVisor);

    with fraVistaTIFF do
    begin
      Name := 'fraVistaTIFF';
      Parent := pnlVisor;
      Align := alClient;
      cmbAjuste.ItemIndex := 2;

      edPage.OnKeyPress := edPageKeyPress;
      tbPageFirst.OnClick := tbPageFirstClick;
      tbPageLast.OnClick  := tbPageLastClick;
      tbPageNext.OnClick  := tbPageNextClick;
      tbPagePrior.OnClick := tbPagePriorClick;
      tbImprimir.OnClick  := fraVistaTIFFtbImprimirClick;
    end;
  end;
end;

procedure TfrmAdmSiniestros.tbObtenerImagenClick(Sender: TObject);
var
  dFecha: TDateTime;
begin
  VerificarVisorTIFF;
  if Assigned(Sender) then
  begin
    pnlVisor.Visible := not pnlVisor.Visible;
    Splitter.Visible := not Splitter.Visible;

    if not pnlVisor.Visible then
    begin
      pnlLeft.Align := alClient;
      Splitter.Align := alRight;
      pnlVisor.Align := alRight;
      tbObtenerImagen.Down := False;
      pnlFechaDoc.Visible := False;      
    end else
    begin
      pnlVisor.Align := alClient;
      pnlLeft.Align := alLeft;
      Splitter.Align := alLeft;
      pnlLeft.Width := 680;
      tbObtenerImagen.Down := True;
    end;
  end;

  if tbObtenerImagen.Down then
  begin
    sdqImagenes.Close;
    OpenQueryEx(sdqImagenes, [Sesion.ID]);

    if sdqImagenes.IsEmpty then
    begin
      tbObtenerImagenClick(tbObtenerImagen);
      MsgBox('El sistema ha detectado que no quedan m�s im�genes en el repositorio,' + CRLF + 'teniendo en cuenta las bandejas a las que Ud. est� suscripto.');
    end;

    with sdqImagenes, fraVistaTIFF do
    try
      while not Eof do
      begin
        if FileExists(Fields[0].AsString) then
        try
          if Assigned(eEstrategiaTiff) then eEstrategiaTiff.Free;
          // Crea una estrategia para una pagina de tiff por registro de nro de orden.
          eEstrategiaTiff := TEstrategiaTiffSimple.Create(Self);
          eEstrategiaTiff.Vista := fraVistaTIFF;

          PageCount    := FieldByName('CANT_PAG').AsInteger;
          MultiPage    := FieldByName('CANT_PAG').AsInteger > 1;
          ID           := FieldByName('FE_ID').AsInteger;
          IDFormulario := FieldByName('FE_IDFORMULARIO').AsInteger;
          NroOrden     := FieldByName('FE_NROORDEN').AsString;

          try
            OpenQueryEx(fraVistaTIFF.sdqPaginas, [sdqImagenes.FieldByName('FE_NROORDEN').AsString],
                                                  'SELECT FE_ARCHIVOIMAGEN FROM ART.FFE_FAXENTRANTES WHERE FE_NROORDEN = :NRO');
            SetPage(FieldByName('FE_NROPAGINA').AsInteger);
            Image := FieldByName('FE_ARCHIVOIMAGEN').AsString;
          except
          end;

          if (Image > '') then
          begin
            EjecutarSQLEx('UPDATE SIN.SGI_GESTIONIMAGENES ' +
                             'SET GI_USUBLOQUEO = :USUARIO, ' +
                                 'GI_FECHABLOQUEO = SYSDATE, ' +
                                 'GI_USUCARGA = NULL, ' +
                                 'GI_FECHACARGA = NULL ' +
                           'WHERE GI_FECHAPROCESADO IS NULL ' +
                             'AND GI_FECHACARGA IS NULL ' +
                             'AND GI_IDFAXENTRANTE IN (SELECT FE_ID ' +
                                                        'FROM ART.FFE_FAXENTRANTES ' +
                                                       'WHERE FE_NROORDEN = :NRO)',
                           [Sesion.UserID, FieldByName('FE_NROORDEN').AsString]);

            pnlFechaDoc.Visible := True;

            if GetDecimales(FieldByName('FE_FECHAINGRESO').AsDateTime) > StrToTime('17:45') then
              dFecha := FieldByName('FE_FECHAINGRESO').AsDateTime + 1
            else
              dFecha := FieldByName('FE_FECHAINGRESO').AsDateTime;

            pnlFechaDoc.Caption := FormatDateTime('dd/mm/yyyy', dFecha);
            pnlFechaDoc.Hint := FormatDateTime('dd/mm/yyyy hh:nn', FieldByName('FE_FECHAINGRESO').AsDateTime);
            pnlFechaDoc.Left := pnlStats.Left + 1;

            case MessageBox(Application.Handle, PChar(Fields[1].AsString + CRLF +
                            'Bandeja -> ' + sdqImagenes.FieldByName('BD_DESCRIPCION').AsString + CRLF +
                            'Acuse N� ' + sdqImagenes.FieldByName('FE_NROORDEN').AsString + ' ' +
                            'P�gina ' + sdqImagenes.FieldByName('FE_NROPAGINA').AsString + '/' + FieldByName('CANT_PAG').AsString + CRLF +
                            sdqImagenes.FieldByName('EXTRA').AsString + 
                            '�Desea comenzar la carga de este documento?'),
                            'Carga de im�genes digitalizadas', MB_ICONQUESTION or MB_YESNOCANCEL) of
              idYes:
                begin
                  pnlFechaDoc.Visible := True;
                  Break;
                end;
              idNo:
                begin
                  if MsgAsk('Est� a punto de enviar el papel actual a la bandeja de pendientes.' + CRLF + '�Desea continuar?') then
                  begin
                    EjecutarSQLEx('UPDATE SIN.SGI_GESTIONIMAGENES ' +
                                     'SET GI_IDBANDEJA = (SELECT MAX(BD_ID) ' +
                                                           'FROM SIN.SBD_BANDEJADOCUMENTACION ' +
                                                          'WHERE BD_PENDIENTES = :PENDIENTES), ' +
                                         'GI_USUBLOQUEO = NULL, ' +
                                         'GI_FECHABLOQUEO = NULL, ' +
                                         'GI_USUCARGA = NULL, ' +
                                         'GI_FECHACARGA = NULL, ' +
                                         'GI_USUENVIOPENDIENTE = :USUARIO ' +
                                   'WHERE GI_IDFAXENTRANTE IN (SELECT FE_ID ' +
                                                                'FROM ART.FFE_FAXENTRANTES ' +
                                                               'WHERE FE_NROORDEN = :NRO)',
                                   ['S', Sesion.UserID, sdqImagenes.FieldByName('FE_NROORDEN').AsString]);
                  end;

                  pnlFechaDoc.Visible := False;
                  tbObtenerImagenClick(nil);
                  Break;
                end;
              idCancel:
                begin
                  EjecutarSQLEx('UPDATE SIN.SGI_GESTIONIMAGENES ' +
                                   'SET GI_USUBLOQUEO = NULL, ' +
                                       'GI_FECHABLOQUEO = NULL, ' +
                                       'GI_USUCARGA = NULL, ' +
                                       'GI_FECHACARGA = NULL ' +
                                 'WHERE GI_FECHAPROCESADO IS NULL ' +
                                   'AND GI_FECHACARGA IS NULL ' +
                                   'AND GI_IDFAXENTRANTE IN (SELECT FE_ID ' +
                                                              'FROM ART.FFE_FAXENTRANTES ' +
                                                             'WHERE FE_NROORDEN = :NRO)',
                                 [sdqImagenes.FieldByName('FE_NROORDEN').AsString]);
                  tbObtenerImagen.Click;
                  pnlFechaDoc.Visible := False;                                    
                  Break;
                end;
            end;
          end else
            Next;
        except
          Next;
        end
        else
          Next;
      end;
    finally
      //Free;
    end;
  end;

  mnuObtenerSiguienteImagen.Enabled := tbObtenerImagen.Down;
end;

procedure TfrmAdmSiniestros.btnUbicacionClick(Sender: TObject);
begin
  with TfrmUbicacionDenuncia.Create(Self) do
  try
    IDExpediente := ActiveForm.IdExpediente;
    lbSubTitulo.Caption := 'Esta es la ubicaci�n de la denuncia del siniestro ' + fraTrabajador.edSiniestro.SinOrdRec;

    if ShowModal = mrOk then
    begin
      if TabControl.TabIndex in [PAGE_DENUNCIA, PAGE_RESUMEN] then
      begin
        ActiveForm.IdExpediente := 0;
        ActiveForm.IdExpediente := IDExpediente;
      end;
    end;
  finally
    Free;
  end;
end;

procedure TfrmAdmSiniestros.tbViajarClick(Sender: TObject);
begin
  tbViajar.CheckMenuDropdown;
end;

procedure TfrmAdmSiniestros.tbEstablecimientosClick(Sender: TObject);
begin
  MostrarEstablecimientos(fraEmpresa.Contrato);
end;

procedure TfrmAdmSiniestros.mnuViajarLiquidacionesClick(Sender: TObject);
var
  frmLiqIncapacidades: TfrmLiqIncapacidades;
begin
  if fraTrabajador.IsSelected and fraTrabajador.TieneSiniestro then
    with frmLiqIncapacidades do
    begin
      frmLiqIncapacidades           := TfrmLiqIncapacidades.Create(frmPrincipal);
      MenuItem                      := frmPrincipal.mnuLiqIncapacidades;
      fraEmpresa.Value              := fraTrabajador.IdEmpresa;
      fraTrabajadorSIN.IdSiniestro  := fraTrabajador.IdSiniestro;
      DoCargarLiquidaciones(True);
      Show;
      Self.Close;
    end;
end;

procedure TfrmAdmSiniestros.mnuViajarIncapacidadesClick(Sender: TObject);
var
  frmSegIncapacidades :TfrmSegIncapacidades;
begin
  if fraTrabajador.IsSelected and fraTrabajador.TieneSiniestro then
    with frmSegIncapacidades do
    begin
      frmSegIncapacidades           := TfrmSegIncapacidades.Create(frmPrincipal);
      MenuItem                      := frmPrincipal.mnuSegIncapacidades;
      edSiniestro.SetValues(Self.fraTrabajador.edSiniestro.Siniestro,
                            Self.fraTrabajador.edSiniestro.Orden,
                            Self.fraTrabajador.edSiniestro.Recaida);
      tbRefrescarClick(Nil);
      Show;
      Self.Close;
    end;
end;

procedure TfrmAdmSiniestros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(eEstrategiaTiff) then
    eEstrategiaTiff.Free;
  inherited;
end;

procedure TfrmAdmSiniestros.SetPage(AValue: Integer);
begin
  eEstrategiaTiff.SetPage(AValue);
end;

procedure TfrmAdmSiniestros.tbPageFirstClick(Sender: TObject);
begin
  eEstrategiaTiff.FirstImage(Sender);
end;

procedure TfrmAdmSiniestros.tbPagePriorClick(Sender: TObject);
begin
  eEstrategiaTiff.PriorImage(Sender);
end;

procedure TfrmAdmSiniestros.tbPageNextClick(Sender: TObject);
begin
  eEstrategiaTiff.NextImage(Sender);
end;

procedure TfrmAdmSiniestros.tbPageLastClick(Sender: TObject);
begin
  eEstrategiaTiff.LastImage(Sender);
end;

procedure TfrmAdmSiniestros.edPageKeyPress(Sender: TObject; var Key: Char);
begin
  with fraVistaTIFF do
  if Key = #13 then
  begin
    sdqPaginas.First;
    sdqPaginas.MoveBy(edPage.Value -1);
    SetPage(edPage.Value);
  end;
end;

procedure TfrmAdmSiniestros.fraVistaTIFFtbImprimirClick(Sender: TObject);
begin
  fraVistaTIFF.tbImprimirClick(Sender);
  tbObtenerImagen.Click;
end;

procedure TfrmAdmSiniestros.mnuObtenerSiguienteImagenClick(Sender: TObject);
begin
  tbObtenerImagenClick(nil);
end;

procedure TfrmAdmSiniestros.btnDatosLesionClick(Sender: TObject);
begin
  with TfrmDatosLesion.Create(Self) do
  try
    IDExpediente := ActiveForm.IdExpediente;

    if ShowModal = mrOk then
      fraTrabajador.Change;
  finally
    Free;
  end;
end;


procedure TfrmAdmSiniestros.btnJustifILTClick(Sender: TObject);      // TK 59942
begin
  with TfrmJustificacionILT.Create(Self) do
  try
    IDExpediente := ActiveForm.IdExpediente;
    ShowModal;
  finally
    Free;
  end;
end;

end.

