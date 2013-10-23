<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_publication.aspx.cs" Inherits="StaffWEB.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Pub_name], [time] FROM [Publication]"></asp:SqlDataSource>
        <span class="title">Publication Management</span>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource1" EnableModelValidation="True" DataKeyNames="Pub_name" Width="763px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Pub_name" HeaderText="Pub_name" SortExpression="Pub_name" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" DeleteCommand="DELETE FROM [Publication] WHERE [ID] = ?" InsertCommand="INSERT INTO [Publication] ([publications], [time], [Pub_name]) VALUES (?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Publication] WHERE ([Pub_name] = ?)" UpdateCommand="UPDATE [Publication] SET [publications] = ?, [time] = ?, [Pub_name] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>                
                <asp:Parameter Name="publications" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="Pub_name" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Pub_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="publications" Type="String" />
                <asp:Parameter Name="time" Type="String" />
                <asp:Parameter Name="Pub_name" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
        <span class="title">Publication Details</span>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" Width="763px">
            <EmptyDataTemplate>
                No item selected
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="New">New</asp:LinkButton>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="publications" HeaderText="publications" SortExpression="publications" />
                <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                <asp:BoundField DataField="Pub_name" HeaderText="Pub_name" SortExpression="Pub_name" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
</asp:Content>
