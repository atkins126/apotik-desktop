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
    dsUser: TDataSource;
    qryUserid: TAutoIncField;
    qryUsernama: TStringField;
    qryUserusername: TStringField;
    qryUserpassword: TStringField;
    qryUserrole: TStringField;
    qryListPenjualan: TADOQuery;
    dsListPenjualan: TDataSource;
    qryListPenjualanid_pelanggan: TAutoIncField;
    qryListPenjualanjenis_pelanggan: TStringField;
    qryListPenjualanid_penjualan: TAutoIncField;
    qryListPenjualanno_faktur: TStringField;
    qryListPenjualantgl_penjualan: TDateTimeField;
    qryListPenjualanjumlah_item: TIntegerField;
    qryListPenjualantotal: TFloatField;
    qryListPenjualanstatus: TStringField;
    qryListPenjualantgl_bayar: TDateTimeField;
    qryListPenjualanid_user: TAutoIncField;
    qryListPenjualannama: TStringField;
    qryListPenjualanrole: TStringField;
    qryRelasiPenjualanid_penjualan: TAutoIncField;
    qryRelasiPenjualanno_faktur: TStringField;
    qryRelasiPenjualantgl_penjualan: TDateTimeField;
    qryRelasiPenjualanjumlah_item: TIntegerField;
    qryRelasiPenjualantotal: TFloatField;
    qryRelasiPenjualanid_detail_penjualan: TAutoIncField;
    qryRelasiPenjualanobat_id: TIntegerField;
    qryRelasiPenjualanjumlah_jual: TIntegerField;
    qryRelasiPenjualanharga_jual: TIntegerField;
    qryRelasiPenjualankode: TStringField;
    qryRelasiPenjualanbarcode: TStringField;
    qryRelasiPenjualannama_obat: TStringField;
    qryRelasiPenjualantgl_obat: TDateField;
    qryRelasiPenjualantgl_exp: TDateField;
    qryRelasiPenjualanjenis: TStringField;
    qryRelasiPenjualansatuan: TStringField;
    qryRelasiPembelianno_faktur_supplier: TStringField;
    qryObatRelasistatus: TStringField;
    qryLaporanStokid: TIntegerField;
    qryLaporanStokkode: TStringField;
    qryLaporanStokbarcode: TStringField;
    qryLaporanStoknama_obat: TStringField;
    qryLaporanStokkode_jenis: TIntegerField;
    qryLaporanStokkode_satuan: TIntegerField;
    qryLaporanStoktgl_obat: TDateField;
    qryLaporanStoktgl_exp: TDateField;
    qryLaporanStokstatus: TStringField;
    qryLaporanStokstok: TIntegerField;
    qryLaporanStokid_1: TIntegerField;
    qryLaporanStokkode_1: TStringField;
    qryLaporanStoksatuan: TStringField;
    qryLaporanStokid_2: TIntegerField;
    qryLaporanStokobat_id: TIntegerField;
    qryLaporanStokharga_jual: TFloatField;
    qryLaporanStokharga_beli_terakhir: TIntegerField;
    qryLaporanStoksupplier: TStringField;
    qryLaporanStoksatuan_1: TStringField;
    qryLaporanStokjenis: TStringField;
    qryLaporanStokcreated_at: TDateTimeField;
    qryRetur: TADOQuery;
    dsRetur: TDataSource;
    qryRelasiReturObat: TADOQuery;
    dsRelasiReturObat: TDataSource;
    qryStokalasan: TStringField;
    qryListRetur: TADOQuery;
    dsListRetur: TDataSource;
    qryDetailRetur: TADOQuery;
    dsDetailRetur: TDataSource;
    qryDetailReturid: TAutoIncField;
    qryDetailReturkode: TStringField;
    qryDetailReturtgl_retur: TDateField;
    qryDetailReturfaktur_penjualan: TStringField;
    qryDetailReturjenis_retur: TStringField;
    qryDetailReturstatus: TStringField;
    qryDetailReturid_1: TAutoIncField;
    qryDetailReturno_faktur: TStringField;
    qryDetailReturobat_id: TIntegerField;
    qryDetailReturjumlah: TIntegerField;
    qryDetailReturharga: TFloatField;
    qryDetailReturketerangan: TStringField;
    qryDetailReturalasan: TStringField;
    qryDetailReturcreated_at: TDateTimeField;
    qryDetailReturid_2: TAutoIncField;
    qryDetailReturkode_1: TStringField;
    qryDetailReturbarcode: TStringField;
    qryDetailReturnama_obat: TStringField;
    qryDetailReturkode_jenis: TIntegerField;
    qryDetailReturkode_satuan: TIntegerField;
    qryDetailReturtgl_obat: TDateField;
    qryDetailReturtgl_exp: TDateField;
    qryDetailReturstatus_1: TStringField;
    qryDetailReturstok: TIntegerField;
    qryDashObat: TADOQuery;
    qryDetailPenjualanstatus: TStringField;
    qryRelasiPenjualancatatan: TStringField;
    qryDetailPenjualancatatan: TStringField;
    qryLabaPenjualan: TADOQuery;
    dsLabaPenjualan: TDataSource;
    qryDashExp: TADOQuery;
    qryHarga: TADOQuery;
    qryRelasiSetHargaharga_jual_grosir: TFloatField;
    qryRelasiSetHargaqty_max_grosir: TIntegerField;
    qryLabaPenjualanGrosir: TADOQuery;
    dsLabaPenjualanGrosir: TDataSource;
    qryLabaPenjualankode: TStringField;
    qryLabaPenjualannama_obat: TStringField;
    qryLabaPenjualanharga_beli_terakhir: TIntegerField;
    qryLabaPenjualanharga_jual: TIntegerField;
    qryLabaPenjualanjmlItemJual: TBCDField;
    qryLabaPenjualantotal_jual: TBCDField;
    qryLabaPenjualanlaba: TBCDField;
    qryLabaPenjualanjenis_harga: TStringField;
    qryLabaPenjualanGrosirkode: TStringField;
    qryLabaPenjualanGrosirnama_obat: TStringField;
    qryLabaPenjualanGrosirharga_beli_terakhir: TIntegerField;
    qryLabaPenjualanGrosirharga_jual: TIntegerField;
    qryLabaPenjualanGrosirjmlItemJual: TBCDField;
    qryLabaPenjualanGrosirtotal_jual: TBCDField;
    qryLabaPenjualanGrosirlaba: TBCDField;
    qryLabaPenjualanGrosirjenis_harga: TStringField;
    qryDashListObat: TADOQuery;
    qryDashhObat: TADOQuery;
    qryDashSupplier: TADOQuery;
    dsDashListObat: TDataSource;
    qryDashListObatid: TIntegerField;
    qryDashListObatkodeObat: TStringField;
    qryDashListObatbarcode: TStringField;
    qryDashListObatnama_obat: TStringField;
    qryDashListObatkode_jenis: TIntegerField;
    qryDashListObatkode_satuan: TIntegerField;
    qryDashListObatstok: TIntegerField;
    qryDashListObatstatus: TStringField;
    qryDashListObatid_jenis: TIntegerField;
    qryDashListObatjenisKode: TStringField;
    qryDashListObatjenis: TStringField;
    qryDashListObatid_satuan: TIntegerField;
    qryDashListObatsatuanKode: TStringField;
    qryDashListObatsatuan: TStringField;
    qryDashListObatharga_jual: TFloatField;
    qryDashListObatharga_jual_grosir: TFloatField;
    qryDashListObatqty_max_grosir: TIntegerField;
    qryDashListExp: TADOQuery;
    dsDashListExp: TDataSource;
    qryDashReturPenjualan: TADOQuery;
    qryListDashReturPenjualan: TADOQuery;
    dsListDashReturPenjulan: TDataSource;
    qryListPembelianno_faktur_supplier: TStringField;
    qryListPembeliantgl_jatuh_tempo: TDateField;
    qryLaporanPembelianno_faktur_supplier: TStringField;
    qryLaporanPembeliantgl_jatuh_tempo: TDateField;
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
