<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="Calculator.Demoaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    Enter Number 1 :
                </td>
                <td>
                    <asp:TextBox ID="txtNum1" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Enter Number 2 :
                </td>
                <td>
                    <asp:TextBox ID="txtNum2" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Answer :
                </td>
                <td>
                    <asp:TextBox ID="txtAns" runat="server" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnAddition" OnClick="btnAddition_Click" runat="server" Text="Add(+)" BackColor="#0099ff" />
                    <asp:Button ID="btnSubstraction" OnClick="btnSubstraction_Click" runat="server" Text="Sub(-)" BackColor="#33cc33"/>
                </td>
                <td>
                    <asp:Button ID="btnMultiplication" OnClick="btnMultiplication_Click" runat="server" Text="Mul(*)" BackColor="#00ffff"/>
                    <asp:Button ID="btnDivision" OnClick="btnDivision_Click" runat="server" Text="Div(/)" BackColor="#ff3300"/>
                    <asp:Button ID="btnModulo" OnClick="btnModule_Click" runat="server" Text="Modulo(%)" BackColor="#0099ff"/>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
