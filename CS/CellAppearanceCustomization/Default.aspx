<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CellAppearanceCustomization.DefaultForm" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v17.2, Version=17.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.16.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table class="OptionsTable BottomMargin">
            <tr>
                <td>
                    <dx:ASPxCheckBox ID="cbApplyCustomCellAppearance" runat="server" AutoPostBack="True" Text="Apply Custom Cell Appearance" />
                </td>
                <td>
                    <dx:ASPxCheckBox ID="cbTopAlignRowFieldValues" runat="server" AutoPostBack="True" Text="Top Align Row Field Values"
                        OnCheckedChanged="cbTopAlignRowFieldValues_CheckedChanged" />
                </td>
            </tr>
        </table>
        <dx:ASPxPivotGrid ID="pivotGrid" runat="server" CssClass="dxpgControl" ClientInstanceName="pivotGrid"
            DataSourceID="CustomerReportDataSource" OnCustomCellStyle="ASPxPivotGrid1_CustomCellStyle"
            Width="100%" Height="116px">
            <Fields>
                <dx:PivotGridField Area="RowArea" AreaIndex="0" Caption="Customer" FieldName="CompanyName"
                    ID="fieldCompanyName" UnboundFieldName="" />
                <dx:PivotGridField Area="ColumnArea" AreaIndex="0" Caption="Year" FieldName="OrderDate"
                    ID="fieldOrderDate" GroupInterval="DateYear" UnboundFieldName="UnboundColumn1" />
                <dx:PivotGridField Area="DataArea" AreaIndex="0" Caption="Product Amount" FieldName="ProductAmount"
                    ID="fieldProductAmount" UnboundFieldName="" />
                <dx:PivotGridField Area="RowArea" AreaIndex="1" Caption="Products" FieldName="ProductName"
                    ID="fieldProductName" UnboundFieldName="" />
            </Fields>
            <OptionsView HorizontalScrollBarMode="Auto" />
            <OptionsLoadingPanel Text="Loading&amp;hellip;" />
            <OptionsData DataProcessingEngine="LegacyOptimized" />
            <OptionsFilter NativeCheckBoxes="False" />
        </dx:ASPxPivotGrid>
        <asp:AccessDataSource ID="CustomerReportDataSource" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [CustomerReports]"></asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
