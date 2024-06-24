<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="lab_7_MasterPage.services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->
    <main class="container mt-5">
        <div class="content">
            <h1 class="display-4 text-left">Our Services</h1>
            <hr class="my-4">
            <p class="lead">We offer a wide range of services to meet your needs. Our team of experts is dedicated to delivering the highest quality service possible. Here are some of the key services we provide:</p>

            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title">Consulting</h5>
                            <p class="card-text">Our consulting services help you identify opportunities for growth and efficiency within your organization. We provide tailored strategies to help you achieve your business goals.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title">Development</h5>
                            <p class="card-text">Our development team is skilled in creating custom software solutions that are both scalable and robust. We work closely with you to develop applications that meet your specific requirements.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <div class="card-body">
                            <h5 class="card-title">Support</h5>
                            <p class="card-text">Our support services ensure that your systems run smoothly and efficiently. We offer 24/7 support to address any issues that may arise, ensuring minimal downtime for your business.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
