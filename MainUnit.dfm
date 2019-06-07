object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gestion des contacts'
  ClientHeight = 548
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 548
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitLeft = 184
    ExplicitTop = 159
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object BindNavigator2: TBindNavigator
        Left = 0
        Top = 475
        Width = 792
        Height = 45
        DataSource = BindSourceDB1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbRefresh]
        Align = alBottom
        Orientation = orHorizontal
        TabOrder = 0
        OnClick = BindNavigator2Click
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 51
        Width = 792
        Height = 424
        Align = alClient
        DataSource = DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMERO'
            Title.Caption = 'Num'#233'ro'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JOUR'
            Title.Caption = 'Jour'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DEBUT'
            Title.Caption = 'D'#233'but'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FIN'
            Title.Caption = 'Fin'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BANDE'
            Title.Caption = 'Bande'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDICATIF'
            Title.Caption = 'Indicatif'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_RST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'M_RST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODE'
            Title.Caption = 'Mode'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVATIONS'
            Title.Caption = 'Observations'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_QSL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'M_QSL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ZONE_CQ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INFO'
            Title.Caption = #233'tat'
            Visible = True
          end>
      end
      object PanelResume: TPanel
        Left = 0
        Top = 0
        Width = 792
        Height = 51
        Align = alTop
        Caption = 'PanelResume'
        ShowCaption = False
        TabOrder = 2
        object QZONEnumber: TLabel
          Left = 256
          Top = 8
          Width = 99
          Height = 13
          Caption = '20 Zones confirm'#233'es'
        end
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 96
          Height = 13
          Caption = 'Nombre de contacts'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 28
      object EtatCQ: TLabel
        Left = 232
        Top = 392
        Width = 54
        Height = 13
        Caption = #224' confirmer'
      end
      object Label1: TLabel
        Left = 22
        Top = 54
        Width = 37
        Height = 13
        Caption = 'Num'#233'ro'
      end
      object Label2: TLabel
        Left = 22
        Top = 91
        Width = 30
        Height = 13
        Caption = 'Bande'
      end
      object Label3: TLabel
        Left = 232
        Top = 91
        Width = 26
        Height = 13
        Caption = 'Mode'
      end
      object Label4: TLabel
        Left = 19
        Top = 267
        Width = 58
        Height = 13
        Caption = 'Force Signal'
      end
      object Label5: TLabel
        Left = 113
        Top = 245
        Width = 44
        Height = 13
        Caption = 'Emetteur'
      end
      object Label6: TLabel
        Left = 264
        Top = 245
        Width = 72
        Height = 13
        Caption = 'Correspondant'
      end
      object Label7: TLabel
        Left = 22
        Top = 344
        Width = 49
        Height = 13
        Caption = 'Desciption'
      end
      object Label8: TLabel
        Left = 21
        Top = 392
        Width = 42
        Height = 13
        Caption = 'Zone CQ'
      end
      object LblDate: TLabel
        Left = 21
        Top = 180
        Width = 23
        Height = 13
        Caption = 'Date'
      end
      object lblIndicatif: TLabel
        Left = 19
        Top = 135
        Width = 39
        Height = 13
        Caption = 'Indicatif'
      end
      object Bande: TEdit
        Left = 80
        Top = 88
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '14.015'
      end
      object chkBoxZoneConfirmee: TCheckBox
        Left = 79
        Top = 423
        Width = 97
        Height = 17
        Caption = 'Zone confirm'#233'e'
        TabOrder = 1
      end
      object chkM_QSL: TCheckBox
        Left = 114
        Top = 304
        Width = 80
        Height = 17
        Caption = 'M_QSL'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object chkSQSL: TCheckBox
        Left = 264
        Top = 304
        Width = 80
        Height = 17
        Caption = 'S_QSL'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 80
        Top = 341
        Width = 505
        Height = 21
        TabOrder = 4
        Text = 'Bulgarian Club Blagovestnik / Karlovo'
      end
      object HDebut: TDateTimePicker
        Left = 264
        Top = 176
        Width = 65
        Height = 21
        Format = 'hh:mm'
        Time = 0.543055555555555500
        Kind = dtkTime
        TabOrder = 5
      end
      object HFin: TDateTimePicker
        Left = 400
        Top = 176
        Width = 73
        Height = 21
        Format = 'hh:mm'
        Time = 0.543055555555555500
        Kind = dtkTime
        TabOrder = 6
      end
      object Indicatif: TEdit
        Left = 79
        Top = 132
        Width = 114
        Height = 21
        TabOrder = 7
        Text = 'LZ920MLC'
      end
      object Jour: TDateTimePicker
        Left = 79
        Top = 176
        Width = 114
        Height = 21
        Date = 43362.000000000000000000
        TabOrder = 8
      end
      object M_RST: TEdit
        Left = 264
        Top = 264
        Width = 81
        Height = 21
        TabOrder = 9
        Text = '599'
      end
      object Mode: TComboBox
        Left = 296
        Top = 88
        Width = 65
        Height = 21
        ItemIndex = 0
        TabOrder = 10
        Text = 'CW'
        Items.Strings = (
          'CW'
          'SSB')
      end
      object Numero: TEdit
        Left = 79
        Top = 51
        Width = 114
        Height = 21
        TabOrder = 11
        Text = '1'
      end
      object SRST: TEdit
        Left = 113
        Top = 264
        Width = 80
        Height = 21
        TabOrder = 12
        Text = '599'
      end
      object ZONE_CQ: TEdit
        Left = 80
        Top = 389
        Width = 121
        Height = 21
        TabOrder = 13
      end
      object BindNavigator1: TBindNavigator
        Left = 129
        Top = 468
        Width = 448
        Height = 49
        DataSource = BindSourceDB1
        VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
        Orientation = orHorizontal
        TabOrder = 14
        OnClick = BindNavigator1Click
      end
      object btnRetour: TButton
        Left = 2
        Top = 468
        Width = 87
        Height = 49
        Caption = 'Retour'
        TabOrder = 15
        OnClick = btnRetourClick
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Datas.QContacts
    Left = 440
    Top = 8
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = Datas.QContacts
    ScopeMappings = <>
    Left = 600
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 532
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'JOUR'
      Control = Jour
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'DEBUT'
      Control = HDebut
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'FIN'
      Control = HFin
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'INDICATIF'
      Control = Indicatif
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'NUMERO'
      Control = Numero
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'BANDE'
      Control = Bande
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'S_RST'
      Control = SRST
      Track = True
    end
    object LinkControlToField8: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'M_RST'
      Control = M_RST
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'MODE'
      Control = Mode
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField9: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'OBSERVATIONS'
      Control = Edit1
      Track = True
    end
    object LinkControlToField12: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'ZONE_CQ'
      Control = ZONE_CQ
      Track = True
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'INFO'
      Component = EtatCQ
      ComponentProperty = 'Caption'
    end
    object LinkControlToField13: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'S_QSL'
      Control = chkSQSL
      Track = True
      CustomFormat = 'IfThen(%s='#39'X'#39',True,False)'
      CustomParse = 'IfThen(True,'#39'X'#39','#39#39')'
    end
    object LinkControlToField14: TLinkControlToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB1
      FieldName = 'M_QSL'
      Control = chkM_QSL
      Track = True
      CustomFormat = 'IfThen(%s='#39'X'#39',True,False)'
      CustomParse = 'IfThen(True,'#39'X'#39','#39#39')'
    end
    object LinkPropertyToFieldCaption2: TLinkPropertyToField
      Category = 'Liaisons rapides'
      DataSource = BindSourceDB2
      FieldName = 'CQ'
      Component = QZONEnumber
      CustomFormat = '%s + '#39' Zones confirm'#233'es'#39
      ComponentProperty = 'Caption'
    end
    object BindLink1: TBindLink
      Category = 'Liens'
      ControlComponent = Label9
      SourceComponent = BindSourceDB1
      ParseExpressions = <>
      FormatExpressions = <
        item
          ControlExpression = 'caption'
          SourceExpression = #39'Nombre de contacts '#39'+recordcount'
        end>
      ClearExpressions = <>
      Track = False
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = Datas.QResume
    ScopeMappings = <>
    Left = 392
    Top = 280
  end
end
