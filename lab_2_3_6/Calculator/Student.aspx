<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Calculator.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Student Form</h1>
    <form id="form1" runat="server">
        <asp:Label ID="nameLabel" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <asp:Button ID="submitBtn" OnClick="submitBtnClick" runat="server" Text="Submit" />
    </form>
    <h1>
        <asp:Label ID="print" runat="server" Text=""></asp:Label>
    </h1>
</body>
</html>
