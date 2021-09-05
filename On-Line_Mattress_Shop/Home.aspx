<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.master" AutoEventWireup="True" CodeBehind="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <section id="one" class="wrapper style2">
                        <div class="inner">
                            <div class="grid-style">

                                <div>
                                    <div class="box">
                                        <div class="image fit">
                                            <img src="images/peps.jpeg" alt="" />
                                        </div>
                                        <div class="content">
                                            <header class="align-center">
                                                <p>India's Top Selling mattres</p>
                                                <h2>peps</h2>
                                            </header>
                                            <p>Innovative technology, meticulouarket research, thoughtful sleep insights, the finest materials & the widest range of options – all that and more, so that you can live the #pepslife every single day...</p>
                                            <footer class="align-center">
                                                <a href="BookMattress.aspx" class="button alt">Buy Now</a>
                                            </footer>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <div class="box">
                                        <div class="image fit">
                                            <img src="images/centuary.png" alt="" />
                                        </div>
                                        <div class="content">
                                            <header class="align-center">
                                                <p>India ka sleep specialist</p>
                                                <h2>Centuary</h2>
                                            </header>
                                            <p>At Centuary, we believe that anyone who spends their days working hard, and achieving their dreams, need – and deserve – the best sleep each night. That’s why our mattresses are specially designed to perfectly match your lifestyle and sleep style.</p>
                                            <footer class="align-center">
                                                <a href="BookMattress.aspx" class="button alt">Buy Now</a>
                                            </footer>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div class="box">
                                        <div class="image fit" style="background-color: blueviolet">
                                            <a href="ProductBooking.aspx">
                                                <img src="productimages/centuary/grandpalaismattressnew-2_2ndcolor_base.png" alt="" /></a>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div class="box">
                                        <div class="image fit" style="background-color: greenyellow">
                                            <a href="ProductBooking.aspx">
                                                <img src="productimages/centuary/spring-koil-maroon-with-metallica-silver-border-with-base.png" alt="" /></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </td>
            </tr>
            <tr>
                <td>
                    <section id="two" class="wrapper style3">
                        <ul class="banner-slider">
                            <li style="list-style-type: none">
                                <video style="width: 100%; height: 60%" poster="video/banner.jpg" loop="loop" autoplay="autoplay" muted="">
                                    <source type="video/mp4" src="video/video.mp4" />
                                    <source type="video/ogv" src="video/video.ogv" />
                                    <source type="video/webm" src="video/video.webm" />
                                </video>
                            </li>
                        </ul>
                    </section>
                </td>
            </tr>
            <tr>
                <td>
                    <section id="three" class="wrapper style2">
                        <div class="inner">
                            <header class="align-center">
                                <p class="special">peps</p>
                                <h2>Mattress Collections</h2>
                            </header>
                            <div class="gallery">
                                <div>
                                    <div class="image fit">
                                        <a href="ProductBooking.aspx">
                                            <img src="productimages/centuary/comfort.jpg" alt="" /></a>
                                    </div>
                                </div>
                                <div>
                                    <div class="image fit">
                                        <a href="ProductBooking.aspx">
                                            <img src="productimages/centuary/innovat.jpeg" alt="" /></a>
                                    </div>
                                </div>
                                <div>
                                    <div class="image fit">
                                        <a href="ProductBooking.aspx">
                                            <img src="productimages/centuary/signature.jpg" alt="" /></a>
                                    </div>
                                </div>
                                <div>
                                    <div class="image fit">
                                        <a href="ProductBooking.aspx">
                                            <img src="productimages/centuary/smart.jpg" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </td>
            </tr>
        </table>
    </form>
    			
</asp:Content>

