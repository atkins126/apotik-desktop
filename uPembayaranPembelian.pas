unit uPembayaranPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TfPembayaranPembelian = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    grp2: TGroupBox;
    dbgrd1: TDBGrid;
    edtpencarian: TEdit;
    btnPilih: TBitBtn;
    btnKeluar: TBitBtn;
    procedure btnKeluarClick(Sender: TObject);
    procedure edtpencarianKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPembayaranPembelian: TfPembayaranPembelian;

implementation

uses
  dataModule;

{$R *.dfm}

procedure konek;
begin
  with dm.qryListPembelian do
    begin
      DisableControls;
      Close;
      sql.Clear;
      SQL.Text := 'select * from tbl_supplier left join tbl_pembelian on tbl_pembelian.supplier_id = tbl_supplier.id inner join tbl_user on tbl_user.id = tbl_pembelian.user_id order by tbl_pembelian.id desc';
      Open;
      EnableControls;
    end;
end;

procedure TfPembayaranPembelian.btnKeluarClick(Sender: TObject);
begin
  close;
end;

procedure TfPembayaranPembelian.edtpencarianKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with dm.qryListPembelian do
    begin
      DisableControls;
      Close;
      sql.Clear;
      SQL.Text := 'select * from tbl_supplier left join tbl_pembelian on tbl_pembelian.supplier_id = tbl_supplier.id inner join '+
                  'tbl_user on tbl_user.id = tbl_pembelian.user_id where tbl_pembelian.no_faktur like ''%'+edtpencarian.Text+'%'' order by tbl_pembelian.id desc';
      Open;
      EnableControls;
    end;
end;

procedure TfPembayaranPembelian.FormCreate(Sender: TObject);
begin
  konek;
  edtpencarian.Clear;
end;

end.
