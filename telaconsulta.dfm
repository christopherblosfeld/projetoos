object frm_consulta: Tfrm_consulta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de OS'#39's'
  ClientHeight = 351
  ClientWidth = 1094
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lb_registros: TLabel
    Left = 248
    Top = 290
    Width = 3
    Height = 13
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 24
    Width = 1079
    Height = 169
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idordemservico'
        Title.Caption = 'C'#211'D OS'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'filial'
        Title.Caption = 'FILIAL'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'departamento'
        Title.Caption = 'DEPARTAMENTO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'motivo_atendimento'
        Title.Caption = 'MOTIVO ATENDIMENTO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_contato'
        Title.Caption = 'CONTATO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefone'
        Title.Caption = 'TELEFONE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'urgencia'
        Title.Caption = 'URG'#202'NCIA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idacessoremoto'
        Title.Caption = 'ACESSO REMOTO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataagendamento'
        Title.Caption = 'DATA ABERTURA'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial Narrow'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object btn_atualizar: TButton
    Left = 8
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = btn_atualizarClick
  end
  object btn_motivo: TButton
    Left = 8
    Top = 256
    Width = 89
    Height = 25
    Caption = 'Busca por Motivo'
    TabOrder = 2
    OnClick = btn_motivoClick
  end
  object btn_filial: TButton
    Left = 8
    Top = 287
    Width = 89
    Height = 25
    Caption = 'Busca por Filial'
    TabOrder = 3
    OnClick = btn_filialClick
  end
  object txt_data: TDateTimePicker
    Left = 103
    Top = 318
    Width = 121
    Height = 23
    Date = 44643.000000000000000000
    Time = 0.371416018519084900
    TabOrder = 4
  end
  object btn_data: TButton
    Left = 8
    Top = 318
    Width = 89
    Height = 25
    Caption = 'Busca por Data'
    TabOrder = 5
    OnClick = btn_dataClick
  end
  object txt_filial: TComboBox
    Left = 103
    Top = 291
    Width = 121
    Height = 21
    TabOrder = 6
    Items.Strings = (
      '01 - MATRIZ'
      '02 - S'#195'O MIGUEL'
      '03 - BRASIL'#194'NDIA'
      '04 - ROLIM DE MOURA 1'
      '05 - PIMENTA BUENO'
      '06 - CD SERINGUEIRAS'
      '07 - ALTA FLORESTA'
      '08 - URUP'#193
      '09 - ASSIST'#202'NCIA'
      '10 - GUAJAR'#193
      '11 - MIRANTE DA SERRA'
      '12 - ESPIG'#195'O D'#39'OESTE'
      '13 - VILHENA 1'
      '14 - VILHENA 2'
      '15 - SERINGUEIRAS'
      '16 - TRANSPORTADORA'
      '17 - ALTO ALEGRE'
      '18 - ALVORADA D'#39'OESTE'
      '19 - VILHENA 3'
      '20 - COLORADO D'#39'OESTE'
      '21 - ROLIM DE MOURA 2'
      '22 - CEREJEIRAS'
      '23 - S'#195'O FRANCISCO DO GUAPOR'#201
      '24 - JI-PARAN'#193' 1'
      '25 - JI-PARAN'#193' 2'
      '26 - CD ROLIM'
      '27 - OURO PRETO'
      '28 - CACOAL'
      '29 - GUAJAR'#193' 2')
  end
  object txt_motivo: TEdit
    Left = 103
    Top = 260
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object MysqlconnectionConnection: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=bdcurso'
      'User_Name=root'
      'Password=root'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    Connected = True
    Left = 241
    Top = 195
  end
  object OrdemservicoTable: TSQLDataSet
    CommandText = 'ordemservico'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQLConnection = MysqlconnectionConnection
    Left = 305
    Top = 195
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = OrdemservicoTable
    Left = 496
    Top = 208
  end
  object DataSource1: TDataSource
    DataSet = FDQuery2
    Left = 776
    Top = 208
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection2
    SQL.Strings = (
      'select * from ordemservico')
    Left = 680
    Top = 208
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Database=bdcurso'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    Left = 584
    Top = 208
  end
end
