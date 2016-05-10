<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWithMenu.master" AutoEventWireup="true" CodeBehind="BooksList.aspx.cs" Inherits="Library.BooksList" %>

<asp:Content ID="content2" ContentPlaceHolderID="scripts2" runat="server">
    <script src="Scripts/CustomJs.js"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="masterDataWithMenu" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataSourceID="XmlDataSource1" AutoGenerateColumns="False"
        CssClass="table table-bordered main-table" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField ItemStyle-CssClass="hidden book-id" HeaderStyle-CssClass="hidden">
                <ItemTemplate>
                    <%# XPath("@id") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title">
                <ItemTemplate>
                    <%# XPath("title")%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author">
                <ItemTemplate>
                    <%# XPath("author") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField SelectText="Details" ShowSelectButton="true" ButtonType="Button">
                <ControlStyle CssClass="btn btn-primary btn-sm" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/BooksList.xml"></asp:XmlDataSource>
</asp:Content>
