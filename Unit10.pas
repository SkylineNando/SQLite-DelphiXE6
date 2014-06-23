unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DbxSqlite, Data.FMTBcd,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TForm10 = class(TForm)
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1NOME: TWideStringField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1NOME: TWideStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
ClientDataSet1.Insert;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
ClientDataSet1.Edit;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
ClientDataSet1.Post;
ClientDataSet1.ApplyUpdates(0);
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
ClientDataSet1.Cancel;
end;

procedure TForm10.Button5Click(Sender: TObject);
begin
ClientDataSet1.Delete;
ClientDataSet1.ApplyUpdates(0);
end;

procedure TForm10.Button6Click(Sender: TObject);
begin
Close;
end;

end.
