<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab_11.aspx.cs" Inherits="Lab_11.Lab_11" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Application</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <main>
                <section class="jumbotron text-center">
                    <h1 class="display-4">Join Our Team</h1>
                    <p class="lead">Apply now and start your career with us.</p>
                </section>

                <section class="application-form">
                    <h2>Job Application Form</h2>
                    <p>Please fill out the form below and upload your resume to apply.</p>
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>
                    <div class="form-group">
                        <label for="name">Full Name:</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="email">Email Address:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="phone">Phone Number:</label>
                        <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="position">Position Applying For:</label>
                        <asp:DropDownList ID="ddlPosition" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Software Engineer">Software Engineer</asp:ListItem>
                            <asp:ListItem Value="Project Manager">Project Manager</asp:ListItem>
                            <asp:ListItem Value="Designer">Designer</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <label for="cover_letter">Cover Letter:</label>
                        <asp:TextBox ID="txtCoverLetter" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label for="resume">Upload Resume:</label>
                        <asp:FileUpload ID="fileResume" runat="server" CssClass="form-control-file" />
                    </div>

                    <div>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />
                    </div>
                    <br />
                </section>
            </main>

            
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

