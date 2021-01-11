<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Hosient.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

	<script src='https://kit.fontawesome.com/a076d05399.js'></script>

    <h3>Contact</h3>

	<p>Just send us your questions or concerns by starting a new case and we will give you the help you need.</p>

	<section class="contact-info-section">

        <div class="container">
            <div class="contact-info-box">
                <div class="row">

                    <div class="col-lg-3 col-md-6">
                        <div class="info-post">
                            <div class="icon">
                                <a href="tel://0216 621 13 13" target="_blank"><i class="fa fa-phone"></i></a>
                            </div>
                            <div class="info-content">
                                <p><a href="tel://0216 621 13 13" target="_blank">0216 621 13 13</a></p>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-4 col-md-6">
                        <div class="info-post">
                            <div class="icon">
                                <a href="mailto:info@sancaktepebolgehastanesi.com" target="_blank"><i class='fas fa-info-circle'></i></a>
                            </div>
                            <div class="info-content">
                                <p><a href="mailto:info@sancaktepebolgehastanesi.com" target="_blank">info@sancaktepebolgehastanesi.com</a></p>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-5 col-md-6">
                        <div class="info-post">
                            <div class="icon">
                                <a href="https://www.google.com.tr/maps/dir//41.005742,29.215507" target="_blank"><i class='fas fa-map-marker-alt'></i></a>
                            </div>
                            <div class="info-content">
                                <p><a href="https://www.google.com.tr/maps/dir//41.005742,29.215507" target="_blank">Osmangazi Cad. No:34 Sarigazi, Sancaktepe / İstanbul</a></p>
                            </div>
                        </div>
                    </div>



                </div>
            </div>
        </div>
	</section>

</asp:Content>
