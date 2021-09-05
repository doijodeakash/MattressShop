<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="True" CodeBehind="ProductMaster.aspx.cs" Inherits="ProductMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div >
        <form runat="server" class="main_page">
            <table style="width: 100%">
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="gvproduct" runat="server" CellPadding="4" Width="1278px" AutoGenerateColumns="False" OnRowCommand="gvproduct_RowCommand" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                            <Columns>
                                <asp:BoundField DataField="pid" HeaderText="Product ID" />
                                <asp:BoundField DataField="company" HeaderText="Company" />
                                <asp:BoundField DataField="model" HeaderText="Model" />
                                <asp:BoundField DataField="size" HeaderText="Size" />
                                <asp:BoundField DataField="qty" HeaderText="Quantity" />
                                <asp:ImageField DataImageUrlField="imgurl" HeaderText="Image">
                                    <ControlStyle Height="150px" Width="150px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="thickness" HeaderText="Thickness" />
                                <asp:BoundField DataField="price" HeaderText="Price" />
                                <asp:ButtonField CommandName="select" Text="Select" />
                            </Columns>
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label8" runat="server" Text="Product ID"></asp:Label></td>
                    <td style="width: 185px">
                        <asp:TextBox ID="txtpid" runat="server" Width="145px" CssClass="button special"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label1" runat="server" Text="Mattress Company"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:TextBox ID="txtcompname" runat="server" Width="145px" CssClass="button special"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label2" runat="server" Text="Model Name"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:DropDownList ID="ddlmname" runat="server" CssClass="button special" Width="148px">
                            <asp:ListItem>SPRING COIL</asp:ListItem>
                            <asp:ListItem>RESTONIC</asp:ListItem>
                            <asp:ListItem>SPINE GUARD</asp:ListItem>
                            <asp:ListItem>GRAND PALAIS</asp:ListItem>
                            <asp:ListItem>CRYSTAL</asp:ListItem>
                            <asp:ListItem>ORGANICA</asp:ListItem>
                            <asp:ListItem>VIVAH</asp:ListItem>
                            <asp:ListItem>DOUBLE DECKER</asp:ListItem>
                            <asp:ListItem>ZENIMO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label3" runat="server" Text="Size"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:DropDownList ID="ddlpsizes" runat="server" CssClass="button special">
                            <asp:ListItem>72x30</asp:ListItem>
                            <asp:ListItem>72x36</asp:ListItem>
                            <asp:ListItem>72x42</asp:ListItem>
                            <asp:ListItem>72x48</asp:ListItem>
                            <asp:ListItem>72x60</asp:ListItem>
                            <asp:ListItem>72x66</asp:ListItem>
                            <asp:ListItem>72x72</asp:ListItem>
                            <asp:ListItem>75x30</asp:ListItem>
                            <asp:ListItem>75x36</asp:ListItem>
                            <asp:ListItem>75x42</asp:ListItem>
                            <asp:ListItem>75x48</asp:ListItem>
                            <asp:ListItem>75x60</asp:ListItem>
                            <asp:ListItem>75x66</asp:ListItem>
                            <asp:ListItem>75x72</asp:ListItem>
                            <asp:ListItem>78x30</asp:ListItem>
                            <asp:ListItem>78x36</asp:ListItem>
                            <asp:ListItem>78x42</asp:ListItem>
                            <asp:ListItem>78x48</asp:ListItem>
                            <asp:ListItem>78x60</asp:ListItem>
                            <asp:ListItem>78x66</asp:ListItem>
                            <asp:ListItem>78x72</asp:ListItem>
                            <asp:ListItem>80x30</asp:ListItem>
                            <asp:ListItem>80x36</asp:ListItem>
                            <asp:ListItem>80x42</asp:ListItem>
                            <asp:ListItem>80x48</asp:ListItem>
                            <asp:ListItem>80x60</asp:ListItem>
                            <asp:ListItem>80x66</asp:ListItem>
                            <asp:ListItem>80x72</asp:ListItem>
                            <asp:ListItem>84x30</asp:ListItem>
                            <asp:ListItem>84x36</asp:ListItem>
                            <asp:ListItem>84x42</asp:ListItem>
                            <asp:ListItem>48x48</asp:ListItem>
                            <asp:ListItem>84x60</asp:ListItem>
                            <asp:ListItem>84x66</asp:ListItem>
                            <asp:ListItem>84x72</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label7" runat="server" Text="Thickness"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:DropDownList ID="ddlthick" runat="server" CssClass="button special">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:TextBox ID="txtpqty" runat="server" CssClass="button special"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label4" runat="server" Text="Mattress Image"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="button special" />
                        <br />
                        <asp:Button ID="btnup" runat="server" CssClass="button special" Text="Upload" OnClick="btnup_Click" />
                        <br />
                        <asp:Label ID="lblfileer" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="137px" Width="225px" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 405px"></td>
                    <td style="width: 309px" class="align-left">
                        <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td style="width: 185px">
                        <asp:TextBox ID="txtpprice" runat="server" CssClass="text"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="align-center" colspan="4">
                        <asp:Button ID="btnpdtsave" runat="server" CssClass="button special" Text="Save" OnClick="btnpdtsave_Click" />
                        &nbsp;<asp:Button ID="btnpdtupdate" runat="server" CssClass="button special" Text="Update" OnClick="btnpdtupdate_Click" />
                        &nbsp;<asp:Button ID="btnpdtdelete" runat="server" CssClass="button special" Text="Delete" OnClick="btnpdtdelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="align-center" colspan="4">
                        <asp:Label ID="lblerr" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</asp:Content>

