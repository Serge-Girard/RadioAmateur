unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.WinXPickers, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.WinXCtrls,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Controls, Vcl.Buttons, Vcl.Bind.Navigator,
  Data.Bind.Components, Vcl.ComCtrls, Data.Bind.DBScope, Data.Bind.Grid;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    PanelResume: TPanel;
    QZONEnumber: TLabel;
    Label1: TLabel;
    lblIndicatif: TLabel;
    LblDate: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Jour: TDateTimePicker;
    HDebut: TDateTimePicker;
    HFin: TDateTimePicker;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    Indicatif: TEdit;
    LinkControlToField4: TLinkControlToField;
    Numero: TEdit;
    LinkControlToField5: TLinkControlToField;
    Bande: TEdit;
    LinkControlToField6: TLinkControlToField;
    M_RST: TEdit;
    SRST: TEdit;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    Mode: TComboBox;
    LinkFillControlToField1: TLinkFillControlToField;
    Edit1: TEdit;
    LinkControlToField9: TLinkControlToField;
    ZONE_CQ: TEdit;
    LinkControlToField12: TLinkControlToField;
    EtatCQ: TLabel;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    chkBoxZoneConfirmee: TCheckBox;
    BindNavigator1: TBindNavigator;
    BindNavigator2: TBindNavigator;
    Label2: TLabel;
    chkSQSL: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    chkM_QSL: TCheckBox;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    btnRetour: TButton;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldCaption2: TLinkPropertyToField;
    Label9: TLabel;
    BindLink1: TBindLink;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BindNavigator1Click(Sender: TObject; Button: TNavigateButton);
    procedure BindNavigator2Click(Sender: TObject; Button: TNavigateButton);
    procedure btnRetourClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses DatasModule;

procedure TForm1.BindNavigator1Click(Sender: TObject; Button: TNavigateButton);
begin
inherited;
PageControl1.ActivePageIndex:=0;
end;

procedure TForm1.BindNavigator2Click(Sender: TObject; Button: TNavigateButton);
begin
inherited;
case Button of
  nbInsert, nbEdit: PageControl1.ActivePageIndex:=1;
end;
end;

procedure TForm1.btnRetourClick(Sender: TObject);
begin
PageCOntrol1.ActivePageIndex:=0;
end;

procedure TForm1.DBGrid1DblClick(Sender: TObject);
begin
PageControl1.ActivePageIndex:=1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
PageControl1.Pages[0].TabVisible:=False;
PageControl1.Pages[1].TabVisible:=False;
PageControl1.ActivePageIndex:=0;
Datas.QResume.Active:=True;
Datas.QContacts.Active:=True;
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
Datas.QResume.Refresh;
end;

end.
