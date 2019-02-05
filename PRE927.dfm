object FRepliqxDpto: TFRepliqxDpto
  Left = 188
  Top = 193
  BorderStyle = bsDialog
  Caption = 'Liquidaciones por departamento'
  ClientHeight = 341
  ClientWidth = 748
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 2
    Width = 408
    Height = 97
    Caption = ' Atendidos por Forma de Pago '
    Color = 10207162
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 71
      Height = 15
      Caption = 'Fecha Inicial:'
    end
    object Label2: TLabel
      Left = 8
      Top = 47
      Width = 61
      Height = 15
      Caption = 'Fecha Final:'
    end
    object Label3: TLabel
      Left = 8
      Top = 73
      Width = 74
      Height = 15
      Caption = 'Departamento:'
    end
    object dbdtpInicial: TwwDBDateTimePicker
      Left = 93
      Top = 18
      Width = 89
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dbdtpFinal: TwwDBDateTimePicker
      Left = 93
      Top = 44
      Width = 89
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object medesdep: TEdit
      Left = 147
      Top = 69
      Width = 256
      Height = 23
      Color = clWhite
      Enabled = False
      TabOrder = 4
    end
    object btnImprimePrevio: TBitBtn
      Left = 322
      Top = 13
      Width = 73
      Height = 29
      Caption = 'Previo'
      TabOrder = 3
      OnClick = btnImprimePrevioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object dblcdtipdpto: TwwDBLookupCombo
      Left = 93
      Top = 69
      Width = 50
      Height = 23
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcdtipdptoChange
    end
  end
  object dbgliqben: TwwDBGrid
    Left = 2
    Top = 108
    Width = 742
    Height = 189
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object btntodas: TBitBtn
    Left = 583
    Top = 304
    Width = 75
    Height = 30
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btntodasClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object btncerrar: TBitBtn
    Left = 671
    Top = 304
    Width = 75
    Height = 30
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = btncerrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object pprImprimePrevio: TppReport
    AutoStop = False
    DataPipeline = ppBDEPReporte
    NoDataBehaviors = [ndMessageDialog, ndMessageOnPage, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 618
    Top = 10
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPReporte'
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 119856
      mmPrintPosition = 0
      object SRDetLiq: TppSubReport
        UserName = 'SRDetLiq'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentWidth = False
        TraverseAllData = False
        DataPipelineName = 'BDEPDetCalLiq'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 79111
        mmWidth = 203200
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object TppChildReport
          AutoStop = False
          DataPipeline = BDEPDetCalLiq
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPDetCalLiq'
          object ppTitleBand6: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 181240
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label101'
              Caption = ' DETALLE DEL CALCULO DE BENEFICIO '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3440
              mmLeft = 16404
              mmTop = 1852
              mmWidth = 54769
              BandType = 1
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              Pen.Style = psInsideFrame
              mmHeight = 2381
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
            object ppShape7: TppShape
              UserName = 'Shape7'
              Pen.Style = psInsideFrame
              mmHeight = 2381
              mmLeft = 193675
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand7: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              DataField = 'DESC'
              DataPipeline = BDEPDetCalLiq
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'BDEPDetCalLiq'
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 144991
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              DataField = 'MONTO'
              DataPipeline = BDEPDetCalLiq
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPDetCalLiq'
              mmHeight = 3175
              mmLeft = 163777
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppShape6: TppShape
              UserName = 'Shape6'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppShape5: TppShape
              UserName = 'Shape5'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand7: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppLabel18: TppLabel
              UserName = 'Label17'
              Caption = 'TOTAL BENEFICIO ASIGNADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 123296
              mmTop = 0
              mmWidth = 41275
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              DataField = 'MONTO'
              DataPipeline = BDEPDetCalLiq
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPDetCalLiq'
              mmHeight = 3175
              mmLeft = 180182
              mmTop = 0
              mmWidth = 12436
              BandType = 7
            end
            object ppShape9: TppShape
              UserName = 'Shape9'
              Pen.Style = psInsideFrame
              mmHeight = 3704
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape8: TppShape
              UserName = 'Shape8'
              Pen.Style = psInsideFrame
              mmHeight = 3704
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 169334
              mmTop = 0
              mmWidth = 3514
              BandType = 7
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3704
              mmWidth = 181240
              BandType = 7
            end
          end
        end
      end
      object pplblLiqBen: TppLabel
        UserName = 'lblLiqBen'
        Caption = 'LIQUIDACION DE BENEFICIO : N'#186' 0002427'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 107156
        mmTop = 5821
        mmWidth = 85461
        BandType = 4
      end
      object ppldesben: TppLabel
        UserName = 'ldesben'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 107156
        mmTop = 11377
        mmWidth = 66421
        BandType = 4
      end
      object pplfecliq: TppLabel
        UserName = 'lfecliq'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 107156
        mmTop = 19315
        mmWidth = 26194
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 12700
        mmTop = 24606
        mmWidth = 180975
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'IDENTIFICACION PERSONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 25400
        mmWidth = 48683
        BandType = 4
      end
      object pplAsoApeNomDni: TppLabel
        UserName = 'lAsoApeNomDni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 12700
        mmTop = 30163
        mmWidth = 111919
        BandType = 4
      end
      object pplAsoDni: TppLabel
        UserName = 'lAsoApeNomDni1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 23283
        mmTop = 33602
        mmWidth = 21696
        BandType = 4
      end
      object pplZipDes: TppLabel
        UserName = 'lAsoApeNomDni2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 12700
        mmTop = 40746
        mmWidth = 111919
        BandType = 4
      end
      object pplAsoDir: TppLabel
        UserName = 'lAsoDir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 12700
        mmTop = 37306
        mmWidth = 111919
        BandType = 4
      end
      object pplAsoCodMod: TppLabel
        UserName = 'lAsoCodMod'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 42598
        mmTop = 49213
        mmWidth = 22754
        BandType = 4
      end
      object pplCentroEducativo: TppLabel
        UserName = 'lAsoApeNomDni3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 21696
        mmTop = 53181
        mmWidth = 102923
        BandType = 4
      end
      object pplUse: TppLabel
        UserName = 'lUse'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 12700
        mmTop = 56886
        mmWidth = 111919
        BandType = 4
      end
      object pplUseZip: TppLabel
        UserName = 'lAsoDir1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 12700
        mmTop = 60325
        mmWidth = 111919
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 13758
        mmLeft = 12700
        mmTop = 65617
        mmWidth = 181240
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = ' DATOS GENERALES PARA EL CALCULO DE BENEFICIO '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        mmHeight = 3440
        mmLeft = 18521
        mmTop = 64029
        mmWidth = 75936
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'FECHA DE NOMBRAMIENTO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 67998
        mmWidth = 38365
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'FECHA DE CESE :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 71438
        mmWidth = 24606
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL A'#209'OS APORTADOS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 18521
        mmTop = 74877
        mmWidth = 38100
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'ULTIMA APORTACION :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 74877
        mmWidth = 31485
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'RESOLUCION DE NOMBRAMIENTO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 67998
        mmWidth = 46302
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'RESOLUCION DE CESE :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 117740
        mmTop = 71438
        mmWidth = 31750
        BandType = 4
      end
      object pplFecNom: TppLabel
        UserName = 'lFecNom'
        Caption = 'pplFecNom'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 60061
        mmTop = 67998
        mmWidth = 15610
        BandType = 4
      end
      object pplFecCes: TppLabel
        UserName = 'lFecCes'
        Caption = 'pplFecCes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 60061
        mmTop = 71438
        mmWidth = 15346
        BandType = 4
      end
      object pplAnoApo: TppLabel
        UserName = 'lAnoApo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 60061
        mmTop = 74877
        mmWidth = 53711
        BandType = 4
      end
      object pplNumResNoM: TppLabel
        UserName = 'lFecNom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 168275
        mmTop = 67998
        mmWidth = 14552
        BandType = 4
      end
      object pplNumResCes: TppLabel
        UserName = 'lNumResCes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 168275
        mmTop = 71438
        mmWidth = 14552
        BandType = 4
      end
      object pplUltApo: TppLabel
        UserName = 'lUltApo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 168275
        mmTop = 74877
        mmWidth = 14552
        BandType = 4
      end
      object pplasotelef: TppLabel
        UserName = 'lasotelef'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 71702
        mmTop = 33602
        mmWidth = 21696
        BandType = 4
      end
      object ImagAso: TppImage
        UserName = 'ImagAso'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 33073
        mmLeft = 154782
        mmTop = 28840
        mmWidth = 32015
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'IDENTIFICACION LABORAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 44715
        mmWidth = 46302
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'D.N.I. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 33602
        mmWidth = 8996
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'TELEFONO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 49742
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'C.E. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 53181
        mmWidth = 7408
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'CODIGO MODULAR :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 49213
        mmWidth = 28310
        BandType = 4
      end
      object ppSRDevoluciones: TppSubReport
        UserName = 'SRDevoluciones'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SRDetLiq
        TraverseAllData = False
        DataPipelineName = 'BDEPDetDev'
        mmHeight = 4763
        mmLeft = 0
        mmTop = 83873
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildRDevolucion: TppChildReport
          AutoStop = False
          DataPipeline = BDEPDetDev
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPDetDev'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine4: TppLine
              UserName = 'Line4'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3175
              mmWidth = 181240
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              Caption = ' DETALLE DE DEVOLUCIONES '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3387
              mmLeft = 16404
              mmTop = 1852
              mmWidth = 41804
              BandType = 1
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              Pen.Style = psInsideFrame
              mmHeight = 2380
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
            object ppShape11: TppShape
              UserName = 'Shape11'
              Pen.Style = psInsideFrame
              mmHeight = 2380
              mmLeft = 193675
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand2: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              DataField = 'DESC'
              DataPipeline = BDEPDetDev
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'BDEPDetDev'
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 144991
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              DataField = 'MONTO'
              DataPipeline = BDEPDetDev
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPDetDev'
              mmHeight = 3175
              mmLeft = 163777
              mmTop = 0
              mmWidth = 15611
              BandType = 4
            end
            object ppShape14: TppShape
              UserName = 'Shape14'
              Pen.Style = psInsideFrame
              mmHeight = 3439
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppShape15: TppShape
              UserName = 'Shape15'
              Pen.Style = psInsideFrame
              mmHeight = 3439
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLine5: TppLine
              UserName = 'Line5'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3704
              mmWidth = 181240
              BandType = 7
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              Caption = 'TOTAL DEVOLUCIONES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117475
              mmTop = 0
              mmWidth = 32724
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              DataField = 'MONTO'
              DataPipeline = BDEPDetDev
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPDetDev'
              mmHeight = 3175
              mmLeft = 180182
              mmTop = 0
              mmWidth = 12436
              BandType = 7
            end
            object ppShape12: TppShape
              UserName = 'Shape12'
              Pen.Style = psInsideFrame
              mmHeight = 3704
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape13: TppShape
              UserName = 'Shape13'
              Pen.Style = psInsideFrame
              mmHeight = 3969
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 169334
              mmTop = 0
              mmWidth = 3440
              BandType = 7
            end
          end
        end
      end
      object ppSRDescuentos: TppSubReport
        UserName = 'SRDescuentos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSRDevoluciones
        TraverseAllData = False
        DataPipelineName = 'BDEPDetDes'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 88371
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = BDEPDetDes
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPDetDes'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line6'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 181240
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              Caption = ' DETALLE DEL CALCULO DE DESCUENTOS '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3387
              mmLeft = 16404
              mmTop = 1852
              mmWidth = 59002
              BandType = 1
            end
            object ppShape16: TppShape
              UserName = 'Shape101'
              Pen.Style = psInsideFrame
              mmHeight = 3175
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
            object ppShape17: TppShape
              UserName = 'Shape17'
              Pen.Style = psInsideFrame
              mmHeight = 3175
              mmLeft = 193675
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              DataField = 'DESC'
              DataPipeline = BDEPDetDes
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'BDEPDetDes'
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 144991
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              DataField = 'MONTO'
              DataPipeline = BDEPDetDes
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPDetDes'
              mmHeight = 3175
              mmLeft = 163777
              mmTop = 0
              mmWidth = 15611
              BandType = 4
            end
            object ppShape18: TppShape
              UserName = 'Shape18'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppShape19: TppShape
              UserName = 'Shape19'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 17992
            mmPrintPosition = 0
            object ppLine7: TppLine
              UserName = 'Line7'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3704
              mmWidth = 181240
              BandType = 7
            end
            object ppLabel22: TppLabel
              UserName = 'Label201'
              Caption = 'TOTAL DESCUENTOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117475
              mmTop = 0
              mmWidth = 29676
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              DataField = 'MONTO'
              DataPipeline = BDEPDetDes
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPDetDes'
              mmHeight = 3175
              mmLeft = 180182
              mmTop = 0
              mmWidth = 12436
              BandType = 7
            end
            object ppShape20: TppShape
              UserName = 'Shape20'
              Pen.Style = psInsideFrame
              mmHeight = 3704
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape21: TppShape
              UserName = 'Shape21'
              Pen.Style = psInsideFrame
              mmHeight = 3969
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape28: TppShape
              UserName = 'Shape28'
              mmHeight = 6350
              mmLeft = 12700
              mmTop = 6879
              mmWidth = 181240
              BandType = 7
            end
            object ppLabel25: TppLabel
              UserName = 'Label25'
              Caption = ' SALDO DISPONIBLE DEL BENEFICIO '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3387
              mmLeft = 16404
              mmTop = 5821
              mmWidth = 50006
              BandType = 7
            end
            object ppLabel26: TppLabel
              UserName = 'Label26'
              Caption = 'SALDO DISPONIBLE DEL BENEFICIO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117475
              mmTop = 8467
              mmWidth = 50673
              BandType = 7
            end
            object pplSalDis: TppLabel
              UserName = 'lSalDis'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 180182
              mmTop = 8467
              mmWidth = 12436
              BandType = 7
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 169334
              mmTop = 0
              mmWidth = 3440
              BandType = 7
            end
            object ppLabel31: TppLabel
              UserName = 'Label31'
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 169334
              mmTop = 8467
              mmWidth = 3440
              BandType = 7
            end
          end
        end
      end
      object SRForPago: TppSubReport
        UserName = 'SRForPago'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSRDescuentos
        TraverseAllData = False
        DataPipelineName = 'BDEPForPag'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 93134
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = BDEPForPag
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPForPag'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5556
            mmPrintPosition = 0
            object ppLine8: TppLine
              UserName = 'Line8'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 181240
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              Caption = ' FORMA DE PAGO '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3387
              mmLeft = 16404
              mmTop = 1852
              mmWidth = 25654
              BandType = 1
            end
            object ppShape22: TppShape
              UserName = 'Shape22'
              Pen.Style = psInsideFrame
              mmHeight = 1852
              mmLeft = 12700
              mmTop = 3704
              mmWidth = 265
              BandType = 1
            end
            object ppShape23: TppShape
              UserName = 'Shape23'
              Pen.Style = psInsideFrame
              mmHeight = 1852
              mmLeft = 193675
              mmTop = 3704
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              DataField = 'DESC'
              DataPipeline = BDEPForPag
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'BDEPForPag'
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 144991
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              DataField = 'MONTO'
              DataPipeline = BDEPForPag
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPForPag'
              mmHeight = 3175
              mmLeft = 163777
              mmTop = 0
              mmWidth = 15611
              BandType = 4
            end
            object ppShape24: TppShape
              UserName = 'Shape24'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppShape25: TppShape
              UserName = 'Shape25'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 9260
            mmPrintPosition = 0
            object ppLine9: TppLine
              UserName = 'Line9'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3704
              mmWidth = 181240
              BandType = 7
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              Caption = 'TOTAL PAGADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117475
              mmTop = 0
              mmWidth = 22183
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              DataField = 'MONTO'
              DataPipeline = BDEPForPag
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPForPag'
              mmHeight = 3175
              mmLeft = 180182
              mmTop = 0
              mmWidth = 12435
              BandType = 7
            end
            object ppShape26: TppShape
              UserName = 'Shape201'
              Pen.Style = psInsideFrame
              mmHeight = 3704
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape27: TppShape
              UserName = 'Shape27'
              Pen.Style = psInsideFrame
              mmHeight = 3969
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppLabel32: TppLabel
              UserName = 'Label32'
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 169334
              mmTop = 0
              mmWidth = 3440
              BandType = 7
            end
          end
        end
      end
      object ppSRRetJud: TppSubReport
        UserName = 'SRRetJud'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SRForPago
        TraverseAllData = False
        DataPipelineName = 'BDEPRetJud'
        mmHeight = 5556
        mmLeft = 0
        mmTop = 97896
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = BDEPRetJud
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPRetJud'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 1588
            mmPrintPosition = 0
            object ppShape29: TppShape
              UserName = 'Shape29'
              Pen.Style = psInsideFrame
              mmHeight = 1588
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 1
            end
            object ppShape30: TppShape
              UserName = 'Shape30'
              Pen.Style = psInsideFrame
              mmHeight = 1588
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppShape31: TppShape
              UserName = 'Shape31'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              DataField = 'DESC'
              DataPipeline = BDEPRetJud
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'BDEPRetJud'
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 144991
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              DataField = 'MONTO'
              DataPipeline = BDEPRetJud
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPRetJud'
              mmHeight = 3175
              mmLeft = 163777
              mmTop = 0
              mmWidth = 15611
              BandType = 4
            end
            object ppShape32: TppShape
              UserName = 'Shape32'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8731
            mmPrintPosition = 0
            object ppLine11: TppLine
              UserName = 'Line11'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3704
              mmWidth = 181240
              BandType = 7
            end
            object ppLabel28: TppLabel
              UserName = 'Label28'
              Caption = 'TOTAL RETENCIONES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117475
              mmTop = 0
              mmWidth = 30480
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              DataField = 'MONTO'
              DataPipeline = BDEPRetJud
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPRetJud'
              mmHeight = 3175
              mmLeft = 180182
              mmTop = 0
              mmWidth = 12436
              BandType = 7
            end
            object ppShape33: TppShape
              UserName = 'Shape33'
              Pen.Style = psInsideFrame
              mmHeight = 3704
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape34: TppShape
              UserName = 'Shape34'
              Pen.Style = psInsideFrame
              mmHeight = 3969
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              Caption = 'S/.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 169334
              mmTop = 0
              mmWidth = 3440
              BandType = 7
            end
          end
        end
      end
      object SRObs: TppSubReport
        UserName = 'SRObs'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSRRetJud
        TraverseAllData = False
        DataPipelineName = 'BDEPObs'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 103188
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = BDEPObs
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'BDEPObs'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppLine10: TppLine
              UserName = 'Line10'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 181240
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              Caption = ' OBSERVACIONES '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              mmHeight = 3387
              mmLeft = 16404
              mmTop = 1852
              mmWidth = 26374
              BandType = 1
            end
            object ppShape35: TppShape
              UserName = 'Shape35'
              Pen.Style = psInsideFrame
              mmHeight = 1852
              mmLeft = 12700
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
            object ppShape36: TppShape
              UserName = 'Shape36'
              Pen.Style = psInsideFrame
              mmHeight = 1852
              mmLeft = 193675
              mmTop = 3440
              mmWidth = 265
              BandType = 1
            end
          end
          object ppDetailBand6: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppShape37: TppShape
              UserName = 'Shape37'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              DataField = 'DESC'
              DataPipeline = BDEPObs
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'BDEPObs'
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 111125
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              DataField = 'MONTO'
              DataPipeline = BDEPObs
              DisplayFormat = '#,###0.#0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'BDEPObs'
              mmHeight = 3175
              mmLeft = 131763
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppShape38: TppShape
              UserName = 'Shape38'
              Pen.Style = psInsideFrame
              mmHeight = 3440
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 42069
            mmPrintPosition = 0
            object ppLine12: TppLine
              UserName = 'Line12'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 12700
              mmTop = 794
              mmWidth = 181240
              BandType = 7
            end
            object ppShape39: TppShape
              UserName = 'Shape202'
              Pen.Style = psInsideFrame
              mmHeight = 794
              mmLeft = 12700
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppShape40: TppShape
              UserName = 'Shape40'
              Pen.Style = psInsideFrame
              mmHeight = 794
              mmLeft = 193675
              mmTop = 0
              mmWidth = 265
              BandType = 7
            end
            object ppLabel29: TppLabel
              UserName = 'Label29'
              Caption = 'V. B. DE LA OFICINA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 12700
              mmTop = 1852
              mmWidth = 27855
              BandType = 7
            end
            object ppShape41: TppShape
              UserName = 'Shape41'
              mmHeight = 20902
              mmLeft = 12700
              mmTop = 6615
              mmWidth = 181769
              BandType = 7
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 120386
              mmTop = 19844
              mmWidth = 45773
              BandType = 7
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              Caption = 'JEFE DE PREVISION SOCIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3260
              mmLeft = 120386
              mmTop = 20902
              mmWidth = 45773
              BandType = 7
            end
            object ppLine14: TppLine
              UserName = 'Line14'
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 39688
              mmTop = 19844
              mmWidth = 45773
              BandType = 7
            end
            object pplblUsuario: TppLabel
              UserName = 'lblUsuario'
              Caption = 'lblUsuario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 39688
              mmTop = 20902
              mmWidth = 45773
              BandType = 7
            end
            object ppanula: TppLabel
              UserName = 'anula'
              Caption = 'LIQUIDACION ANULADO POR : IREVILLA EL 15/09/2005'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 5027
              mmLeft = 47361
              mmTop = 37042
              mmWidth = 112448
              BandType = 7
            end
            object pplimppor: TppLabel
              UserName = 'lblUsuario1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 12700
              mmTop = 28046
              mmWidth = 45773
              BandType = 7
            end
            object ppSystemVariable1: TppSystemVariable
              UserName = 'SystemVariable1'
              VarType = vtDateTime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 31750
              mmWidth = 32279
              BandType = 7
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              Caption = 'Fecha y hora de impresi'#243'n :'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 12700
              mmTop = 31750
              mmWidth = 35719
              BandType = 7
            end
          end
        end
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'PVSLBENNR'
        DataPipeline = ppBDEPReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppBDEPReporte'
        mmHeight = 3175
        mmLeft = 131498
        mmTop = 33602
        mmWidth = 17198
        BandType = 4
      end
      object pploriexp: TppLabel
        UserName = 'lfecliq1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2921
        mmLeft = 107156
        mmTop = 15875
        mmWidth = 46059
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'REGIMEN DE PENSION :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 66675
        mmTop = 49213
        mmWidth = 31750
        BandType = 4
      end
      object pplregpen: TppLabel
        UserName = 'lAsoCodMod1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 99219
        mmTop = 49477
        mmWidth = 53711
        BandType = 4
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D61676543290000FFD8FFE1001845786966000049492A0008
          0000000000000000000000FFEC00114475636B7900010004000000640000FFE1
          036F687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043
          656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120
          786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B
          3D2241646F626520584D5020436F726520352E332D633031312036362E313435
          3636312C20323031322F30322F30362D31343A35363A32372020202020202020
          223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D
          222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
          636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
          5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F7269
          67696E616C446F63756D656E7449443D22786D702E6469643A38384242323139
          413845363945333131393530364335414333303344354330382220786D704D4D
          3A446F63756D656E7449443D22786D702E6469643A3442453033434441363939
          3831314533383235463846314639373642313741362220786D704D4D3A496E73
          74616E636549443D22786D702E6969643A344245303343443936393938313145
          33383235463846314639373642313741362220786D703A43726561746F72546F
          6F6C3D2241646F62652050686F746F73686F7020435336202857696E646F7773
          29223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E73
          74616E636549443D22786D702E6969643A384642423231394138453639453331
          3139353036433541433330334435433038222073745265663A646F63756D656E
          7449443D22786D702E6469643A38384242323139413845363945333131393530
          36433541433330334435433038222F3E203C2F7264663A446573637269707469
          6F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F7870
          61636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FF
          DB00840001010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010202020202020202020202030303030303
          0303030301010101010101020101020202010202030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303FFC00011080040010403011100021101031101FFC4009C00000102
          070101000000000000000000000007080103040506090A0B0201010101010000
          0000000000000000000000010203100000060200040207030808030901000002
          03040506070108001112091314215394D415161731180A516191222393193941
          D192242556B778A133957181D336274768C81A8A110100030002000602030000
          0000000000000111213141516171810212B1D1F0A132FFDA000C030100021103
          11003F00D6A7E21FEE59B05B49BCB7D6B9993691C5B5B75BAC97FA8E255233BB
          2D6E8DBFC9600B4D8FCAAC49B22467109659227893A35996E1AC01806B6AC924
          A7000625672AC7CA76BA573BD938DFE830CE5F9CC167FE3E8E203C537973F14C
          FC9FF305CFF473E7C047C51FAE3BF4E7FF001389A1CE6A76E3EC5E91DB91DBAF
          5BACC9157F30625E894AD4685C570A2D336A4AA4B52A6293F8C96AD3B74BE26E
          982BA54A25411079F234B116704A3408B891EC67AC774A5D8FD70A1360D1340E
          3C96F0A6EB4B64A8F9AA32B06C3F5061ACF2A1B30966494DE732D237411193BC
          3060DE8EAC631CF971D50BA70070070070070070070070070070070070070070
          070070070070073E5F6F006338CFD9C01C01C01C019CE31F6F010E78FCB8FD38
          E0239CE31F6F00701E379DD8FF0099E7703C7FF30F617FD5092FF5F1CE79564C
          D5D9E7B9BBD51A1D8D6AD30B9555526C7C32C4AE38696B2E5CBE28680B3CA933
          65567BA956B3B47D421330A8A5A9990E4C721CF9A00B24733787D64380DA2EDC
          D3FB7F6E6ADA1740F5C2452D7179D22D3BB9A4D18871CB0E6C6D76B0F5F6BF95
          CEA7B2E94CCDE4A6486373E4BA42664C39C57A240158A42495D22180AE131738
          1B3C7BB4D771C945FD26D5F66D44B6CCBB218CC9E49288C383735B332B2C5D71
          AB486A942BB15EDD9B6B60C59FD537A925B5CC0EF940E67A730A4A69C60041E1
          5F2B4B34DBCE83B97596CC91D377E56D2BA9ECE8A8C803E43E62D8636B9A6256
          1385081C1319FB448EACEE89861391AE4661C89610209849A60058CE64DF6AF5
          F3ED63FCB47403FD9BEB7FFA4713E3AA15CD91DC8D57D4065677FD9DBF6AEA49
          048CF3D3470B9F4A9BD9DD64A6A31A62D7E238C19198FD202DB32B89CAB1A34C
          781284D088DC8022C6780E6E7B8B7766D848C774DED5F59E98ECE449EB4E76BC
          DA2332C360CC356D8D12B18A95ECD3FD6B3B0229DAD8FC81E111E18EA029B8F2
          9BD7A339B14807D41028EAE52E6E23A1D19EC86F0EA169FE1903B37B1B52D28B
          24850D4C7D9E75306D6C913E2228FF002C738B5468261EFEBDAD3A9FD99CA8A4
          C24E519E818F19E28CC59368F5BE4B492FD948EDED53BFEBFB4B4B9BF3ADCACF
          3C8E39D6ED6D2CBCC2F2B1CA5C8DC0E666F0B38B190AB01A680C4E6632033011
          6338E013A6FDFDD27776DA7DE1A369E8E776BBFE4B248852CE0D161C7DCD2597
          228764E2E5C82247205AA0B732E307938257A80E7CB235261449A600D3C900C2
          CE4771DD0B575D116DA0DBCD7F74AD1559CD34BA39B345971A76605F6C3EA546
          E2D75E372D6D5CA42E12A52D2B8B5B9484E0C38A41D4A8CC05380668428AD8EE
          65DBDE8D992CAEEDBDD0D6C824EDB1C4E697A883DDB90E2E431E744E6E0950DD
          26694EE8A164656A737D0616BC29C60F4F3FB33C2E02CB2BDABD6783D3683626
          5B7F53EC5423AFC33E15732EB0E2C1AC9D7E34B3E1CD196B9A96E638F38FC457
          872493E0A81F5998C871CF38CF2045275DCDFB7BD66E155B5CF37275EA28AEEC
          8DB24D2B0CBC5971E4E92530B9264F047A665AFC2B13735441F4C4C6811BA2E3
          52A152324C096688458B1860BCDD3DC5744F5CACA69A76F5DB2A22ACB39E7084
          C221732B0D81A9E9B53B9929D5362C93146AAC950E40E8955166A550EC344428
          273D650840C67385C0576E3D9BD74D798AB5CE6F6BDAA3A7E22F981E58243645
          83168735C8BA1312AC408E297C74440901D84AA0B33A11F8C3F0CCC67972CE39
          8615AF5BC1A7FB60ADDDB75AF65A97BADE581265C9EE3F5F5811F90491A1AF0A
          4A47F17728DA559F1D46CE258A0B282AC69829C468F01C0F22CE31C0393757A6
          763253287A756C674EB5CDB19519EE8B933792ADE1ED7A76B666A4C6AB34A01E
          E6ECE4A8A4C9480E7269E79812CBC6442C632090C4F67B5B27B66C9293836C25
          2133B961C27404BAA58A5AD0490D99171B12B290BD824304687E572765133AD3
          824ABC294A5E539A2C00CE916718E0257DE9759BEB07DDEBEF1345FD7DF13C2F
          A21F56A05F56FC6F85FC77C0FA6FF1FF009BFCC7C17FBEF4793EBF2BFB6FF97F
          ADC065D695CB50D1D191CD6EBB52B7A7E185282519B2CB46731880468B58A39F
          974837D9639B4B60551DD39E8064DEA172CF2C7A380ABAD2D6ABEE788A29F53B
          6440AD782399AA486D9A56B308F4EA26BCF446E49584229145DC5D1A151C90EC
          640680B3B392C58E42C633C02713FDB9D53AA27ED754DA5B35AF95B5A0F7F0DC
          B356F3EB9ABA87CF1DB0F4779766136C4243236E7F5B876521C969725A717981
          E3917D59F47011BF5DA54F9584FD8E97BEEB5A4AD1607B81B71F614D98D92C36
          180295F2588BC2B639642D64A230501C6750B5F942DE050B529A131D932A2B06
          67C3098178B8B6575D35DCB6036FFBF295A34A961EAD34587705A507AD012552
          8029B2B93B00A66FACD8783908561393829FAF2560C07572C0B1CDC721A36F07
          710AEF519669C165CD693588F66B66AB3AB9ED5CCECC636029828F98C7A6CE72
          2BB580D03984A5EC51C72626D4D95E6FF84604E2009A703232F3C27390F322D7
          DD173A823F5A508BA2A798D611513C065163C5AC587C86071B1479116E2FC17E
          97B4BC2C8F34098DBCE09EB3CC282FCB102C0CCE90E719E028A9CD8CD7DD8940
          F0EDAFF7AD3B79354755A640FEE5505990BB29031AE5648D42346F0AE1CF4F49
          DB152A20191940384011810E738C6718CF017B925D14F43A3C8E5D2EB5EB58B4
          4DC6505C1DBA51239D461963ABE686BDA88C950F44F4E4E899B55CA4C91A435B
          F0DE59B95795A5893E0BF14390E0304AB9F64505AEA7724BEAFAACE789186C5B
          71D0EB19B5B186B788C12048666F6264834A148A44E6D25BC556CC461A5DDC94
          A84E61CA51983505966E079C85EA9ED95D73D882DF0EA06FDA56F12A306A6224
          86D3F69C1ECC0478F59E2F9325EC70B7D7AC3518AF040F2584FF000F23C005CB
          9F2CF2723493F7E5DA7F9E3E0FF53D3FC3FF00FD0E7DC73CBFC990CE5F75AFA0
          9F39FD31F17E0FD5E3FCC3FDE3E33CFE33D5FB3F31D3FA9C66FF002AE49ABB8A
          54F38FC5053E8C5D28232F10D71EE19B2C63630CC4CC971591DA0DEF567B951F
          197E2C61196B50492EA471F4262234224EBBCC796342228D163333EDA34E33EB
          CF73D56E2C86E19ACFAEB6DDD9496DAF29D5FF000B648CF71305B089F8C65322
          6D881064878605ECAE85E5A53322524A4E8C90010129C050024E33737E63A4BE
          F756258276AB6D54B5CDDDBA3767DBDBF1A574DED486BD7A270D52495D37DAFE
          B9944CE997C5CC0E2A50BC452A5BC642E8689A4C11C991BFF50841F1D28041DC
          F1EE9DB55B71EC0DDEF9D8AB506B277B5664E55FFDF7B66A1A289AA785236F3E
          235CD67414A60316579CE7CCAC8E4364964BEAD6F4261B94898E71C6405F3208
          C932E7EB4AB4EF33B39CDFB54F66AB0A62B5649E78595BE353E66AFC70DD2527
          D61565BD5CE2B3811EFCACC35CD744EBD2654E44332238D114D49D5984A60964
          F2070F97108F4B3ED65FCB4BB7F7FB38D6FF00F48A29C6C71F554D055D7774FC
          48FBBB03DEC74779657FAF38B85A6B9A754C99E638DD268D5253D8ED57078337
          9ADAE8DAF6D51B21BA42AE5AB9334284A6B839E4F54663251EB303C73F2D5255
          BD3A0BAD7A19F883FB66567ACA4AB8B571675CDA9168AEAA8E91BBC952D71207
          2D8DC4517A38FB83F383B3EA6649395152D7929D6293CC214987E0B1052F9624
          A4C57CA2836FD7A9AB5EDDF707EE13B15B63DB6769BB9FCD49B25C18982B2AB1
          C24C38B514D2AE5B35606B699CB74690AA7DCFCBD1589A4648C1423F089214DE
          B44612729C90A533B9B80BB6B9D2DB49AEB56F7BF89675276E3547B7E5C5A2D7
          85935B41B63A36FE04B12B3236E90D4B01650CBDE9A1B1B5548871C91BDA1F0C
          A18DC96B6A44BE74C586A009F8B1DF852161EC25DAB20D61E9EBDF744B7E7D3D
          7F9BD1C9EF42F562B442FE14D5EC353D7516952B707D942434A39C1C82ED61BE
          B8292DA129EDC80224E250ABCE79E30B25F18EE4379FC397DA72AEDF262B1F63
          F65ACEB09AE9CD5CB59914D775AC2A5638B369D6990DB1F9BCAE712774392AA1
          3333A08F32B3261E1B7095C1767908C5840111403DF18B0BE3995A15DC9EF5DC
          3B4751BB116C46E5C49FECC993F595B4ECFB672DA31CC12B95962717C9455D59
          2F20E830E48E6E869B2142C4A0D5AEAA3CE80C5A8892D47920327881ABCD7E97
          CB55762AEEB74EBC2F7CC426A7DA9D3392C2A2B200E32BA29229ECE65D1F9AE0
          E2F00F0D02C7043016E0AA28BF08B0A94E316318C9A2EA91FE654F97623B476A
          0407F0E9555DC01A1A2666ED5AD8DD2D623D58ABA66FEB913EA1B3AC563829F5
          F2A87A970510F6F8A45E3D242F0DE6244699CB0A5BCAC9AA46030D2449F8C447
          9A24583DA7F5213FE1BE67EE306B6CE5CF6F14A18858ABED1709BC855A67142F
          97FB7D359AF15C416AE5116C445AA20BC034E781281DF2E290B37CDF96C891E5
          51F5B9E57B2BCB766F4E65DDB0BB2F6B1ED0E9DDABDC736C9E22D60BF5194A43
          EC496560E08602A6DDB3E978832BF587174EE331358DF1140D1266E666D4E615
          92E2851AACC4A993100536E2AA790D74EAF1FF004CFBD276C87EAD341EDAED78
          ED60DD550C5A4355492F73360215316699D9AD35DCED6C02C3C80F5CA9AA4105
          981ADEF4D872C5004A79A1C00B27AB1812AA611DA877A189027FA8509800A432
          487FCFBB9BA310CC4C616E8730CD622193ED4D5AD0A2450D90251056B04A1B12
          2B306897119C9A94FE430E3D19E353C0493BA16976B0D37DB6AEE9BD174EC128
          5B1B542B270B875DAD3A7630C705B32ACB0AB74E43C333E304E5A1127921A6BE
          650E52BDF985270DE922A3C2A846986789874156BC3B7169AC4BB7F5AF5A4729
          383B19D0EA3671358D5B0963CCE3BBD92DA8EC35CA52D17B916C9A9899B1D742
          198A229EC4FE6AEC2D3DC03911A664B1081C2434F8F6C1C5F682BFD2B465E834
          1BB916F3B568C6BADD36D496C32EA286D6F41336C3D78C4FE15533B52C68E4A1
          3C5665713F30AD5CDF1C8F3139399ADE8CE527012A1C1461D2EE3CCECD7E773F
          BE34FF00622EDB5E0FA391AEDF1389876B0DF6B15643AB9B3AAFB5E87BF2DBD5
          56DAF26F4CCDDA20F59B142D3FD54ABBE747125C1C5F18122A756277C202B278
          53E3207E86DFB50340B4753EAA55C23296A7360C57056B13B1ACBBBADA84C4EE
          19E6C74A2C98F249649AD6B1E7F356F90BD4E1CA7AE2FA7B875A8546A44E4A90
          A7480252964940540D06DDB4ED7146EB5F7EBA76AE7A769556F01DB5EDB2C314
          1CA256E13E5F13694CE5A98E096A1264AF2A97BA2A8CD2C62BF979911A95071E
          CED6853B78CCC89264594F1EFF00A1B54BDA939A515B9BB2DB4169E8187B8FD2
          37DC72B61314B610DB5C599B0FABF1AACA008E24EF45B051375485A1B26155CB
          E5197095A61C10E4EECA1D5E9C00EADEBC6044A30F30D7F64229DBE2DDA9FB53
          BD6ACD275423AB3F8C0D795BC86BA72A81244DEAB190BE365F2F778D2136ACA6
          4C091EAB1569A748CB54F1133D2236FF001C84EA0A4E34F94868A4D4D7A9050F
          73D35511DDFBD7CD2945A6330B4754607AED3ADE0956AE6A756951A48A5C578A
          9B722B52C22457A575207BAD227308055E992A972291E559E05F235EDE7AF4C7
          94DE4745EEBA1779B237496EC6EA3DC7A8BDB3B6AB542F1825F159C46CCB257D
          45425555CCEF50A70FE8A33B055B5D47C06F45A54A6311A891C549E3C156D2F0
          B1AE4AC2886D6024472918931DF62FDDA9B47EA99F47671B297AB430DE8BE29B
          81BB51FD418D4FD81A1FA17AC558B16E25AEA1C1657713716CCB337DB93BB39A
          DC1E9E260328D90284816C401525266F015956DC84AAABB268866D67514B595A
          B09B76EDBBBFBA0F71C7CD79D603D8A04E044CE6355ECF5C92091D92FEF16AAC
          455E4361D5B3439872E6F6E061DE586E24904A75279E12B2C18BDECCB74D636C
          697DD62ED5B5CE8F4C229BA5AC75B636335B6FBA3658CA3AAEF9B6E3F51D9D55
          5D3148B55F59CC65D059FB2CC7CB224A4A25C5B7C8468DC42A52E538C2A4132F
          FDC9FF00FACAFF00EAEF13F6BD7B3895EEB0A0F45DD0F7F55A434E4AAD36E4EC
          2284CA539A610A139E45AB2334A3C838192CC24D2860EB00C3E9E7CB38E333C8
          5BD277BFDEE4CD891C8E74A19DEF36E654B1A6BDC27ED6EA65E770DB98914771
          144C98BBF1C2207CA95BB96C18C9187C5383E442E79332BFC6CF5F0FB4FB8634
          FF00B6175CAB5DD7EB149A484C86B777D8F78DAF795EF8930E93B7ABAA45082E
          BF7C92BCCDD79C7BE3A16EAC24F59E51E60B272B165408591E79F12F28634F77
          FD86FDAF903D635EA5A05575736958570C69281A8A29F0B995991D83C5A4E6AC
          7AC0B2A16379AD75EB77809FA71828CF133CF3D58C05782BE79B296859342D03
          ADF275ACC755FAD2E5703B55A89131A342F08965E0FCC1249F09E9E4BC655BEE
          153A4692E5378B91652978C8439E9E58C3781EBA9DAC7F968E807FB37D6FFF00
          48E27C7546AA7B93FE1F449B6BB52DFBCFA95B472FD2BDA23BE1C6CCE4D176B7
          A5AD9267A69662632DF3561758ACBA172880CC0C8C17842E4626395A37720A2F
          232083C6B142B931737D86E711FC30F2763DAAD5ADC296F707B12DCBA2A4B36B
          8B86F6975AF03719A3FDCF33AEEC16D94B6258E3DBAD946BA4218088A3221642
          42B8D7F3CBC939521100BC948899F5DB0B9EDE7E1F6964AB6D26DBB1DBB375EC
          1D09B9ADA39DD6DBED3186F7C5D1796BCC95612E72A796E708D4B62CECD29E52
          F69C0E4E4D4B0B766F52EBCD493E544108316B6C2A543F648B56BAD3ADEAA0ED
          EEE0773EC25BDBDF1871679AD916323757DAEA0CF6A9A0D6804B2395B3ECD1DD
          E9CA5CE080C2923AB99AFA9C4B903737272C84C0420C8D101D976FAEDA2E1A39
          DBB1FB44155D24D8CB1ED1DD494168A481662A5377D5D29D40030B889F2B91E5
          665806E7E2721B863CCE71CBF678E5CAC64504FF00B3D7691FE169415D744C96
          E76FD836CB92C23266B96975D1D5EA540DAAA16D10D5EC0A1BCD99CC86E21584
          3708623707138E91F2E9FB73C48C81AEAA43F0ECECFEAA4D2CE836A97764BA68
          3D3AB7E5637A985590E81220DAA9D80C30297E171DB1954A543446E7D88E124B
          77CE0DAD88169A020919E8CD012023844570319AC7F0C038D6BA65BA7A869773
          D3B991B5D636BE4CDA66CAA8E3427419B284934BDFC86F766705A81F9ADC64E4
          4AC25187814A02D29A9BC4C16678990855514365D6FF0069176B53B3AC3FB55E
          2FD4AC8E31783D470F36EF156827146BFE974F23F37F1C35F066880F4A4BA858
          B09318F8C08C2702C1B91199C64194C5C50A594F685739276626FED318D814A9
          5C5144A2F1ACDED9ACF26243B31CBB1BAE2F17E9D026A518020F021C36631F19
          C998C67CC6739CF32F85650D7DCF3F0D34A0751E8AAAA4F77DF6A5DBCD1D88BD
          C1983601AAB7529DA2671B576DCFED88B1208B249DFC5226E5075D63B8212D46
          17B994E680CC92A53F40B1802BCF4642BFF0F0DF7626DAEA3EEAEC3F7359FDFD
          7650762D713E9E9B39A7DAC11A90A1AC2C96B9F4760952B0B1CD199BEA68B9C4
          A4509D607C1710295EACE70C12508D191956C48DF96DBEB8A8DA0AF60D054F32
          0C1870DD82D77BCB2EA362C487E200A1EE1885AC28CE11E5D1A7CA8A4DF2B791
          F37E20FCAF8DE2F846F4F40A8AFDC8D7C3B6C355AFED6B4F2D0C0CEBBAAF94D7
          209989971230C685246F310FC544C427167F8AE12E0CCE72479A23ABECEB0FDB
          C029B65400760D453FAB30EF968366D5BCAABFC3F811855E5AC5258C2E8EE1E0
          0DA23C90A9CA3CADF1F04E4D0E07D3D1D78E7CF80D5840BB726C76AA0AB49BE9
          7EC6D60D76421D56D6ED62D858A5FB4F482594D5F8A358A189E0D5A5CED24422
          C58B5875158AD51E50E0DE71299D5E1A1C5B54272D425F3288B58395E033EAF3
          47F611B36AE09BD5B25B479BA6CB83D2973552EB4A56F531709A39AA273D3E02
          FCD4C149C41E66F2992B34802F90B506BDBD3F3C3DB9CA047214DD4D889BC94D
          C581AC788583DB6E2512B0239587761DA4EDA75AAF54F0E73FD0B9A4A6BDA3EC
          6A09F5D917C624F01A52B9D81A764F775325FC756AB51F0C812E706513929370
          C022C9F0318990142D6FEDD8D9B2FAAFBF8CD5AB34AF52E89DCED87D7F986BA2
          39FC2A40EB612AA9F598749AA1DDD398CCDDF9A2C25524DA39AD6EF6F9955283
          8A931E9DDC97571C9C7A8E9139C1B41B2A99EE22C1674EE63AD7B7B4DB857D3F
          7148E69A9EDADD7D79B05254AB8A6D2D02FF00A596053B6853724511A723CA02
          ACB44813BBE493C02C10B4A09A3C714226F1DAD1D57EBF25602F6157AADB749B
          92C9DC2F3B26F3014CAA22E5B5AC68D247083D6D288E4E8884F4CE2B34818827
          8E92F785691A0051F85E6AE2F2A061994CB4D76AAE68FD5D6D593B2155D6DBDB
          424DE64ED4A5DBAFD4CCB1BAA143584F5BE30D538A2ADCA76C9B7662BADE80D8
          A4C6CB54E66E1E58D7A0704EDCADA8D46A9B8472C0CBEBFA3FB844CACAAFA5FB
          45B655430C02B279CC88AA874F2A29656A8EDE7D293F9441F59A7D6C58D69C8D
          4405016238FF009658D3B5815283C3956BD4812961182F7A81AE86EABD2D8A8D
          44C713C37EAADFD65E6421610C6F19C5DF7B58B74059F0D20747700331B0CF7E
          1FE360EC614F96F1B0593E27840062C776C09EC4D92BD9CD31B229E19B4147EC
          86E25EF5258D20AD8E9155EE110DCAB3DEAC2B3686B66AC4B3567512985BAA55
          0DC984EA81D9B1D5138B592E2872467034A30F99FE87EE86D43D52D2CDB8DBAA
          E19F1AFBB1D436C157950EAFD32F710A91EDEE9BB11B258E4AADC72B2AC09D58
          53F7290C6D3AA6F694C8D7313447D6A80389C95D8F20809705D7F85BABF99FE6
          3FAE41FE6E1FC517CB7D3F2BAFCA7D2CFA69F43FC7F9ABA79F2FEF3F30747574
          FECBC8F3FDAF0A2DC1B7E21AEDD57E6AB6FA5FD7ABAC3248FDAF7B2B67C86DE8
          1DBADCD0B15C512BED8ABD5C96475DC8DD12967A38F4B23D213D7149922B34B3
          17B6145AB2422C64D093998DB573F5E09BEA8CFEC0BFAB880F04DF5467F605FD
          5C01E09BEA8CFEC0BFAB8070DAC9AA57FEE2DB719A4B5DAB4935913E93B82342
          048CCDAACC6B6144AD5149CE92CC5F7C2C35C5228D7E2F8AADC57984A54E5079
          885F663323C207B236ADD2C5EB76B56BFEBE14F19910690A5EB2A98520C94626
          F8E9B5FC319E2C7BC0131861C6242DCCF6B11C127231F8201E03CF3CB9F1D50B
          CF007007007007007007007010E78E7CB9FA78039E3D3F9BEDE023C01C01CF1F
          6F3F47E5E00E021CF1E8CFA3F3678039E33F6671C04780B32C6162725CDEE6E2
          CCD2E0E4D23198D4E0B5BD1AA5CD860F1C8C31BD59E418A118861F467258C39C
          E3EDE02F18CE33E9C7FDF9FF00B3F2F0073C63F37FC38039E3F2E3F4E3808F00
          7010E78FCB8FD38E00E78FCB8FD38E00E78FCB8FD38E023C0483882541432541
          452824D0E4269271603493039F4F2194308806633F9F80B4FCAD19FF002E317A
          3ECFF086FF0077E00F95E33FE5D62FFA437FBBF007CAF19FF2EB17FD21BFDDF8
          0AE46D8DEDD8185BD022420333D46051244E97060B1CB964CC12006062E5FD39
          E02BF803803803803803803803806A3BAB6ACEA95D739C58B5BC8AAA89CAD955
          C54848FD73BEA48CC1D1A07495B3363D832F8EAB9A230DD2A5ACCA8F21846F8B
          DB5872F6624C38AB4E8F271980D5CC1FB8E6CBD9578D13128D06AC87C2A6708D
          5392461A76023E5D2F3FDB263B88996E2F19856B1E74B09C1FA2721AAD4C54B4
          ACCC4CA8E5C854293BCE2E72C33B835ADE084F1A3BA6ED1331E49D292600E6BC
          9A0E617C5DF5DB96B5DED0191EAAB8D75B35ADF5A5A95F3B3939C9958ED266AA
          2A5B5244BDD5D1B508CD129610BC031F0854427C94E3A09BD9B05B0BB028E154
          AA8A7566BA7D54DB0CACB5C503B45D575814BEB8C2B574E6947523D96FCC9177
          67B9C59572BFB51928C094320D035E4E6A2959A4F59CF40D49CF742EA9842A80
          AB7167C728A75766AED6618E6BF278BDEAED7DDE712BB9F684975A364D7D71BA
          CA472922230B3CD7C893818AD24970980C6E7F35AB00DD527868919A19DD36F4
          717FBDC88A3B57E2AF123143A5EDB61CCAAE78CBEE9CC75E36C7341D82B364EB
          F88CFD500D056D5B182941CD4E8E71D91203DBD51CF0991B5E0E3108F5391D50
          D80B79EF58FB8ADBA8EE8ABAD09440761EF82E9CB927E82D2866B6393241290A
          97E55907975E075746AA6913F27526BC2D8A28718F2A561725CD4A8E20EC0F87
          21A93F7744D8322ABAE64245974DD759328EBC2C268B3AD0A85D2511EDACD8BA
          82CC570E2B532976EAA2D2768C3D94B5A028D4259244DEA46B27253C27531A6F
          CFC39E1190BF00A04E77B2F297B4EECB4CD9F2B1A767D5AD2B7C8619DBD5F639
          3951B18FCCF14D7D69B0582E5597656D68C71E011D7E90BCA80015455A8684B6
          F2C2853399520214E490C17603B81DD53498EC5D215CAD93B6445D284DD36442
          CADF0C90C2B63A84B075A2AC873DC6275E6D82412597A5895BEFCF8B7E5F58FE
          D6C4E0F284E6D5ECD937193BC57907C7BFDB892DD73B4E8CAE51DE548EB4422C
          BA7B656C590DCD7557B26B252A0945203A6D443E1CD0D0C5348721201292276E
          425C154689638929028DAB2072389CE41AEB47739D87739A51E078AFD04064B2
          18A415A6F2D5C974294A7B42212C99EAE58F7EAAB0A17E4E62A67E7D72C3248D
          B3350D73C30236FC0D63835283487B4232CB781AB149FB93ED141A0BA82E9255
          B5A2FB96C6AF3576EFB56AB4153BDC4E2F634436CADC8A404359D0A091D9CF36
          EBE4EA848D2F705EF8AD1B53B14947F0F54EC4A14EB3CB168F3E4397DD9DCED8
          FA6F6B6B2A16A66CA922CCD25AAE3D62C524D79BB1313876C0D94E773B7D72FB
          AECC33A72746FF0096DFA39075817917C09049E4662F786A330D796E25778EEE
          859E2B7B5F95876F8B42CD852D324D7213BBB73D6513537737D83602065659DF
          72C90526800E0D6D2AD9E62F71D80C124B9C33109141294099BD30402C230F2E
          1FCFEC2647EEE6E952F207074BACF855955C466C3DBCA3DF08A975C2D14B632C
          2F5D68F7EBAA0D7C31B4AA982F657F7898099C6CAEB1821427683C632D436B90
          324AB24208BB87740DAD470BCB5065DAE0535A6D83B32B8FBE5B894C04D085B3
          C7B576BEBFEA98CC85C4CB45055E6BED913A992B8DAC766A93188B0DCC8AC86F
          24D7C116103F0335D94DEBDA56F6DDACAB489EC1ABEB61B7481D6E8ACD16BBC5
          0EBDD55353588D5B57CFEC2576CBDA9589A53165987292BB62307AF89931A934
          7CF6E1A071F8E275ADA638F50A74F77776C18CEBD65B1894D16F7AE755834EA0
          11EBF1155B377F40B526C744EAD9959FBA92F31B67E9232B687A9E392A3CE42C
          D1F355832352254F0EC81B1B8F52308FF101BD7EEB1F3F7CDB527CBDF7D1FBAF
          FDFF007E9ECCBEEE9F427E17E77EF7FF004F3E29FF0097FE77FF00D37F3FF1FF
          00913E71FF001BF8A7CBBFB3E16378DC01C01C01C01C01C01C01C01C01C01C01
          C01C048388215146A752494790780651E41E580D24F28C0E4232CD2478100C28
          C0E738CE058CE33C07C0D2A530D4EA069881A849834294E112588D4A13C2101C
          14E3C872611834000E07D3CB9E3973E011CAEB5CA8CA9251299B57157C4E272E
          9A0069A45236D6FEA7656DA6B9AA7B1B1245AACC506B3C644F6B8F5BF0B4794E
          DD85A78CFC13E28C43C82D05145905964905809289000A28A28012CB28B2C380
          0005803C8002C00C63A438C72C6380F911040CF2D408A2B2A092CD24A3F25832
          71651E328679459BCBC401678C806461C6790B20C73FB31C07C052A50E140429
          8808558C662A08492C21546180C1660D407A3183CC30A06022C8B9F3C6397013
          0A20924A2C828A2CB20A2C24964960080A2CA007A00500B0F2000B0031D380E3
          1CB18E02461020C14953851A409084448D11384C56094834E1C8091A42BA3C34
          E32422E40C83974E3ECE0277974F83FCDE0827CD785E5FCCF860F31E5FAFC5F0
          3C5E9F13C2C0FF005BA39F2E7E9E000A720B34E3CB20901EA3C3F30700B004E3
          FC10F413E31B80E0667860CF20F5673D3FD1C0634BA0B0C749732CF5CA2CC4BA
          6B1C617F8B304A55B62550FACD1C94B9471DE46C8DCE269425291B1EDD21ED4A
          14921160069ADE40858E65879064BE027F1FCD7805799C93E5FC7F0C3E3797EB
          F13C0F17A7AFC3EBFD6E8E7CB9FA780049C819A51E324A19E9F0660838658447
          1383B0109D824C107232F07746302E9E5D5CBD3C07C1C95328C902509C83C494
          FC294C238A2CCCA652001A585427C8C23C94A0251A30F58790B96738FB339E02
          AB80380A2CB720CA5020CA2499425F8382D1E5313E50BF00C01A47869FA3C007
          8269781079071D22C6338E5C04EC2720078D4849282A0D2CB28C3F0583071851
          4230451433718EB196588D16421FB319CE7F2E78002412124298049414C12B04
          848096109212301E8F070560382F05747EAF4F2E5CB8097E451F93F87F944DE4
          3CB792F23E017E4FC9785E0793F2BD1E0795F0BF53A3A7A3A3D1CB97012BA9D7
          D537FEFD4FBB704D1D4EBEA9BFF7EA7DDB81A3A9D7D537FEFD4FBB7034753AFA
          A6FF00DFA9F76E068EA75F54DFFBF53EEDC0D1D4EBEA9BFF007EA7DDB81A39B9
          FAA43ED4ABDDB81A8F53A7A941ED2A3DD781A87373F5487DA957BB70347373F5
          487DA957BB70351EA74F5283DA547BAF034753A7A941ED2A3DD781A87373F548
          7DA957BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA9
          57BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA957BB
          70347373F5487DA957BB7034753AFAA6FF00DFA9F76E068E6E7EA90FB52AF76E
          068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E
          6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7E
          A90FB52AF76E068EA75F54DFFBF53EEDC0D1CDCFD521F6A55EEDC0D1CDCFD521
          F6A55EEDC0D439B9FAA41ED4A7DDB81AFFD9}
        mmHeight = 16934
        mmLeft = 10848
        mmTop = 6085
        mmWidth = 72230
        BandType = 4
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText13'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object BDEPDetCalLiq: TppBDEPipeline
    DataSource = DM1.dsDetCalLiq
    UserName = 'BDEPDetCalLiq'
    Left = 590
    Top = 10
    object BDEPDetCalLiqppField1: TppField
      FieldAlias = 'DESC'
      FieldName = 'DESC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 0
    end
    object BDEPDetCalLiqppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPDetCalLiqppField3: TppField
      FieldAlias = 'GRABAR'
      FieldName = 'GRABAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object BDEPDetCalLiqppField4: TppField
      FieldAlias = 'TIPDES'
      FieldName = 'TIPDES'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
  end
  object BDEPDetDes: TppBDEPipeline
    DataSource = DM1.dsDetDes
    UserName = 'BDEPDetDes'
    Left = 561
    Top = 10
    object BDEPDetDesppField1: TppField
      FieldAlias = 'DESC'
      FieldName = 'DESC'
      FieldLength = 90
      DisplayWidth = 90
      Position = 0
    end
    object BDEPDetDesppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPDetDesppField3: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object BDEPDetDesppField4: TppField
      FieldAlias = 'CREDID'
      FieldName = 'CREDID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object BDEPDetDesppField5: TppField
      FieldAlias = 'GRABAR'
      FieldName = 'GRABAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
  end
  object BDEPRetJud: TppBDEPipeline
    DataSource = DM1.dsRetJud
    UserName = 'BDEPRetJud'
    Left = 534
    Top = 10
    object BDEPRetJudppField1: TppField
      FieldAlias = 'DESC'
      FieldName = 'DESC'
      FieldLength = 150
      DisplayWidth = 150
      Position = 0
    end
    object BDEPRetJudppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPRetJudppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCENTAJE'
      FieldName = 'PORCENTAJE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object BDEPRetJudppField4: TppField
      FieldAlias = 'FORPAGID'
      FieldName = 'FORPAGID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object BDEPRetJudppField5: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 4
    end
    object BDEPRetJudppField6: TppField
      FieldAlias = 'AGENBCOID'
      FieldName = 'AGENBCOID'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object BDEPRetJudppField7: TppField
      FieldAlias = 'PVSLDNIBEN'
      FieldName = 'PVSLDNIBEN'
      FieldLength = 8
      DisplayWidth = 8
      Position = 6
    end
    object BDEPRetJudppField8: TppField
      FieldAlias = 'PVSNOMBRE'
      FieldName = 'PVSNOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object BDEPRetJudppField9: TppField
      FieldAlias = 'PVSLNCTA'
      FieldName = 'PVSLNCTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object BDEPRetJudppField10: TppField
      FieldAlias = 'GRABAR'
      FieldName = 'GRABAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
  end
  object BDEPObs: TppBDEPipeline
    DataSource = DM1.dsObs
    UserName = 'BDEPObs'
    Left = 506
    Top = 10
    object BDEPObsppField1: TppField
      FieldAlias = 'DESC'
      FieldName = 'DESC'
      FieldLength = 80
      DisplayWidth = 80
      Position = 0
    end
    object BDEPObsppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPObsppField3: TppField
      FieldAlias = 'GRABAR'
      FieldName = 'GRABAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
  end
  object BDEPForPag: TppBDEPipeline
    DataSource = DM1.dsForPag
    UserName = 'BDEPForPag'
    Left = 479
    Top = 10
    object BDEPForPagppField1: TppField
      FieldAlias = 'DESC'
      FieldName = 'DESC'
      FieldLength = 150
      DisplayWidth = 150
      Position = 0
    end
    object BDEPForPagppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPForPagppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCENTAJE'
      FieldName = 'PORCENTAJE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object BDEPForPagppField4: TppField
      FieldAlias = 'FORPAGID'
      FieldName = 'FORPAGID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object BDEPForPagppField5: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 4
    end
    object BDEPForPagppField6: TppField
      FieldAlias = 'AGENBCOID'
      FieldName = 'AGENBCOID'
      FieldLength = 8
      DisplayWidth = 8
      Position = 5
    end
    object BDEPForPagppField7: TppField
      FieldAlias = 'PVSLDNIBEN'
      FieldName = 'PVSLDNIBEN'
      FieldLength = 8
      DisplayWidth = 8
      Position = 6
    end
    object BDEPForPagppField8: TppField
      FieldAlias = 'PVSNOMBRE'
      FieldName = 'PVSNOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
    object BDEPForPagppField9: TppField
      FieldAlias = 'PVSLNCTA'
      FieldName = 'PVSLNCTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object BDEPForPagppField10: TppField
      FieldAlias = 'APENOMTUT'
      FieldName = 'APENOMTUT'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object BDEPForPagppField11: TppField
      FieldAlias = 'DOCIDETUT'
      FieldName = 'DOCIDETUT'
      FieldLength = 8
      DisplayWidth = 8
      Position = 10
    end
    object BDEPForPagppField12: TppField
      FieldAlias = 'FECNACMEN'
      FieldName = 'FECNACMEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object BDEPForPagppField13: TppField
      FieldAlias = 'GRABAR'
      FieldName = 'GRABAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object BDEPForPagppField14: TppField
      FieldAlias = 'APEPATCOB'
      FieldName = 'APEPATCOB'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object BDEPForPagppField15: TppField
      FieldAlias = 'APEMATCOB'
      FieldName = 'APEMATCOB'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object BDEPForPagppField16: TppField
      FieldAlias = 'NOMCOB'
      FieldName = 'NOMCOB'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object BDEPForPagppField17: TppField
      FieldAlias = 'CODRELCOB'
      FieldName = 'CODRELCOB'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object BDEPForPagppField18: TppField
      FieldAlias = 'APEPATTUT'
      FieldName = 'APEPATTUT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object BDEPForPagppField19: TppField
      FieldAlias = 'APEMATTUT'
      FieldName = 'APEMATTUT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object BDEPForPagppField20: TppField
      FieldAlias = 'NOMTUT'
      FieldName = 'NOMTUT'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
  end
  object BDEPDetDev: TppBDEPipeline
    DataSource = DM1.dsDetDev
    UserName = 'BDEPDetDev'
    Left = 451
    Top = 10
    object BDEPDetDevppField1: TppField
      FieldAlias = 'DESC'
      FieldName = 'DESC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 0
    end
    object BDEPDetDevppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'MONTO'
      FieldName = 'MONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object BDEPDetDevppField3: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object BDEPDetDevppField4: TppField
      FieldAlias = 'GRABAR'
      FieldName = 'GRABAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '10.10.10.41'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 451
    Top = 45
  end
  object ppBDEPReporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'BDEPReporte'
    Left = 592
    Top = 40
  end
end
