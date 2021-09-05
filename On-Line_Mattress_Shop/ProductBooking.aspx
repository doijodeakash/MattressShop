<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="True" CodeBehind="ProductBooking.aspx.cs" Inherits="ProductBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="main_page">



        <%--<asp:Label ID="Label1" runat="server" Text="Select Model"></asp:Label>--%>


        <asp:DropDownList ID="ddlproduct" runat="server" Width="217px" OnSelectedIndexChanged="ddlproduct_SelectedIndexChanged" AutoPostBack="True" Height="85px" CssClass="button special">
        </asp:DropDownList>
        <asp:DataList class="productspage" ID="dlproduct" runat="server" OnItemCommand="dlproduct_ItemCommand1" Width="1048px">
            <ItemTemplate>

                <asp:Label ID="Label2" Visible="false" runat="server" Text="ID:"></asp:Label>
                <asp:Label ID="lblid" Visible="false" runat="server" Text='<%# Eval("pid") %>'></asp:Label>

                <br />

                <div class="productimage">
                    <asp:Image ID="Image1" runat="server" Height="600px" ImageUrl='<%# Eval("imgurl") %>' Width="600px" /></div>
                <div class="productlisting">
                    <asp:Label ID="lblsize" runat="server" Text='<%# Eval("size") %>'></asp:Label>

                    <asp:Label ID="lblcomp" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                    Rs<br />
                    <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label>
                    <asp:TextBox ID="txtqty" runat="server" TextMode="Number" Width="65px">1</asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtqty" ErrorMessage="RangeValidator" MaximumValue="5" MinimumValue="1">Qty 1-5 only</asp:RangeValidator>
                    &nbsp;<br />
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button special" CommandName="select">
                                                    Add to Cart
                    </asp:LinkButton>
                    <asp:LinkButton runat="server" ID="lbBuy" CssClass="button special" CommandName="select">
                                                    Buy Now
                    </asp:LinkButton>
                </div>
                <%--    <table style="width: 100%; height: 113px;">
        <tr>
            <td style="height: 82px">
                &nbsp;</td>
            <td style="height: 82px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 82px">
                <asp:Label ID="Label1" runat="server" Text="Select Model"></asp:Label>
            </td>
            <td style="height: 82px">
                <asp:DropDownList ID="ddlproduct" runat="server" Width="217px" OnSelectedIndexChanged="ddlproduct_SelectedIndexChanged" AutoPostBack="True" Height="85px" CssClass="button special">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:DataList ID="dlproduct" runat="server" OnItemCommand="dlproduct_ItemCommand1" Width="1048px" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label2" Visible="false" runat="server" Text="ID:"></asp:Label>
                                    <asp:Label ID="lblid" Visible="false" runat="server" Text='<%# Eval("pid") %>'></asp:Label>

                                </td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="188px" ImageUrl='<%# Eval("imgurl") %>' Width="198px" />

                                </td>

                            </tr>
                            <tr>
                                <td class="auto-style4">Size</td>
                                <td>
                                    <asp:Label ID="lblsize" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                                </td>

                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblcomp" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    Rs</td>
                            </tr>
                            <tr>
                                <td class="auto-style4" colspan="2">
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">
                                                    Add to Cart
                                    </asp:LinkButton>

                                </td>

                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtqty" runat="server" TextMode="Number" Width="65px">1</asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtqty" ErrorMessage="RangeValidator" MaximumValue="5" MinimumValue="1">Qty 1-5 only</asp:RangeValidator>

                                </td>

                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label4" runat="server" Text="ID:"></asp:Label>
                                    <asp:Label ID="lblid0" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Image ID="Image2" runat="server" Height="188px" ImageUrl='<%# Eval("imgurl") %>' Width="198px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Size</td>
                                <td>
                                    <asp:Label ID="lblsize0" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblcomp0" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblprice0" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    Rs</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label5" runat="server" Text="Quantity:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtqty0" runat="server" TextMode="Number" Width="65px">1</asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtqty" ErrorMessage="RangeValidator" MaximumValue="5" MinimumValue="1">Qty 1-5 only</asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4" colspan="2">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="select">
                                                    Add to Cart
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label6" runat="server" Text="ID:"></asp:Label>
                                    <asp:Label ID="lblid1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Image ID="Image3" runat="server" Height="188px" ImageUrl='<%# Eval("imgurl") %>' Width="198px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">Size</td>
                                <td>
                                    <asp:Label ID="lblsize1" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="lblcomp1" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblprice1" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    Rs</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label7" runat="server" Text="Quantity:"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtqty1" runat="server" TextMode="Number" Width="65px">1</asp:TextBox>
                                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtqty" ErrorMessage="RangeValidator" MaximumValue="5" MinimumValue="1">Qty 1-5 only</asp:RangeValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4" colspan="2">
                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="select">
                                                    Add to Cart
                                    </asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
            </td>
        </tr>
    </table>--%>
            </ItemTemplate>
        </asp:DataList>

    </form>

</asp:Content>

