<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_project.aspx.cs" Inherits="StaffWEB.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Pro_name], [Pro_stackholder] FROM [projects]"></asp:SqlDataSource>
        <span class="title">Project Management</span><hr />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource1" EnableModelValidation="True" DataKeyNames="Pro_name" PageSize="5" Width="763px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Pro_name" HeaderText="Pro_name" SortExpression="Pro_name" />
                <asp:BoundField DataField="Pro_stackholder" HeaderText="Pro_stackholder" SortExpression="Pro_stackholder" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" DeleteCommand="DELETE FROM [projects] WHERE [ID] = ?" InsertCommand="INSERT INTO [projects] ([Pro_name], [Pro_stackholder], [Pro_desc]) VALUES (?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [projects] WHERE ([Pro_name] = ?)" UpdateCommand="UPDATE [projects] SET [Pro_name] = ?, [Pro_stackholder] = ?, [Pro_desc] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>                
                <asp:Parameter Name="Pro_name" Type="String" />
                <asp:Parameter Name="Pro_stackholder" Type="String" />
                <asp:Parameter Name="Pro_desc" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Pro_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pro_name" Type="String" />
                <asp:Parameter Name="Pro_stackholder" Type="String" />
                <asp:Parameter Name="Pro_desc" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <span class="title">Project Details</span><hr />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="763px">
            <EmptyDataTemplate>
                No item selected
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="New">New</asp:LinkButton>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Pro_name" HeaderText="Pro_name" SortExpression="Pro_name" />
                <asp:BoundField DataField="Pro_stackholder" HeaderText="Pro_stackholder" SortExpression="Pro_stackholder" />
                <asp:BoundField DataField="Pro_desc" HeaderText="Pro_desc" SortExpression="Pro_desc" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
</asp:Content>
