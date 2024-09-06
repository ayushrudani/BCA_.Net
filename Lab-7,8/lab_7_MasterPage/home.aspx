<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="lab_7_MasterPage.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main Content -->
    <main class="container mt-5">
        <div class="content">
            <h1 class="display-4 text-left">Title of the Content</h1>
            <hr class="my-4">
            <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Curabitur pulvinar feugiat risus, at tincidunt libero.</p>
            <p class="lead">Aliquam erat volutpat. Integer ut sapien a libero feugiat facilisis. Nulla facilisi. Donec sollicitudin molestie malesuada. Proin nec velit vel ligula placerat scelerisque. Mauris malesuada libero nec risus tincidunt, ut consequat mauris pretium.</p>
        </div>
    </main>
</asp:Content>
