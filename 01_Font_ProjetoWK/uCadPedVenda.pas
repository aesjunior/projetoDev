unit uCadPedVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Mask, RxToolEdit,
  RxCurrEdit, RxDBCurrEdit, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, RxDBCtrl, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Buttons;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    tbsCadastro: TTabSheet;
    DBGrid1: TDBGrid;
    tbsPedidoDados: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lookClientes: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    DBGridItens: TDBGrid;
    qryClientes: TFDQuery;
    DataBase: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    dsClientes: TDataSource;
    Label7: TLabel;
    lookItens: TDBLookupComboBox;
    Label9: TLabel;
    Label10: TLabel;
    dsProdutos: TDataSource;
    qryProdutos: TFDQuery;
    qryPedVenda: TFDQuery;
    dsPedVenda: TDataSource;
    EdDtIniRad: TDBDateEdit;
    DBEdit3: TDBEdit;
    btnAdicionaItens: TButton;
    btnSalvarPedido: TButton;
    Panel12: TPanel;
    PaBotao: TPanel;
    btInserir: TSpeedButton;
    btAlterar: TSpeedButton;
    btPesquisar: TSpeedButton;
    spSalvar: TSpeedButton;
    spCancelar: TSpeedButton;
    qryItens: TFDQuery;
    dsItens: TDataSource;
    qryAux: TFDQuery;
    edtCodProdu: TDBEdit;
    edtQuant: TDBEdit;
    edtVlUnit: TDBEdit;
    Label11: TLabel;
    vlTotalItem: TDBEdit;
    edtCodClie: TDBEdit;
    Panel1: TPanel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    qryPesquisa: TFDQuery;
    dsPesquisa: TDataSource;
    btExcluir: TSpeedButton;
    PaPesquisa: TPanel;
    Label8: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EdNroPedVenda: TEdit;
    edCodClie: TEdit;
    EdName: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btnAdicionaItensClick(Sender: TObject);
    procedure lookItensExit(Sender: TObject);
    procedure edtCodProduExit(Sender: TObject);
    procedure btnSalvarPedidoClick(Sender: TObject);
    procedure edtQuantExit(Sender: TObject);
    procedure qryItensNewRecord(DataSet: TDataSet);
    procedure spSalvarClick(Sender: TObject);
    procedure DBGridItensColEnter(Sender: TObject);
    procedure DBGridItensKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodClieExit(Sender: TObject);
    procedure lookClientesExit(Sender: TObject);
    procedure qryItensBeforePost(DataSet: TDataSet);
    procedure qryPedVendaBeforePost(DataSet: TDataSet);
    procedure qryPedVendaNewRecord(DataSet: TDataSet);
    procedure spCancelarClick(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    procedure ValidaProduto(CodProd: String);
    procedure CalcItemTotal;
    procedure HabilitaCamposItens(Adicionando: Boolean);
    procedure CalcTotalPedido;
    procedure ValidaCliente(codClie: String);
    procedure LiberaBtns(liberar: Boolean);
    procedure LiberaBtnsPrincipal(liberar: Boolean);
    procedure LiberaBtnsDados(liberar: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  UltNroItem: Integer;

implementation

{$R *.dfm}

procedure TForm2.btAlterarClick(Sender: TObject);
begin

  With qryPedVenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PEDVENDA WHERE NROPEDIDO =  :NROPEDIDO');
    ParamByName('NROPEDIDO').AsInteger := qryPesquisa.FieldByName('NROPEDIDO')
      .AsInteger;
    Open;
  end;

  qryPedVenda.Edit;

  With qryItens do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ITENS_PEDVENDA WHERE NROPEDIDO =  :NROPEDIDO');
    ParamByName('NROPEDIDO').AsInteger := qryPesquisa.FieldByName('NROPEDIDO')
      .AsInteger;
    Open;
  end;

  qryItens.Last;

  UltNroItem := qryItens.FieldByName('NROITEM').AsInteger + 1;

  PageControl1.ActivePage := tbsPedidoDados;

  tbsPedidoDados.Enabled := True;

  LiberaBtnsDados(True);

end;

procedure TForm2.btInserirClick(Sender: TObject);
begin

  With qryPedVenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PEDVENDA WHERE 1 = 3');
    Open;
  end;

  qryPedVenda.Append;

  With qryItens do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM ITENS_PEDVENDA WHERE 1 = 3');
    Open;
  end;

  UltNroItem := 1;

  PageControl1.ActivePage := tbsPedidoDados;
  tbsPedidoDados.Enabled := True;

  LiberaBtnsDados(True);

end;

procedure TForm2.btnAdicionaItensClick(Sender: TObject);
begin
  qryItens.Append;
  HabilitaCamposItens(True);

end;

procedure TForm2.btnSalvarPedidoClick(Sender: TObject);
begin

  try

    qryItens.Post;

    UltNroItem := qryItens.FieldByName('NROITEM').AsInteger;

    Inc(UltNroItem, 1);

    HabilitaCamposItens(False);

    CalcTotalPedido;

  except
    on E: Exception do
    begin
      DataBase.Rollback;
      MessageDlg('Erro No Item! Erro : ' + E.Message, mtError, [mbOk], 0);
      qryItens.Edit;
      Exit;
    end;
  end;

end;

procedure TForm2.btPesquisarClick(Sender: TObject);
begin

  with qryPesquisa do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PP.*,I.*,C.NOME,C.ESTADO,C.CIDADE   ');
    SQL.Add('FROM PEDVENDA PP,ITENS_PEDVENDA I,  CLIENTES C');
    SQL.Add('WHERE PP.NROPEDIDO IS NOT NULL ');
    SQL.Add('AND PP.NROPEDIDO = I.NROPEDIDO');
    SQL.Add('AND C.CODCLIE = PP.CODCLIE');

    if EdNroPedVenda.Text <> '' then
    begin
      SQL.Add('AND PP.NROPEDIDO = :NROPEDIDO');
      ParamByName('NROPEDIDO').AsString := EdNroPedVenda.Text
    end;

    if edCodClie.Text <> '' then
    begin
      SQL.Add('AND PP.CODCLIE = :CODCLIE');
      ParamByName('CODCLIE').AsString := edCodClie.Text
    end;

    If EdName.Text <> '' then
    begin
      SQL.Add('AND C.NOME LIKE :NOME ');
      ParamByName('NOME').AsString := '%' + upperCase(EdName.Text) + '%';
    end;

    Open;
  end;

  If qryPesquisa.IsEmpty then
    ShowMessage('Nenhum registro encontrado !!!');

end;

procedure TForm2.edtQuantExit(Sender: TObject);
begin

  if qryItens.FieldByName('QTD').AsInteger > 0 then
  begin
    CalcItemTotal;
  end

  else
  begin
    MessageDlg('Quantidade n?o pode ser ZERO!', mtWarning, [mbOk], 0);
    Exit;
    edtQuant.SetFocus;
  end;
end;

procedure TForm2.CalcTotalPedido;
begin

  qryPedVenda.FieldByName('VLTOTAL').AsFloat := 0;

  If (Not(qryItens.IsEmpty)) and (Not(qryItens.State in [dsInsert, dsEdit]))
  then
  begin
    qryItens.First;

    While Not qryItens.Eof do
    begin

      qryPedVenda.FieldByName('VLTOTAL').AsFloat :=
        qryPedVenda.FieldByName('VLTOTAL').AsFloat + qryItens.FieldByName
        ('vltotal').AsFloat;

      qryItens.Next;
    end;

  end;

end;

procedure TForm2.CalcItemTotal;
begin

  qryItens.FieldByName('VLTOTAL').AsFloat := qryItens.FieldByName('QTD').AsFloat
    * qryItens.FieldByName('VLUNIT').AsFloat;

end;

procedure TForm2.edtCodClieExit(Sender: TObject);
begin

  if edtCodClie.Text <> '' then
  begin
    ValidaCliente(edtCodClie.Text);
  end;

end;

procedure TForm2.ValidaCliente(codClie: String);
begin

  with qryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT COUNT(CODCLIE) as CODCLIE FROM CLIENTES WHERE CODCLIE = :CODCLIE');
    ParamByName('CODCLIE').AsString := codClie;
    Open
  end;

  if qryAux.FieldByName('CODCLIE').AsInteger > 0 then
  begin
    lookClientes.KeyValue := codClie
  end

  else
  begin
    MessageDlg('Cliente n?o encontrado!', mtWarning, [mbOk], 0);
    Exit;
    edtCodClie.SetFocus;
  end;

end;

procedure TForm2.DBGridItensColEnter(Sender: TObject);
begin

  If qryItens.State in [dsInsert, dsEdit] then
  begin
    if qryItens.FieldByName('QTD').AsInteger > 0 then
    begin
      CalcItemTotal;
    end

    else
    begin
      MessageDlg('Quantidade n?o pode ser ZERO!', mtWarning, [mbOk], 0);
      Exit;
      edtQuant.SetFocus;
    end;
  end;

end;

procedure TForm2.DBGridItensKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_DELETE then
  begin
    If (MessageDlg('Deseja Exluir o Item Selecionado ???', mtWarning,
      [mbYes, mbNo], 0) = mrYes) Then
    begin
      qryItens.Delete;
      HabilitaCamposItens(False);
      CalcTotalPedido;
    end;
  end

  else if Key = VK_RETURN then
  begin
    qryItens.Edit;
    HabilitaCamposItens(True);
  end;

end;

procedure TForm2.edtCodProduExit(Sender: TObject);
begin

  if edtCodProdu.Text <> '' then
  begin
    ValidaProduto(edtCodProdu.Text)
  end

end;

procedure TForm2.ValidaProduto(CodProd: String);
begin

  with qryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PRODUTOS WHERE CODPROD = :CODPROD');
    ParamByName('CODPROD').AsString := CodProd;
    Open;
  end;

  if qryAux.RecordCount = 0 then
  begin
    MessageDlg('Produto n?o cadastrado!', mtWarning, [mbOk], 0);
    lookItens.KeyValue := -1;
    Exit;
  end

  else
  begin

    lookItens.KeyValue := CodProd;

    qryItens.FieldByName('CODPROD').AsString :=
      qryAux.FieldByName('CODPROD').AsString;

    qryItens.FieldByName('QTD').AsInteger := 0;

    qryItens.FieldByName('VLUNIT').AsFloat :=
      qryAux.FieldByName('PRECOVEND').AsFloat;

    qryItens.FieldByName('VLTOTAL').AsFloat := 0;

  end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

  PageControl1.ActivePage := tbsCadastro;

  with qryClientes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM CLIENTES');
    Open;
  end;

  with qryProdutos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM PRODUTOS');
    Open;
  end;

  LiberaBtnsPrincipal(True);

  btPesquisarClick(Self);

end;

procedure TForm2.LiberaBtns(liberar: Boolean);
begin

end;

procedure TForm2.LiberaBtnsDados(liberar: Boolean);
begin
  btInserir.Enabled := False;
  btAlterar.Enabled := False;
  btPesquisar.Enabled := False;
  btExcluir.Enabled := False;

  spCancelar.Enabled := True;
  spSalvar.Enabled := True;
end;

procedure TForm2.LiberaBtnsPrincipal(liberar: Boolean);
begin

  btInserir.Enabled := True;
  btAlterar.Enabled := True;
  btPesquisar.Enabled := True;
  btExcluir.Enabled := True;

  spCancelar.Enabled := False;
  spSalvar.Enabled := False;

end;

procedure TForm2.lookClientesExit(Sender: TObject);
begin

  if lookClientes.Text <> '' then
  begin
    edtCodClie.Text := lookClientes.KeyValue;
  end;

end;

procedure TForm2.lookItensExit(Sender: TObject);
begin
  if lookItens.Text <> '' then
  begin
    edtCodProdu.Text := lookItens.KeyValue;
    ValidaProduto(edtCodProdu.Text)
  end
end;

procedure TForm2.HabilitaCamposItens(Adicionando: Boolean);
begin

  edtCodProdu.Enabled := Adicionando;
  edtQuant.Enabled := Adicionando;
  lookItens.Enabled := Adicionando;
  edtVlUnit.Enabled := Adicionando;
  btnSalvarPedido.Enabled := Adicionando;
  btnAdicionaItens.Enabled := not(Adicionando);

end;

procedure TForm2.qryItensBeforePost(DataSet: TDataSet);
begin

  if qryItens.FieldByName('QTD').AsInteger = 0 then
  begin
    MessageDlg('Quantidade n?o pode ser zero!', mtWarning, [mbOk], 0);
    abort;
  end;

  if qryItens.FieldByName('VLUNIT').AsInteger = 0 then
  begin
    MessageDlg('Preco Unitario n?o pode ser zero!', mtWarning, [mbOk], 0);
    abort;
  end;

end;

procedure TForm2.qryItensNewRecord(DataSet: TDataSet);
begin
  qryItens.FieldByName('NROPEDIDO').AsInteger :=
    qryPedVenda.FieldByName('NROPEDIDO').AsInteger;

  qryItens.FieldByName('NROITEM').AsInteger := UltNroItem;

end;

procedure TForm2.qryPedVendaBeforePost(DataSet: TDataSet);
begin

  if qryPedVenda.FieldByName('CODCLIE').AsString = '' then
  begin
    MessageDlg('Por favor preencha o cliente! !', mtWarning, [mbOk], 0);
    abort;
  end;

  if qryItens.IsEmpty then
  begin
    MessageDlg('Por favor preencha o Item! !', mtWarning, [mbOk], 0);
    abort;
  end;

end;

procedure TForm2.qryPedVendaNewRecord(DataSet: TDataSet);
begin

  with qryAux do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(NROPEDIDO) + 1 AS NROPEDIDO FROM PEDVENDA');
    Open;
  end;

  qryPedVenda.FieldByName('NROPEDIDO').AsInteger :=
    qryAux.FieldByName('NROPEDIDO').AsInteger;

  qryPedVenda.FieldByName('DTEMISSAO').AsDateTime := Date;

  qryPedVenda.FieldByName('VLTOTAL').AsInteger := 0;
end;

procedure TForm2.spCancelarClick(Sender: TObject);
begin

  If qryPedVenda.State in [dsInsert, dsEdit] then
    qryPedVenda.Cancel;

  If qryItens.State in [dsInsert, dsEdit] then
    qryItens.Cancel;

  PageControl1.ActivePage := tbsCadastro;

  tbsPedidoDados.Enabled := False;

  LiberaBtnsPrincipal(True);
end;

procedure TForm2.btExcluirClick(Sender: TObject);
begin

  If qryPesquisa.IsEmpty then
    Exit;

  If Not(MessageDlg('Deseja excluir este Pedido ?', mtConfirmation,
    [mbYes, mbNo], 0) = mrYes) then
    Exit;

  try
    DataBase.StartTransaction;

    with qryAux do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM PEDVENDA WHERE NROPEDIDO =  :NROPEDIDO');
      ParamByName('NROPEDIDO').AsInteger := qryPesquisa.FieldByName('NROPEDIDO')
        .AsInteger;
      ExecSql;

      SQL.Clear;
      SQL.Add('DELETE FROM ITENS_PEDVENDA WHERE NROPEDIDO =  :NROPEDIDO');
      ParamByName('NROPEDIDO').AsInteger := qryPesquisa.FieldByName('NROPEDIDO')
        .AsInteger;
      ExecSql;
    end;

    DataBase.Commit;

    btPesquisarClick(Self);

  except
    on E: Exception do
    begin
      DataBase.Rollback;
      MessageDlg('Erro ao Exclur o Pedido! Erro : ' + E.Message, mtError,
        [mbOk], 0);
    end;
  end;
end;

procedure TForm2.spSalvarClick(Sender: TObject);
begin

  try
    DataBase.StartTransaction;

    CalcTotalPedido;

    if qryPedVenda.State in [dsInsert, dsEdit] then
      qryPedVenda.Post;

    if qryItens.State in [dsInsert, dsEdit] then
      qryItens.Post;

    DataBase.Commit;

    btPesquisarClick(Self);

    UltNroItem := 0;

    PageControl1.ActivePage := tbsCadastro;

    tbsPedidoDados.Enabled := False;

    LiberaBtnsPrincipal(True);

  except
    on E: Exception do
    begin
      DataBase.Rollback;
      MessageDlg('Erro ao Gravar o Pedido! Erro : ' + E.Message, mtError,
        [mbOk], 0);
      qryPedVenda.Edit;
      Exit;
    end;
  end;
end;

end.
