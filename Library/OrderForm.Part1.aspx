<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OrderForm.Part1.aspx.cs" Inherits="Library.OrderForm_Part1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="masterData" runat="server">
    <div class="panel panel-primary">
        <asp:MultiView ID="OrderForm" runat="server" ActiveViewIndex="0">
            <asp:View ID="OrderFormPart1" runat="server">
                <div class="panel-heading">
                    <h3>Order Form</h3>
                    <span>Part 1/2</span>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="form-group col-xs-4">
                            <label for="name">Name</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="" ControlToValidate="name" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                            <asp:TextBox ID="name" runat="server" CssClass="form-control" OnTextChanged="name_TextChanged"></asp:TextBox>
                        </div>
                        <div class="form-group col-xs-4">
                            <label for="surname">Surname</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="" ControlToValidate="surname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                            <asp:TextBox ID="surname" runat="server" CssClass="form-control" OnTextChanged="surname_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-4">
                            <label for="email">Email</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="" ForeColor="Red" SetFocusOnError="True" ControlToValidate="email" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">Incorrect email</asp:RegularExpressionValidator>
                            <asp:TextBox ID="email" runat="server" CssClass="form-control" OnTextChanged="email_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-4">
                            <label for="phone">Phone</label>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="" Display="Dynamic" ForeColor="Red" SetFocusOnError="True"
                                ValidationExpression="[1-9][0-9]{8}" ControlToValidate="phone">Incorrect Phone</asp:RegularExpressionValidator>
                            <asp:TextBox ID="phone" runat="server" CssClass="form-control" OnTextChanged="phone_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-xs-6">
                            <label for="surname">Address</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="" ControlToValidate="address" ForeColor="Red" SetFocusOnError="True" Display="Dynamic">This field is required</asp:RequiredFieldValidator>
                            <asp:TextBox ID="address" runat="server" CssClass="form-control" OnTextChanged="address_TextChanged"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-2">
                            <asp:LinkButton ID="CancelButton3" runat="server" CssClass="btn btn-default btn-block" PostBackUrl="~/Home.aspx" CausesValidation="false">Cancel</asp:LinkButton>
                        </div>
                        <div class="col-xs-offset-8 col-xs-2">
                            <asp:Button ID="OrderFormPart1Button" runat="server" Text="Next" CssClass="btn btn-primary btn-block"
                                OnClick="OrderFormPart1Button_Click" />
                        </div>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="OrderFormPart2" runat="server">
                <div class="panel-heading">
                    <h3>Order Form</h3>
                    <span>Part 2/2</span>
                </div>
                <div class="panel-body">
                    <h4>Summary</h4>
                    <table class="table">
                        <tr>
                            <th>Name</th>
                            <td>
                                <asp:Label ID="NameSummary" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>Surname</th>
                            <td>
                                <asp:Label ID="SurnameSummary" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>
                                <asp:Label ID="EmailSummary" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>Phone</th>
                            <td>
                                <asp:Label ID="PhoneSummary" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>Address</th>
                            <td>
                                <asp:Label ID="AddressSummary" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <div class="row">
                        <div class="col-xs-2">
                             <asp:LinkButton ID="CancelButton2" runat="server" CssClass="btn btn-default btn-block" PostBackUrl="~/Home.aspx" CausesValidation="false">Cancel</asp:LinkButton>
                        </div>
                        <div class="col-xs-offset-6 col-xs-2">
                            <asp:Button ID="OrderFormPart2Back" runat="server" Text="Back" CssClass="btn btn-default btn-block"
                                OnClick="OrderFormPart2Back_Click" />
                        </div>
                        <div class=" col-xs-2">
                            <asp:Button ID="OrderFormPart2Button" runat="server" Text="Next" CssClass="btn btn-primary btn-block"
                                OnClick="OrderFormPart2Button_Click" />
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
        <asp:MultiView ID="OrderSummary" runat="server">
            <asp:View ID="OrderSummaryView" runat="server">
                <div class="panel-heading">
                    <h2>Success</h2>
                </div>
                <div class="panel-body">
                    <p>
                        Your order has been successfully placed.
                        Expect a delivery within 7 working days.
                    </p>
                    <div class="row">
                        <div class="col-xs-offset-8 col-xs-4">
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-success btn-block" PostBackUrl="~/BooksList.aspx">
                                Back to the Store
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
