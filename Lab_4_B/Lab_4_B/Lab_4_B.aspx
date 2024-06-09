<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab_4_B.aspx.cs" Inherits="Lab_4_B" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>RadioButtonList Demo</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h2>Country Details</h2>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label for="txtCountryName">Country Name:</label>
                    <asp:TextBox ID="txtCountryName" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtCountryCode">Country Code:</label>
                    <asp:TextBox ID="txtCountryCode" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                    <asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-danger ml-2" OnClick="btnRemove_Click" />
                </div>
            </div>
        </div>

        <div class="card mt-4">
            <div class="card-header">
                <h2>Country List</h2>
            </div>
            <div class="card-body">
                <asp:RadioButtonList ID="rblCountryList" runat="server" CssClass="list-group">
                </asp:RadioButtonList>
                <asp:Button ID="btnDisplay" runat="server" Text="Display" CssClass="btn btn-info mt-3" OnClick="btnDisplay_Click" />
                <asp:Label ID="lblSelectedItems" runat="server" CssClass="d-block mt-3"></asp:Label>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
