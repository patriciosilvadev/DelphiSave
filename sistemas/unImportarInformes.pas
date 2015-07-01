unit unImportarInformes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, unCustomConsulta, FieldHider, ShortCutControl, artSeguridad, QueryPrint,
  QueryToFile, ExportDialog, SortDlg, DB, dbtables, SDEngine, Grids, DBGrids, RxDBCtrl, ArtComboBox, ArtDBGrid, ComCtrls, ToolWin, ExtCtrls, FormPanel, StdCtrls,
  ActnList, Mask, FolderDialog, PatternEdit, IntEdit, IniFiles, PeriodoPicker, unArtFrame, unArtDBAwareFrame, unArtDbFrame, ShellAPI, unFraEmpresa, strUtils, Placemnt;

type
  TTipoArchivo=(taAnexo1,taAnexo2,taInforme,taFormValidacion,taNoValido);
  TfrmImportarInformes = class(TfrmCustomConsulta)
    lbCONTRATO: TLabel;
    lblPeriodo: TLabel;
    sdFileLog: TSaveDialog;
    pnlProgressPanel: TPanel;
    Bevel1: TBevel;
    lbProgressOrigen: TLabel;
    lbProgressDestino: TLabel;
    pbProcesarArchivos: TProgressBar;
    fraII_CONTRATO: TfraEmpresa;
    edII_PERIODO: TPeriodoPicker;
    ShortCutControlHijo: TShortCutControl;
    procedure tbNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FSFormDestroy(Sender: TObject);
    procedure fpSetDatosClose(Sender: TObject; var Action: TCloseAction);
    procedure fpProgressPanelClose(Sender: TObject; var Action: TCloseAction);
    procedure GridEditButtonClick(Sender: TObject);
  private
    { Private declarations }
    listaArchivos: TStringList;
    FimportDirDestino: string;
    FimportDirOrigen: string;
    FimportPeriodo: Integer;
    sServerFile: string;
    FSQL: String;

    function ImportarDirectorios(DirOrigen, DirDestino: string): Boolean;
    procedure CopyDirectory(DirOrigen, DirDestino, Periodo: string; NumContrato: Integer);
    procedure addText(text: string);

    function AlreadyRegistredDB(Contrato: Integer; Periodo, Archivo: string): Boolean;
    procedure InsertDataCDtoDB(Contrato: Integer; Periodo, Archivo, Usuario, TipoArchivo: string);
    function GetTipoArchivo(nombreArchivo: string): TTipoArchivo;
    procedure AbrirArchivoServer(selectArchivo, Contrato, Periodo: string);

    function TipoArchivoToString(taValue: TTipoArchivo): string;
  public
    { Public declarations }
    procedure ClearData; override;
    procedure RefreshData; override;

    property importDirOrigen: string read FimportDirOrigen;
    property importDirDestino: string read FimportDirDestino;
    property importPeriodo: Integer read FimportPeriodo;
  end;

var
  frmImportarInformes: TfrmImportarInformes;

implementation

{$R *.dfm}

uses CustomDlgs, unDmPrincipal, AnsiSql, unSesion, unImportarInformeDirectorios,
  General, unArt, unFiltros;

resourcestring
  sImportarArchiosStart = 'Se van a Importar los archivos del CD a el repositorio';
  sNoPudoCopiar = 'No se pudo copiar el archivo (%s) ';
  sNoPudoCrear = 'No se pudo crear el directorio: ';
  sFaltaArchivoServer = 'Aviso:'+#13+'El Archivo "%s", Contrato "%s", Periodo "%s". No existe.';
  sQuestionOpenFile = '�Desea abrir el archivo "%s"?';

  sYaExisteDB = 'Ya existe en la tabla estos datos, archivo=(%s), periodo=(%s), contrato=(%s).';
  stxtDirectorio = 'Directorio [%s].';
  sCopiarDirectorios = 'Se van a copiar todos los Archivos y SubDirectorios' + #13
              + 'De: "%s" ' + #13 + 'Al File-Server. ' + #13
              + 'La Etiqueta Periodo es: "%d" ' + #13
              + '�Quiere copiar estos Archivos?';
  sDirLogCopia = 'Directorios Origen [%s], Destino [%s].';
  sDirLogNumContrato = 'Numero de contrato invalido : ';

  sDirERRORLogDir = 'ERROR : Directorios Origen [%s].';
  sSaveLogFile = '�Desea Guardar el log de archivos procesados?';
  sSuccessfully = 'La copia finalizo correctamente.' + #13 +
                  'Archivos Procesados "%d".';

procedure TfrmImportarInformes.AbrirArchivoServer(selectArchivo, Contrato, Periodo: string);
var
  sSelectServerFile: string;
begin
  try
      sSelectServerFile := EmptyStr;

      if sServerFile = EmptyStr then
        sServerFile := Trim(Get_CTBEspecial1('PATHS', '013'));

      if (selectArchivo = EmptyStr) or (Contrato = EmptyStr) or (Periodo = EmptyStr)
      or (sServerFile = EmptyStr) then
        sServerFile := EmptyStr
      else begin
        sSelectServerFile := IncludeTrailingBackslash(sServerFile) +
          IncludeTrailingBackslash(Contrato) +
          IncludeTrailingBackslash(Periodo) + selectArchivo;

        if FileExists(sSelectServerFile) then
          ShellExecute(Application.Handle, nil, PChar(sSelectServerFile), '', '', SW_SHOWNORMAL)
        else
          MsgBox( Format(sFaltaArchivoServer, [selectArchivo, Contrato, Periodo]),
             MB_ICONERROR + MB_OK);
      end;
  except on E: Exception do
    ErrorMsg(e, e.Message);
  end;
end;

procedure TfrmImportarInformes.addText(text: string);
begin
  //listaArchivos.add(Text);
  listaArchivos.clear;
end;

function TfrmImportarInformes.AlreadyRegistredDB(Contrato: Integer; Periodo,
  Archivo: string): Boolean;
var
  sSql: String;
begin
  try
    sSql := 'SELECT 1 ' +
             ' FROM web.wii_informesiys ' +
            ' WHERE ii_archivo = :archivo ' +
              ' AND ii_contrato = :contrato ' +
              ' AND ii_periodo = :periodo ';

    Result := ExisteSQLEx(sSQL, [Archivo, Contrato, Periodo]);
  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
      addText('ERROR : ' + e.Message);
      Result := False;
    end;
  end;

end;

procedure TfrmImportarInformes.ClearData;
begin
  ClearComponentData(pnlFiltros);
  inherited;
end;

procedure TfrmImportarInformes.CopyDirectory(DirOrigen, DirDestino, Periodo: string;
  NumContrato: Integer);
var
  Files : integer;
  fileOrigen, fileDestino, Archivo : string;
  vtaTipoArchivo: TTipoArchivo;
  ok : boolean;
  Search : TSearchRec;
  PrevCursor: TCursor;
begin
  Files := FindFirst(DirOrigen + '\*.*', faAnyFile, Search);

  pnlProgressPanel.Left := Grid.Left + 50;
  pnlProgressPanel.Top := Grid.Top + 150;

  pnlProgressPanel.Width := Grid.Width - 100;
  pbProcesarArchivos.Width := pnlProgressPanel.Width - 20;

  pnlProgressPanel.Visible := True;

  PrevCursor := Screen.Cursor;
  try
    Screen.Cursor := crSQLWait;
    try
      while Files = 0 do
      begin
        if (Search.Attr <> faDirectory) then
        begin
          if (Search.Name <> '.') and (Search.Name <> '..') then
          begin
            pbProcesarArchivos.Position := pbProcesarArchivos.Position + 1;
            Archivo := Search.Name;

            Application.ProcessMessages;
            //FDestino := Destino;
            fileOrigen := DirOrigen + '\' + Search.Name;
            fileDestino := DirDestino +  '\'+ Search.Name;

            lbProgressOrigen.Caption := fileOrigen;
            lbProgressDestino.Caption := Search.Name;

            vtaTipoArchivo := GetTipoArchivo(Archivo);

            if (vtaTipoArchivo <> taNoValido)
            and (not AlreadyRegistredDB(NumContrato, Periodo, Archivo)) then
            begin
              ok := DirectoryExists(DirDestino);
              if (not ok) then
                ok := ForceDirectories(DirDestino);

              if ok then
              begin
                ok := CopyFile(PChar(fileOrigen), PChar(fileDestino), false);
                if ok then
                begin
                  addText(Format('Copia de [%s] a [%s] ',[fileOrigen, Archivo]));
                  InsertDataCDtoDB(NumContrato, Periodo, Archivo, Sesion.UserId, TipoArchivoToString(vtaTipoArchivo));
                end else
                  addText(Format(sNoPudoCopiar, [Archivo]) );
              end
            end  else
              addText(Format(sYaExisteDB, [Archivo, Periodo, IntToStr(NumContrato)]) );
          end;
        end
        else begin
          if (Search.Name <> '.') and (Search.Name <> '..') then
          begin

            ok := True;
            if ok then
              addText(Format(stxtDirectorio, [Search.Name]))
            else
              addText(sNoPudoCrear + Search.Name);
            {llamada recursiva}
            CopyDirectory(DirOrigen + '\' + Search.Name,
                          DirDestino + '\' + Search.Name, Periodo,
                          NumContrato);

          end;

        end;
        Files := FindNext(Search);
      end;
    except
      on e: Exception do begin
        addText('ERROR : ' + e.Message);
        ShowMessage(e.Message);
      end;
    end;
  finally
    Screen.Cursor := PrevCursor;
    FindClose(Search);
    pnlProgressPanel.Visible := False;
  end;
end;


procedure TfrmImportarInformes.FormCreate(Sender: TObject);
begin
  listaArchivos := TStringList.Create;
  sServerFile := EmptyStr;
  FSQL := sdqConsulta.SQL.Text;
  fraII_CONTRATO.ShowBajas := True;
  inherited;
end;

procedure TfrmImportarInformes.fpProgressPanelClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmImportarInformes.fpSetDatosClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmImportarInformes.FSFormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(listaArchivos);
end;

function TfrmImportarInformes.ImportarDirectorios(DirOrigen, DirDestino: string): Boolean;
var
  Files, NumContrato : integer;
  FOrigen, FOrigenAux, FDestino, sConsulta: string;
  ok : boolean;
  Search : TSearchRec;
begin
  listaArchivos.Clear;
  try
      ok := True;

      if ok then
      begin
          sConsulta := Format(sCopiarDirectorios, [DirOrigen, importPeriodo]);
          if Not MsgAsk(sConsulta) then
          begin
            Result := False;
            Exit;
          end;

          FOrigen := DirOrigen;
          Files := FindFirst(FOrigen + '\*.*', faDirectory, Search);
          pbProcesarArchivos.Max := ContarArchivosSubDir(FOrigen);

          pbProcesarArchivos.Position := 0;
          lbProgressOrigen.Caption := '';
          lbProgressDestino.Caption := '';

          while Files = 0 do
          begin
            try
              if (Search.Name <> '.') and (Search.Name <> '..') then
              begin

                FDestino := DirDestino +  '\' +  Search.Name +  '\' + IntToStr(FimportPeriodo);
                FOrigenAux := FOrigen +  '\' +  Search.Name;

                if ok then
                  addText(Format(sDirLogCopia, [FOrigenAux, Search.Name]));
                //Se crea el directorio si no existe
                if(not DirectoryExists(FDestino)) then
                  ok := ForceDirectories(FDestino);

                NumContrato := StrToIntDef(Search.Name, 0);

                if NumContrato = 0 then
                  Exception.Create(sDirLogNumContrato + Search.Name);

                //llamar al insert en la base
                //Se copia el contenido del directorio
                if not ok then
                  addText(Format(sDirERRORLogDir,[FOrigenAux]))
                else
                  CopyDirectory(FOrigenAux, FDestino, IntToStr(FimportPeriodo), NumContrato);
              end;
            except
              on e: Exception do begin
                addText('ERROR : ' + e.Message);
                ShowMessage(e.Message);
              end;
            end;

              Files := FindNext(Search);
          end;
          FindClose(Search);
      end;

      Result := True;
  finally
    {
      Por ahora no se va a usar el log de archivos procesados

    if (listaArchivos.Count > 0) then
      if MsgAsk(sSaveLogFile) then
      begin
        if sdFileLog.InitialDir = EmptyStr then sdFileLog.InitialDir := GetCurrentDir;
        if sdFileLog.Execute then
          listaArchivos.SaveToFile(ChangeFileExt(sdFileLog.FileName, '.log'));
      end;
    }
    pbProcesarArchivos.Position := pbProcesarArchivos.Max;

  end;
end;

procedure TfrmImportarInformes.InsertDataCDtoDB(Contrato: Integer; Periodo,
  Archivo, Usuario, TipoArchivo: string);
var
  sSql: String;
begin
  try
    ssql := 'INSERT INTO web.wii_informesiys (II_CONTRATO, II_PERIODO, ' +
                'II_ARCHIVO, II_TIPOARCHIVO, II_USUALTA, II_FECHAALTA) ' +
                ' VALUES(:CONTRATO, :PERIODO, ' +
                ':ARCHIVO, :TIPOARCHIVO, :USUALTA, SYSDATE)';
    EjecutarSQLEx(sSQL, [Contrato, Periodo, Archivo, TipoArchivo, Usuario ]);
  except
    on e: Exception do
    begin
      ShowMessage(e.Message);
      addText('ERROR : ' + e.Message);
    end;
  end;

end;

procedure TfrmImportarInformes.RefreshData;
begin
  if fraII_CONTRATO.IsSelected then
    SortDialog.SortBy(SortDialog.SortFields.ItemsByField['ii_periodo'], otAscending);

  if fraII_CONTRATO.IsEmpty and (edII_PERIODO.Text <> EmptyStr) then
    SortDialog.SortBy(SortDialog.SortFields.ItemsByField['ii_contrato'], otAscending);

  sdqConsulta.SQL.Text := FSQL + DoFiltro(pnlFiltros) + SortDialog.OrderBy;
  inherited RefreshData;
end;

procedure TfrmImportarInformes.tbNuevoClick(Sender: TObject);
begin
  inherited;

  if MsgAsk(sImportarArchiosStart) then
  begin
    FimportDirDestino := '';
    FimportDirOrigen := '';
    FimportPeriodo := 0;

    Abrir(TfrmImportarInformeDirectorios, frmImportarInformeDirectorios, tmvHidden, nil);
    try
      if frmImportarInformeDirectorios.ShowModal = mrOk then
      begin
        FimportDirOrigen := frmImportarInformeDirectorios.infoDirOrigen;
        FimportDirDestino := frmImportarInformeDirectorios.infoDirDestino;
        FimportPeriodo := frmImportarInformeDirectorios.infoPeriodo;

        if not ImportarDirectorios(FimportDirOrigen, FimportDirDestino) then
          Exit;

        edII_PERIODO.Text := IntToStr(FimportPeriodo);
        RefreshData;

        ShowMessage(Format(sSuccessfully,[pbProcesarArchivos.Max]));
      end;

    finally
      if Assigned(frmImportarInformeDirectorios) then
        FreeAndNil(frmImportarInformeDirectorios);
    end;
  end;
end;

function TfrmImportarInformes.TipoArchivoToString(
  taValue: TTipoArchivo): string;
begin
  {taAnexo1 = '1', taAnexo2 = '2', taInforme = 'I', taFormValidacion = 'F', taNoValido = 'X'}
  case taValue of
    taAnexo1: Result := '1';
    taAnexo2: Result := '2';
    taInforme: Result := 'I';
    taFormValidacion: Result := 'F';
    taNoValido: Result := 'X';
  end;
end;

function TfrmImportarInformes.GetTipoArchivo(nombreArchivo: string): TTipoArchivo;
var
  UppnombreArchivo: string;
CONST
  cANEXO1 = 'ANEXO1';
  cANEXO2 = 'ANEXO2';
  cINFORME = 'INFORME';
  cOPANEXO = 'ANEXO';
  cOP1 = ' 1';
  cOP2= ' 2';
  cOPINFORMES = 'INFORMES';
  cCONTTEXTFORM = 'FORMVALIDACIONYRECTIFIACIONESTAB';
begin
    //'<<'I'=informe, '1'=Anexo1, '2'=Anexo2
    Result := taNoValido;
    UppnombreArchivo := UpperCase(Trim(nombreArchivo));

    if AnsiStartsStr(cANEXO1, UppnombreArchivo) then Result := taAnexo1;
    if AnsiStartsStr(cANEXO2, UppnombreArchivo) then Result := taAnexo2;
    if AnsiStartsStr(cINFORME, UppnombreArchivo) then Result := taInforme;
    if (Result = taNoValido)
    and (AnsiContainsStr(UppnombreArchivo, cCONTTEXTFORM)) then Result := taFormValidacion;

    if Result = taNoValido then
    begin
      {Estas validaciones son por compatibilidad con algunos CDs que estan en
        otro formato actualmente, no existe aun una regala de nombres y
        no hay una estructura de archivos validas.. en cuanto se definan
        los nombres validos de archivos estas seccion de validaciones se eliminara....}
      if (AnsiStartsStr(cOPANEXO, UppnombreArchivo) )
      and (AnsiContainsStr(UppnombreArchivo, cOP1)) then Result := taAnexo1;

      if (AnsiStartsStr(cOPANEXO, UppnombreArchivo) )
      and (AnsiContainsStr(UppnombreArchivo, cOP2)) then Result := taAnexo2;

      if (Result = taNoValido)
      and (AnsiStartsStr(cOPINFORMES, UppnombreArchivo) ) then   Result := taInforme;
    end;

end;

procedure TfrmImportarInformes.GridEditButtonClick(Sender: TObject);
var
  sArchivo, sContrato, sPeriodo: string;
begin
  sArchivo := Grid.DataSource.DataSet.FieldByName('II_ARCHIVO').AsString;
  sContrato := Grid.DataSource.DataSet.FieldByName('II_CONTRATO').AsString;
  sPeriodo := Grid.DataSource.DataSet.FieldByName('II_PERIODO').AsString;

  if MsgAsk(format(sQuestionOpenFile, [sArchivo])) then
    AbrirArchivoServer(sArchivo, scontrato, speriodo);

end;

end.
