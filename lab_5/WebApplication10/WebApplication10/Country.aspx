<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Country.aspx.cs" Inherits="WebApplication10.Country" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Country List Operations</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h1 class="mb-4">Country Listbox Operations</h1>
            <div class="form-group row">
                <label for="txtCountryName" class="col-sm-2 col-form-label">Country Name :</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtCountryName" CssClass="form-control" runat="server" placeholder="Enter country name"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label for="txtCountryCode" class="col-sm-2 col-form-label">Country Code :</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtCountryCode" CssClass="form-control" runat="server" placeholder="Enter country code"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10 offset-sm-2">
                    <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnRemove" CssClass="btn btn-danger" runat="server" Text="Remove" OnClick="btnRemove_Click" />
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10 offset-sm-2">
                    <asp:ListBox ID="lstCountries" CssClass="form-control" runat="server" Rows="10" />
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
