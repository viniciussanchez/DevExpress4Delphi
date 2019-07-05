object FrmSamples: TFrmSamples
  Left = 0
  Top = 0
  Caption = 'DevExpress4Delphi - Samples'
  ClientHeight = 299
  ClientWidth = 641
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 641
    Height = 258
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    ExplicitLeft = 200
    ExplicitTop = 72
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSamples
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      object cxGrid1DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
      end
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 250
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 152
    ExplicitWidth = 185
    object Button1: TButton
      Left = 512
      Top = 0
      Width = 128
      Height = 41
      Align = alLeft
      Caption = 'Adjust name column'
      TabOrder = 0
      OnClick = Button1Click
      ExplicitLeft = 508
    end
    object Button2: TButton
      Left = 256
      Top = 0
      Width = 128
      Height = 41
      Align = alLeft
      Caption = 'Export to HTML'
      TabOrder = 1
      OnClick = Button2Click
      ExplicitLeft = 254
    end
    object Button3: TButton
      Left = 128
      Top = 0
      Width = 128
      Height = 41
      Align = alLeft
      Caption = 'Export to TXT'
      TabOrder = 2
      OnClick = Button3Click
      ExplicitLeft = 127
    end
    object Button4: TButton
      Left = 0
      Top = 0
      Width = 128
      Height = 41
      Align = alLeft
      Caption = 'Export to excel'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 384
      Top = 0
      Width = 128
      Height = 41
      Align = alLeft
      Caption = 'Export to XML'
      TabOrder = 4
      OnClick = Button5Click
      ExplicitLeft = 381
    end
  end
  object mtSamples: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 88
    Top = 160
    object mtSamplesID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Id'
      FieldName = 'ID'
    end
    object mtSamplesNAME: TStringField
      DisplayLabel = 'Name'
      FieldName = 'NAME'
      Size = 100
    end
  end
  object dsSamples: TDataSource
    DataSet = mtSamples
    Left = 88
    Top = 208
  end
end
