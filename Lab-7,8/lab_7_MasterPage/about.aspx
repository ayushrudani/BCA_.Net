<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master"  AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="lab_7_MasterPage.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->
    <main class="container mt-5">
        <div class="content">
            <h1 class="display-4 text-left">About Us</h1>
            <hr class="my-4">
            <p class="lead">Welcome to our company! We are dedicated to providing the best service possible. Our team is composed of experienced professionals who are passionate about their work.</p>
            <p class="lead">Founded in 2024, we have consistently delivered high-quality solutions to our clients. Our mission is to innovate and lead in our industry, always keeping customer satisfaction at the forefront of everything we do.</p>
            <h2 class="my-4">Our Team</h2>
            <p class="lead">Our team is our greatest asset. We believe in fostering a collaborative and inclusive environment where everyone can thrive. Meet some of the amazing people who make our company what it is:</p>
            <ul class="list-unstyled">
                <li class="media my-4">
                    <img src="team_member_1.jpg" class="mr-3" alt="Team Member 1" style="width: 64px;">
                    <div class="media-body">
                        <h5 class="mt-0 mb-1">John Doe</h5>
                        CEO - John is the visionary behind our company. With over 20 years of experience in the industry, he leads with passion and dedication.
                   
                    </div>
                </li>
                <li class="media my-4">
                    <img src="team_member_2.jpg" class="mr-3" alt="Team Member 2" style="width: 64px;">
                    <div class="media-body">
                        <h5 class="mt-0 mb-1">Jane Smith</h5>
                        CTO - Jane is our tech guru. Her innovative solutions and deep technical expertise keep us at the cutting edge.
                   
                    </div>
                </li>
                <li class="media my-4">
                    <img src="team_member_3.jpg" class="mr-3" alt="Team Member 3" style="width: 64px;">
                    <div class="media-body">
                        <h5 class="mt-0 mb-1">Sarah Johnson</h5>
                        CFO - Sarah ensures our financial stability and growth. Her strategic thinking and financial acumen are invaluable.
                   
                    </div>
                </li>
            </ul>
            <form runat="server" id="form1">
        <asp:TextBox runat="server" ID="demo" SkinID="txtDemo"></asp:TextBox>
                </form>
        </div>
    </main>
</asp:Content>
