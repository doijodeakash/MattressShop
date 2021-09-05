<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="True" CodeBehind="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" class="main_page">
    <table style="width: 100%">
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label1" runat="server" Text="Email-ID"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtemailid" runat="server" Width="145px" Height="40px" CssClass="button special"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailid" ErrorMessage="Please enter valid E-mail ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtname" runat="server" Width="145px" Height="40px" CssClass="button special"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtadd" runat="server" Height="40px" TextMode="MultiLine" Width="145px" CssClass="button special"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtadd" ErrorMessage="Please enter your address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtucity" runat="server" Width="145px" Height="40px" CssClass="button special"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtucity" ErrorMessage="Please enter your city"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label5" runat="server" Text="Contact"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtucont" runat="server" Width="145px" Height="40px" CssClass="button special"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtucont" ErrorMessage="Number is not valid" ValidationExpression="^([7-9]){1}([0-9]{9})$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtupass" runat="server" Width="145px" Height="40px" CssClass="button special"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 469px">&nbsp;</td>
            <td style="width: 194px">
                <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td style="width: 213px">
                <asp:TextBox ID="txtucpass" runat="server" Width="145px" Height="40px" CssClass="button special"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtupass" ControlToValidate="txtucpass" ErrorMessage="Password not matching"></asp:CompareValidator>
            </td>
        </tr>
        </table>
        <table style="width: 100%">
        <tr>
            <td style="width: 675px">&nbsp;</td>
            <td>
                <asp:Button ID="btnureg" runat="server" CssClass="button special" OnClick="btnureg_Click" Text="Register" Height="42px" Width="130px" />
                <asp:Label ID="lblureger" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>

