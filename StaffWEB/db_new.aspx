<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_new.aspx.cs" Inherits="StaffWEB.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [New_name], [New_time], [New_desc] FROM [News]"></asp:SqlDataSource>
        <span class="title">Details Management</span><hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" 
             EnableModelValidation="True" DataKeyNames="New_name" AllowPaging="True" Width="763px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="New_name" HeaderText="New title" SortExpression="New_name" />
                <asp:BoundField DataField="New_time" HeaderText="New time" SortExpression="New_time" />
                <asp:BoundField DataField="New_desc" HeaderText="New details" SortExpression="New_desc" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" DeleteCommand="DELETE FROM [News] WHERE [ID] = ?" InsertCommand="INSERT INTO [News] ([New_name], [New_time], [New_desc]) VALUES (?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [News] WHERE ([New_name] = ?)" UpdateCommand="UPDATE [News] SET [New_name] = ?, [New_time] = ?, [New_desc] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="New_name" Type="String" />
                <asp:Parameter Name="New_time" Type="String" />                
                <asp:Parameter Name="New_desc" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="New_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="New_name" Type="String" />
                <asp:Parameter Name="New_time" Type="String" />
                <asp:Parameter Name="New_desc" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
        <span class="title">New Details</span><hr />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="763px">
            <EmptyDataTemplate>
                No item selected
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="New">New</asp:LinkButton>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="New_name" HeaderText="New_name" SortExpression="New_name" />
                <asp:BoundField DataField="New_time" HeaderText="New_time" SortExpression="New_time" />
                <asp:BoundField DataField="New_desc" HeaderText="New_desc" SortExpression="New_desc" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
</asp:Content>
