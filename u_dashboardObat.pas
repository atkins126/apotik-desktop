unit u_dashboardObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, jpeg;

type
  TfDashboardObat = class(TForm)
    img1: TImage;
    grp1: TGroupBox;
    lbl1: TLabel;
    grp2: TGroupBox;
    btnKeluar: TBitBtn;
    pnl1: TPanel;
    lblJumlah: TLabel;
    edtPencarian: TEdit;
    dbgrd1: TDBGrid;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPencarianKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDashboardObat: TfDashboardObat;

implementation

uses
  dataModule;

{$R *.dfm}

procedure konek;
begin
  with dm.qryDashListObat do
    begin
      Close;
      sql.Clear;
      SQL.Text := 'select b.id, b.kode as kodeObat, b.barcode, b.nama_obat, b.kode_jenis, b.kode_satuan, b.stok, b.status, a.id as id_jenis, a.kode as jenisKode,'+
                  ' a.jenis, c.id as id_satuan, c.kode as satuanKode, c.satuan, d.harga_jual, d.harga_jual_grosir, d.qty_max_grosir from tbl_jenis a left join tbl_obat b'+
                  ' on a.id = b.kode_jenis INNER join tbl_satuan c on c.id = b.kode_satuan LEFt JOIN tbl_harga_jual d ON d.obat_id = b.id'+
                  ' ORDER BY b.kode ASC';
      Open;
    end;
end;

procedure TfDashboardObat.btnKeluarClick(Sender: TObject);
begin
  close;
end;

procedure TfDashboardObat.FormShow(Sender: TObject);
begin
  konek;
  lblJumlah.Caption := 'Jumlah Obat : '+IntToStr(dm.qryDashListObat.RecordCount);

  edtPencarian.Clear;
  edtPencarian.SetFocus;
end;

procedure TfDashboardObat.edtPencarianKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 with dm.qryDashListObat do
    begin
      Close;
      sql.Clear;
      SQL.Text := 'select b.id, b.kode as kodeObat, b.barcode, b.nama_obat, b.kode_jenis, b.kode_satuan, b.stok, b.status, a.id as id_jenis, a.kode as jenisKode, '+
                  'a.jenis, c.id as id_satuan, c.kode as satuanKode, c.satuan, d.harga_jual, d.harga_jual_grosir, d.qty_max_grosir from tbl_jenis a left join tbl_obat b '+
                  'on a.id = b.kode_jenis INNER join tbl_satuan c on c.id = b.kode_satuan LEFt JOIN tbl_harga_jual d ON d.obat_id = b.id '+
                  'where b.nama_obat like ''%'+edtPencarian.Text+'%''';
      Open;
    end;
end;

end.
