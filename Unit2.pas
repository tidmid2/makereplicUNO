unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Def, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBWrapper, FireDAC.Phys.FBDef, FireDAC.Phys, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB, FireDAC.Stan.Intf, Vcl.StdCtrls, Vcl.ExtCtrls, System.Threading,
  Vcl.Samples.Spin, FireDAC.UI.Intf, FireDAC.Stan.Async, ShellApi,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.Client, FireDAC.Stan.Pool,
  Data.DB, Vcl.WinXPanels, Vcl.Imaging.pngimage, Vcl.WinXCtrls,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.VirtualImageList, FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FBName: TLabeledEdit;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    FDScript1: TFDScript;
    CreateDB: TFDCommand;
    FolderName: TLabeledEdit;
    CardPanel1: TCardPanel;
    Card1: TCard;
    Panel1: TPanel;
    Button2: TButton;
    Button3: TButton;
    Card2: TCard;
    Panel2: TPanel;
    Button5: TButton;
    Card3: TCard;
    Label2: TLabel;
    Button1: TButton;
    StartBtn: TImage;
    ActivityIndicator1: TActivityIndicator;
    ComboBox1: TComboBox;
    ImageCollection1: TImageCollection;
    Label3: TLabel;
    ArchFolders: TFDMemTable;
    ArchFoldersNAME: TWideStringField;
    ArchFoldersCNT: TSmallintField;
    procedure CreateRepDB;
    procedure SetMainDBParams(IsMaster,IsMain:Boolean);
    procedure Button1Click(Sender: TObject);
    function SetupHosts:Boolean;
    procedure Button2Click(Sender: TObject);
    function CheckFBPath:Boolean;
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FolderNameChange(Sender: TObject);
    procedure StartMain;
    procedure StartSlave;
    procedure StartBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SetActStartBtn(act:Boolean);
    procedure CardPanel1CardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private declarations }
     bkfile,path,port:String;
     MainLocation:Boolean;
     //ArchiveFlds:TStrings;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 if CheckFBPath = false then
  begin
    ShowMessage('Не правильно указан путь установленного сервера!');
    exit;
  end;
  MainLocation:=true;
  Label1.Caption:='Кол-во филиалов';
  Self.Caption:='Настройка Главной базы';
  SpinEdit1.MaxValue:=100;
  SpinEdit1.Enabled:=true;
  SetActStartBtn(false);
  CardPanel1.NextCard;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if CheckFBPath = false then
  begin
    ShowMessage('Не правильно указан путь установленного сервера!');
    exit;
  end;
  MainLocation:=false;
  Label1.Caption:='Номер точки продажи:';
  Self.Caption:='Настройка Дочерней базы';
  SpinEdit1.Enabled:=false;
  SetActStartBtn(false);
  CardPanel1.NextCard;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  FolderName.Text:='';
  ComboBox1.ItemIndex:=-1;
  SpinEdit1.Value:=1;
  Self.Caption:='Мастер настройки репликации';
  CardPanel1.PreviousCard;
end;

procedure TForm2.CardPanel1CardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  if CardPanel1.ActiveCardIndex = 1 then
    begin
     FolderName.Visible := MainLocation;
     ComboBox1.Visible := not MainLocation;
    end;
end;

function TForm2.CheckFBPath: Boolean;
begin
  Result:=FileExists(FBName.Text+'\gfix.exe');
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
 SetActStartBtn(ComboBox1.ItemIndex > -1);
 if (ComboBox1.ItemIndex > -1)and(ArchFolders.Locate('NAME',ComboBox1.Text,[loCaseInsensitive])) then
  begin
   SpinEdit1.MaxValue:= ArchFoldersCNT.AsInteger;
   SpinEdit1.Enabled:=true;
  end
 else SpinEdit1.Enabled:=false;
 SpinEdit1.Value:=1;
end;

procedure TForm2.CreateRepDB;
var Sql:TStringList;
 tmpDB:TFDConnection;
begin
  tmpDB:=TFDConnection.Create(nil);
  tmpDB.LoginPrompt:=false;
  tmpDB.DriverName:='FB';
  tmpDB.Params.Add('Server=127.0.0.1');
  tmpDB.Params.Add('User_Name=SYSDBA');
  tmpDB.Params.Add('Password=masterkey');
  tmpDB.Params.Add('Port='+port);
  tmpDB.Params.Add('CreateDatabase=Yes');

  sql:=TStringList.Create;

  sql.Text:=CreateDB.CommandText.Text;


  FDScript1.Connection:=tmpDB;
  FDScript1.SQLScripts.Clear;
  FDScript1.SQLScripts.Add;
  FDScript1.SQLScripts[0].SQL.Add(sql.Text);
  FreeAndNil(sql);
  try
   FDScript1.ValidateAll;
   FDScript1.ExecuteAll;
  except
    on e:exception do TThread.Synchronize(nil,procedure begin ShowMessage(e.Message); end);
  end;
 FreeAndNil(tmpDB);
end;

procedure TForm2.FolderNameChange(Sender: TObject);
begin
  SetActStartBtn((FolderName.Text<>'')and(ArchFolders.Locate('NAME',FolderName.Text,[loCaseInsensitive])=false));
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
// ArchiveFlds:=TStringList.Create;
 ArchFolders.Active:=true;
 TTask.Run(procedure
  var searchResult, searchChild : TSearchRec; cnt:Integer;
 begin
   if FindFirst('\\103.171.26.178\archive\*', faDirectory, searchResult) = 0 then
    begin
     repeat
      // Показываем только каталоги
      if (searchResult.attr and faDirectory) = faDirectory then
         begin
           cnt:=0;
           if FindFirst('\\103.171.26.178\archive\'+searchResult.Name+'\*',faDirectory,searchChild)=0 then
             begin
              repeat
               if searchChild.Name <> 'base' then
                 inc(cnt);
              until FindNext(searchChild) <> 0;
              FindClose(searchChild);
             end;
            ArchFolders.Append;
            ArchFoldersNAME.AsString:=searchResult.Name;
            ArchFoldersCNT.AsInteger:=cnt;
            ArchFolders.Post;
         end;
     until FindNext(searchResult) <> 0;
      FindClose(searchResult);
      TThread.Synchronize(nil,procedure begin
        ArchFolders.First;
        while ArchFolders.Eof <> true do
          begin
            ComboBox1.Items.Append(ArchFoldersNAME.AsString);
            ArchFolders.Next;
          end;
       end);
    end;
 end);

 {$IFDEF DEBUG}
  port:='3054';
 {$ELSE}
  port:='3050';
 {$ENDIF}

  SetActStartBtn(false);
end;

procedure TForm2.StartBtnClick(Sender: TObject);
var mess:String;
begin
 if MainLocation then
   mess:='Вы настраиваете ГЛАВНУЮ базу!'+#13#10+'Каталог организации: "'+FolderName.Text+'"'+#13#10+'Кол-во филиалов: '+SpinEdit1.Value.ToString+
    #13#10+'Продолжить?'
 else mess:='Вы настраиваете ДОЧЕРНЮЮ базу!'+#13#10+'Каталог организации: "'+ComboBox1.Text+'"'+#13#10+'Номер филиала: '+SpinEdit1.Value.ToString+
    #13#10+'Продолжить?';
  if MessageDlg(mess, mtConfirmation,[mbYes,mbNo],0) <> mrYes then exit;

  SetActStartBtn(false);
  ActivityIndicator1.Animate:=true;
  TTask.Run(procedure begin
    if MainLocation then
      StartMain
    else StartSlave;
   TThread.Synchronize(nil, procedure begin
     CardPanel1.NextCard;
     ActivityIndicator1.Animate:=false;
    end);
  end);

end;

procedure TForm2.SetActStartBtn(act: Boolean);
begin
  StartBtn.Picture.Bitmap := ImageCollection1.GetBitmap(Integer(act),120,44);
  StartBtn.Enabled:=act;
end;

procedure TForm2.SetMainDBParams(IsMaster,IsMain:Boolean);    // Центральная база или филиалы, рабочая база или реплика
var tmpDB:TFDConnection;
begin
  tmpDB:=TFDConnection.Create(nil);
  tmpDB.LoginPrompt:=false;
  tmpDB.DriverName:='FB';
  tmpDB.Params.Add('Port='+port);
  tmpDB.Params.Add('User_Name=SYSDBA');
  tmpDB.Params.Add('Password=masterkey');
  tmpDB.Params.Add('Server=127.0.0.1');
  if IsMain then
    tmpDB.Params.Database:='C:\UNO\Database\RDB.AKS'
  else tmpDB.Params.Database:='C:\UNO\Database\MAIN.REP';
  tmpDB.Connected:=true;
  FDScript1.Connection:=tmpDB;
  FDScript1.SQLScripts.Clear;
  FDScript1.SQLScripts.Add;
  with FDScript1.SQLScripts[0].SQL do
   begin
    if IsMain then
     begin
       Add('alter database INCLUDE ALL to publication;');
       Add('alter database enable publication;');
     end
    else
     begin
      if IsMaster then
       begin
         Add('alter database exclude all from publication;');
         Add('alter database INCLUDE table d_classif, d_product, tbmenu, tbstation, tbhall, tbkoord, peoples, contragents, tbcards, modifiers, modifiers_item to publication;');
         Add('alter database enable publication;');
       end
      else
       begin
         Add('alter database exclude all from publication;');
         Add('alter database INCLUDE table tbsmeny, documents, d_lines, tbaccount, d_lines_modif to publication;');
         Add('alter database enable publication;');
       end;
     end;
   end;
  try
   FDScript1.ValidateAll;
   FDScript1.ExecuteAll;
  except
    on e:exception do TThread.Synchronize(nil,procedure begin ShowMessage(e.Message);end);
  end;
  FreeAndNil(tmpDB);
end;

function TForm2.SetupHosts: Boolean;
begin
Result:=false;
with TStringList.Create() do
  begin
    LoadFromFile('C:\Windows\System32\drivers\etc\hosts');
    if IndexOf('103.171.26.178 uno1.domain.com uno1') = -1 then
     begin
      Add('103.171.26.178 uno1.domain.com uno1');
      SaveToFile('C:\Windows\System32\drivers\etc\hosts');
     end;
    free;
  end;
Result:=true;
end;

procedure TForm2.SpinEdit1Change(Sender: TObject);
begin
 if SpinEdit1.Value > SpinEdit1.MaxValue then
      SpinEdit1.Value:=SpinEdit1.MaxValue;
end;

procedure TForm2.StartMain;
var i:Integer;
begin
  if SetupHosts = false then exit;

  CopyFile('C:\UNO\Database\RDB.AKS','C:\UNO\Database\MAIN.REP',false);

  SetMainDBParams(true,false);
 // CreateRepDB;
  try
  ShellExecute( 0,'OPEN',PWideChar(FBName.Text+'\gfix.exe'),
              PWideChar('-replica read_only c:\uno\database\main.rep -user SYSDBA -pass masterkey'),nil,SW_SHOWNORMAL);

  ShellExecute( 0,'OPEN',PWideChar(FBName.Text+'\gfix.exe'),
              PWideChar('-replica read_write c:\uno\database\RDB.AKS -user SYSDBA -pass masterkey'),nil,SW_SHOWNORMAL);


  CreateDir('C:\UNO\Database\journal');
  CreateDir('\\uno1\archive\'+FolderName.Text);
  CreateDir('\\uno1\archive\'+FolderName.Text+'\base');
  for I := 1 to SpinEdit1.Value do
   begin
    CreateDir('\\uno1\archive\'+FolderName.Text+'\base\location'+i.ToString);
    CreateDir('\\uno1\archive\'+FolderName.Text+'\location'+i.ToString);
   end;

  with TStringList.Create do
   begin
     Add('database = C:\UNO\Database\RDB.AKS'+#13#10+'{'+#13#10+
         'sync_replica = sysdba:masterkey@127.0.0.1/'+port+':C:\UNO\Database\MAIN.REP'+#13#10+
         'journal_source_directory = \\uno1\archive\'+FolderName.Text+'\location1'+#13#10+'}'+#13#10);

     if SpinEdit1.Value > 1 then
     for I := 2 to SpinEdit1.Value do
       Add('database = C:\UNO\Database\RDB.AKS'+#13#10+'{'+#13#10+
          'journal_source_directory = \\uno1\archive\'+FolderName.Text+'\location'+i.ToString+#13#10+'}'+#13#10);

     Add('database = C:\UNO\Database\MAIN.REP'+#13#10+'{'+#13#10+
        'journal_directory = C:\UNO\Database\journal'+#13#10+
        'journal_archive_timeout = 10'+#13#10+
        'journal_archive_command = "for /D %a in (\\uno1\archive\'+FolderName.Text+'\base\*.*) do xcopy /y /d $(pathname) %a\"'+#13#10+'}'+#13#10);

     SaveToFile(FBName.Text+'\replication.conf');
     Free;
   end;
  except
    on e:exception do TThread.Synchronize(nil,procedure begin ShowMessage(e.Message); end);
  end;

   SetMainDBParams(true,true);

end;

procedure TForm2.StartSlave;
begin
   if SetupHosts = false then exit;

 CopyFile('C:\UNO\Database\RDB.AKS','C:\UNO\Database\MAIN.REP',false);

 SetMainDBParams(false,false);
 try
 ShellExecute( 0,'OPEN',PWideChar(FBName.Text+'\gfix.exe'),
              PWideChar('-replica read_only c:\uno\database\main.rep -user SYSDBA -pass masterkey'),nil,SW_SHOWNORMAL);

 ShellExecute( 0,'OPEN',PWideChar(FBName.Text+'\gfix.exe'),
              PWideChar('-replica read_write c:\uno\database\RDB.AKS -user SYSDBA -pass masterkey'),nil,SW_SHOWNORMAL);

 CreateDir('C:\UNO\Database\journal');

 with TStringList.Create do
   begin
     Add('database = C:\UNO\Database\RDB.AKS'+#13#10+'{'+#13#10+
         'sync_replica = sysdba:masterkey@127.0.0.1/'+port+':C:\UNO\Database\MAIN.REP'+#13#10+
         'journal_source_directory = \\uno1\archive\'+ComboBox1.Text+'\base\location'+SpinEdit1.Value.ToString+#13#10+'}'+#13#10);

     Add('database = C:\UNO\Database\MAIN.REP'+#13#10+'{'+#13#10+
         'journal_directory = C:\UNO\Database\journal'+#13#10+
         'journal_archive_directory = \\uno1\archive\'+ComboBox1.Text+'\location'+SpinEdit1.Value.ToString+#13#10+
         'journal_archive_timeout = 10'+#13#10+'}'+#13#10);

     SaveToFile(FBName.Text+'\replication.conf');
     Free;
   end;
 except
  on e:exception do TThread.Synchronize(nil,procedure begin ShowMessage(e.Message); end);
 end;
   SetMainDBParams(false,true);

end;

end.
