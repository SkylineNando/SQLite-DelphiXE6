object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 269
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 262
    Top = 124
    Width = 306
    Height = 137
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 262
    Top = 24
    Width = 121
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 400
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 400
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 493
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 493
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 493
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = Button6Click
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'M'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Sqlite'
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver170.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver170.bpl'
      'FailIfMissing=True'
      
        'Database=C:\Users\Fernando Bueno\Desktop\BancodeDados\meuBanco.d' +
        'b'
      'HostName=local')
    Connected = True
    Left = 48
    Top = 24
  end
  object SQLDataSet1: TSQLDataSet
    Active = True
    CommandText = 'select * from "usuarios"'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 48
    Top = 80
    object SQLDataSet1NOME: TWideStringField
      FieldName = 'NOME'
      Size = 45
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 40
    Top = 136
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 40
    Top = 200
    object ClientDataSet1NOME: TWideStringField
      FieldName = 'NOME'
      Size = 45
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 120
    Top = 216
  end
end
