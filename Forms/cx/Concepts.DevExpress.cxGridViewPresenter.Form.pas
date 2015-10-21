{
  Copyright (C) 2013-2015 Tim Sinaeve tim.sinaeve@gmail.com

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
}

unit Concepts.DevExpress.cxGridViewPresenter.Form;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.Actions,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ActnList, Vcl.StdCtrls,

  cxControls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGrid, cxTL, cxInplaceContainer, cxTLData, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxTextEdit, cxTLdxBarBuiltInMenu, cxNavigator,

  Spring.Collections,

  DSharp.Windows.CustomPresenter, DSharp.Windows.ColumnDefinitions,
  DSharp.Windows.TreeViewPresenter, DSharp.DevExpress.GridViewPresenter,
  DSharp.DevExpress.TreeListPresenter,

  VirtualTrees,

  Concepts.Types.Contact;

type
  TfrmcxGridViewPresenter = class(TForm)
    {$REGION 'designer controls'}
    pnlMain                : TPanel;
    pgcMain                : TPageControl;
    tsGridView             : TTabSheet;
    grdMain                : TcxGrid;
    tvwMain                : TcxGridTableView;
    grlMain                : TcxGridLevel;
    tsTreelist             : TTabSheet;
    lstMain                : TcxVirtualTreeList;
    sbrMain                : TStatusBar;
    aclMain                : TActionList;
    actFillList            : TAction;
    btnFillList            : TButton;
    tsVirtualTree          : TTabSheet;
    vstMain                : TVirtualStringTree;
    tlcMainColumn1: TcxTreeListColumn;
    tlcMainColumn2: TcxTreeListColumn;
    tlcMainColumn3: TcxTreeListColumn;
    tlcMainColumn4: TcxTreeListColumn;
    tlcMainColumn5: TcxTreeListColumn;
    tlcMainColumn6: TcxTreeListColumn;
    tlcMainColumn7: TcxTreeListColumn;
    {$ENDREGION}

    procedure actFillListExecute(Sender: TObject);

  private
    FList        : IList<TContact>;
    FGVPresenter : TGridViewPresenter;
    FTLPresenter : TTreeListPresenter;
    FTVPresenter : TTreeViewPresenter;

  public
    procedure AfterConstruction; override;

  end;

implementation

{$R *.dfm}

uses
  DSharp.Bindings.Notifications,

  DDuce.RandomData,

  Concepts.Factories;

{$REGION 'construction and destruction'}
procedure TfrmcxGridViewPresenter.AfterConstruction;
var
  OL : IObjectList;
begin
  inherited AfterConstruction;
  FList := TCollections.CreateObjectList<TContact>;
  OL := FList as IObjectList;
  TConceptFactories.FillListWithContacts(OL, 1000);
  FGVPresenter := TConceptFactories.CreatecxGVP(Self, tvwMain, OL);
  FTLPresenter := TConceptFactories.CreatecxTreeListPresenter(Self, lstMain, OL);
  FTVPresenter := TConceptFactories.CreateTVP(Self, vstMain, OL);

  tvwMain.ApplyBestFit;
  lstMain.ApplyBestFit;
  vstMain.Header.AutoFitColumns(False);
end;
{$ENDREGION}

{$REGION 'action handlers'}
procedure TfrmcxGridViewPresenter.actFillListExecute(Sender: TObject);
begin
  TConceptFactories.FillListWithContacts(FList as IObjectList, 1000);
end;
{$ENDREGION}

end.
