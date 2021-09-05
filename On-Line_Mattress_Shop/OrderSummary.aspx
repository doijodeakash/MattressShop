<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/AdminMasterPage.master" CodeBehind="OrderSummary.aspx.cs" Inherits="On_Line_Mattress_Shop.OrderSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server" class="main_page">
        <asp:GridView ID="gvOrderSummary" class="table responsive-table m-auto text-center" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="BID">
                    <EditItemTemplate>
                        <asp:TextBox ID="bid" runat="server" Text='<%# Bind("bid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblbid" runat="server" Text='<%# Bind("bid") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:BoundField DataField="pid" HeaderText="PID">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="pname" HeaderText="PNAME">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="QTY">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="PRICE">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="tprice" HeaderText="T.PRICE">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="size" HeaderText="SIZE">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="cname" HeaderText="C.NAME">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="tamt" HeaderText="T.AMT">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>
                <asp:BoundField DataField="dateofadd" HeaderText="DATE OF ADD">
                    <HeaderStyle ForeColor="White" />
                </asp:BoundField>

                <asp:TemplateField HeaderText="Set Order Status">
                    <ItemTemplate>
                        <asp:RadioButtonList class="table responsive-table" ID="oStatus" RepeatDirection="Horizontal" OnSelectedIndexChanged="oStatus_SelectedIndexChanged" runat="server">
                            <asp:ListItem Selected="True">   Order Placed   </asp:ListItem>
                            <asp:ListItem>   Order Shiped   </asp:ListItem>
                            <asp:ListItem>   Order En Routed   </asp:ListItem>
                            <asp:ListItem>   Deliverd   </asp:ListItem>
                        </asp:RadioButtonList>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>

            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</asp:Content>
