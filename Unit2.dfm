object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 150
  Width = 255
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql-4.1'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\UTS_MUHAMMADMALI' +
      'KAKBAR_22100472\libmysql.dll'
    Left = 24
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 88
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 160
    Top = 24
  end
end
