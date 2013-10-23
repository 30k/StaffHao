<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_grant.aspx.cs" Inherits="StaffWEB.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [G_name], [G_cate] FROM [Grants]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" DeleteCommand="DELETE FROM [Grants] WHERE [ID] = ?" InsertCommand="INSERT INTO [Grants] ([G_desc], [G_cate], [G_name]) VALUES (?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Grants] WHERE ([G_name] = ?)" UpdateCommand="UPDATE [Grants] SET [G_desc] = ?, [G_cate] = ?, [G_name] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>             
                <asp:Parameter Name="G_desc" Type="String" />
                <asp:Parameter Name="G_cate" Type="String" />
                <asp:Parameter Name="G_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="G_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="G_desc" Type="String" />
                <asp:Parameter Name="G_cate" Type="String" />
                <asp:Parameter Name="G_name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <span class="title">Grants Management</span><hr />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource1" EnableModelValidation="True" DataKeyNames="G_name" Width="763px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="G_name" HeaderText="Grant name" SortExpression="G_name" ReadOnly="true"/>
                <asp:BoundField DataField="G_cate" HeaderText="Grant category" SortExpression="G_cate" />
            </Columns>
        </asp:GridView>
        <br /><br />
        <span class="title">Grant Details</span><hr />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="763px">
            <EmptyDataTemplate>
                No item selected
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="New">New</asp:LinkButton>
            </EmptyDataTemplate>

            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="G_desc" HeaderText="G_desc" SortExpression="G_desc" />
                <asp:BoundField DataField="G_cate" HeaderText="G_cate" SortExpression="G_cate" />
                <asp:BoundField DataField="G_name" HeaderText="G_name" SortExpression="G_name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
</asp:Content>
