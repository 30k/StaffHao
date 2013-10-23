<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_upload.aspx.cs" Inherits="StaffWEB.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 700px;
        float: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">        
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT DISTINCT [Album_name] FROM [Ablum]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Album_name" DataValueField="Album_name">
        </asp:DropDownList>
        <br />
        <table align="left" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        
    </div>
</asp:Content>
