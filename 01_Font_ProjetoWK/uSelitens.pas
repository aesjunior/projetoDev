unit uSelitens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkins,
  dxSkinsDefaultPainters, cxGroupBox, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ToolWin, Vcl.Mask, RxToolEdit, RxCurrEdit, RxDBCurrEdit;

type
  TForm1 = class(TForm)
    cxGroupBox1: TcxGroupBox;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit2: TEdit;
    Label3: TLabel;
    DBCurrencyEdit1: TDBCurrencyEdit;
    Label6: TLabel;
    Label4: TLabel;
    DBCurrencyEdit2: TDBCurrencyEdit;
    tbBotao: TToolBar;
    teSalvar: TToolButton;
    teCancelar: TToolButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
