<%@ Page Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="True" CodeBehind="BookMattress.aspx.cs" Inherits="BookMattress" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="main_page table table-bordered responsive-table">
        
        <%--<asp:Label ID="Label1" runat="server" Text="Select Model"></asp:Label>--%>
        <%--<asp:DropDownList ID="ddlproduct" runat="server" Width="217px" OnSelectedIndexChanged="ddlproduct_SelectedIndexChanged" AutoPostBack="True" Height="85px" CssClass="button">
        </asp:DropDownList>--%>
        <div class="bookmattress">Choose your Mattress</div>
        <hr />
        <div class="productspage">
            <%--<asp:DataList class="productspage" ID="dlproduct" runat="server" OnItemCommand="dlproduct_ItemCommand1" >
            <ItemTemplate>--%>
            <asp:Label ID="Label2" Visible="false" runat="server" Text="ID:"></asp:Label>
            <asp:Label ID="lblid" Visible="false" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
            <div class="productimage">
                <asp:Image ID="Image1" runat="server" Width="500px" ImageUrl='~/productimages/centuary/spring-koil-maroon-with-metallica-silver-border-with-base.png' />
            </div>
            <div class="productlisting">
                <%--<asp:Label ID="lblsize" runat="server" Text='<%# Eval("size") %>'></asp:Label>
                <asp:Label ID="lblcomp" runat="server" Text='<%# Eval("company") %>'></asp:Label>
                <asp:Label ID="lblprice" runat="server" Text='<%# string.Concat(Eval("price"),"/- Rs") %>'></asp:Label>--%>
                <%--<asp:Label ID="lblsize" runat="server" Text="60x78"></asp:Label>--%>
                
                <span>Select Model : </span>
                <div class="mattressmodel">
                    <input type="radio" class="btn-check" name="mattressmodel" value="Spring Koil" id="Spring Koil" autocomplete="off" checked />
                    <label class="btn btn-outline-success m-2" for="Spring Koil">Spring Koil</label>
                    <input type="radio" class="btn-check" name="mattressmodel" value="Restonic" id="Restonic" autocomplete="off"/>
                    <label class="btn btn-outline-success" for="Restonic">Restonic</label>
                </div>
                <div class="mattressmodel">
                    <input type="radio" class="btn-check" name="mattressmodel" value="Spine Guard" id="Spine Guard" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="Spine Guard">Spine Guard</label>
                    <input type="radio" class="btn-check" name="mattressmodel" value="Grand Palais" id="Grand Palais" autocomplete="off"/>
                    <label class="btn btn-outline-success" for="Grand Palais">Grand Palais</label>
                </div>

                <span>Choose Size Category : </span>
                <div class="mattressmodel">
                    <input type="radio" class="SINGLE btn-check" name="sizecategory" value="SINGLE" id="SINGLE" autocomplete="off" checked />
                    <label class="btn btn-outline-success m-2" for="SINGLE">SINGLE</label>
                    <input type="radio" class="QUEEN btn-check" name="sizecategory" value="QUEEN" id="QUEEN" autocomplete="off"/>
                    <label class="btn btn-outline-success" for="QUEEN">QUEEN</label>
                </div>
                <div class="mattressmodel">
                    <input type="radio" class="KING btn-check" name="sizecategory" value="KING" id="KING" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="KING">KING</label>
                    <input type="radio" class="CUSTOM btn-check" name="sizecategory" value="CUSTOME SIZE" id="CUSTOMESIZE" autocomplete="off"/>
                    <label class="btn btn-outline-success" for="CUSTOMESIZE">CUSTOMESIZE</label>
                </div>
                <span>Choose Size Dimension in (inch) : </span>
                <div class="SINGLE mattressmodel">
                    <input type="radio" class="btn-check" name="mattresssize" value="72x30" id="single1" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single1">72x30</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="72x36" id="single2" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single2">72x36</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="75x36" id="single3" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single3">75x36</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="78x36" id="single4" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single4">78x36</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="72x42" id="single5" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single5">72x42</label>
                </div>
                <div class="SINGLE mattressmodel">
                    <input type="radio" class="btn-check" name="mattresssize" value="75x42" id="single6" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single6">75x42</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="78x42" id="single7" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single7">78x42</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="72x48" id="single8" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single8">72x48</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="75x48" id="single9" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single9">75x48</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="78x48" id="single10" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="single10">78x48</label>
                </div>
                <div class="QUEEN mattressmodel">
                    <input type="radio" class="btn-check" name="mattresssize" value="72x60" id="queen1" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="queen1">72x60</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="75x60" id="queen2" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="queen2">75x60</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="78x60" id="queen3" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="queen3">78x60</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="72x66" id="queen4" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="queen4">72x66</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="75x66" id="queen5" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="queen5">75x66</label>
<%--                    <input type="radio" class="btn-check" name="mattresssize" value="78x66" id="queen6" />
                    <label class="btn btn-outline-success m-2" for="queen6">78x66</label>--%>
                </div>

                <div class="KING mattressmodel">
                    <input type="radio" class="btn-check" name="mattresssize" value="72x72" id="king1" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="king1">72x72</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="75x72" id="king2" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="king2">75x72</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="78x72" id="king3" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="king3">78x72</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="84x72" id="king4" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="king4">84x72</label>
                    <input type="radio" class="btn-check" name="mattresssize" value="84x78" id="king5" autocomplete="off"/>
                    <label class="btn btn-outline-success m-2" for="king5">84x78</label>
                    <%--<input type="radio" class="btn-check" name="mattresssize" value="84x84" id="king6" />
                    <label class="btn btn-outline-success m-2" for="king6">84x84</label>--%>
                </div>
                <div class="mattressmodel">
        <asp:Label ID="Label3" runat="server" Text="Quantity:"></asp:Label>
        <asp:TextBox ID="txtqty" runat="server" TextMode="Number">1</asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" ForeColor="red" runat="server" ControlToValidate="txtqty" ErrorMessage="RangeValidator" MaximumValue="5" MinimumValue="1">Qty 1-5 only</asp:RangeValidator>
        
                
                <span><asp:Label ID="lblprice" runat="server" Text="5700"></asp:Label>/- Rs</span>
                
                    </div>
        <div class="buying">

            <asp:Button ID="buynow" Text="BYU NOW" runat="server" CssClass="button special" OnClick="buynow_Click" />
            <%--Add to Cart--%>
            <asp:Button ID="addtocart" Text="ADD TO CART" CssClass="button" runat="server" />

        </div>
        </div>
        </div>
        <%--</ItemTemplate>
        </asp:DataList>--%>
    </form>

</asp:Content>
