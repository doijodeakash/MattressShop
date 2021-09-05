<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="True" CodeBehind="CustomerReport.aspx.cs" Inherits="CustomerReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server" class="main_page">
        <table style="width: 100%">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>

            </table>
<%--        <p>
        </p>
        <table style="width: 100%">
            <tr>
                <td>--%>
                    <asp:GridView ID="gvcst" runat="server" AutoGenerateColumns="False" class="table table-bordered responsive-table" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="gvcst_PageIndexChanging" PageSize="2" CssClass="table table-bordered responsive-table lett">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="cid" HeaderText="Customer ID" />
                            <asp:BoundField DataField="emailid" HeaderText="Email ID" />
                            <asp:BoundField DataField="cname" HeaderText="Customer Name" />
                            <asp:BoundField DataField="address" HeaderText="Address" />
                            <asp:BoundField DataField="contact" HeaderText="Contact No" />
                            <asp:BoundField DataField="gender" HeaderText="Gender" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Bottom" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
<%--                </td>
            </tr>--%>
            <%--<tr>
                <td>
                    &nbsp;</td>
            </tr>--%>
        </table>
        <table style="width: 100%" align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Enter Customer ID To View Details"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtcity" runat="server" Width="241px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnshowcity" runat="server" CssClass="button special" OnClick="btnshowcity_Click" Text="Show Records" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

