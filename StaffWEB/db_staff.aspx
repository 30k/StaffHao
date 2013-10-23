<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_staff.aspx.cs" Inherits="StaffWEB.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" DeleteCommand="DELETE FROM [Staff] WHERE [ID] = ? AND (([Staff_name] = ?) OR ([Staff_name] IS NULL AND ? IS NULL)) AND (([Staff_title] = ?) OR ([Staff_title] IS NULL AND ? IS NULL)) AND (([Staff_phone] = ?) OR ([Staff_phone] IS NULL AND ? IS NULL)) AND (([Staff_mail] = ?) OR ([Staff_mail] IS NULL AND ? IS NULL)) AND (([Staff_position] = ?) OR ([Staff_position] IS NULL AND ? IS NULL)) AND (([Staff_desc] = ?) OR ([Staff_desc] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Staff] ([Staff_name], [Staff_title], [Staff_phone], [Staff_mail], [Staff_position], [Staff_desc]) VALUES (?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Staff]" UpdateCommand="UPDATE [Staff] SET [Staff_name] = ?, [Staff_title] = ?, [Staff_phone] = ?, [Staff_mail] = ?, [Staff_position] = ?, [Staff_desc] = ? WHERE [ID] = ? AND (([Staff_name] = ?) OR ([Staff_name] IS NULL AND ? IS NULL)) AND (([Staff_title] = ?) OR ([Staff_title] IS NULL AND ? IS NULL)) AND (([Staff_phone] = ?) OR ([Staff_phone] IS NULL AND ? IS NULL)) AND (([Staff_mail] = ?) OR ([Staff_mail] IS NULL AND ? IS NULL)) AND (([Staff_position] = ?) OR ([Staff_position] IS NULL AND ? IS NULL)) AND (([Staff_desc] = ?) OR ([Staff_desc] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Staff_name" Type="String" />
                <asp:Parameter Name="original_Staff_name" Type="String" />
                <asp:Parameter Name="original_Staff_title" Type="String" />
                <asp:Parameter Name="original_Staff_title" Type="String" />
                <asp:Parameter Name="original_Staff_phone" Type="String" />
                <asp:Parameter Name="original_Staff_phone" Type="String" />
                <asp:Parameter Name="original_Staff_mail" Type="String" />
                <asp:Parameter Name="original_Staff_mail" Type="String" />
                <asp:Parameter Name="original_Staff_position" Type="String" />
                <asp:Parameter Name="original_Staff_position" Type="String" />
                <asp:Parameter Name="original_Staff_desc" Type="String" />
                <asp:Parameter Name="original_Staff_desc" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Staff_name" Type="String" />
                <asp:Parameter Name="Staff_title" Type="String" />
                <asp:Parameter Name="Staff_phone" Type="String" />
                <asp:Parameter Name="Staff_mail" Type="String" />
                <asp:Parameter Name="Staff_position" Type="String" />
                <asp:Parameter Name="Staff_desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Staff_name" Type="String" />
                <asp:Parameter Name="Staff_title" Type="String" />
                <asp:Parameter Name="Staff_phone" Type="String" />
                <asp:Parameter Name="Staff_mail" Type="String" />
                <asp:Parameter Name="Staff_position" Type="String" />
                <asp:Parameter Name="Staff_desc" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Staff_name" Type="String" />
                <asp:Parameter Name="original_Staff_name" Type="String" />
                <asp:Parameter Name="original_Staff_title" Type="String" />
                <asp:Parameter Name="original_Staff_title" Type="String" />
                <asp:Parameter Name="original_Staff_phone" Type="String" />
                <asp:Parameter Name="original_Staff_phone" Type="String" />
                <asp:Parameter Name="original_Staff_mail" Type="String" />
                <asp:Parameter Name="original_Staff_mail" Type="String" />
                <asp:Parameter Name="original_Staff_position" Type="String" />
                <asp:Parameter Name="original_Staff_position" Type="String" />
                <asp:Parameter Name="original_Staff_desc" Type="String" />
                <asp:Parameter Name="original_Staff_desc" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" 
             EnableModelValidation="True" Height="50px" Width="763px" AutoGenerateRows="False">
            <Fields>
                <asp:BoundField DataField="Staff_name" HeaderText="Staff name" SortExpression="Staff_name" />
                <asp:BoundField DataField="Staff_title" HeaderText="Staff title" SortExpression="Staff_title" />
                <asp:BoundField DataField="Staff_phone" HeaderText="Staff phone" SortExpression="Staff_phone" />
                <asp:BoundField DataField="Staff_mail" HeaderText="Staff Email" SortExpression="Staff_mail" />
                <asp:BoundField DataField="Staff_position" HeaderText="Position" SortExpression="Staff_position" />
                <asp:BoundField DataField="Staff_desc" HeaderText="Introduction" SortExpression="Staff_desc" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
</asp:Content>
