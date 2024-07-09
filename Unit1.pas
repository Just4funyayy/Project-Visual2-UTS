unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if DataModule2.ZQuery1.Locate('Name',Edit1.Text,[]) then
  begin
    ShowMessage('Name satuan'+Edit1.Text+' Sudah Ada Dalam Sistem');
  end else
  begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('insert into satuan values(null,"'+Edit1.Text+'","'+Edit2.Text+'")');
  DataModule2.ZQuery1.ExecSQL;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from satuan');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil diSimpan!');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Nama satuan Tidak Boleh Kosong!');
  end else
  if Edit1.Text = DataModule2.ZQuery1.Fields[1].AsString then
  begin
    ShowMessage('Name satuan'+Edit1.Text+' Tidak Ada Perubahan');
  end else
  begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('update satuan set Name = "'+Edit1.Text+'", Diskripsi="'+Edit2.Text+'" where Id = "'+a+'"');
  DataModule2.ZQuery1.ExecSQL;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from satuan');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil diUpdate!');
  end;

end;

end.
