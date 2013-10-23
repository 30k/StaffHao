<%@ Page Title="" Language="C#" MasterPageFile="~/Master_back.Master" AutoEventWireup="true" CodeBehind="db_subject.aspx.cs" Inherits="StaffWEB.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-holder-back">        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringStaffHAO %>" ProviderName="<%$ ConnectionStrings:ConnectionStringStaffHAO.ProviderName %>" SelectCommand="SELECT [Sub_time], [Sub_name], [Sub_desc] FROM [Subjects]"></asp:SqlDataSource>
        <span class="title">Subject Management</span><hr />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
             DataSourceID="SqlDataSource1" EnableModelValidation="True" DataKeyNames="Sub_name" Width="763px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Sub_time" HeaderText="Sub_time" SortExpression="Sub_time" />
                <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" SortExpression="Sub_name" ReadOnly="true" />
                <asp:BoundField DataField="Sub_desc" HeaderText="Sub_desc" SortExpression="Sub_desc" />
            </Columns>
        </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\db_hao.mdb" DeleteCommand="DELETE FROM [Subjects] WHERE [ID] = ?" InsertCommand="INSERT INTO [Subjects] ([Sub_time], [Sub_name], [Sub_desc], [Sub_link]) VALUES (?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Subjects] WHERE ([Sub_name] = ?)" UpdateCommand="UPDATE [Subjects] SET [Sub_time] = ?, [Sub_name] = ?, [Sub_desc] = ?, [Sub_link] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>                
                <asp:Parameter Name="Sub_time" Type="String" />
                <asp:Parameter Name="Sub_name" Type="String" />
                <asp:Parameter Name="Sub_desc" Type="String" />
                <asp:Parameter Name="Sub_link" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Sub_name" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sub_time" Type="String" />
                <asp:Parameter Name="Sub_name" Type="String" />
                <asp:Parameter Name="Sub_desc" Type="String" />
                <asp:Parameter Name="Sub_link" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /><br />
        <span class="title">Subjects Details</span><hr />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" EnableModelValidation="True" Height="50px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated1" Width="763px">
            <EmptyDataTemplate>
                No item selected
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                    CommandName="New">New</asp:LinkButton>
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Sub_time" HeaderText="Sub_time" SortExpression="Sub_time" />
                <asp:BoundField DataField="Sub_name" HeaderText="Sub_name" SortExpression="Sub_name" />
                <asp:BoundField DataField="Sub_desc" HeaderText="Sub_desc" SortExpression="Sub_desc" />
                <asp:BoundField DataField="Sub_link" HeaderText="Sub_link" SortExpression="Sub_link" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
        
</asp:Content>
