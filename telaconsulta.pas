unit telaconsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.ComCtrls;

type
  Tfrm_consulta = class(TForm)
    MysqlconnectionConnection: TSQLConnection;
    OrdemservicoTable: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btn_atualizar: TButton;
    FDQuery2: TFDQuery;
    FDConnection2: TFDConnection;
    btn_motivo: TButton;
    btn_filial: TButton;
    lb_registros: TLabel;
    txt_data: TDateTimePicker;
    btn_data: TButton;
    txt_filial: TComboBox;
    txt_motivo: TEdit;
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_motivoClick(Sender: TObject);
    procedure btn_filialClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_dataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consulta: Tfrm_consulta;

implementation

{$R *.dfm}

procedure Tfrm_consulta.btn_atualizarClick(Sender: TObject);
begin
FDQuery2.Close;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('select * from ordemservico ');
FDQuery2.SQL.Add('order by idordemservico asc');
FDQuery2.Open;
lb_registros.Caption := 'Número de Registros retornados: ' + intToStr(FDQuery2.RecordCount);

end;

procedure Tfrm_consulta.btn_dataClick(Sender: TObject);
begin
FDQuery2.Close;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('select * from ordemservico ');
FDQuery2.SQL.Add('where dataagendamento = :dataagendamento' );
FDQuery2.ParamByName('dataagendamento').AsDate := txt_data.Date;
FDQuery2.Open;
lb_registros.Caption :=  'Número de Registros retornados: ' + intToStr(FDQuery2.RecordCount);
end;

procedure Tfrm_consulta.btn_filialClick(Sender: TObject);
begin
FDQuery2.Close;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('select * from ordemservico ');
FDQuery2.SQL.Add('where filial = :filial ');
FDQuery2.ParamByName('filial').asString := txt_filial.Text;
FDQuery2.Open;
lb_registros.Caption :=  'Número de Registros retornados: ' + intToStr(FDQuery2.RecordCount);
end;

procedure Tfrm_consulta.btn_motivoClick(Sender: TObject);
begin
FDQuery2.Close;
FDQuery2.SQL.Clear;
FDQuery2.SQL.Add('select * from ordemservico ');
FDQuery2.SQL.Add('where motivo_atendimento like ''% '+upperCase(txt_motivo.Text)+'%''');
FDQuery2.SQL.Add('order by idordemservico asc');
FDQuery2.Open;
lb_registros.Caption :=  'Número de Registros retornados: ' +  intToStr(FDQuery2.RecordCount);
end;

procedure Tfrm_consulta.FormActivate(Sender: TObject);
begin
FDQuery2.close;
FDQuery2.SQL.Clear;
end;

end.
