<%@ Page Title="" Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="True" CodeBehind="receipt.aspx.cs" Inherits="receipt" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server" class="main_page">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <style>
            table {
                border: none !important;
                margin: auto;
            }

            tr {
                border: none !important;
            }

            td {
                text-align: center;
                background-color: white;
            }

            .orderstatus {
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;
                justify-content: space-around;
            }

            .receipt {
                font-family: 'Times New Roman', Times, serif;
                font-weight: bolder;
                text-transform: uppercase;
                color: #044ea1;
                border: solid 1px;
                border-color: #df0b0bf2 !important;
                letter-spacing: 1px;
            }

            .receipthead {
                font-family: 'Times New Roman', Times, serif;
                color: #044ea1;
            }


            .card {
                z-index: 0;
                background-color: #ECEFF1;
                padding-bottom: 20px;
                margin-top: 90px;
                margin-bottom: 90px;
                border-radius: 500px;
            }

            .top {
                padding-top: 40px;
                padding-left: 13% !important;
                padding-right: 13% !important;
            }

            #progressbar {
                margin-bottom: 30px;
                overflow: hidden;
                color: #455A64;
                padding-left: 0px;
                margin-top: 30px;
            }

                #progressbar li {
                    list-style-type: none;
                    font-size: 13px;
                    width: 25%;
                    float: left;
                    position: relative;
                    font-weight: 400;
                }

                #progressbar .step0:before {
                    font-family: FontAwesome;
                    content: "\f10c";
                    color: #fff;
                }

                #progressbar li:before {
                    width: 40px;
                    height: 40px;
                    line-height: 45px;
                    display: block;
                    font-size: 20px;
                    background: #C5CAE9;
                    border-radius: 50%;
                    margin: auto;
                    padding: 0px;
                }

                #progressbar li:after {
                    content: '';
                    width: 100%;
                    height: 12px;
                    background: #C5CAE9;
                    position: absolute;
                    left: 0;
                    top: 16px;
                    z-index: -1;
                }

                #progressbar li:last-child:after {
                    border-top-right-radius: 10px;
                    border-bottom-right-radius: 10px;
                    position: absolute;
                    left: -50%;
                }

                #progressbar li:nth-child(2):after,
                #progressbar li:nth-child(3):after {
                    left: -50%;
                }

                #progressbar li:first-child:after {
                    border-top-left-radius: 10px;
                    border-bottom-left-radius: 10px;
                    position: absolute;
                    left: 50%;
                }

                #progressbar li:last-child:after {
                    border-top-right-radius: 10px;
                    border-bottom-right-radius: 10px;
                }

                #progressbar li:first-child:after {
                    border-top-left-radius: 10px;
                    border-bottom-left-radius: 10px;
                }

                #progressbar li.active:before,
                #progressbar li.active:after {
                    background: #651FFF;
                }

                #progressbar li.active:before {
                    font-family: FontAwesome;
                    content: "\f00c";
                }

            .sticon {
                width: 60px;
                height: 60px;
                margin-right: 15px;
            }

            .icon-content {
                padding-bottom: 20px;
            }

            @media screen and (max-width: 992px) {
                .icon-content {
                    width: 50%;
                }
            }
        </style>

        <%--<link rel="stylesheet" href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>--%>
        <link href="assets/css/statusorder/bootstrap.min.css" rel="stylesheet" />

        <%--<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>--%>
        <script src="assets/css/statusorder/bootstrap.bundle.min.js"></script>


        <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' />
        <link href="assets/css/statusorder/font-awesome.min.css" rel="stylesheet" />


        <%--<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>--%>
        <script src="assets/css/statusorder/jquery.min.js"></script>



        <%--background-color: #9999FF;--%>
        <table style="width: 80%">
            <tr>
                <th style="width: 211px; font-family: 'times New Roman', Times, serif; font-size: 20px; font-weight: bolder; text-transform: capitalize; color: #000000;">
                    <asp:Label ID="lbldate" runat="server">Date</asp:Label>
                    <br />
                    <asp:Label ID="lbldate0" runat="server"></asp:Label>
                </th>
                <td style="font-family: 'times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; text-transform: capitalize; color: #000000; text-align: center;" colspan="4">
                    <%--<img src="images/SHLogo12.png" style="width: 342px; height: 68px" />--%>
                    <span class="receipthead">On-Line Mattress Shop</span>
                </td>
                <th style="width: 199px; font-family: 'times New Roman', Times, serif; font-size: 20px; font-weight: bolder; text-transform: capitalize; color: #000000;">
                    <asp:Label ID="lblbid" runat="server">Order No.:</asp:Label>
                    <br />
                    <asp:Label ID="lblbid0" runat="server"></asp:Label>
                </th>
            </tr>
            <tr>
                <td style="width: 211px;" class="receipt">
                    <asp:Label ID="lblcname" runat="server">Customer</asp:Label>
                </td>
                <td style="" class="receipt">
                    <asp:Label ID="lblpid" runat="server">Product ID</asp:Label>
                </td>
                <td style="width: 178px;" class="receipt">
                    <asp:Label ID="lblpname" runat="server">Product Name</asp:Label>
                </td>
                <td style="" class="receipt">
                    <asp:Label ID="lblsize" runat="server">Size</asp:Label>
                </td>
                <td style="" class="receipt">
                    <asp:Label ID="lblqty" runat="server">Quantity</asp:Label>
                </td>
                <td style="width: 199px;" class="receipt">
                    <asp:Label ID="lblprice" runat="server">Price</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 211px;" class="receipt">
                    <asp:Label ID="lblcname0" runat="server"></asp:Label>
                </td>
                <td style="" class="receipt">
                    <asp:Label ID="lblpid0" runat="server"></asp:Label>
                </td>
                <td style="width: 178px;" class="receipt">
                    <asp:Label ID="lblpname0" runat="server"></asp:Label>
                </td>
                <td style="" class="receipt">
                    <asp:Label ID="lblsize0" runat="server"></asp:Label>
                </td>
                <td style="" class="receipt">
                    <asp:Label ID="lblqty0" runat="server"></asp:Label>
                </td>
                <td style="width: 199px;" class="receipt">
                    <asp:Label ID="lblprice0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 211px; font-family: 'times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; text-transform: capitalize; color: #000000;" rowspan="2">&nbsp;</td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; text-transform: capitalize; color: #000000;" rowspan="2">&nbsp;</td>
                <td style="width: 178px; font-family: 'times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; text-transform: capitalize; color: #000000;" rowspan="2">&nbsp;</td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; text-transform: capitalize; color: #000000;" rowspan="2">&nbsp;</td>
                <td style="font-family: 'times New Roman', Times, serif; font-size: xx-large; font-weight: bolder; text-transform: capitalize; color: #000000;" rowspan="2">&nbsp;</td>
                <td style="width: 199px; font-family: 'Times New Roman', Times, serif; font-size: 20px; font-weight: bolder; text-transform: uppercase; color: #FFFFFF;">
                    <asp:Label ID="lbltprice" runat="server">Total Price</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 199px; font-family: 'Times New Roman', Times, serif; font-size: 20px; font-weight: bolder; text-transform: uppercase; color: #FFFFFF; background-color: #044ea1;">Rs.
                    <asp:Label ID="lbltprice0" runat="server"></asp:Label>
                    /-</td>
            </tr>
        </table>

        <div class="container">
            <div class="orderstatus">
                    <div class="d-flex">
                        <h5>ORDER No.: <span class=""><% = lblbid0.Text.ToString() %></span></h5>
                    </div>
                    <div class="">
                        <p class="">Expected Arrival <span>01/12/19</span></p>
                        <p>USPS <span class="font-weight-bold">234094567242423422898</span></p>
                    </div>
                </div>
            <div class="card w-50 m-auto">
                
                <!-- Add class 'active' to progress -->
                <div class="">
                    <div class="col-12">
                        <ul id="progressbar" class="text-center">

                            <% if (status == "OP") { %>
                            <li class="active step0"></li>
                            <li class="step0"></li>
                            <li class="step0"></li>
                            <li class="step0"></li>
                            
                            <% } else if (status == "OS") { %>

                            <li class="active step0"></li>
                            <li class="active step0"></li>
                            <li class="step0"></li>
                            <li class="step0"></li>
                            
                            <% } else if (status == "OR") { %>

                            <li class="active step0"></li>
                            <li class="active step0"></li>
                            <li class="active step0"></li>
                            <li class="step0"></li>                            
                            
                            <% } else if (status == "OA") { %>

                            <li class="active step0"></li>
                            <li class="active step0"></li>
                            <li class="active step0"></li>
                            <li class="active step0"></li>
                            
                            <% } else { %>

                            <li class="step0"></li>
                            <li class=" step0"></li>
                            <li class="step0"></li>
                            <li class="step0"></li>
                            <% } %>
                            <%--<li class="<% = status.Equals("OP") ? "active step0" : "step0" %>"></li>
                            <li class="<% = status.Equals("OS") ? "active step0" : "step0" %>"></li>
                            <li class="<% = status.Equals("OR") ? "active step0" : "step0" %>"></li>
                            <li class="<% = status.Equals("OA") ? "active step0" : "step0" %>"></li>--%>
                        </ul>
                    </div>
                </div>
                <div class="orderstatus">
                    <div class="orderstatus">
                        <img class="sticon" src="https://i.imgur.com/9nnc9Et.png"/>
                        <div class="">
                            <p class="font-weight-bold">Order<br/>
                                Processed</p>
                        </div>
                    </div>
                    <div class="orderstatus">
                        <img class="sticon" src="https://i.imgur.com/u1AzR7w.png"/>
                        <div class="">
                            <p class="font-weight-bold">Order<br/>
                                Shipped</p>
                        </div>
                    </div>
                    <div class="orderstatus">
                        <img class="sticon" src="https://i.imgur.com/TkPm63y.png"/>
                        <div class="">
                            <p class="font-weight-bold">Order<br/>
                                En Route</p>
                        </div>
                    </div>
                    <div class="orderstatus">
                        <img class="sticon" src="https://i.imgur.com/HdsziHP.png"/>
                        <div class="">
                            <p class="font-weight-bold">Order<br/>
                                Arrived</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%--<rsweb:reportviewer ID="ReportViewer1" runat="server" Width="881px"></rsweb:reportviewer>--%>
    </form>

</asp:Content>

