program sic_standalone;

{$IFNDEF VER150}
  {$R *.dres}            
{$ENDIF}

uses
  Forms,
  SysUtils,
  OneInstance in '..\..\comunes\OneInstance.pas',
  OneSession in '..\..\comunes\OneSession.pas',
  unCustomDataModule in '..\Comunes\unCustomDataModule.pas' {dmCustomDataModule: TDataModule},
  unDmPrincipal in '..\Comunes\ORACLE\unDmPrincipal.pas' {dmPrincipal: TDataModule},
  unfraUsuarios in '..\Comunes\FRAMES\unfraUsuarios.pas' {fraUsuario: TFrame},
  unArtFrame in '..\Comunes\REPOSIT\unArtFrame.pas' {ArtFrame: TFrame},
  unArtDBAwareFrame in '..\Comunes\REPOSIT\unArtDBAwareFrame.pas' {ArtDBAwareFrame: TFrame},
  unArtDbFrame in '..\Comunes\REPOSIT\unArtDbFrame.pas' {ArtDbFrame: TFrame},
  unCustomConsulta in '..\comunes\reposit\unCustomConsulta.pas' {frmCustomConsulta},
  unCustomGridABM in '..\comunes\reposit\unCustomGridABM.pas' {frmCustomGridABM},
  unCustomForm in '..\comunes\unCustomForm.pas' {frmCustomForm},
  unCustomPanelABM in '..\comunes\reposit\unCustomPanelABM.pas' {frmCustomPanelABM: TFSForm},
  unDebug in '..\comunes\unDebug.pas' {frmDebug},
  unSesion in '..\..\Comunes\unSesion.pas',
  General in '..\..\Comunes\General.pas',
  VCLExtra in '..\..\Comunes\VCLExtra.pas',
  ungrids in '..\..\Comunes\ungrids.pas',
  unArt in '..\..\Comunes\unArt.pas',
  AnsiSql in '..\..\Comunes\AnsiSql.pas',
  SqlFuncs in '..\..\Comunes\SqlFuncs.pas',
  CustomDlgs in '..\..\Comunes\CustomDlgs.pas',
  unFraStaticCodigoDescripcion in '..\comunes\frames\unFraStaticCodigoDescripcion.pas' {fraStaticCodigoDescripcion: TFrame},
  unFraCodigoDescripcion in '..\comunes\frames\unFraCodigoDescripcion.pas' {fraCodigoDescripcion: TFrame},
  unFraUsuario in '..\comunes\frames\new\unFraUsuario.pas' {fraUsuarios: TFrame},
  unFraCodDesc in '..\comunes\frames\nuevos\unFraCodDesc.pas' {fraCodDesc: TFrame},
  unExportPDF in '..\..\Comunes\unExportPDF.pas',
  uncomunes in '..\..\Comunes\uncomunes.pas',
  unLibretaDeDirecciones in '..\comunes\forms\unLibretaDeDirecciones.pas' {frmLibretaDeDirecciones: TFSForm},
  unSeleccionDestinatarios in '..\comunes\unSeleccionDestinatarios.pas' {frmSeleccionDestinatarios: TFSForm},
  unFraTelefono in '..\comunes\frames\new\unFraTelefono.pas' {fraTelefono: TFrame},
  unABMTelefonos in '..\comunes\forms\unABMTelefonos.pas' {frmTelefonos},
  unFraVistaTIFF in '..\comunes\frames\new\unFraVistaTIFF.pas' {fraVistaTIFF: TFrame},
  unFraToolbarRTF in '..\comunes\frames\unFraToolbarRTF.pas' {fraToolbarRTF: TFrame},
  unFraCtbTablas in '..\comunes\frames\unFraCtbTablas.pas' {fraCtbTablas: TFrame},
  unFraDigitalizacion in '..\comunes\frames\new\unFraDigitalizacion.pas' {fraDigitalizacion: TFrame},
  unFraEmpresa in '..\comunes\frames\new\unFraEmpresa.pas' {fraEmpresa: TFrame},
  unEspera in '..\comunes\forms\unEspera.pas' {frmEspera},
  unMoldeEnvioMail in '..\comunes\envio de mails\unMoldeEnvioMail.pas' {frmMoldeEnvioMail},
  unfraCPR_PRESTADOR in '..\comunes\frames\new\unfraCPR_PRESTADOR.pas' {fraCPR_PRESTADOR: TFrame},
  unfraVendedores in '..\comunes\frames\unfraVendedores.pas' {fraVendedores: TFrame},
  unFraEstablecimiento in '..\comunes\frames\new\unFraEstablecimiento.pas' {fraEstablecimiento: TFrame},
  unfraVendedoresCUIT in '..\comunes\frames\new\unfraVendedoresCUIT.pas' {fraVendedoresCUIT: TFrame},
  unfraEntidadCUIT in '..\comunes\frames\new\unfraEntidadCUIT.pas' {fraEntidadCUIT: TFrame},
  unSiniestros in '..\siniestros\unSiniestros.pas',
  unEstrategiaTIFF in '..\fax\faxclient_new\unEstrategiaTIFF.pas',
  unTelefonosCargaRapida in '..\comunes\forms\unTelefonosCargaRapida.pas' {frmTelefonosCargaRapida},
  unFraTrabajador in '..\comunes\frames\new\unFraTrabajador.pas' {fraTrabajador: TFrame},
  unVisualizador in '..\comunes\unVisualizador.pas' {frmVisualizador},
  unImageFunctions in '..\..\comunes\unImageFunctions.pas',
  unFiltros in '..\..\comunes\unFiltros.pas',
  unArbolSectores in '..\Usuarios\unArbolSectores.pas' {frmArbolSectores},
  unNovedades in '..\..\comunes\unNovedades.pas',
  unRptCartaDocHeader in '..\comunes\reports\unRptCartaDocHeader.pas' {rptCartaDocHeader: TQuickRep},
  strfuncs in '..\..\comunes\strfuncs.pas',
  ArchFuncs in '..\..\comunes\ArchFuncs.pas',
  unFraTrabajadorSiniestro in '..\comunes\frames\new\unFraTrabajadorSiniestro.pas' {fraTrabajadorSiniestro: TFrame},
  unContratoContacto in '..\comunes\forms\unContratoContacto.pas' {frmContratoContacto},
  unfraContacto in '..\comunes\frames\unfraContacto.pas' {fraContacto: TFrame},
  unFraStaticCTB_TABLAS in '..\comunes\frames\unFraStaticCTB_TABLAS.pas' {fraStaticCTB_TABLAS: TFrame},
  unAgendaTelefonica in '..\comunes\forms\unAgendaTelefonica.pas' {frmAgendaTelefonica: TFSForm},
  UnRptMoldeCarta in '..\comunes\reports\UnRptMoldeCarta.pas' {qrMoldeCarta: TQuickRep},
  unEstadisticasAGENDA in '..\comunes\forms\unEstadisticasAGENDA.pas' {frmEstadisticasAGENDA: TFSForm},
  unImpoExpoWizard in '..\impoexpo\unImpoExpoWizard.pas' {frmImpoExpoWizard},
  unVisualizarArchivos in '..\impoexpo\unVisualizarArchivos.pas' {frmVisualizarArchivos},
  unImpoExpoUtils in '..\impoexpo\unImpoExpoUtils.pas',
  unFraNavegadorWEB in '..\comunes\frames\new\unFraNavegadorWEB.pas' {fraNavegadorWEB: TFrame},
  unFraDomicilioGIS in '..\comunes\frames\new\unFraDomicilioGIS.pas' {fraDomicilioGIS: TFrame},
  unFraDomicilio in '..\comunes\frames\new\unFraDomicilio.pas' {fraDomicilio: TFrame},
  unBusquedaDomicilio in '..\comunes\forms\unBusquedaDomicilio.pas' {frmBusquedaDomicilio: TFSForm},
  unVisorPDF in '..\comunes\forms\unVisorPDF.pas' {frmVisorPDF},
  unImpoExpoTypes in '..\..\comunes\unImpoExpoTypes.pas',
  unABMAgendaBase in '..\comunes\forms\unABMAgendaBase.pas' {frmABMAgendaBase},
  unABMAgendaBaseEvento in '..\comunes\forms\unABMAgendaBaseEvento.pas' {frmABMAgendaBaseEvento},
  unABMAgendaBaseTarea in '..\comunes\forms\unABMAgendaBaseTarea.pas' {frmABMAgendaBaseTarea},
  unSeleccionMultiple in '..\comunes\forms\unSeleccionMultiple.pas' {frmSeleccionUsuarios: TFrame},
  unSeleccionTareas in '..\comunes\forms\unSeleccionTareas.pas' {frmSeleccionTareas},
  unfraCodigoDescripcionExt in '..\comunes\frames\unfraCodigoDescripcionExt.pas' {fraCodigoDescripcionExt: TFrame},
  unAgendaBase in '..\comunes\forms\unAgendaBase.pas' {frmAgendaBase},
  unfraContactoAGENDA in '..\comunes\frames\modulosAgenda\unfraContactoAGENDA.pas' {fraContactoAGENDA: TFrame},
  unSeleccionResponsableHYS in '..\hys\unSeleccionResponsableHYS.pas' {frmSeleccionResponsableHYS: TFSForm},
  unFraPrestadorExtendido in '..\comunes\frames\new\unFraPrestadorExtendido.pas' {fraPrestadorExtendido: TFrame},
  unAutorizacionAgenda in '..\comunes\forms\unAutorizacionAgenda.pas' {frmAutorizacionAgenda},
  unDlgBusSiniestro in '..\siniestros\unDlgBusSiniestro.pas' {frmDlgBusSiniestro: TFSForm},
  unContratoTrabajador in '..\afiliaciones\unContratoTrabajador.pas' {frmContratoTrabajador},
  unFraActividad in '..\comunes\frames\unFraActividad.pas' {fraActividad: TFrame},
  unFraDomicilioTrab in '..\comunes\frames\new\unFraDomicilioTrab.pas' {fraDomicilioTrab: TFrame},
  unFraEmpresaAfi in '..\comunes\frames\new\unFraEmpresaAfi.pas' {fraEmpresaAfi: TFrame},
  unEstablecimientosTrabajador in '..\afiliaciones\unEstablecimientosTrabajador.pas' {frmEstablecimientosTrabajador},
  unAgenda in '..\..\comunes\interfaces\unAgenda.pas',
  unfraEmpresaAGENDA in '..\comunes\frames\modulosAgenda\unfraEmpresaAGENDA.pas' {fraEmpresaAGENDA: TFrame},
  unfraTrabajadorAGENDA in '..\comunes\frames\modulosAgenda\unfraTrabajadorAGENDA.pas' {fraTrabajadorAGENDA: TFrame},
  unfraEntidadAGENDA in '..\comunes\frames\modulosAgenda\unfraEntidadAGENDA.pas' {fraEntidadAGENDA: TFrame},
  unfraVendedorAGENDA in '..\comunes\frames\modulosAgenda\unfraVendedorAGENDA.pas' {fraVendedorAGENDA: TFrame},
  unfraEntidadVendedorAGENDA in '..\comunes\frames\modulosAgenda\unfraEntidadVendedorAGENDA.pas' {fraEntidadVendedorAGENDA: TFrame},
  unAlarmas in '..\..\comunes\unAlarmas.pas',
  unfraTrabajadorSiniestroAGENDA in '..\comunes\frames\modulosAgenda\unfraTrabajadorSiniestroAGENDA.pas' {fraTrabajadorSiniestroAGENDA: TFrame},
  unfraPrestadorAGENDA in '..\comunes\frames\modulosAgenda\unfraPrestadorAGENDA.pas' {fraPrestadorAGENDA: TFrame},
  unAgendaCargaConsulta in '..\comunes\forms\unAgendaCargaConsulta.pas' {frmAgendaCargaConsulta},
  unfraDomicilioEmpresaAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioEmpresaAGENDA.pas' {fraDomicilioEmpresaAGENDA: TFrame},
  unFraDomicilioExtendido in '..\comunes\frames\new\unFraDomicilioExtendido.pas' {fraDomicilioExtendido: TFrame},
  unfraEstablecimientoAGENDA in '..\comunes\frames\modulosAgenda\unfraEstablecimientoAGENDA.pas' {fraEstablecimientoAGENDA: TFrame},
  unfraDomicilioEstablecimientoAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioEstablecimientoAGENDA.pas' {fraDomicilioEstablecimientoAGENDA: TFrame},
  DateTimeFuncs in '..\..\comunes\DateTimeFuncs.pas',
  unAyuda in '..\comunes\unAyuda.pas' {frmAyuda},
  unfraNumAutoAGENDA in '..\comunes\frames\modulosAgenda\unfraNumAutoAGENDA.pas' {fraNumAutoAGENDA: TFrame},
  unfraContactoLibreAGENDA in '..\comunes\frames\modulosAgenda\unfraContactoLibreAGENDA.pas' {fraContactoLibreAGENDA: TFrame},
  Internet in '..\..\comunes\Internet.pas',
  unfraDomicilioAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioAGENDA.pas' {fraDomicilioGISAGENDA: TFrame},
  unRTTI in '..\..\comunes\unRTTI.pas',
  unCompatibilidad in '..\..\comunes\unCompatibilidad.pas',
  unAfiliaciones in '..\afiliaciones\unAfiliaciones.pas',
  unRptCartaDocumento in '..\comunes\reports\unRptCartaDocumento.pas' {rptCartaDocumento: TQuickRep},
  unfraCuentaBancaria in '..\comunes\frames\new\unfraCuentaBancaria.pas' {fraCuentaBancaria: TFrame},
  unSistemas in '..\Usuarios\unSistemas.pas',
  unInterfaces in '..\..\comunes\interfaces\unInterfaces.pas',
  DBSql in '..\..\comunes\DBSql.pas',
  numeros in '..\..\comunes\numeros.pas',
  unFraUsuarioConJerarquias in '..\comunes\frames\new\unFraUsuarioConJerarquias.pas' {fraUsuarioConJerarquias: TFrame},
  Cuit in '..\..\comunes\Cuit.pas',
  ParamFuncs in '..\..\comunes\ParamFuncs.pas',
  unCustomSplash in '..\comunes\reposit\unCustomSplash.pas' {frmCustomSplash},
  unWelcomeSplash in '..\comunes\forms\unWelcomeSplash.pas' {frmWelcomeSplash},
  unImageSplash in '..\Usuarios\unImageSplash.pas' {frmImageSplash},
  unFraUsuarioConSectorIntranet in '..\comunes\frames\new\unFraUsuarioConSectorIntranet.pas' {fraUsuarioConSectorIntranet: TFrame},
  unfraInfoEmpresa in '..\comunes\frames\new\unfraInfoEmpresa.pas' {fraInfoEmpresa: TFrame},
  unfraInfoEmpresaExt in '..\comunes\frames\new\unfraInfoEmpresaExt.pas' {fraInfoEmpresaExt: TFrame},
  unEstadoCuenta in '..\cobranzas\unEstadoCuenta.pas',
  unQrEstadoCuentaResumen in '..\cobranzas\reports\unQrEstadoCuentaResumen.pas' {frmEstadoCuentaResumen},
  unImpresionEstadoDeCuenta in '..\cobranzas\unImpresionEstadoDeCuenta.pas' {frmImpresionEstadodeCuenta},
  unQrEstadoCuentaDetalle in '..\cobranzas\reports\unQrEstadoCuentaDetalle.pas' {frmEstadoCuentaDetalle},
  unConsultasAdicionales in '..\comunes\forms\unConsultasAdicionales.pas' {frmConsultasAdicionales},
  unEjecutivoCuenta in '..\comunes\forms\unEjecutivoCuenta.pas' {frmEjecutivoCuenta},
  unGestorCuenta in '..\comunes\forms\unGestorCuenta.pas' {frmGestorCuenta},
  unQRF801C in '..\cobranzas\reports\unQRF801C.pas' {QRF801C: TQuickRep},
  unQRF817 in '..\cobranzas\reports\unQRF817.pas' {QRF817: TQuickRep},
  unQRCartaDocIntimacion in '..\cobranzas\reports\unQRCartaDocIntimacion.pas' {QRCartaDocIntimacion: TQuickRep},
  unOpcionesDeImpresion in '..\cobranzas\unOpcionesDeImpresion.pas' {frmOpcionesDeImpresion},
  unQRCartaDocIntimacionNuevaGrilla in '..\cobranzas\reports\unQRCartaDocIntimacionNuevaGrilla.pas' {QRCartaDocIntimacionNuevaGrilla: TQuickRep},
  unQrLibreDeuda in '..\cobranzas\reports\unQrLibreDeuda.pas' {qrLibreDeuda: TQuickRep},
  unRptCartaDocCompensacion in '..\cobranzas\compensacion\reports\unRptCartaDocCompensacion.pas' {rptCartaDocCompensacion: TQuickRep},
  unFraValidacionDatosEmpresa in '..\comunes\frames\new\unFraValidacionDatosEmpresa.pas' {fraValidacionDatosEmpresa: TFrame},
  unFraDomicilioEmpresa in '..\comunes\frames\new\unFraDomicilioEmpresa.pas' {fraDomicilioEmpresa: TFrame},
  unfraDelegacion in '..\comunes\frames\unfraDelegacion.pas' {fraDelegacion: TFrame},
  unFraTitulo in '..\comunes\frames\nuevos\unFraTitulo.pas' {fraTitulo: TFrame},
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unFraRTD_TIPODOCUMENTO in '..\comunes\frames\new\unFraRTD_TIPODOCUMENTO.pas' {fraRTD_TIPODOCUMENTO: TFrame},
  unManATE_TIPOEVENTO in '..\comunes\forms\unManATE_TIPOEVENTO.pas' {frmManATE_TIPOEVENTO: TFSForm},
  unManAMI_MOTIVOINGRESO in '..\comunes\forms\unManAMI_MOTIVOINGRESO.pas' {frmManami_motivoingreso: TFSForm},
  unManATD_TIPODESTINATARIO in '..\comunes\forms\unManATD_TIPODESTINATARIO.pas' {frmManATD_TIPODESTINATARIO: TFSForm},
  unfraSectores in '..\comunes\frames\unfraSectores.pas' {fraSectores: TFrame},
  unManAGENDA in '..\comunes\forms\unManAGENDA.pas' {frmManAGENDA},
  unFraCanal in '..\comunes\frames\new\unFraCanal.pas' {fraCanal: TFrame},
  unDatosSiniestro in '..\comunes\forms\unDatosSiniestro.pas' {frmDatosSiniestro},
  unfraProspectosAGENDA in '..\comunes\frames\modulosAgenda\unfraProspectosAGENDA.pas' {fraProspectosAGENDA: TFrame},
  unManARS_RESPUESTA in '..\comunes\forms\unManARS_RESPUESTA.pas' {frmManARS_RESPUESTA: TFSForm},
  unQrEtiquetasDocCarpetas in '..\archivo_new\unQrEtiquetasDocCarpetas.pas' {qrEtiquetasDocCarpetas: TQuickRep},
  unUtilsArchivo in '..\archivo_new\unUtilsArchivo.pas',
  unArchivo in '..\archivo_new\unArchivo.pas',
  unABMDelegacionTareas in 'unABMDelegacionTareas.pas' {frmABMDelegacionTareas},
  unEnvioMail in '..\..\comunes\unEnvioMail.pas',
  unVisor in '..\comunes\forms\unVisor.pas' {frmVisor},
  unArchivoVisor in '..\comunes\unArchivoVisor.pas',
  unVisorExcel in '..\comunes\forms\unVisorExcel.pas' {frmVisorExcel},
  unExcel in '..\..\comunes\unExcel.pas',
  unWebBrowser in '..\emision\comunes\unWebBrowser.pas' {frmWebBrowser},
  unElementosEnviados in '..\comunes\forms\unElementosEnviados.pas' {frmElementosEnviados: TFSForm},
  unControlVersion in '..\..\comunes\unControlVersion.pas',
  unSIC in '..\..\comunes\unSIC.pas',
  unfraVistaEventos in '..\comunes\frames\modulosAgenda\unfraVistaEventos.pas' {fraVistaEventos: TFrame},
  unAgendaVistaEmpresa in '..\comunes\forms\unAgendaVistaEmpresa.pas' {frmAgendaVistaEmpresa},
  unConstantArchivo in '..\archivo_new\unConstantArchivo.pas',
  unABMUsuariosPorSector in 'unABMUsuariosPorSector.pas' {frmABMUsuariosPorSector: TFSForm},
  unRptConfiguracionAGENDA in '..\comunes\reports\unRptConfiguracionAGENDA.pas' {qrConfiguracionAGENDA: TQuickRep},
  unfraArchJuicio in '..\archivo_new\frames\unfraArchJuicio.pas' {fraArchJuicio: TFrame},
  unfraProveedor in '..\comunes\frames\new\unfraProveedor.pas' {fraProveedor: TFrame},
  unFraFiltroArchivo in '..\archivo_new\frames\unFraFiltroArchivo.pas' {fraFiltroArchivo: TFrame},
  unFrmConsultaCarpetas in '..\archivo_new\unFrmConsultaCarpetas.pas' {FrmConsultaCarpetas: TFSForm},
  unFraDetalleArchivo in '..\archivo_new\frames\unFraDetalleArchivo.pas' {fraDetalleArchivo: TFrame},
  unFrmDetalleArchivo in '..\archivo_new\unFrmDetalleArchivo.pas' {FrmDetalleArchivo},
  unMovimientoCarpetas in '..\archivo_new\unMovimientoCarpetas.pas' {frmMovimientoCarpetas},
  unQrDetalleLoteEstudio in '..\archivo_new\unQrDetalleLoteEstudio.pas' {QrDetalleLoteEstudio},
  unQrEtiquetasCarpetas in '..\archivo_new\unQrEtiquetasCarpetas.pas' {qrEtiquetasCarpetas: TQuickRep},
  unFrmCargaDocumentacion in '..\archivo_new\unFrmCargaDocumentacion.pas' {frmCargaDocumentacion},
  unReemplazoCarpetas in '..\archivo_new\unReemplazoCarpetas.pas' {frmReemplazoCarpetas},
  unFrmSolicitudCarpeta in '..\archivo_new\unFrmSolicitudCarpeta.pas' {FrmSolicitudCarpeta: TFSForm},
  unfrmUbicacionActual in '..\archivo_new\unfrmUbicacionActual.pas' {FrmUbicacionActual},
  unCapturarCodigoBarras in '..\comunes\unCapturarCodigoBarras.pas' {frmCapturarCodigoBarras},
  unComisiones in '..\afiliaciones\comisiones\unComisiones.pas',
  unfraPrestador in '..\comunes\frames\unfraPrestador.pas' {fraPrestador: TFrame},
  unManATS_TIPOEVENTOSECTOR in '..\comunes\forms\unManATS_TIPOEVENTOSECTOR.pas' {frmManATS_TIPOEVENTOSECTOR: TFSForm},
  unManAMC_MANTENIMIENTOCUENTA in '..\comunes\forms\unManAMC_MANTENIMIENTOCUENTA.pas' {frmAMC_MANTENIMIENTOCUENTA: TFSForm},
  unTesoreria in '..\afiliaciones\tesoreria\unTesoreria.pas',
  unManAEX_EXCEPCIONUSUARIOTAREA in 'unManAEX_EXCEPCIONUSUARIOTAREA.pas' {frmManAEX_EXCEPCIONUSUARIOTAREA: TFSForm},
  unCargaDocumentosDigitaliz in '..\comunes\forms\unCargaDocumentosDigitaliz.pas' {frmCargaDocumentosDigitaliz},
  unDmFinancials in '..\comunes\oracle\unDmFinancials.pas' {dmFinancials: TDataModule},
  Registros in '..\..\comunes\Registros.pas',
  unfraEmpresaSolicitudAGENDA in '..\comunes\frames\modulosagenda\unfraEmpresaSolicitudAGENDA.pas' {fraEmpresaSolicitudAGENDA: TFrame},
  unQrDetalleRemitoDevolucion in '..\archivo_new\unQrDetalleRemitoDevolucion.pas' {QrDetalleRemitoDevolucion},
  unFraEmpresaSolicitud in '..\comunes\frames\new\unFraEmpresaSolicitud.pas' {fraEmpresaSolicitud: TFrame},
  unCobranzas in '..\..\comunes\unCobranzas.pas',
  unCuboSIC in 'unCuboSIC.pas' {frmCuboSIC},
  unfraDatoFechaAGENDA in '..\comunes\frames\modulosagenda\unfraDatoFechaAGENDA.pas' {fraDatoFecha: TFrame},
  unMensajeAlertaAGA in '..\archivo_new\unMensajeAlertaAGA.pas',
  unMensajeAlerta in '..\..\comunes\unMensajeAlerta.pas',
  unComunesArchivo in '..\archivo_new\unComunesArchivo.pas',
  unFraWebBrowser in '..\comunes\frames\new\unFraWebBrowser.pas' {fraWebBrowser: TFrame},
  unFraGIS_APIv3 in '..\comunes\frames\new\unFraGIS_APIv3.pas' {fraGIS_APIv3: TFrame},
  unEsperaSimple in '..\comunes\forms\unEsperaSimple.pas' {frmEsperaSimple};

{$R *.res}

begin
  OnlyOneInstance;
  Application.Initialize;
  Application.Title := 'SIC | Sistema Integrado de Comunicaciones';

  with TfrmWelcomeSplash.Create(Application) do
  try
    ShowOnTop;
    Application.CreateForm(TdmPrincipal, dmPrincipal);
    if dmPrincipal.sdbPrincipal.Connected then
      Application.CreateForm(TfrmPrincipal, frmPrincipal);

    OnlyOneSession;
  finally
    Free;
  end;

  MostrarNovedades;
  Application.Run;
end.