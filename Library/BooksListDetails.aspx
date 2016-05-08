<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageWithMenu.master" AutoEventWireup="true" CodeBehind="BooksListDetails.aspx.cs" Inherits="Library.BooksListDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="masterDataWithMenu" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary back-button pull-left" PostBackUrl="~/BooksList.aspx" runat="server">Back</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning back-button pull-right" PostBackUrl="~/OrderForm.Part1.aspx" runat="server">Order</asp:LinkButton>
        <h4 class="text-center"><strong>Details</strong></h4>
    </div>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource1" CssClass="table table-bordered">
        <Fields>
            <asp:TemplateField HeaderText="ID: ">
                <ItemTemplate>
                    <%# XPath("@id") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Title: ">
                <ItemTemplate>
                    <%# XPath("title") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Author: ">
                <ItemTemplate>
                    <%# XPath("author") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Genres">
                <ItemTemplate>
                    <asp:DataList ID="DataList1" runat="server" DataSource='<%# XPathSelect("genres/genre") %>' RepeatLayout="Flow">
                        <ItemTemplate>
                            <%# XPath(".") %>
                        </ItemTemplate>
                    </asp:DataList>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/BooksList.xml"></asp:XmlDataSource>
</asp:Content>
