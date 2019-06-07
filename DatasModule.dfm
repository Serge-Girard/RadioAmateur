object Datas: TDatas
  OldCreateOrder = False
  Height = 427
  Width = 509
  object Connexion: TFDConnection
    Params.Strings = (
      'Database=contacts.sdb'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 48
    Top = 24
  end
  object QContacts: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = Connexion
    UpdateObject = UpdtContact
    SQL.Strings = (
      'select c.*,'
      '   CASE COALESCE(ZONE_CQ,'#39'-'#39') WHEN '
      '     '#39'-'#39'  THEN '#39#224' confirmer'#39
      '     ELSE  CASE  (SELECT MAX(ZONE_CQ) FROM '
      
        '                (SELECT ZONE_CQ FROM TBLDXCC WHERE PREFIXE=SUBST' +
        'R(C.INDICATIF,1,5)'
      '                 UNION'
      
        '             SELECT ZONE_CQ FROM TBLDXCC WHERE PREFIXE=SUBSTR(C.' +
        'INDICATIF,1,4)'
      '             UNION'
      
        '             SELECT ZONE_CQ FROM TBLDXCC WHERE PREFIXE=SUBSTR(C.' +
        'INDICATIF,1,3)'
      '             UNION '
      
        '             SELECT ZONE_CQ FROM TBLDXCC WHERE PREFIXE=SUBSTR(C.' +
        'INDICATIF,1,2)'
      '            )) '
      '           WHEN  ZONE_CQ THEN '#39'confirm'#233'e'#39
      '                 else '#39'Erreur'#39
      '           END       '
      '     END AS INFO'
      '              '
      'from TBLCONTACTS c')
    Left = 136
    Top = 24
  end
  object UpdtContact: TFDUpdateSQL
    Connection = Connexion
    Left = 216
    Top = 24
  end
  object QResume: TFDQuery
    ActiveStoredUsage = [auDesignTime]
    Connection = Connexion
    SQL.Strings = (
      'SELECT COUNT(ZONE_CQ) AS CQ FROM TBLCONTACTS'
      'WHERE ZONE_CQ IS NOT NULL AND TRIM(ZONE_CQ)<>'#39#39)
    Left = 48
    Top = 112
  end
end
