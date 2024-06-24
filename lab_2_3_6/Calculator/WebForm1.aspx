<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Calculator.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Student Form</h1>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="nameStudentTxt" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="submitbtn" OnClick="submitbtn_click" runat="server" Text="Submit" />

    </form>
    <asp:Label ID="print" runat="server" Text="Label"></asp:Label>
</body>
</html>
