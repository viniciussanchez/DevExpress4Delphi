object FrmSamples: TFrmSamples
  Left = 0
  Top = 0
  Caption = 'DevExpress4Delphi - Samples'
  ClientHeight = 461
  ClientWidth = 653
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GridColumnSample: TcxGrid
    Left = 0
    Top = 41
    Width = 653
    Height = 215
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    ExplicitLeft = 1
    ExplicitTop = 35
    ExplicitWidth = 649
    ExplicitHeight = 158
    object GridColumnSampleDBTableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSamples
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object GridColumnSampleDBTableViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
      end
      object GridColumnSampleDBTableViewNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 250
      end
    end
    object GridColumnSampleLevel: TcxGridLevel
      GridView = GridColumnSampleDBTableView
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 653
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = -6
    ExplicitWidth = 641
    object Button1: TButton
      Left = 424
      Top = 0
      Width = 106
      Height = 41
      Align = alLeft
      Caption = 'Adjust Name Column'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 212
      Top = 0
      Width = 106
      Height = 41
      Align = alLeft
      Caption = 'Export to HTML'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 106
      Top = 0
      Width = 106
      Height = 41
      Align = alLeft
      Caption = 'Export to TXT'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 0
      Top = 0
      Width = 106
      Height = 41
      Align = alLeft
      Caption = 'Export to excel'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 318
      Top = 0
      Width = 106
      Height = 41
      Align = alLeft
      Caption = 'Export to XML'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 530
      Top = 0
      Width = 120
      Height = 41
      Align = alLeft
      Caption = 'Adjust Customer Band'
      TabOrder = 5
      OnClick = Button6Click
    end
  end
  object GridBandSample: TcxGrid
    Left = 0
    Top = 256
    Width = 653
    Height = 205
    Align = alBottom
    TabOrder = 2
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2016Colorful'
    object GridBandSampleDBBandedTableView: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSamples
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'Customer'
          Width = 310
        end>
      object GridBandSampleDBBandedTableViewID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        Options.AutoWidthSizable = False
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object GridBandSampleDBBandedTableViewNAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'NAME'
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
    end
    object GridBandSampleLevel: TcxGridLevel
      GridView = GridBandSampleDBBandedTableView
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
