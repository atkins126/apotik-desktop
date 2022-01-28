program Apoik_app;

uses
  Forms,
  uForm in 'uForm.pas' {FMenu},
  dataModule in 'dataModule.pas' {dm: TDataModule},
  uJenisObat in 'uJenisObat.pas' {fJenisObat},
  uSatuan in 'uSatuan.pas' {FSatuan},
  uSupplier in 'uSupplier.pas' {Fsupplier},
  uObat in 'uObat.pas' {Fobat},
  uPenjualan in 'uPenjualan.pas' {Fpenjualan},
  uPembelian in 'uPembelian.pas' {fPembelian},
  uBantuObat in 'uBantuObat.pas' {fBantuObat},
  uPembayaranPembelian in 'uPembayaranPembelian.pas' {fPembayaranPembelian},
  uSetHarga in 'uSetHarga.pas' {fSetHarga},
  uBantuObatPenjualan in 'uBantuObatPenjualan.pas' {fBantuObatPenjualan},
  uBayar in 'uBayar.pas' {fBayar},
  uFormBayarPembelian in 'uFormBayarPembelian.pas' {fBayarPembelian},
  uListPenjualan in 'uListPenjualan.pas' {fListPenjualan},
  uPengguna in 'uPengguna.pas' {fPengguna},
  uSetting in 'uSetting.pas' {fSetting},
  uLogin in 'uLogin.pas' {fLogin},
  uMenuKasir in 'uMenuKasir.pas' {fMenuKasir},
  uListJualObat in 'uListJualObat.pas' {fLaporanPenjualan},
  uLaporanPembelian in 'uLaporanPembelian.pas' {fLaporanPembelian},
  uLaporanStok in 'uLaporanStok.pas' {fLaporanStok},
  uLaporanItemTerjual in 'uLaporanItemTerjual.pas' {fLaporanJumlahItemTerjual},
  uDetailPenjualan in 'uDetailPenjualan.pas' {fDetailPenjualan},
  uDetailPembelian in 'uDetailPembelian.pas' {fDetailPembelian},
  uReturn in 'uReturn.pas' {fReturn},
  uProsesRetur in 'uProsesRetur.pas' {fProsesRetur},
  u_confirmReturAll in 'u_confirmReturAll.pas' {fReturAll},
  uListReturPenjualan in 'uListReturPenjualan.pas' {fListReturPenjualan},
  uDetailReturPenjualan in 'uDetailReturPenjualan.pas' {fDetailReturPenjualan},
  u_bayarPenjualan in 'u_bayarPenjualan.pas' {fBayarPenjualan},
  u_labaPenjualan in 'u_labaPenjualan.pas' {fLabaPenjualan};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(TfReturn, fReturn);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TfJenisObat, fJenisObat);
  Application.CreateForm(TFSatuan, FSatuan);
  Application.CreateForm(TFsupplier, Fsupplier);
  Application.CreateForm(TFobat, Fobat);
  Application.CreateForm(TFpenjualan, Fpenjualan);
  Application.CreateForm(TfPembelian, fPembelian);
  Application.CreateForm(TfBantuObat, fBantuObat);
  Application.CreateForm(TfPembayaranPembelian, fPembayaranPembelian);
  Application.CreateForm(TfSetHarga, fSetHarga);
  Application.CreateForm(TfBantuObatPenjualan, fBantuObatPenjualan);
  Application.CreateForm(TfBayar, fBayar);
  Application.CreateForm(TfBayarPembelian, fBayarPembelian);
  Application.CreateForm(TfListPenjualan, fListPenjualan);
  Application.CreateForm(TfPengguna, fPengguna);
  Application.CreateForm(TfSetting, fSetting);
  Application.CreateForm(TfMenuKasir, fMenuKasir);
  Application.CreateForm(TfLaporanPenjualan, fLaporanPenjualan);
  Application.CreateForm(TfLaporanPembelian, fLaporanPembelian);
  Application.CreateForm(TfLaporanStok, fLaporanStok);
  Application.CreateForm(TfLaporanJumlahItemTerjual, fLaporanJumlahItemTerjual);
  Application.CreateForm(TfDetailPenjualan, fDetailPenjualan);
  Application.CreateForm(TfDetailPembelian, fDetailPembelian);
  Application.CreateForm(TfProsesRetur, fProsesRetur);
  Application.CreateForm(TfReturAll, fReturAll);
  Application.CreateForm(TfListReturPenjualan, fListReturPenjualan);
  Application.CreateForm(TfDetailReturPenjualan, fDetailReturPenjualan);
  Application.CreateForm(TfBayarPenjualan, fBayarPenjualan);
  Application.CreateForm(TfLabaPenjualan, fLabaPenjualan);
  Application.Run;
end.
