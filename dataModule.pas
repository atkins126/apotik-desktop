unit dataModule;

interface

uses
  SysUtils, Classes, XPMan, DB, ADODB, ExtCtrls;

type
  Tdm = class(TDataModule)
    XPManifest1: TXPManifest;
    con1: TADOConnection;
    dsJenis: TDataSource;
    qryJenis: TADOQuery;
    qryJenisid: TAutoIncField;
    qryJeniskode: TStringField;
    qryJenisjenis: TStringField;
    qryJenisketerangan: TMemoField;
    dsSatuan: TDataSource;
    qrySatuan: TADOQuery;
    qrySatuanid: TAutoIncField;
    qrySatuankode: TStringField;
    qrySatuansatuan: TStringField;
    qrySupplier: TADOQuery;
    dsSupplier: TDataSource;
    qrySupplierid: TAutoIncField;
    qrySupplierkode: TStringField;
    qrySuppliernama_supplier: TStringField;
    qrySupplieralamat_supplier: TMemoField;
    qrySuppliertelp_suplier: TStringField;
    qryObat: TADOQuery;
    dsObat: TDataSource;
    qryObatRelasi: TADOQuery;
    qryPembelian: TADOQuery;
    qryDetailPembelian: TADOQuery;
    qryRelasiPembelian: TADOQuery;
    dsRelasiPembelian: TDataSource;
    qryRelasiPembelianid_pembelian: TAutoIncField;
    qryRelasiPembelianno_faktur: TStringField;
    qryRelasiPembeliantgl_pembelian: TDateField;
    qryRelasiPembelianjumlah_item: TIntegerField;
    qryRelasiPembeliantotal: TFloatField;
    qryRelasiPembelianid_detail_pembelian: TAutoIncField;
    qryRelasiPembelianobat_id: TIntegerField;
    qryRelasiPembelianjumlah_beli: TIntegerField;
    qryRelasiPembelianharga_beli: TFloatField;
    qryRelasiPembeliankode: TStringField;
    qryRelasiPembelianbarcode: TStringField;
    qryRelasiPembeliannama_obat: TStringField;
    qryRelasiPembeliantgl_obat: TDateField;
    qryRelasiPembeliantgl_exp: TDateField;
    qryRelasiPembelianjenis: TStringField;
    qryRelasiPembeliansatuan: TStringField;
    qryObatRelasiid: TIntegerField;
    qryObatRelasikodeObat: TStringField;
    qryObatRelasibarcode: TStringField;
    qryObatRelasinama_obat: TStringField;
    qryObatRelasikode_jenis: TIntegerField;
    qryObatRelasikode_satuan: TIntegerField;
    qryObatRelasiid_jenis: TIntegerField;
    qryObatRelasijenisKode: TStringField;
    qryObatRelasijenis: TStringField;
    qryObatRelasiid_satuan: TIntegerField;
    qryObatRelasisatuanKode: TStringField;
    qryObatRelasisatuan: TStringField;
    qryListPembelian: TADOQuery;
    dsListPembelian: TDataSource;
    qryListPembelianid: TIntegerField;
    qryListPembeliankode: TStringField;
    qryListPembeliannama_supplier: TStringField;
    qryListPembelianalamat_supplier: TMemoField;
    qryListPembeliantelp_suplier: TStringField;
    qryListPembelianid_1: TIntegerField;
    qryListPembelianno_faktur: TStringField;
    qryListPembeliantgl_pembelian: TDateField;
    qryListPembeliansupplier_id: TIntegerField;
    qryListPembelianjumlah_item: TIntegerField;
    qryListPembeliantotal: TFloatField;
    qryListPembelianuser_id: TIntegerField;
    qryListPembelianstatus: TStringField;
    qryListPembeliantgl_pembayaran: TDateField;
    qryListPembelianid_2: TIntegerField;
    qryListPembeliannama: TStringField;
    qryListPembelianusername: TStringField;
    qryListPembelianpassword: TStringField;
    qryListPembelianrole: TStringField;
    qryPenjualan: TADOQuery;
    qryStok: TADOQuery;
    qryObatid: TAutoIncField;
    qryObatkode: TStringField;
    qryObatbarcode: TStringField;
    qryObatnama_obat: TStringField;
    qryObatkode_jenis: TIntegerField;
    qryObatkode_satuan: TIntegerField;
    qryObattgl_obat: TDateField;
    qryObattgl_exp: TDateField;
    qryObatstatus: TStringField;
    qryObatstok: TIntegerField;
    qryStokid: TAutoIncField;
    qryStokno_faktur: TStringField;
    qryStokobat_id: TIntegerField;
    qryStokjumlah: TIntegerField;
    qryStokharga: TFloatField;
    qryStokketerangan: TStringField;
    qryStokcreated_at: TDateTimeField;
    qrySetHarga: TADOQuery;
    qryRelasiSetHarga: TADOQuery;
    dsRelasiSetHarga: TDataSource;
    qryRelasiStok: TADOQuery;
    qryRelasiSetHargaid: TAutoIncField;
    qryRelasiSetHargaobat_id: TIntegerField;
    qryRelasiSetHargaharga_jual: TFloatField;
    qryRelasiSetHargaharga_beli_terakhir: TIntegerField;
    qryRelasiSetHargasupplier: TStringField;
    qryRelasiSetHargasatuan: TStringField;
    qryRelasiSetHargajenis: TStringField;
    qryRelasiSetHargacreated_at: TDateTimeField;
    qryRelasiSetHargaid_1: TAutoIncField;
    qryRelasiSetHargakode: TStringField;
    qryRelasiSetHargabarcode: TStringField;
    qryRelasiSetHarganama_obat: TStringField;
    qryRelasiSetHargakode_jenis: TIntegerField;
    qryRelasiSetHargakode_satuan: TIntegerField;
    qryRelasiSetHargatgl_obat: TDateField;
    qryRelasiSetHargatgl_exp: TDateField;
    qryRelasiSetHargastatus: TStringField;
    qryRelasiSetHargastok: TIntegerField;
    qryPelanggan: TADOQuery;
    dsPelanggan: TDataSource;
    qryPelangganid: TAutoIncField;
    qryPelangganjenis_pelanggan: TStringField;
    qryRelasiPenjualan: TADOQuery;
    dsRelasiPenjualan: TDataSource;
    qryDetailPenjualan: TADOQuery;
    qryDetailPenjualanid: TAutoIncField;
    qryDetailPenjualanpenjualan_id: TIntegerField;
    qryDetailPenjualanobat_id: TIntegerField;
    qryDetailPenjualanharga_jual: TIntegerField;
    qryDetailPenjualanjumlah_jual: TIntegerField;
    qryLaporanPembelian: TADOQuery;
    qryLaporanPenjualan: TADOQuery;
    qryLaporanStok: TADOQuery;
    qryLaporanItemLaris: TADOQuery;
    dsLaporanPembelian: TDataSource;
    dslaporanPenjualan: TDataSource;
    dsLaporanStok: TDataSource;
    dsLaporanItemLaris: TDataSource;
    qryLaporanPembelianid: TAutoIncField;
    qryLaporanPembelianno_faktur: TStringField;
    qryLaporanPembeliantgl_pembelian: TDateField;
    qryLaporanPembeliansupplier_id: TIntegerField;
    qryLaporanPembelianjumlah_item: TIntegerField;
    qryLaporanPembeliantotal: TFloatField;
    qryLaporanPembelianuser_id: TIntegerField;
    qryLaporanPembelianstatus: TStringField;
    qryLaporanPembeliantgl_pembayaran: TDateField;
    qryLaporanPembelianid_1: TAutoIncField;
    qryLaporanPembeliankode: TStringField;
    qryLaporanPembeliannama_supplier: TStringField;
    qryLaporanPembelianalamat_supplier: TMemoField;
    qryLaporanPembeliantelp_suplier: TStringField;
    qryObatRelasistok: TIntegerField;
    qryLaporanPenjualanid: TAutoIncField;
    qryLaporanPenjualanno_faktur: TStringField;
    qryLaporanPenjualantgl_penjualan: TDateTimeField;
    qryLaporanPenjualanid_pelanggan: TIntegerField;
    qryLaporanPenjualanjumlah_item: TIntegerField;
    qryLaporanPenjualantotal: TFloatField;
    qryLaporanPenjualanuser_id: TIntegerField;
    qryLaporanPenjualanstatus: TStringField;
    qryLaporanPenjualantgl_bayar: TDateTimeField;
    qryLaporanPenjualanid_1: TAutoIncField;
    qryLaporanPenjualanjenis_pelanggan: TStringField;
    qryTotalPenjualan: TADOQuery;
    qryTotalPembelian: TADOQuery;
    qrySetting: TADOQuery;
    qryUser: TADOQuery;
    procedure qryJenisketeranganGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qrySupplieralamat_supplierGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.qryJenisketeranganGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Text:= TField(Sender).AsString;
end;

procedure Tdm.qrySupplieralamat_supplierGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text:= TField(Sender).AsString;
end;

end.
