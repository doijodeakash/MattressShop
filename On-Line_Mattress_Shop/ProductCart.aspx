<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="True" CodeBehind="ProductCart.aspx.cs" Inherits="ProductCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="main_page">
        <asp:GridView class="table table-bordered responsive-table text-center" ID="gvcart" runat="server" AutoGenerateColumns="False" OnRowDeleting="gvcart_RowDeleting" OnRowEditing="gvcart_RowEditing" OnRowUpdating="gvcart_RowUpdating">
            <Columns>
                <asp:TemplateField HeaderText="Cart ID" Visible="False">
                    <ItemTemplate>
                        <asp:Label ID="cartid" runat="server" Text='<%# Bind("id") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("emailid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("emailid") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("pid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("pid") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("pname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("pname") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Size">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("size") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("size") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Size Category">
                    <ItemTemplate>
                        <asp:Label ID="sizecategory" runat="server" Text='<%# Bind("sizecat") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("tprice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("tprice") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("dateofadd") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("dateofadd") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Eval("imgurl") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgurl") %>' />
                    </ItemTemplate>
                    <ControlStyle Height="100px" Width="100px" />
                    <HeaderStyle ForeColor="White" />
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <HeaderStyle BackColor="#044EA1" HorizontalAlign="Center" VerticalAlign="Bottom" />
            <RowStyle ForeColor="#044EA1" />
        </asp:GridView>

        TOTAL AMOUNT:
        <asp:Label ID="lbltamt" runat="server"></asp:Label>

        <div class="payment mb-3">
            <div class="payment-method">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Vertical">
                    <asp:ListItem autocomplete="on" class="btn btn-outline-success">Cash</asp:ListItem>
                    <asp:ListItem autocomplete="on" class="btn btn-outline-success">Debit Card</asp:ListItem>
                    <asp:ListItem autocomplete="on" class="btn btn-outline-success">Credit Card</asp:ListItem>
                </asp:RadioButtonList>
                <%--<input onselect="Page_Load" type="radio" class="btn-check" name="paymentmethod" value="cash" id="cash"   />
            <label class="btn btn-outline-success m-2" for="cash">Cash</label>
            <input onselect="Page_Load" type="radio" class="btn-check" name="paymentmethod" value="debit card" id="dc"   />
            <label class="btn btn-outline-success m-2" for="dc">Debit card</label>
            <input onselect="Page_Load" type="radio" class="btn-check" name="paymentmethod" value="credit card" id="cc"   />
            <label class="btn btn-outline-success m-2" for="cc">Credit Card</label>--%>
            </div>
            <asp:Panel ID="Panel1" class="payment-details" runat="server">
                <asp:Label ID="Label9" runat="server" Text="Card Number"></asp:Label>

                <asp:TextBox ID="txtcrdno" runat="server" MaxLength="16"></asp:TextBox>

                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtcrdno" ErrorMessage="Card not valid" MaximumValue="9999999999999999" MinimumValue="1111111111111111" Type="Double"></asp:RangeValidator>

                <asp:Label ID="Label10" runat="server" Text="CVV Number"></asp:Label>

                <asp:TextBox ID="txtcvv" runat="server" MaxLength="3"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtcvv" ErrorMessage="CVV Number is not correct" MaximumValue="999" MinimumValue="001" Type="Integer"></asp:RangeValidator>
                <asp:Label ID="Label11" runat="server" Text="Expiry Data"></asp:Label>
                <asp:TextBox ID="txtexdt" runat="server" class="button" TextMode="Month"></asp:TextBox>
            </asp:Panel>

        </div>
        <div class="payment">
            <asp:Button ID="btncheckout" runat="server" Text="PROCEED TO CHECKOUT" CssClass="button" OnClick="btncheckout_Click" />
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
    </form>
</asp:Content>

