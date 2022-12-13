<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CellAppearanceCustomization.DefaultForm" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
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
            DataSourceID="SqlDataSource1" OnCustomCellStyle="ASPxPivotGrid1_CustomCellStyle"
            Width="100%" Height="116px" ClientIDMode="AutoID" IsMaterialDesign="False" OptionsData-DataProcessingEngine="Optimized">
            <Fields>
                <dx:PivotGridField Area="RowArea" AreaIndex="0" Caption="Customer"
                    ID="fieldCompanyName" UnboundFieldName="" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="CompanyName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField Area="ColumnArea" AreaIndex="0" Caption="Year"
                    ID="fieldOrderDate1" Name="fieldOrderDate1" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateYear" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField Area="DataArea" AreaIndex="0" Caption="Product Amount"
                    ID="fieldProductAmount" UnboundFieldName="" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductAmount" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField Area="RowArea" AreaIndex="1" Caption="Products"
                    ID="fieldProductName" UnboundFieldName="" >
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>
            <OptionsView HorizontalScrollBarMode="Auto" />
            <OptionsLoadingPanel Text="Loading&amp;hellip;" />
            <OptionsData DataProcessingEngine="Optimized" />
            <OptionsFilter NativeCheckBoxes="False" />
        </dx:ASPxPivotGrid>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [CustomerReports]">
                </asp:SqlDataSource>
    </form>
</body>
</html>
