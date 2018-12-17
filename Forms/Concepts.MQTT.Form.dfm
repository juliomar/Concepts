object frmMQTTNode: TfrmMQTTNode
  Left = 0
  Top = 0
  ClientHeight = 321
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLogging: TPanel
    Left = 0
    Top = 129
    Width = 359
    Height = 192
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object pgcMessage: TPageControl
    Left = 0
    Top = 0
    Width = 359
    Height = 129
    ActivePage = tsEndpoints
    Align = alTop
    TabOrder = 1
    object tsEndpoints: TTabSheet
      Caption = 'MQTT broker'
      ImageIndex = 3
      object grpEndPoint: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 345
        Height = 95
        Align = alClient
        TabOrder = 0
        object edtAddress: TLabeledEdit
          Left = 54
          Top = 5
          Width = 174
          Height = 21
          Alignment = taCenter
          EditLabel.Width = 43
          EditLabel.Height = 13
          EditLabel.Caption = 'Address:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LabelPosition = lpLeft
          LabelSpacing = 1
          ParentFont = False
          TabOrder = 0
          Text = 'localhost'
        end
        object edtPort: TLabeledEdit
          Left = 264
          Top = 5
          Width = 75
          Height = 21
          Alignment = taCenter
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'Port:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LabelPosition = lpLeft
          LabelSpacing = 1
          ParentFont = False
          TabOrder = 1
          Text = '1883'
        end
        object btnConnectToBroker: TButton
          Left = 8
          Top = 33
          Width = 120
          Height = 25
          Caption = '&Connect'
          ImageIndex = 3
          TabOrder = 2
          OnClick = actConnectExecute
        end
        object btnDisconnect: TButton
          Left = 8
          Top = 64
          Width = 120
          Height = 25
          Caption = 'Disconnect'
          TabOrder = 3
          OnClick = actDisconnectExecute
        end
      end
    end
    object tsSubscriptions: TTabSheet
      Caption = 'Subscriptions'
      ImageIndex = 4
      object grpSubscriptions: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 345
        Height = 95
        Align = alClient
        TabOrder = 0
        DesignSize = (
          345
          95)
        object edtTopic: TLabeledEdit
          Left = 41
          Top = 8
          Width = 99
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 29
          EditLabel.Height = 13
          EditLabel.Caption = 'Topic:'
          LabelPosition = lpLeft
          TabOrder = 0
        end
        object lbxTopics: TListBox
          Left = 157
          Top = 30
          Width = 185
          Height = 61
          Anchors = [akLeft, akTop, akRight, akBottom]
          ItemHeight = 13
          TabOrder = 1
        end
        object tlbSubscriptions: TToolBar
          Left = 157
          Top = 6
          Width = 170
          Height = 23
          Align = alNone
          ButtonWidth = 58
          Images = imlMain
          List = True
          ShowCaptions = True
          AllowTextButtons = True
          TabOrder = 2
          object btnClearSubscriptions: TToolButton
            Left = 0
            Top = 0
            Caption = 'Clear'
            ImageIndex = 2
            Style = tbsTextButton
            OnClick = actClearSubscriptionsExecute
          end
          object btnAddSubscription: TToolButton
            Left = 56
            Top = 0
            Caption = 'Add'
            ImageIndex = 0
            Style = tbsTextButton
            OnClick = actAddSubscriptionExecute
          end
          object btnDeleteSubscription: TToolButton
            Left = 106
            Top = 0
            Caption = 'Delete'
            ImageIndex = 1
            Style = tbsTextButton
            OnClick = actDeleteSubscriptionExecute
          end
        end
      end
    end
    object tsPublish: TTabSheet
      Caption = 'Publish'
      DesignSize = (
        351
        101)
      object btnSend: TButton
        Left = 250
        Top = 41
        Width = 100
        Height = 25
        Anchors = [akTop, akRight]
        Caption = 'Publish'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = actPublishExecute
      end
      object mmoPublish: TMemo
        Left = 3
        Top = 40
        Width = 241
        Height = 59
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object edtCounter: TLabeledEdit
        Left = 299
        Top = 103
        Width = 49
        Height = 21
        Alignment = taCenter
        Anchors = [akTop, akRight]
        EditLabel.Width = 43
        EditLabel.Height = 13
        EditLabel.Caption = 'Counter:'
        LabelPosition = lpLeft
        NumbersOnly = True
        TabOrder = 2
        Text = '0'
      end
      object btnPopulateMemo: TButton
        Left = 248
        Top = 72
        Width = 100
        Height = 25
        Hint = 'Populates the list with 1000 random names.'
        Anchors = [akTop, akRight]
        Caption = '&Populate list'
        TabOrder = 3
        OnClick = actPopulateMemoExecute
      end
      object edtPublishTopic: TLabeledEdit
        Left = 40
        Top = 13
        Width = 204
        Height = 21
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'Topic'
        LabelPosition = lpLeft
        TabOrder = 4
      end
    end
    object tsReceive: TTabSheet
      Caption = 'Receive'
      ImageIndex = 1
      DesignSize = (
        351
        101)
      object mmoReceive: TMemo
        Left = 3
        Top = 3
        Width = 262
        Height = 95
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btnClearReceived: TButton
        Left = 271
        Top = 1
        Width = 80
        Height = 25
        Action = actClearReceived
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object tsSettings: TTabSheet
      Caption = 'Settings'
      ImageIndex = 2
      DesignSize = (
        351
        101)
      object grpMonitorEvents: TGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 3
        Width = 199
        Height = 95
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Monitor events'
        TabOrder = 0
        object lbxEvents: TCheckListBox
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 189
          Height = 72
          Align = alClient
          AutoComplete = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            'Connected'
            'Delayed'
            'Retried'
            'Listening'
            'BindFailed'
            'Accepted'
            'AcceptFailed'
            'Closed'
            'CloseFailed'
            'Disconnected'
            'MonitorStopped')
          TabOrder = 0
        end
      end
      object grpPollingSettings: TGroupBox
        AlignWithMargins = True
        Left = 207
        Top = 3
        Width = 130
        Height = 72
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Polling'
        TabOrder = 1
        object edtPollTimeout: TLabeledEdit
          Left = 12
          Top = 37
          Width = 50
          Height = 21
          EditLabel.Width = 79
          EditLabel.Height = 13
          EditLabel.Caption = 'Poll timeout (ms)'
          NumbersOnly = True
          TabOrder = 0
          Text = '10'
        end
      end
    end
  end
  object imlMain: TImageList
    ColorDepth = cd32Bit
    Left = 290
    Top = 64
    Bitmap = {
      494C010106000800580010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000050000000E0000001A0000
      002600000030000000330321008F075100CC075100CC0321008F000000330000
      00330000002A0000001D00000010000000060000000000000000000000000000
      000000000000000000000000000000010021012B00A6034100CC012B00A60001
      0021000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001400000037000000670000
      0098000000BF000000CC053000CC61EA50FF61EA50FF053000CC000000CC0000
      00C9000000A8000000740000003F000000150000000000000000000000000000
      0000000000000000000000000000053800A71D9811E833E122FF1D9811E80538
      00A70000000000050033075400CC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000073B00990A4F00CC0A4F00CC073B0099000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000004D0000006600000066095D00CC55E744FF55E744FF55E744FF095D
      00CC00000000095D00CC074700B3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B0000007B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202660000000000000000074300A73BA92CE871ED60FF3BA92CE80743
      00A700000000000600330B6500CC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B0000007B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030366000000000000000000020021094600A60D6B00CC094600A60002
      0021000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B0000007B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606660000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B0000007B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808660000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000B0000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0A0A660000000000000000000000140101016102020277010101610000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000290000003A00000007000000070000003A000000290000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B6600000000000000000505055E575757BDE4E4E4FF575757BD0505
      055E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001A000000390000000000000065000000910000009100000065000000000000
      00390000001800000000000000000000000000000000000000000D0D0D660D0D
      0D660D0D0D660D0D0D660D0D0D660D0D0D6FF2F2F2FFF2F2F2FFF2F2F2FF0D0D
      0D6F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000550000004600000019000000000000000000000019000000460000
      0055000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B57696969B8FDFDFDFF696969B80B0B
      0B57000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000360000005A00000068000000680000005A000000360000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000110D0D0D54141414670D0D0D540000
      0011000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B6338E80C7742FF0C7742FF0C7742FF0C7742FF0B6338E80000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E7946FF43A581FF3FA380FF3DA27DFF3AA17CFF0E7946FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000107C49FF4CAC8CFF2C9E77FF2C9E77FF45A988FF107C49FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000030747001C37CC001B36CC00030648000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000127E4CFF56B494FF31A37CFF31A37CFF4EB08FFF127E4CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000030648001B36CC5394B7FF33669AFF001D38CA000307480000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000148150FF60BA9CFF37A983FF37A983FF58B797FF148150FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000050841002841BB39709FFF376E9DFF5E9FC0FF4477ABFF00213BC60004
      0746000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000136D46E8168453FF168453FF1684
      53FF168453FF198052F768C0A3FF3DAE89FF3DAE89FF61BD9FFF198052F71684
      53FF168453FF168453FF168453FF136D46E804048AE80303A6FF0303A6FF0303
      A6FF0303A6FF0303A6FF0202A6FF0202A6FF0202A6FF0202A6FF0202A6FF0202
      A6FF0202A6FF0202A6FF0202A6FF04048AE80000000000000000000000000003
      0648001B36CC4E8DB3FF67ACC8FF4780ACFF4F87B3FF69AAC8FF5488BBFF0024
      3EC1000407440000000000000000000000000000000000000045010101800101
      018A0101018A0101018A010101800000004500000045010101800101018A0101
      018A0101018A010101800000004500000000188657FF7BC8AFFF79C9AEFF77C8
      ADFF75C7ACFF73C7ACFF71C7AAFF42B48EFF42B48EFF6AC4A6FF67C3A4FF65C1
      A3FF61BFA0FF5EBE9EFF5BBC9CFF188656FF0B0BABFF5F5FD5FF5E5ED5FF5D5D
      D5FF5C5CD5FF5C5CD5FF5A5AD5FF5959D5FF5757D4FF5656D4FF5454D4FF5353
      D2FF5151D2FF4E4ED1FF4C4CD0FF0A0AABFF00000000000000000005083F002B
      43B65EA1C0FF3E78A3FF4177A7FF65A6C5FF609DC2FF5D95C1FF73B4D1FF6498
      CBFF000000AB0000003C0000000000000000010101420F0E0E96837C7CE3CCBF
      BFFCE3D4D4FFD1C4C4FC857D7DE30F0E0E960F0E0E96837C7CE3CCBFBFFCE3D4
      D4FFD1C4C4FC857D7DE30F0E0E96010101421A895AFF84CEB5FF44B690FF45B7
      91FF46B892FF47B993FF48B994FF48B994FF48B994FF48B994FF48B994FF47B9
      93FF46B892FF45B791FF63C2A3FF1A895AFF1313B0FF6E6EDDFF4C4CD5FF4D4D
      D6FF4E4ED7FF4F4FD7FF5050D8FF5050D8FF5050D8FF5050D8FF5050D8FF4F4F
      D7FF4E4ED7FF4D4DD6FF5D5DD9FF1111B0FF0000000000030648001B36CC3267
      98FF4F8CB3FF68ABC8FF66A7C6FF4C80B3FF70B1CEFF6DA9CDFF6BA3CEFF6C6C
      6CFFAA9999FF000000A500050842000000000808086E8D8888DF423F3FB60303
      03720000007B767676FF767676FF767676FF767676FF767676FF767676FF0000
      007B03030372423F3FB68D8888DF0808086E1C8B5DFF8BD3BBFF4ABB96FF4BBC
      97FF4CBD98FF4DBE99FF4DBF99FF4EBF9AFF4EBF9AFF4EBF9AFF4DBF99FF4DBE
      99FF4CBD98FF4BBC97FF6DC8AAFF1C8B5DFF1A1AB5FF7D7DE4FF5858DDFF5959
      DEFF5B5BDFFF5C5CE0FF5D5DE0FF5E5EE1FF5E5EE1FF5E5EE1FF5D5DE0FF5C5C
      E0FF5B5BDFFF5959DEFF6D6DE1FF1919B5FF0005083E002C44B169AEC9FF65A8
      C5FF5592B8FF4A80AFFF5C97BFFF76B9D2FF659DC8FF7ABAD5FF7D7D7DFFCEC0
      C0FF787878FF5488BBFF002135A6000000000B0B0B72C7C7C7F8070808800000
      00000101018AC1C2C2FFD5D6D6FFEAEAEAFFEBEBEBFFDADADAFFC6C6C6FF0101
      018A0000000007080880C7C7C7F80B0B0B721E8E61FF93D7C1FF91D7C0FF90D7
      C0FF8ED7BFFF8CD7BEFF8BD7BEFF53C59FFF53C59FFF84D5BAFF82D4B9FF7ED2
      B7FF7AD1B4FF78CFB3FF75CEB1FF1E8E60FF2222BAFF8989E9FF8B8BE9FF8C8C
      E9FF8D8DE9FF8D8DE9FF8E8EE9FF8D8DE9FF8D8DEAFF8B8BE8FF8989E8FF8787
      E8FF8484E7FF8080E7FF7B7BE6FF2121BAFF00192683093850B812465EC32257
      71D048859DE76FB3CAFB6DACCCFF659DC8FF83C7DAFF888888FFD3CACAFF8383
      83FF5FA4C6FF62A7C9FF002236A5000000000A0A0A65909090DC4B4C4CC50505
      058F0101018A888888FF999999FF999999FF999999FF999999FF888888FF0101
      018A0505058F4B4C4CC5909090DC0A0A0A651D7955E8209064FF209064FF2090
      64FF209064FF238B64F792DCC3FF59CAA5FF59CAA5FF8CDAC1FF238B64F72090
      64FF209064FF209064FF209064FF1D7955E825259FE82A2ABFFF2A2ABFFF2A2A
      BFFF2A2ABFFF2A2ABFFF2A2ABFFF2A2ABFFF2A2ABFFF2929BFFF2929BFFF2929
      BFFF2929BFFF2929BFFF2929BFFF24249FE80000000500000014000203280006
      094100141F77073044AB367289DB76B5CFFC919191FFD9D4D4FF8D8D8DFF67AC
      CEFF73B8D4FF002B42B40005084000000000030303351818187D929292DBD9D9
      D9FDE3E3E3FFDCDCDCFD969696DD0E0E0E7B0E0E0E7B929292DBD9D9D9FDE3E3
      E3FFDCDCDCFD969696DD1818187D030303350000000000000000000000000000
      000000000000229367FF9ADFC9FF5FCDA9FF5FCDA9FF94DDC5FF229367FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000001000111A6D00000069DDDCDCFF949494FF6FB4D6FF80C4
      DBFF002C44B200103ECC000107480000000000000000030303330B0B0B5F0D0D
      0D670D0D0D670D0D0D670B0B0B5F03030333030303330B0B0B5F0D0D0D670D0D
      0D670D0D0D670B0B0B5F03030333000000000000000000000000000000000000
      00000000000024956BFFA1E2CDFF65CFADFF66CFADFF9BE0CAFF24956BFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000240000006788CCDDFF87CBDDFF002D
      44AF001E51CC3E71B6FF00184ACC000209480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000026976EFFA9E4D0FF6BD1B0FF6CD1B0FFA3E2CDFF26976EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000203390025389C0025379C0005
      083E00040A48002256CC5185C9FF001D50CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000289A71FFAFE6D4FFAEE6D3FFADE5D3FFAAE5D1FF289A71FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000050B4800265ACC00040A480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000268362E82B9C75FF2A9C75FF2A9C75FF2A9C75FF258362E80000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object aclMain: TActionList
    Images = imlMain
    Left = 224
    Top = 64
    object actConnect: TAction
      Caption = '&Connect'
      ImageIndex = 3
      OnExecute = actConnectExecute
    end
    object actPublish: TAction
      Caption = 'Publish'
      OnExecute = actPublishExecute
    end
    object actCreateNew: TAction
      Caption = 'New node'
      ImageIndex = 5
    end
    object actClose: TAction
      Caption = 'Close'
      Hint = 'Close connection'
    end
    object actAddSubscription: TAction
      Caption = 'Add'
      ImageIndex = 0
      OnExecute = actAddSubscriptionExecute
    end
    object actDeleteSubscription: TAction
      Caption = 'Delete'
      ImageIndex = 1
      OnExecute = actDeleteSubscriptionExecute
    end
    object actClearSubscriptions: TAction
      Caption = 'Clear'
      ImageIndex = 2
      OnExecute = actClearSubscriptionsExecute
    end
    object actCreateNewWithNewContext: TAction
      Caption = 'New node/'#13#10'new context'
      ImageIndex = 5
    end
    object actClearReceived: TAction
      Caption = 'Clear'
      ImageIndex = 2
      OnExecute = actClearReceivedExecute
    end
    object actPopulateMemo: TAction
      Caption = '&Populate list'
      Hint = 'Populates the list with 1000 random names.'
      OnExecute = actPopulateMemoExecute
    end
    object actCreateNewSubscriberNode: TAction
      Caption = 'Create new subscriber node'
    end
    object actCreateNewSUBNode: TAction
      Caption = 'Subscriber'
    end
    object actCreateNewPUBNode: TAction
      Caption = 'Publisher'
    end
    object actDisconnect: TAction
      Caption = 'Disconnect'
      OnExecute = actDisconnectExecute
    end
  end
end
