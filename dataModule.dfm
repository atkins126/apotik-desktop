object dm: Tdm
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 506
  Width = 527
  object XPManifest1: TXPManifest
    Left = 128
    Top = 32
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=apoti' +
      'k;Initial Catalog=db_apotik'
    LoginPrompt = False
    Left = 72
    Top = 32
  end
  object qryBarang: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_barang')
    Left = 40
    Top = 88
  end
  object dsBarang: TDataSource
    DataSet = qryBarang
    Left = 104
    Top = 88
  end
  object dsJenis: TDataSource
    DataSet = qryJenis
    Left = 96
    Top = 160
  end
  object qryJenis: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_jenis')
    Left = 48
    Top = 168
    object qryJenisid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryJeniskode: TStringField
      FieldName = 'kode'
    end
    object qryJenisjenis: TStringField
      FieldName = 'jenis'
      Size = 100
    end
    object qryJenisketerangan: TMemoField
      FieldName = 'keterangan'
      OnGetText = qryJenisketeranganGetText
      BlobType = ftMemo
    end
  end
  object dsSatuan: TDataSource
    DataSet = qrySatuan
    Left = 112
    Top = 224
  end
  object qrySatuan: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_satuan')
    Left = 64
    Top = 240
    object qrySatuanid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qrySatuankode: TStringField
      FieldName = 'kode'
    end
    object qrySatuansatuan: TStringField
      FieldName = 'satuan'
      Size = 100
    end
  end
  object qrySupplier: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tbl_supplier')
    Left = 56
    Top = 328
    object qrySupplierid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qrySupplierkode: TStringField
      FieldName = 'kode'
    end
    object qrySuppliernama_supplier: TStringField
      FieldName = 'nama_supplier'
      Size = 100
    end
    object qrySupplieralamat_supplier: TMemoField
      FieldName = 'alamat_supplier'
      OnGetText = qrySupplieralamat_supplierGetText
      BlobType = ftMemo
    end
    object qrySuppliertelp_suplier: TStringField
      FieldName = 'telp_suplier'
      Size = 15
    end
  end
  object dsSupplier: TDataSource
    DataSet = qrySupplier
    Left = 112
    Top = 336
  end
end
