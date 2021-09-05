<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="True" CodeBehind="BookingHistory.aspx.cs" Inherits="BookingHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" class="main_page">
    <table style="width: 100%">
        <tr>
            <td style="width: 577px">&nbsp;</td>
            <td style="width: 176px">
                <asp:Label ID="Label1" runat="server" Text="BOOKING HISTORY"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="962px">
                    <Columns>
                        <asp:BoundField DataField="bid" HeaderText="Booking ID" />
                        <asp:BoundField DataField="pid" HeaderText="Product ID" />
                        <asp:BoundField DataField="pname" HeaderText="Product Name" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="tprice" HeaderText="Total" />
                        <asp:BoundField DataField="size" HeaderText="Size" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>