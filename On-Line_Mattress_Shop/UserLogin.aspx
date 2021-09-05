<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="CustomerLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="main_page">
        <%--<table style="width: 100%">
            <tr>
                <td style="width: 421px">
                    &nbsp;</td>
                <td style="width: 149px">
                    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                </td>
                <td style="width: 276px">
                    <asp:TextBox ID="txtuid" runat="server" Width="233px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 421px">
                    &nbsp;</td>
                <td style="width: 149px">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="width: 276px">
                    <asp:TextBox ID="txtupass" runat="server" Width="232px" TextMode="Password" OnTextChanged="txtupass_TextChanged"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 149px">
                    &nbsp;</td>
                <td>
                    <asp:Button CssClass="button special" ID="btnulogin" runat="server" Text="LogIn" OnClick="btnulogin_Click" />
                    <asp:Label ID="lbluloger" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>--%>
        <div class="loginpanel bg-white">

            <%--<div class="h2 text-center">AARZO<span style="font-size: 15px; margin-left: 5px;">Real Estate</span></div>
            <div class="h4 text-muted text-center pt-2">Enter your login details</div>
            <span><i class="icon fa fa-user"></i>--%>
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label></span>

            <asp:TextBox ID="txtuid" runat="server"></asp:TextBox>

            <span><i class="icon fa fa-key"></i>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></span>

            <asp:TextBox ID="txtupass" runat="server" TextMode="Password" OnTextChanged="txtupass_TextChanged"></asp:TextBox>

            <span>
                <asp:Button CssClass="button" ID="btnulogin" runat="server" Text="LogIn" OnClick="btnulogin_Click" /></span>
            <asp:Label ID="lbluloger" runat="server"></asp:Label>
        </div>
    </form>
</asp:Content>

