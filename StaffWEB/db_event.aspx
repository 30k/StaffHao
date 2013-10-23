<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_event.aspx.cs" Inherits="StaffWEB.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [t_image]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" EnableModelValidation="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:ImageField>
                </asp:ImageField>
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
