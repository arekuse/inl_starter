unit inl_starter_src;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  ComCtrls, Grids, DOM, XMLRead, XPath, strutils;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    ListBox6: TListBox;
    Memo1: TMemo;
    Memo2: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    ProgressBar1: TProgressBar;
    ProgressBar2: TProgressBar;
    ProgressBar3: TProgressBar;
    ProgressBar4: TProgressBar;
    ProgressBar5: TProgressBar;
    ProgressBar6: TProgressBar;
    StatusBar1: TStatusBar;
    StatusBar2: TStatusBar;
    StatusBar3: TStatusBar;
    StatusBar4: TStatusBar;
    StatusBar5: TStatusBar;
    StatusBar6: TStatusBar;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure ComboBox6Change(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit10KeyPress(Sender: TObject; var Key: char);
    procedure Edit11Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: char);
    procedure Edit7Change(Sender: TObject);
    procedure Edit7KeyPress(Sender: TObject; var Key: char);
    procedure Edit8Change(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: char);
    procedure Edit9Change(Sender: TObject);
    procedure Edit9KeyPress(Sender: TObject; var Key: char);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBox1SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox2KeyPress(Sender: TObject; var Key: char);
    procedure ListBox2SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox3KeyPress(Sender: TObject; var Key: char);
    procedure ListBox3SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox4KeyPress(Sender: TObject; var Key: char);
    procedure ListBox4SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox5KeyPress(Sender: TObject; var Key: char);
    procedure ListBox5SelectionChange(Sender: TObject; User: boolean);
    procedure ListBox6KeyPress(Sender: TObject; var Key: char);
    procedure ListBox6SelectionChange(Sender: TObject; User: boolean);
    procedure PageControl1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Xml: TXMLDocument;
  Xml_SNES: TXMLDocument;
  Xml_Sega: TXMLDocument;
  Xml_N64: TXMLDocument;
  Xml_GBA: TXMLDocument;
  Xml_GB: TXMLDocument;
  XPathResult: TXPathVariable;
  FList: TStringList;
  FList_SNES: TStringList;
  FList_Sega: TStringList;
  FList_N64: TStringList;
  FList_GBA: TStringList;
  FList_GB: TStringList;
  FList_2: TStringList;

  games_file_nes: string = 'NesCarts.xml';
  games_file_snes: string = 'SnesCarts.xml';
  games_file_sega: string = 'SegaCarts.xml';
  games_file_n64: string = 'N64Carts.xml';
  games_file_GBA: string = 'GBACarts.xml';
  games_file_GB: string = 'GBCarts.xml';

implementation

uses int_loading;

{$R *.lfm}

{ TForm1 }

function convert_console(input: string): string;
begin
if input = 'SEGA' then result:='genesis' else result:=lowercase(input);
end;

procedure TForm1.Button1Click(Sender: TObject);
var folder : string;
  console: string;
begin
if not checkbox1.Checked then
begin
  if (combobox1.Text<>'') and (combobox2.Text<>'') and (combobox3.Text<>'') then
  begin
  memo2.Clear;
  memo2.Lines:=memo1.Lines;
  memo2.Text:=StringReplace(memo2.text,'{%1}',combobox1.Text,[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%2}',combobox2.Text,[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%3}',edit1.Text,[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%4}',edit2.Text,[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%5}',edit3.Text,[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%6}',edit4.Text,[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%7}',stringreplace(edit5.Text,'\','/',[rfReplaceAll]),[rfReplaceAll]);
  memo2.Text:=StringReplace(memo2.text,'{%8}',combobox3.Text,[rfReplaceAll]);
  folder := ExtractFilePath(edit5.Text);
  //memo2.Lines.SaveToFile('scripts\'+combobox2.text+'_dump.lua');
  memo2.clear;
  memo2.lines.add('echo off');
  if folder <> '' then memo2.Lines.add('IF NOT EXIST '+folder+' md '+folder);
  //memo2.lines.add('inlretro.exe -s scripts\'+combobox2.text+'_dump.lua');

  if combobox2.text='NES' then
   memo2.lines.add('inlretro.exe -s scripts\inlretro2.lua -c ' + convert_console(combobox2.text) + ' -m ' + stringreplace(combobox1.Text,'scripts.nes.','',[rfReplaceAll]) + ' -x '+edit1.text + ' -y ' + edit2.text + ' -w '+edit3.text + ' -d '+edit5.text)
  else if combobox2.text='GB' then
   memo2.lines.add('inlretro.exe -s scripts\inlretro2.lua -c ' + convert_console(combobox2.text) + ' -m ' + stringreplace(combobox1.Text,'scripts.gb.','',[rfReplaceAll]) + ' -k' +edit4.text + ' -d '+edit5.text)
  else
  begin
      if AnsiContainsText(edit4.text, 'm') then
        memo2.lines.add('inlretro.exe -s scripts\inlretro2.lua -c ' + convert_console(combobox2.text) + ' -z '+stringsreplace(edit4.text,['m','b'],['',''],[rfReplaceAll,rfIgnoreCase]) + ' -d ' + edit5.text)
      else
        memo2.lines.add('inlretro.exe -s scripts\inlretro2.lua -c ' + convert_console(combobox2.text) + ' -k '+edit4.text + ' -d ' + edit5.text);
  end;

  memo2.lines.add('pause');
  memo2.Lines.SaveToFile(combobox2.text+'_dump.bat');
  sysUtils.ExecuteProcess(combobox2.text+'_dump.bat', '', []);
  memo2.Clear;
  showmessage('Finished!');
  end
  else showmessage('Choose console and cartridge type or use automatic dumping!');
  end
else
begin
  if (combobox1.Text<>'') and (combobox2.Text<>'') and (combobox3.Text<>'') then
    begin
  if MessageDlg('Automatic Dumping', 'The application will try to guess the games specs and will dump the game automatically. Do you want to continue?', mtConfirmation, [mbYes, mbNo],0) = mrYes
  then
  begin
  if combobox2.Text='SEGA' then
  	console:='genesis'
  else
    	console:=lowercase(combobox2.Text);
  memo2.clear;
  memo2.Lines.add('inlretro.exe --lua_filename=scripts/inlretro2.lua --dump_filename='+stringreplace(edit5.Text,'\','/',[rfReplaceAll])+' --console='+console);
  memo2.lines.add('pause');
  memo2.Lines.SaveToFile(combobox2.text+'_dump.bat');
  sysUtils.ExecuteProcess(combobox2.text+'_dump.bat', '', []);
  memo2.clear;
  end;
  end
  else
  showmessage('Choose console type!');
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin

end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  if checkbox1.Checked then
  begin
  groupbox1.Enabled:=false;
  groupbox2.Enabled:=false;
  combobox1.Enabled:=false;
  end
  else
  begin
  groupbox1.Enabled:=true;
  groupbox2.Enabled:=true;
  combobox1.Enabled:=true;
  end;
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
var i:integer;
begin
  combobox1.Clear;
  groupbox2.Visible:=true;
  groupbox2.Caption:='NON NES ROM Size Settings (Kbyte)';
  if (combobox2.text='NES') then
  begin
   groupbox1.Visible:=true;
   //groupbox4.Visible:=true;
   groupbox2.Visible:=false;
   for I := 0 to FList_2.Count - 1 do
     if AnsiContainsText(FList_2[I], '.nes.') then
       ComboBox1.Items.Add(FList_2[I]);
   //form1.Width:=1143
  end
  else
  begin
    groupbox1.Visible:=false;
    //groupbox4.visible:=false;
    groupbox2.Visible:=true;
    //form1.Width:=panel1.Width;
  end;
  if combobox2.text='SNES' then
  begin
  //groupbox2.Visible:=false;
  for I := 0 to FList_2.Count - 1 do begin
    if AnsiContainsText(FList_2[I], '.snes.') then
      ComboBox1.Items.Add(FList_2[I]);
  end;
  end;
  if combobox2.text='SEGA' then
  for I := 0 to FList_2.Count - 1 do begin
  begin
  //groupbox2.Visible:=false;
    if AnsiContainsText(FList_2[I], '.sega.') then
      ComboBox1.Items.Add(FList_2[I]);
  end;
  end;
  if combobox2.text='N64' then
  for I := 0 to FList_2.Count - 1 do begin
    if AnsiContainsText(FList_2[I], '.n64.') then
      ComboBox1.Items.Add(FList_2[I]);
  end;
  if combobox2.text='GBA' then
  for I := 0 to FList_2.Count - 1 do begin
    if AnsiContainsText(FList_2[I], '.gba.') then
    begin
      ComboBox1.Items.Add(FList_2[I]);
      groupbox2.Caption:='ROM Size Settings (XXmb)';
    end;
  end;
  if combobox2.text='GB' then
  for I := 0 to FList_2.Count - 1 do begin
    if AnsiContainsText(FList_2[I], '.gb.') then
    begin
      ComboBox1.Items.Add(FList_2[I]);
    end;
  end;
  if combobox1.Items.Count<>0 then combobox1.ItemIndex:=0;
end;

procedure clear_grid;
var i: integer;
begin
  with form1 do
begin
{for i:= 0 to stringgrid1.RowCount-1 do
  stringgrid1.cells[1,i]:='';
for i:= 0 to stringgrid2.RowCount-1 do
  stringgrid2.cells[1,i]:='';
for i:= 0 to stringgrid3.RowCount-1 do
  stringgrid3.cells[1,i]:='';  }
end;
end;

procedure TForm1.ComboBox4Change(Sender: TObject);
var game_title: string;
  version : integer;
begin
    clear_grid;
    progressbar1.Position:=0;
    game_title:=listbox1.Items[listbox1.ItemIndex];
    version :=combobox4.ItemIndex+1;
    stringgrid1.Cells[1,0]:=listbox1.Items[listbox1.ItemIndex];
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/@system',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//@altname',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//@publisher',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//@developer',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//@region',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,6]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/@date',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,7]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//@type',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,8]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//@mapper',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,9]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//chip//@type',Xml.DocumentElement).AsText);
       	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,10]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//prg//@size',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,11]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//chr//@size',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,12]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//vram//@size',Xml.DocumentElement).AsText);
            progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,13]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//pad//@h',Xml.DocumentElement).AsText);
	    progressbar1.Position:=progressbar1.max;
    stringgrid1.Cells[1,14]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']/cartridge[1]/board[1]//pad//@v',Xml.DocumentElement).AsText);
end;

procedure TForm1.ComboBox5Change(Sender: TObject);
var game_title: string;
  version: integer;
begin
    clear_grid;
    progressbar2.Position:=0;
    game_title:=listbox2.Items[listbox2.ItemIndex];
    version :=combobox5.ItemIndex+1;
    stringgrid2.Cells[1,0]:=listbox2.Items[listbox2.ItemIndex];
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//internal',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//bank',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//sram',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//chips',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//size',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,6]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//video',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,7]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//region',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.max;
    stringgrid2.Cells[1,8]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//speed',Xml_SNES.DocumentElement).AsText);
end;

procedure TForm1.ComboBox6Change(Sender: TObject);
var game_title: string;
  version: integer;
begin
    clear_grid;
    progressbar3.Position:=0;
    game_title:=listbox3.Items[listbox3.ItemIndex];
    version :=combobox6.ItemIndex+1;
    stringgrid3.Cells[1,0]:=game_title;
        progressbar3.Position:=progressbar3.Position+10;
    stringgrid3.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//publisher',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.Position+10;
    stringgrid3.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//developer',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.Position+10;
    stringgrid3.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//date',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.Position+10;
    stringgrid3.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//region',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.max;
    stringgrid3.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//size',Xml_Sega.DocumentElement).AsText);
end;

procedure TForm1.ComboBox7Change(Sender: TObject);
var game_title: string;
  version: integer;
begin
    clear_grid;
    progressbar4.Position:=0;
    game_title:=listbox4.Items[listbox4.ItemIndex];
    version :=combobox7.ItemIndex+1;
    stringgrid4.Cells[1,0]:=game_title;
        progressbar4.Position:=progressbar4.Position+10;
    stringgrid4.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//publisher',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.Position+10;
    stringgrid4.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//developer',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.Position+10;
    stringgrid4.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//date',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.Position+10;
    stringgrid4.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//region',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.max;
    stringgrid4.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//size',Xml_N64.DocumentElement).AsText);
end;

procedure TForm1.ComboBox8Change(Sender: TObject);
var game_title: string;
  version: integer;
begin
    clear_grid;
    progressbar5.Position:=0;
    game_title:=listbox5.Items[listbox5.ItemIndex];
    version :=combobox8.ItemIndex+1;
    stringgrid5.Cells[1,0]:=game_title;
        progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//publisher',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//developer',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//date',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//region',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.max;
    stringgrid5.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//size',Xml_GBA.DocumentElement).AsText);
end;

procedure TForm1.ComboBox9Change(Sender: TObject);
var game_title: string;
  version: integer;
begin
    clear_grid;
    progressbar6.Position:=0;
    game_title:=listbox6.Items[listbox6.ItemIndex];
    version :=combobox9.ItemIndex+1;
    stringgrid6.Cells[1,0]:=game_title;
        progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//publisher',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//developer',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//date',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//region',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.max;
    stringgrid6.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(version)+']//size',Xml_GB.DocumentElement).AsText);
end;

procedure TForm1.Edit10Change(Sender: TObject);
var
I: Integer;
S: String;
begin
ListBox5.Items.BeginUpdate;
try
ListBox5.Clear;
if (Edit10.GetTextLen > 0) and (trim(edit10.text)<>'') then
begin
  S := Edit10.Text;
  for I := 0 to FList_GBA.Count - 1 do begin
    if AnsiContainsText(FList_GBA[I], S) then
      ListBox5.Items.Add(FList_GBA[I]);
  end;
end
else
begin
  for I := 0 to FList_GBA.Count - 1 do
  ListBox5.Items.Add(FList_GBA[I]);
  end;
finally
ListBox5.Items.EndUpdate;
statusbar5.SimpleText:=inttostr(listbox5.Items.count);
end;
end;

procedure TForm1.Edit10KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
  if (Key = #27) then
  begin
    edit10.Text:='';
    listbox5.Clear;
     for I := 0 to FList_GBA.Count - 1 do
     ListBox5.Items.Add(FList_GBA[I]);
     clear_grid;
     edit10.SetFocus;
  end;
end;

procedure TForm1.Edit11Change(Sender: TObject);
var
I: Integer;
S: String;
begin
ListBox6.Items.BeginUpdate;
try
ListBox6.Clear;
if (Edit11.GetTextLen > 0) and (trim(edit11.text)<>'') then
begin
  S := Edit11.Text;
  for I := 0 to FList_GB.Count - 1 do begin
    if AnsiContainsText(FList_GB[I], S) then
      ListBox6.Items.Add(FList_GB[I]);
  end;
end
else
begin
  for I := 0 to FList_GB.Count - 1 do
  ListBox6.Items.Add(FList_GB[I]);
  end;
finally
ListBox6.Items.EndUpdate;
statusbar6.SimpleText:=inttostr(listbox6.Items.count);
end;
end;

procedure TForm1.Edit6Change(Sender: TObject);
  var
  I: Integer;
  S: String;
begin
  ListBox1.Items.BeginUpdate;
  try
    ListBox1.Clear;
    if (Edit6.GetTextLen > 0) and (trim(edit6.text)<>'') then
    begin
      S := Edit6.Text;
      for I := 0 to FList.Count - 1 do begin
        if AnsiContainsText(FList[I], S) then
          ListBox1.Items.Add(FList[I]);
      end;
    end
    else
    begin
      for I := 0 to FList.Count - 1 do
      ListBox1.Items.Add(FList[I]);
      end;
  finally
    ListBox1.Items.EndUpdate;
    statusbar1.SimpleText:=inttostr(listbox1.Items.count);
  end;
end;

procedure TForm1.Edit6KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
  if (Key = #27) then
  begin
    edit6.Text:='';
    listbox1.Clear;
     for I := 0 to FList.Count - 1 do
     ListBox1.Items.Add(FList[I]);
     clear_grid;
     edit6.SetFocus;
  end;
end;

procedure TForm1.Edit7Change(Sender: TObject);
var
I: Integer;
S: String;
begin
ListBox2.Items.BeginUpdate;
try
  ListBox2.Clear;
  if (Edit7.GetTextLen > 0) and (trim(edit7.text)<>'') then
  begin
    S := Edit7.Text;
    for I := 0 to FList_SNES.Count - 1 do begin
      if AnsiContainsText(FList_SNES[I], S) then
        ListBox2.Items.Add(FList_SNES[I]);
    end;
  end
  else
  begin
    for I := 0 to FList_SNES.Count - 1 do
    ListBox2.Items.Add(FList_SNES[I]);
    end;
finally
  ListBox2.Items.EndUpdate;
  statusbar2.SimpleText:=inttostr(listbox2.Items.count);
end;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
  if (Key = #27) then
  begin
    edit7.Text:='';
    listbox2.Clear;
     for I := 0 to FList_SNES.Count - 1 do
     ListBox2.Items.Add(FList_SNES[I]);
     clear_grid;
     edit7.SetFocus;
  end;
end;

procedure TForm1.Edit8Change(Sender: TObject);
var
I: Integer;
S: String;
begin
ListBox3.Items.BeginUpdate;
try
  ListBox3.Clear;
  if (Edit8.GetTextLen > 0) and (trim(edit8.text)<>'') then
  begin
    S := Edit8.Text;
    for I := 0 to FList_Sega.Count - 1 do begin
      if AnsiContainsText(FList_Sega[I], S) then
        ListBox3.Items.Add(FList_Sega[I]);
    end;
  end
  else
  begin
    for I := 0 to FList_Sega.Count - 1 do
    ListBox3.Items.Add(FList_Sega[I]);
    end;
finally
  ListBox3.Items.EndUpdate;
  statusbar3.SimpleText:=inttostr(listbox3.Items.count);
end;
end;

procedure TForm1.Edit8KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
  if (Key = #27) then
  begin
    edit8.Text:='';
    listbox3.Clear;
     for I := 0 to FList_Sega.Count - 1 do
     ListBox3.Items.Add(FList_Sega[I]);
     clear_grid;
     edit8.SetFocus;
  end;
end;

procedure TForm1.Edit9Change(Sender: TObject);
var
I: Integer;
S: String;
begin
ListBox4.Items.BeginUpdate;
try
ListBox4.Clear;
if (Edit9.GetTextLen > 0) and (trim(edit9.text)<>'') then
begin
  S := Edit9.Text;
  for I := 0 to FList_N64.Count - 1 do begin
    if AnsiContainsText(FList_N64[I], S) then
      ListBox4.Items.Add(FList_N64[I]);
  end;
end
else
begin
  for I := 0 to FList_N64.Count - 1 do
  ListBox4.Items.Add(FList_N64[I]);
  end;
finally
ListBox4.Items.EndUpdate;
statusbar4.SimpleText:=inttostr(listbox4.Items.count);
end;
end;

procedure TForm1.Edit9KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
  if (Key = #27) then
  begin
    edit9.Text:='';
    listbox4.Clear;
     for I := 0 to FList_N64.Count - 1 do
     ListBox4.Items.Add(FList_N64[I]);
     clear_grid;
     edit9.SetFocus;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  XPathResult.Free;

  Xml.Free;
  Xml_SNES.Free;
  Xml_Sega.Free;
  XML_N64.Free;
  XML_GBA.Free;

  FList.Free;
  FList_SNES.Free;
  FList_Sega.Free;
  FList_N64.Free;
  FList_GBA.Free;

  FList_2.Free;
end;

procedure populate_games(filename: string; Target_Listbox: TListbox);
var i, size: integer;
temp_list: TStringList;
begin
with form1 do
begin
  temp_list := TStringList.Create;
  target_listbox.clear;
  temp_list.LoadFromFile(filename);
  for i:=0 to temp_list.Count-1 do
  if leftstr(trim(temp_list[i]),5)='<game' then
  if target_listbox.Items.IndexOf(stringsreplace(trim(temp_list[i]),['<game name="','">','&amp;'],['','','&'], [rfReplaceAll]))<0 then
  target_listbox.Items.add(stringsreplace(trim(temp_list[i]),['<game name="','">','&amp;'],['','','&'], [rfReplaceAll]));
  temp_list.free;
end;
end;

procedure populate_nes_games(filename: string; Target_Listbox: TListbox);
var i, size: integer;
temp_list: TStringList;
temp_name: string;
begin
with form1 do
begin
  temp_list := TStringList.Create;
  target_listbox.clear;
  temp_list.LoadFromFile(filename);
  for i:=0 to temp_list.Count-1 do
  if leftstr(trim(temp_list[i]),5)='<game' then
  begin
  //showmessage(copy(trim(temp_list[i]),13,npos('"',trim(temp_list[i]),1)-13));
  temp_name:=stringsreplace(extractdelimited(2,trim(temp_list[i]),['"']),['&apos;','&amp;'],['''','&'],[rfReplaceAll]);
  if target_listbox.Items.IndexOf(temp_name)<0 then
  target_listbox.Items.add(temp_name);
  end;
  temp_list.free;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i : integer;
gamelist : TFPList;
begin

  if (ParamCount>0) and (ParamStr(1)='-j') then
  begin
  //showmessage(ParamStr(1));
  games_file_nes := 'NesCarts_J.xml';
  games_file_snes := 'SnesCarts_J.xml';
  games_file_sega := 'SegaCarts_J.xml';
  games_file_N64 := 'N64Carts_J.xml';
  games_file_GBA := 'GBACarts_J.xml';
  games_file_GB := 'GBCarts_J.xml';
  end;

  FList := TStringList.Create;
  FList_2 := TStringList.Create;
  FList_SNES := TStringList.Create;
  FList_Sega := TStringList.Create;
  FList_N64 := TStringList.Create;
  FList_GBA := TStringList.Create;
  FList_GB := TStringList.Create;

  ReadXMLFile(Xml, games_file_nes);
  populate_nes_games(games_file_nes, listbox1);

  ReadXMLFile(Xml_SNES, games_file_snes);
  populate_games(games_file_snes, listbox2);

  ReadXMLFile(Xml_Sega, games_file_sega);
  populate_games(games_file_sega, listbox3);

  ReadXMLFile(Xml_N64, games_file_N64);
  populate_games(games_file_N64, listbox4);

  ReadXMLFile(Xml_GBA, games_file_GBA);
  populate_games(games_file_GBA, listbox5);

  ReadXMLFile(Xml_GB, games_file_GB);
  populate_games(games_file_GB, listbox6);

  FList.Assign(ListBox1.Items);
  FList_SNES.Assign(ListBox2.Items);
  FList_Sega.Assign(ListBox3.Items);
  FList_N64.Assign(ListBox4.Items);
  FList_GBA.Assign(ListBox5.Items);
  FList_GB.Assign(ListBox6.Items);
  FList_2.Assign(Combobox1.Items);

  statusbar1.SimpleText:=inttostr(listbox1.Items.count);
  statusbar2.SimpleText:=inttostr(listbox2.Items.count);
  statusbar3.SimpleText:=inttostr(listbox3.Items.count);
  statusbar4.SimpleText:=inttostr(listbox4.Items.count);
  statusbar5.SimpleText:=inttostr(listbox5.Items.count);
  statusbar6.SimpleText:=inttostr(listbox6.Items.count);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   //populate_games;
end;

procedure TForm1.ListBox1SelectionChange(Sender: TObject; User: boolean);
var
i, j: integer;
game_title: string;
system_count: integer;
games_count: integer;
begin
  progressbar1.Position:=0;
  if listbox1.SelCount=1 then
  begin
    clear_grid;
    game_title:=listbox1.Items[listbox1.ItemIndex];
    games_count:=strtoint(String(EvaluateXPathExpression('count(//game[@name="'+game_title+'"])',Xml.DocumentElement).AsText));
	progressbar1.Position:=progressbar1.Position+10;
    combobox4.clear;
    for i:=1 to games_count do
    begin
    combobox4.Items.add('Game Version ' + inttostr(i)+ ' ('+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']/cartridge[1]/@system',Xml.DocumentElement).AsText)+' - '+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']//@region',Xml.DocumentElement).AsText)+')');
    combobox4.ItemIndex:=0;
    system_count:=strtoint(String(EvaluateXPathExpression('count(//game[@name="'+game_title+'"]['+inttostr(combobox4.ItemIndex+1)+']/cartridge)',Xml.DocumentElement).AsText))+1;
	progressbar1.Position:=progressbar1.Position+10;
    end;
    stringgrid1.ColCount:=system_count;
    begin
    stringgrid1.Cells[1,0]:=game_title;
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/@system',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//@altname',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//@publisher',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//@developer',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//@region',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,6]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/@date',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,7]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//@type',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,8]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//@mapper',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,9]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//chip//@type',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,10]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//prg//@size',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,11]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//chr//@size',Xml.DocumentElement).AsText);
    	progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,12]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//vram//@size',Xml.DocumentElement).AsText);
        progressbar1.Position:=progressbar1.Position+10;
    stringgrid1.Cells[1,13]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//pad//@h',Xml.DocumentElement).AsText);
    	progressbar1.Position:=progressbar1.max;
    stringgrid1.Cells[1,14]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]/cartridge[1]/board[1]//pad//@v',Xml.DocumentElement).AsText);

  end;
  if combobox4.Items.Count=1 then combobox4.Enabled:=false else combobox4.Enabled:=true;
  end;
end;

procedure TForm1.ListBox2KeyPress(Sender: TObject; var Key: char);
  var i: integer;
begin
  if (Key = #27) then
  begin
    edit7.Text:='';
    listbox2.Clear;
     for I := 0 to FList_SNES.Count - 1 do
     ListBox2.Items.Add(FList_SNES[I]);
     clear_grid;
     edit7.SetFocus;
  end;
end;

procedure TForm1.ListBox2SelectionChange(Sender: TObject; User: boolean);
var
i, j: integer;
game_title: string;
system_count: integer;
games_count: integer;
begin
  progressbar2.Position:=0;
  if listbox2.SelCount=1 then
  begin
    clear_grid;
    game_title:=listbox2.Items[listbox2.ItemIndex];
    games_count:=strtoint((EvaluateXPathExpression('count(//game[@name="'+game_title+'"])',Xml_SNES.DocumentElement).AsText));
    progressbar2.Position:=progressbar2.Position+10;
    combobox5.clear;
    for i:=1 to games_count do
    begin
    combobox5.Items.add('Game Version ' + inttostr(i)+ ' ('+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']//region',Xml_SNES.DocumentElement).AsText)+')');
    end;
    combobox5.ItemIndex:=0;
    progressbar2.Position:=progressbar2.Position+10;

    begin
    stringgrid2.Cells[1,0]:=listbox2.Items[listbox2.ItemIndex];
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//internal',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//bank',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//sram',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//chips',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//size',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,6]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//video',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.Position+10;
    stringgrid2.Cells[1,7]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//region',Xml_SNES.DocumentElement).AsText);
        progressbar2.Position:=progressbar2.max;
    stringgrid2.Cells[1,8]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//speed',Xml_SNES.DocumentElement).AsText);
  end;
  if combobox5.Items.Count=1 then combobox5.Enabled:=false else combobox5.Enabled:=true;
  end;
end;

procedure TForm1.ListBox3KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
if (Key = #27) then
begin
  edit8.Text:='';
  listbox3.Clear;
   for I := 0 to FList_Sega.Count - 1 do
   ListBox3.Items.Add(FList_Sega[I]);
   clear_grid;
   edit8.SetFocus;
end;
end;

procedure TForm1.ListBox3SelectionChange(Sender: TObject; User: boolean);
var
i, j: integer;
game_title: string;
system_count: integer;
games_count: integer;
begin
  progressbar3.Position:=0;
  if listbox3.SelCount=1 then
  begin
    clear_grid;
    game_title:=listbox3.Items[listbox3.ItemIndex];
    games_count:=strtoint(String(EvaluateXPathExpression('count(//game[@name="'+game_title+'"])',Xml_Sega.DocumentElement).AsText));
	progressbar3.Position:=progressbar3.Position+10;
    combobox6.clear;
    for i:=1 to games_count do
    begin
    combobox6.Items.add('Game Version ' + inttostr(i)+ ' ('+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']//region',Xml_Sega.DocumentElement).AsText)+')');
    combobox6.ItemIndex:=0;
    progressbar3.Position:=progressbar3.Position+30;
    end;
    begin
    stringgrid3.Cells[1,0]:=game_title;
        progressbar3.Position:=progressbar3.Position+30;
    stringgrid3.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//publisher',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.Position+30;
    stringgrid3.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//developer',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.Position+10;
    stringgrid3.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//date',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.Position+10;
    stringgrid3.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//region',Xml_Sega.DocumentElement).AsText);
        progressbar3.Position:=progressbar3.max;
    stringgrid3.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//size',Xml_Sega.DocumentElement).AsText);
  end;
  if combobox6.Items.Count=1 then combobox6.Enabled:=false else combobox6.Enabled:=true;
  end;
end;

procedure TForm1.ListBox4KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
if (Key = #27) then
begin
  edit9.Text:='';
  listbox4.Clear;
   for I := 0 to FList_N64.Count - 1 do
   ListBox4.Items.Add(FList_N64[I]);
   clear_grid;
   edit9.SetFocus;
end;
end;

procedure TForm1.ListBox4SelectionChange(Sender: TObject; User: boolean);
var
i, j: integer;
game_title: string;
system_count: integer;
games_count: integer;
begin
  progressbar4.Position:=0;
  if listbox4.SelCount=1 then
  begin
    clear_grid;
    game_title:=listbox4.Items[listbox4.ItemIndex];
    games_count:=strtoint(String(EvaluateXPathExpression('count(//game[@name="'+game_title+'"])',Xml_N64.DocumentElement).AsText));
	progressbar4.Position:=progressbar4.Position+10;
    combobox7.clear;
    for i:=1 to games_count do
    begin
    combobox7.Items.add('Game Version ' + inttostr(i)+ ' ('+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']//region',Xml_N64.DocumentElement).AsText)+')');
    combobox7.ItemIndex:=0;
    progressbar4.Position:=progressbar4.Position+30;
    end;
    begin
    stringgrid4.Cells[1,0]:=game_title;
        progressbar4.Position:=progressbar4.Position+30;
    stringgrid4.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//publisher',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.Position+30;
    stringgrid4.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//developer',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.Position+10;
    stringgrid4.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//date',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.Position+10;
    stringgrid4.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//region',Xml_N64.DocumentElement).AsText);
        progressbar4.Position:=progressbar4.max;
    stringgrid4.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//size',Xml_N64.DocumentElement).AsText);
  end;
  if combobox7.Items.Count=1 then combobox7.Enabled:=false else combobox7.Enabled:=true;
  end;
end;

procedure TForm1.ListBox5KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
if (Key = #27) then
begin
  edit10.Text:='';
  listbox5.Clear;
   for I := 0 to FList_GBA.Count - 1 do
   ListBox5.Items.Add(FList_GBA[I]);
   clear_grid;
   edit10.SetFocus;
end;
end;

procedure TForm1.ListBox5SelectionChange(Sender: TObject; User: boolean);
var
i, j: integer;
game_title: string;
system_count: integer;
games_count: integer;
begin
  progressbar5.Position:=0;
  if listbox5.SelCount=1 then
  begin
    clear_grid;
    game_title:=listbox5.Items[listbox5.ItemIndex];
    games_count:=strtoint(String(EvaluateXPathExpression('count(//game[@name="'+game_title+'"])',Xml_GBA.DocumentElement).AsText));
	progressbar5.Position:=progressbar5.Position+10;
    combobox8.clear;
    for i:=1 to games_count do
    begin
    combobox8.Items.add('Game Version ' + inttostr(i)+ ' ('+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']//region',Xml_GBA.DocumentElement).AsText)+')');
    combobox8.ItemIndex:=0;
    progressbar5.Position:=progressbar5.Position+30;
    end;
    begin
    stringgrid5.Cells[1,0]:=game_title;
        progressbar5.Position:=progressbar5.Position+30;
    stringgrid5.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//publisher',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.Position+30;
    stringgrid5.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//developer',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//date',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//region',Xml_GBA.DocumentElement).AsText);
	progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//size',Xml_GBA.DocumentElement).AsText);
    	progressbar5.Position:=progressbar5.Position+10;
    stringgrid5.Cells[1,6]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//type',Xml_GBA.DocumentElement).AsText);
        progressbar5.Position:=progressbar5.max;
    stringgrid5.Cells[1,7]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//id',Xml_GBA.DocumentElement).AsText);
  end;
  if combobox8.Items.Count=1 then combobox8.Enabled:=false else combobox8.Enabled:=true;
  end;
end;

procedure TForm1.ListBox6KeyPress(Sender: TObject; var Key: char);
var i: integer;
begin
if (Key = #27) then
begin
  edit11.Text:='';
  listbox6.Clear;
   for I := 0 to FList_GB.Count - 1 do
   ListBox6.Items.Add(FList_GB[I]);
   clear_grid;
   edit11.SetFocus;
end;
end;

procedure TForm1.ListBox6SelectionChange(Sender: TObject; User: boolean);
var
i, j: integer;
game_title: string;
system_count: integer;
games_count: integer;
begin
  progressbar6.Position:=0;
  if listbox6.SelCount=1 then
  begin
    clear_grid;
    game_title:=listbox6.Items[listbox6.ItemIndex];
    games_count:=strtoint(String(EvaluateXPathExpression('count(//game[@name="'+game_title+'"])',Xml_GB.DocumentElement).AsText));
	progressbar6.Position:=progressbar6.Position+10;
    combobox9.clear;
    for i:=1 to games_count do
    begin
    combobox9.Items.add('Game Version ' + inttostr(i)+ ' ('+
    String(EvaluateXPathExpression('//game[@name="'+game_title+'"]['+inttostr(i)+']//region',Xml_GB.DocumentElement).AsText)+')');
    combobox9.ItemIndex:=0;
    progressbar6.Position:=progressbar6.Position+30;
    end;
    begin
    stringgrid6.Cells[1,0]:=game_title;
        progressbar6.Position:=progressbar6.Position+30;
    stringgrid6.Cells[1,1]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//internal',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.Position+30;
    stringgrid6.Cells[1,2]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//publisher',Xml_GB.DocumentElement).AsText);
	progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,3]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//rom',Xml_GB.DocumentElement).AsText);
    	progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,4]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//ram',Xml_GB.DocumentElement).AsText);
    	progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,5]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//type',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.Position+10;
    stringgrid6.Cells[1,6]:=String(EvaluateXPathExpression('//game[@name="'+game_title+'"][1]//region',Xml_GB.DocumentElement).AsText);
        progressbar6.Position:=progressbar6.max;
    end;
  if combobox9.Items.Count=1 then combobox9.Enabled:=false else combobox9.Enabled:=true;
  end;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin

end;

end.

