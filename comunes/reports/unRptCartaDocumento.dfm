inherited rptCartaDocumento: TrptCartaDocumento
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'QRSTRINGSBAND1')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    #39#39)
  Page.Values = (
    670.000000000000000000
    3556.000000000000000000
    40.000000000000000000
    2159.000000000000000000
    50.000000000000000000
    50.000000000000000000
    0.000000000000000000)
  inherited qrbPageHeader: TQRBand
    Size.Values = (
      1169.458333333333000000
      2058.458333333333000000)
    inherited qrlDestDomicilio: TArtQRLabel
      Width = 313
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        354.541666666667000000
        828.145833333333000000)
      Font.Height = -12
      FontSize = 9
      ExplicitWidth = 313
    end
    inherited qrlDestDomicilio_Abajo: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        386.291666666667000000
        793.750000000000000000)
      FontSize = 8
    end
    inherited qrlDestNombre: TArtQRLabel
      Width = 277
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        280.458333333333000000
        732.895833333333000000)
      Font.Height = -13
      FontSize = 10
      ExplicitWidth = 277
    end
    inherited qrlRemNombre: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        95.250000000000000000
        280.458333333333000000
        923.395833333333000000)
      Font.Height = -13
      FontSize = 10
    end
    inherited qrlRemDomicilio: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        95.250000000000000000
        354.541666666667000000
        923.395833333333000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlRemCPostal: TArtQRLabel
      Width = 89
      Size.Values = (
        44.979166666666700000
        95.250000000000000000
        423.333333333333000000
        235.479166666667000000)
      Font.Height = -12
      FontSize = 9
      ExplicitWidth = 89
    end
    inherited qrlRemLocalidad: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        359.833333333333000000
        423.333333333333000000
        383.645833333333000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlDestProvincia: TArtQRLabel
      Top = 160
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666700000
        1746.250000000000000000
        423.333333333333000000
        216.958333333333000000)
      Font.Height = -12
      FontSize = 9
      ExplicitTop = 160
      ExplicitWidth = 82
      ExplicitHeight = 17
    end
    inherited qrlDestLocalidad: TArtQRLabel
      Top = 160
      Height = 17
      Size.Values = (
        44.979166666666700000
        1299.104166666670000000
        423.333333333333000000
        386.291666666667000000)
      Font.Height = -12
      FontSize = 9
      ExplicitTop = 160
      ExplicitHeight = 17
    end
    inherited qrlRemLocalidad1: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        359.833333333333000000
        1111.250000000000000000
        394.229166666667000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlRemCPostal1: TArtQRLabel
      Left = 40
      Width = 89
      Size.Values = (
        44.979166666666700000
        105.833333333333000000
        1111.250000000000000000
        235.479166666667000000)
      Font.Height = -12
      FontSize = 9
      ExplicitLeft = 40
      ExplicitWidth = 89
    end
    inherited qrlRemDomicilio1: TArtQRLabel
      Left = 40
      Size.Values = (
        44.979166666666700000
        105.833333333333000000
        1039.812500000000000000
        923.395833333333000000)
      Font.Height = -12
      FontSize = 9
      ExplicitLeft = 40
    end
    inherited qrlRemNombre1: TArtQRLabel
      Left = 40
      Size.Values = (
        44.979166666666700000
        105.833333333333000000
        963.083333333333000000
        923.395833333333000000)
      Font.Height = -13
      FontSize = 10
      ExplicitLeft = 40
    end
    inherited qrlDestNombre1: TArtQRLabel
      Width = 277
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        963.083333333333000000
        732.895833333333000000)
      Font.Height = -13
      FontSize = 10
      ExplicitWidth = 277
    end
    inherited qrlDestDomicilio1: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        1039.812500000000000000
        828.145833333333000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlDestLocalidad1: TArtQRLabel
      Top = 420
      Height = 17
      Size.Values = (
        44.979166666666700000
        1299.104166666670000000
        1111.250000000000000000
        396.875000000000000000)
      Font.Height = -12
      FontSize = 9
      ExplicitTop = 420
      ExplicitHeight = 17
    end
    inherited qrlDestProvincia1: TArtQRLabel
      Top = 420
      Height = 17
      Size.Values = (
        44.979166666666700000
        1746.250000000000000000
        1111.250000000000000000
        216.958333333333000000)
      Font.Height = -12
      FontSize = 9
      ExplicitTop = 420
      ExplicitHeight = 17
    end
    inherited qrlNumero: TArtQRLabel
      Left = 395
      Height = 15
      Size.Values = (
        39.687500000000000000
        1045.104166666667000000
        21.166666666666670000
        243.416666666666700000)
      FontSize = 8
      ExplicitLeft = 395
      ExplicitHeight = 15
    end
    inherited qrlNumero1: TArtQRLabel
      Left = 39
      Top = 285
      Size.Values = (
        44.979166666666670000
        103.187500000000000000
        754.062500000000000000
        243.416666666666700000)
      FontSize = 8
      ExplicitLeft = 39
      ExplicitTop = 285
    end
    inherited qrlBarras2: TArtQRLabel
      Left = 88
      Size.Values = (
        121.708333333333300000
        232.833333333333400000
        730.250000000000000000
        915.458333333333200000)
      FontSize = 30
      ExplicitLeft = 88
    end
    inherited qrlBarras1: TArtQRLabel
      Left = 444
      Size.Values = (
        121.708333333333300000
        1174.750000000000000000
        10.583333333333330000
        915.458333333333200000)
      FontSize = 30
      ExplicitLeft = 444
    end
    inherited qrlContrato: TQRLabel
      Size.Values = (
        44.979166666666670000
        95.250000000000000000
        10.583333333333330000
        291.041666666666700000)
      FontSize = 10
    end
    inherited qrlSector: TQRLabel
      Width = 49
      Size.Values = (
        44.979166666666670000
        582.083333333333400000
        10.583333333333330000
        129.645833333333300000)
      Font.Height = -11
      ParentFont = False
      FontSize = 8
      ExplicitWidth = 49
    end
    inherited QRAngledLabel1: TQRAngledLabel
      Size.Values = (
        312.208333333333400000
        1854.729166666667000000
        407.458333333333400000
        31.750000000000000000)
      FontSize = 7
    end
    inherited QRAngledLabel2: TQRAngledLabel
      Size.Values = (
        187.854166666666700000
        1886.479166666667000000
        698.500000000000000000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel3: TQRAngledLabel
      Size.Values = (
        97.895833333333320000
        1915.583333333333000000
        785.812500000000000000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel4: TQRAngledLabel
      Size.Values = (
        230.187500000000000000
        1942.041666666667000000
        656.166666666666800000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel5: TQRAngledLabel
      Size.Values = (
        100.541666666666700000
        1971.145833333334000000
        785.812500000000000000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel6: TQRAngledLabel
      Size.Values = (
        161.395833333333300000
        2000.250000000000000000
        724.958333333333200000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel7: TQRAngledLabel
      Size.Values = (
        82.020833333333340000
        1883.833333333333000000
        476.250000000000000000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel8: TQRAngledLabel
      Size.Values = (
        256.645833333333400000
        1912.937500000000000000
        304.270833333333400000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel9: TQRAngledLabel
      Size.Values = (
        158.750000000000000000
        1942.041666666667000000
        402.166666666666700000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel10: TQRAngledLabel
      Size.Values = (
        119.062500000000000000
        1971.145833333334000000
        439.208333333333400000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel11: TQRAngledLabel
      Size.Values = (
        164.041666666666700000
        1997.604166666667000000
        396.875000000000000000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRAngledLabel12: TQRAngledLabel
      Size.Values = (
        283.104166666666700000
        2024.062500000000000000
        277.812500000000000000
        29.104166666666670000)
      FontSize = 6
    end
    inherited QRImage1: TQRImage
      Size.Values = (
        709.083333333333000000
        1844.145833333330000000
        214.312500000000000000
        216.958333333333000000)
      Picture.Data = {
        0954474946496D61676547494638376152000C01F70000FFFFFF000000000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF602000
        7728008E2F00A43700BB3E00D24600E84D00FF5500FF6C22FF8244FF9966FFB0
        88FFC6AAFFDDCC3322004A3100604000774F008E5E00A46E00BB7D00D28C00E8
        9B00FFAA00FFB522FFC144FFCC66FFD788FFE3AAFFEECC3333004747005C5C00
        707000858500999900ADAD00C2C200D6D600EBEB00FFFF00FFFF29FFFF52FFFF
        7AFFFFA3FFFFCC223300314A004060004F77005E8E006EA4007DBB008CD2009B
        E800AAFF00B5FF22C1FF44CCFF66D7FF88E3FFAAEEFFCC1133001A4D00226600
        2B80003399003CB30044CC004DE60055FF0068FF1D7CFF3A8FFF57A3FF75B6FF
        92CAFFAFDDFFCC003300005000006D00008A0000A80000C50000E20000FF001A
        FF1A33FF334DFF4D66FF6680FF8099FF99B3FFB3CCFFCC003311004D1A006622
        00802B00993300B33C00CC4400E64D00FF551DFF683AFF7C57FF8F75FFA392FF
        B6AFFFCACCFFDD003322004A3100604000774F008E5E00A46E00BB7D00D28C00
        E89B00FFAA22FFB544FFC166FFCC88FFD7AAFFE3CCFFEE003333004D4D006666
        00808000999900B3B300CCCC00E6E600FFFF1DFFFF3AFFFF57FFFF75FFFF92FF
        FFAFFFFFCCFFFF001A3300285000376D00458A0054A80062C50071E20080FF1A
        8CFF3399FF4DA6FF66B3FF80BFFF99CCFFB3D9FFCCE6FF000033000055000077
        0000990000BB0000DD0000FF1717FF2D2DFF4444FF5B5BFF7171FF8888FF9F9F
        FFB5B5FFCCCCFF1A003326004D3300664000804D00995900B36600CC7300E680
        00FF8E1DFF9D3AFFAB57FFBA75FFC892FFD7AFFFE6CCFF3300334D004D660066
        800080990099B300B3CC00CCE600E6FF00FFFF1DFFFF3AFFFF57FFFF75FFFF92
        FFFFAFFFFFCCFF33001A4D002666003380004099004DB30059CC0066E60073FF
        0080FF1D8EFF3A9DFF57ABFF75BAFF92C8FFAFD7FFCCE62C0000000052000C01
        0008FF000108FC07E09F4183030F1E2C4810A1C3860A231264F890A1C58A0F25
        2E14C83180C78F20438A1C49B2A4C99328390208A0B26547972A59C214281366
        CD96375DE6D41973664F9F3B7FDA9C19F4A5CF9542811E2D4A53E950A750911E
        954A7469D4A43CAD1AD55AF52AD6AD4FA332059BB56B589C5CCD52F5FAB56DD3
        B365D58E7DAB362E5AB877C54E5D6B376F5FBA78FDCEE5EBF72F60B787E30E1E
        CB982D61C48017A735FCB87262C17B1B3BAEAC59EFD4CE812F5B1EBD56F266CB
        45419F355DB7B05BD58A334F764DB636E4D2B24F334D3D1BF36794C0830B3779
        7B346CDBC63F173F8E9C73EFA4AC438B767E1AB772DD8E99838D4E1975EBDB37
        B9D3FF6ECEBB7AF8DCDFC9A79F1E19BD74EFEFE79EBFBE1E7E77F9CB9F4F2FFF
        BDE67CFDC9A507DA47D0B9775F765A79C4D77FD86DC6DF50FEF906A0760F66A5
        604E0CD617944CBB69189382DB1938DE7E1E9695617CFA55885687CDB5C8E156
        2C1E182369C96148228A2385481F8477CDF853482FCD285E4F36DAB7628F460E
        69149037F254247E2DB2771C4BBC3DB992483A4E981681D43149DA89326229D5
        85C869D7DE8E32C25822870C2A29254D549609279748BD48159823D629178855
        2269678451D678D886CE5979E599ECBD696790A1C5F9E38E6ED629A6A3E35139
        29A422426629902A1229A6755A2A45288E0F46BA299D94BE762593FEED84A7A6
        4FF9FFE8224E6D666ADB9F708A3665960DFAF956AA8FD28561AD68AEE8A5A32F
        F619ECA112F61A2BAEAC2ED81488B1150B2B513602BBA85CB6FE9AEBB4DE520B
        EEAAD44299A8A0638E9B6CB600828A1DAE7AA67BEAB64E7A8B68837C322A6F57
        C7A67B677EEF62A9EC92FE027AAE991D466B25BCEE7A9863BCB41EB9F0A7AFCE
        FAA1BE11133967B9985ACBABA49CB26B1EC0FCBAFA1849017AD930A90A374A2E
        97DA7E8CA28375715CE4CA078A2A708E19C67CAFC3975EDCA5C90FE39CE780AA
        3E6C2E8D087F8B31BD791AED299D35EE7CE4C8818AFBAF8322F7BB65663753C8
        AEA19E2D15F6AF802A0CD2B8049B989FCAC8867B75BDCB72EBB1BA727B9AB7D7
        65E3FFBB68CCF942CCA3DD66539CE0DACC266B15D415BFC9F5DE6A324EF2B3A8
        02C5B3B420232E75909A0B5E70DB74834EB8E579F90C78BD648F8E6DE9989F7E
        75BF4537CEAC9A2F63CCB6EDDD19DDAAE14EB17AB9A87DAF0A6BA7BAA28D7B81
        B9DE1CF97A447F9E79E5A02B2FECCB81E31527BCC0227FA8F4FF124F18B27F27
        496B78B1B76EB9C0EDE26930ED732E8978F3D86F4C6C8C54B3899BC8C2C70B2D
        EBA21B2BEDFAA72313DEF62594F9C46E7D634A15E00C163702B2CF5F10F259FB
        D006B3ED712E5AB5D311FDC435AA0D420D3C939B1ECDE6F61EEB94AF779A9B97
        002D9442EA01503670339FD0B4763B083A6D73DF0A5FEAC8D79E1D562B81339C
        9EA1FFB4563DCFFD6954F6FA5BF994E642175EEF52274CA2084BE432AC49F14E
        C3C9A2168153C06D354D40E90BE1D1106445A685AA8AF53121EFA8681833E130
        40CC63E36A9A34333496F03F3484A374CAC337D511F18C6D345F144F16A14DE9
        8D8589CBA0E98A47162252AA90B31BA0A518C5A6F7752C921D79E4D3F2052D48
        BAD1803AABDFD01249A00F4649765F7419130769AA14F12B56AAABE31EE5F843
        6751C67B5F0A56F86CA9AA32C6CF717194E51C9DE7C42D1A538BBA9CA2307B99
        4603AE719972F265B7F458A930660D90D594A6FCAE15CC9C79E66CBC8C6633EB
        B6355A8AF38EE444E018C1A8CD417A3390DAC4E68870B9B4568EF09DC3942762
        E879FFC970AA079ADAF3271DB949B8180A949F5FC31C35E7694EE481B3A1D419
        67FFD449D06C4AD45E303AA6464B7249834214A1C103E8402DF64D811AA9A23F
        CC632AE179D10571EF5A7CCA1E306339BBA6D98F912D1DD63AABE24588224AA5
        5AEAA948CF24ABE1A16FA86F5CA945D1E9BE3EE293994C3D58508FFA54DF1495
        A42C8DAA0D773A4BA43AD3A9EBC460551D6AD206CA74A1560D25071797B7B1CA
        4C270F8D20A77C0A2AB8C5F59674056517F9D74DAE0EF36C1E95EBDA406AB7BB
        FA15AAB9D3EB03DD4AD87CC630A6164B5B5E9773D359E1EFB0CD5ADDF7D8AA31
        AFFE886292035E67DDFAD30DB9B34796F46C235F8AD5A526B62DE5625863F6A7
        DA41FFE91482B36D2B66B5A752D972567194E358420F88D1DC3A90845BAD25B6
        9EE924AA22D7946FDDED486B08DD9FD9E4B4FB2C19F442DADC9941B6B1CA0D8B
        28452B5CD226D56DE4ED2558332BDEB5A6574EA9CBA7CE5836589E2229A1855B
        EF3F4387519A4AF7A4174C2D77C7D7390AF52751A844EF814B555EFF7E85A2DB
        29E267719860BE3EAB9C736B1C2A3F852E0C4F58C36284A92657D360F9FA947C
        A6EC603F97ABDFCB9CF5C52B26314AE19B53F498EC9EC612AB833907CDEC5DAF
        C6BF61AE60AA57415C9ED76FDD1B31904305BB8C462E68031EDE7D5738490823
        38C4B8F32291251CB50ADB979C35D45F0BF14B3AED963869578C328F73664849
        25CFFF79F5B4F17607B72EA7A9B0BAE7056A068D98C85B5D396B09F3D521DB74
        66F6F60592BA7CDFEF5698CB6B4E90BAD3851888AFC9E8E77152B71F0621A01B
        09CBFDE978CE268EA042F3A7BF69D1F6BE6A16967B196DD63E9FF5CF5265DD0B
        7976392692794D0A24E3A0620CD767821AAAAC8D6E01FFB2AEB97EBACB24BB31
        F3C606E51D2B938285BEA1E7900D68C34D2C64C8A576ACBF3CD16207AEB271BE
        1B9FDDA52C8639BB6A18FC239DFB1B6AD2DE79941E0EAFBB75AD55C93CB6C5E5
        66B7BC33B6587D67127DBF4C3526290A5D1E963AB986E6F7B32127E9CE9ABBDD
        395EABB5E5F6475B0BDCA6E1FADD9203D6B2E3CE38A02C1E330DDFFDED04FE3A
        E1D0B221B4954BBEC85B8B97D8FBF134AACF3D49C508F7A62C97E1C54F38F2CF
        A1ECDD8DDEB6608B8CE9D6EEFBE3C643385A417EDD8D3ABD7310473A80671A75
        A367B7B6663CE8641DFDD1AD0B9DB15ECF7AD7B16ECFBE4AFDC8635FB8A6BF8E
        DAB65DA892C67E74B8F3DB42FB0157713ADCDADC45CBDF4B3B3CC99275399B93
        595C062A99E6FAC469BDA76960B233DE958E1777E3CDEB65918217E556DFEF7F
        4BF3F4CE777E2FA00FBDE8474FFAD29BFEF4A80F08003B}
    end
    inherited QRImage2: TQRImage
      Size.Values = (
        214.312500000000000000
        1058.333333333330000000
        724.958333333333000000
        767.291666666667000000)
      Picture.Data = {
        0954474946496D61676547494638376122015100F70000FFFFFF000000000000
        FFFFFF3737374949495B5B5B6D6D6D808080929292A4A4A4B6B6B6C8C8C8DBDB
        DBEDEDEDFFFFFF3300004D0000660000800000990000B30000CC0000E60000FF
        0000FF1D1DFF3A3AFF5757FF7575FF9292FFAFAFFFCCCC3311004A1900602000
        7728008E2F00A43700BB3E00D24600E84D00FF5500FF6C22FF8244FF9966FFB0
        88FFC6AAFFDDCC3322004A3100604000774F008E5E00A46E00BB7D00D28C00E8
        9B00FFAA00FFB522FFC144FFCC66FFD788FFE3AAFFEECC3333004747005C5C00
        707000858500999900ADAD00C2C200D6D600EBEB00FFFF00FFFF29FFFF52FFFF
        7AFFFFA3FFFFCC223300314A004060004F77005E8E006EA4007DBB008CD2009B
        E800AAFF00B5FF22C1FF44CCFF66D7FF88E3FFAAEEFFCC1133001A4D00226600
        2B80003399003CB30044CC004DE60055FF0068FF1D7CFF3A8FFF57A3FF75B6FF
        92CAFFAFDDFFCC003300005000006D00008A0000A80000C50000E20000FF001A
        FF1A33FF334DFF4D66FF6680FF8099FF99B3FFB3CCFFCC003311004D1A006622
        00802B00993300B33C00CC4400E64D00FF551DFF683AFF7C57FF8F75FFA392FF
        B6AFFFCACCFFDD003322004A3100604000774F008E5E00A46E00BB7D00D28C00
        E89B00FFAA22FFB544FFC166FFCC88FFD7AAFFE3CCFFEE003333004D4D006666
        00808000999900B3B300CCCC00E6E600FFFF1DFFFF3AFFFF57FFFF75FFFF92FF
        FFAFFFFFCCFFFF001A3300285000376D00458A0054A80062C50071E20080FF1A
        8CFF3399FF4DA6FF66B3FF80BFFF99CCFFB3D9FFCCE6FF000033000055000077
        0000990000BB0000DD0000FF1717FF2D2DFF4444FF5B5BFF7171FF8888FF9F9F
        FFB5B5FFCCCCFF1A003326004D3300664000804D00995900B36600CC7300E680
        00FF8E1DFF9D3AFFAB57FFBA75FFC892FFD7AFFFE6CCFF3300334D004D660066
        800080990099B300B3CC00CCE600E6FF00FFFF1DFFFF3AFFFF57FFFF75FFFF92
        FFFFAFFFFFCCFF33001A4D002666003380004099004DB30059CC0066E60073FF
        0080FF1D8EFF3A9DFF57ABFF75BAFF92C8FFAFD7FFCCE62C0000000022015100
        0008FF0001081C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B1833
        6ADCC8B1A3C78F2043560C40B2A4C9932853AA5CC9B2A5CB973063CA9C49B3A6
        CD9B3873AE2CA8B3A7CF9F40830A1D4AB428CF0022932A3D4872A9D3A7501B36
        253835AAD58D55AF6ADD0A322B00AF5CC33A042BB6ACD9B148A9A63DCB96E9DA
        B670E30AF44A566ED9BA76F36AA5FB56EFDDBE7E0347E52BD82CDEC2883F124E
        CCF530E3C7181743560838A3E3C998234ACE3CB064D7CA9C433FDC9CB86F53D0
        96518B5E9D907460CF543B87BCCCBAF65CD3AAE19E76FB75766EDBB65DDB5D8B
        1AB647DAC0570B1F8EF4F7EF89C8479BBC3D3DB66CEBD4B1CFA56EFC2BDECA27
        791AFFAC7E9D7BF4F1B819777F7A5EEA78F1DB89BF25DE39ADE9ED4CCBC7063C
        5F76FFF2CDE9D71B74E941361F4A8A3D07117FF0F5461F7D035E775F84DA5118
        DF7B0046589C860D6A562047E15196E0671D9187207E03DA87DF842C86386186
        6A1907A17C2AAE1822814795D82186A309E823880AF6D8E081B03D88E28AF081
        B7E38D47D6576492D54148D17223ED68A58815B62791960B3108638A6AF957D5
        9835F2E8A5854AA2F8DF8C152EF8A1462F7AC7244371A63422883C5EB85F8737
        F6C9E47A68B6F96294E2C5E9668E2592875090810EC6687299512912A056CEE9
        1497903E2629744886595C7B761EF768A606BE6959A76AF236EAA5AB925A9AA9
        91A1FF7A9B851CA2F7E75298BA5AD8A65BCAEA247AB4D2896BABBA0AC6AB8796
        B629A7B04E2A8A15B1C5FA75EC5E5D2A2B6AB4C94D0BE7898B56FBE3B5D80607
        6B64F6118B5BB249E51A2E73886235AB458C869AE8BAB5693B56935F9A87A9BA
        94414BAF6EE3C28B6FA3D2511AECB3FF2A17F048DC12EC1E98614EEA6FC267D9
        1BABB5DD42ACEFC4BC51CC99C5E41ADC5AC3AC1665F2C9280FD52EC2DE0959E6
        C32F3F9BF2CC34D71CD3CAA7B6BCA0AF24D7C831B01E47BAF09403CB0B716E6B
        0E4C6ED042E37CF1A83EFF98F4C117F1CB745820774972BFB7F2B9756A574F96
        75950C3BCB6AD8A53A3DA9D2D2FE8CB6A36A57ED6CCCCD42BDEC9D6F2336766B
        5E77FF2DA0D947E39DB7B143738A719E8DA6F9ADDC83EB5D78AF872F99647E91
        4FE976E34AED3D32A0731A2DE7DC80838DF96B8FE359795B568F3E6CDC5D5DC9
        B7C6EC5DAE3A89119BEE30D594C73C55EA40375624B78AB3CDECAFC47357BCC4
        AC139D65E8AFBF5CAE6F58D79725AD59B55ABD84F9D68A7CED70BA6EB8F3C22F
        BD956AF73138E3EEDF1D5C2E99632ECEB2F4B687EF66D7B2279F3996A95A1775
        FE190F89BD9ABCD39AFD08243251A18B71E3C3DFE706A53129514E3B0E4455FD
        7AF7AEE008EE2AF281E0DF222625F2494E82FC831EF7DA56C118D1CE7774D9A0
        0A8924B518B1CF84C71321FC5E5342E94DB086B303D8002B5634F721308772D1
        DC607A94B69B1302518723CC8BE7B273C12356AC749A6AA213FFB2C3B005708A
        EFC3E1E8AE8845D1CD30875CECE20FB588B9308A916155BC9A19CF88A3246EF1
        866CF4501A99B6C6381ECA8D6584A31DD132C7A0D5718F5281A21AF5084801BA
        D066884CA42217C9489B1CA591908CA4242739B3425AF29298D4554000003B}
    end
    inherited qrlDestNombre_Abajo: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        312.208333333333000000
        785.812500000000000000)
      FontSize = 8
    end
    inherited qrlDestNombre1_Abajo: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        994.833333333333000000
        785.812500000000000000)
      FontSize = 8
    end
    inherited qrlDestDomicilio1_Abajo: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        1071.562500000000000000
        828.145833333333000000)
      FontSize = 8
    end
    inherited qrlRegistroCodFirma: TQRLabel
      Size.Values = (
        44.979166666666670000
        95.250000000000000000
        95.250000000000000000
        343.958333333333400000)
      FontSize = 10
    end
    inherited qrlOrden: TQRLabel
      Left = 340
      Top = 220
      Size.Values = (
        44.979166666666700000
        899.583333333333000000
        582.083333333333000000
        291.041666666667000000)
      FontSize = 10
      ExplicitLeft = 340
      ExplicitTop = 220
    end
    inherited qrlDelegacion: TQRLabel
      Left = 340
      Top = 236
      Width = 110
      Size.Values = (
        44.979166666666700000
        899.583333333333000000
        624.416666666667000000
        291.041666666667000000)
      FontSize = 10
      ExplicitLeft = 340
      ExplicitTop = 236
      ExplicitWidth = 110
    end
    inherited qrlRemProvincia: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        814.916666666667000000
        423.333333333333000000
        203.729166666667000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlRemProvincia1: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        814.916666666667000000
        1111.250000000000000000
        203.729166666667000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlDestCPostal: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        423.333333333333000000
        224.895833333333000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlDestCPostal1: TArtQRLabel
      Size.Values = (
        44.979166666666700000
        1058.333333333330000000
        1111.250000000000000000
        224.895833333333000000)
      Font.Height = -12
      FontSize = 9
    end
    inherited qrlLeyendaAcuse: TQRLabel
      Size.Values = (
        44.979166666666670000
        748.770833333333400000
        182.562500000000000000
        1296.458333333333000000)
      FontSize = 10
    end
  end
  inherited qrbSummary: TQRBand
    Top = 620
    Height = 1
    Size.Values = (
      2.645833333333333000
      2058.458333333333000000)
    ExplicitTop = 620
    ExplicitHeight = 1
  end
  object qrbDetail: TQRBand [2]
    Left = 19
    Top = 522
    Width = 778
    Height = 98
    AlignToBottom = False
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      259.291666666666700000
      2058.458333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object qrrTexto: TQRRichText
      Left = 44
      Top = 7
      Width = 687
      Height = 615
      Size.Values = (
        1627.187500000000000000
        116.416666666667000000
        18.520833333333300000
        1817.687500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AutoStretch = True
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '0')
    end
  end
  inherited qrbPageFooter: TQRBand
    Top = 621
    Size.Values = (
      343.958333333333400000
      2058.458333333333000000)
    ExplicitTop = 621
    inherited qriFirma: TQRImage
      Left = 260
      Top = 12
      Size.Values = (
        264.583333333333000000
        687.916666666667000000
        31.750000000000000000
        648.229166666667000000)
      ExplicitLeft = 260
      ExplicitTop = 12
    end
    inherited qrlFirmante: TArtQRLabel
      Left = 359
      Top = 52
      Size.Values = (
        44.979166666666700000
        949.854166666667000000
        137.583333333333000000
        648.229166666667000000)
      FontSize = 9
      ExplicitLeft = 359
      ExplicitTop = 52
    end
    inherited qrlDocumento: TArtQRLabel
      Left = 359
      Top = 72
      Size.Values = (
        44.979166666666700000
        949.854166666667000000
        190.500000000000000000
        648.229166666667000000)
      FontSize = 9
      ExplicitLeft = 359
      ExplicitTop = 72
    end
    inherited qrlCaracter: TArtQRLabel
      Left = 359
      Top = 32
      Size.Values = (
        44.979166666666700000
        949.854166666667000000
        84.666666666666700000
        648.229166666667000000)
      FontSize = 9
      ExplicitLeft = 359
      ExplicitTop = 32
    end
    inherited qrlOrdenPie: TQRLabel
      Size.Values = (
        44.979166666666700000
        814.916666666667000000
        243.416666666667000000
        291.041666666667000000)
      FontSize = 10
    end
    inherited qrmInfoPie: TQRRichText
      Left = 28
      Top = 112
      Height = 58
      Size.Values = (
        153.458333333333300000
        74.083333333333340000
        296.333333333333400000
        1817.687500000000000000)
      ExplicitLeft = 28
      ExplicitTop = 112
      ExplicitHeight = 58
    end
    inherited qrlDelegacionPie: TQRLabel
      Left = 308
      Width = 110
      Size.Values = (
        44.979166666666700000
        814.916666666667000000
        285.750000000000000000
        291.041666666667000000)
      FontSize = 10
      ExplicitLeft = 308
      ExplicitWidth = 110
    end
  end
  inherited qrbPageHeader2: TQRChildBand
    Size.Values = (
      171.979166666666700000
      2058.458333333333000000)
    inherited qrLogo: TQRImage
      Size.Values = (
        171.979166666666700000
        95.250000000000000000
        0.000000000000000000
        436.562499999999900000)
    end
  end
  object sdqCampos: TSDQuery
    DatabaseName = 'dbprincipal'
    Options = []
    Left = 19
    Top = 15
  end
end
