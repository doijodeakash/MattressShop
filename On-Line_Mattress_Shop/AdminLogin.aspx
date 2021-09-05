<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="true" CodeBehind="~/AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--class="formatting"--%>
    <form class="main_page" id="form1" runat="server">
<%--        <table style="width: 100%">
            <tr>
                <td style="width: 530px">&nbsp;</td>
                <td style="width: 114px">
                    <asp:Label ID="Label1" runat="server" Text="Admin-ID"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtadid" runat="server" Width="148px" Height="27px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 530px">&nbsp;</td>
                <td style="width: 114px">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td style="width: 207px">
                    <asp:TextBox ID="txtadpass" runat="server" Width="150px" TextMode="Password" Height="27px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>            
            <tr>
                <td style="width: 530px">&nbsp;</td>
                <td style="width: 114px">
                    &nbsp;</td>
                <td style="width: 207px">
                    <asp:Button ID="btnadlogin" runat="server" CssClass="button special" Text="LogIn" OnClick="btnadlogin_Click" Height="39px" Width="97px" />
                    <asp:Label ID="lbladloger" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>            
        </table>--%>
        <div class="loginpanel">

                    <span><i class="icon fa fa-user"></i>
                        <asp:Label ID="Label1" runat="server" Text="Admin-ID"></asp:Label></span>

                    <asp:TextBox ID="txtadid" runat="server"></asp:TextBox>
                    <span><i class="icon fa fa-key"></i>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></span>
                    <asp:TextBox ID="txtadpass" runat="server" TextMode="Password"></asp:TextBox>
                    <span class="fl-center"><asp:Button ID="btnadlogin" runat="server" CssClass="button" Text="LogIn" OnClick="btnadlogin_Click"/></span>
                    <asp:Label ID="lbladloger" runat="server"></asp:Label>
            </div>
    </form>
</asp:Content>

