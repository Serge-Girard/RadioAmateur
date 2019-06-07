object Form45: TForm45
  Left = 0
  Top = 0
  Caption = 'Uniquement au Design'
  ClientHeight = 292
  ClientWidth = 485
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ConnectionSQlite: TFDConnection
    Params.Strings = (
      'Database=D:\Test\RadioAmateur\contacts.sdb'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 40
    Top = 184
  end
  object ContactsSQlite: TFDTable
    Connection = ConnectionSQlite
    FetchOptions.AssignedValues = [evMode, evItems]
    FetchOptions.Mode = fmManual
    FetchOptions.Items = [fiMeta]
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.LockWait = True
    UpdateOptions.RefreshMode = rmManual
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.UpdateTableName = 'TBLCONTACTS'
    TableName = 'TBLCONTACTS'
    Left = 152
    Top = 184
  end
  object ConnectionAccess: TFDConnection
    Params.Strings = (
      'Database=D:\Test\RadioAmateur\contacts.mdb'
      'DriverID=MSAcc')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveDataSetWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 384
    Top = 112
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    Rewind = False
    DataSet = FDTable1
    Left = 256
    Top = 32
  end
  object FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter
    DataSet = ContactsSQlite
    Left = 272
    Top = 184
  end
  object FDTable1: TFDTable
    Connection = ConnectionAccess
    UpdateOptions.UpdateTableName = 'tblContacts'
    TableName = 'tblContacts'
    Left = 144
    Top = 32
  end
end
