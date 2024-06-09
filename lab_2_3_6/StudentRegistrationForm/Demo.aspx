<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="StudentRegistrationForm.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Student Registration Form</h1>
        <table>
            <tr>
                <td>Enter Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="(Name should not be empty)" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revName" runat="server" ErrorMessage="Name should not contain numbers" ControlToValidate="txtName" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Enter EnrollmentNo:</td>
                <td>
                    <asp:TextBox ID="txtEnrollmentNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEnrollmentNo" runat="server" ErrorMessage="(Enrollment should not be empty)" ControlToValidate="txtEnrollmentNo" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEnrollmentNo" runat="server" ErrorMessage="Enrollment No should be a number" ControlToValidate="txtEnrollmentNo" ValidationExpression="^\d+$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Email-id:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="(Email should not be emptyand it should be valid email address)" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid email format" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Enter MobileNo:</td>
                <td>
                    <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMobileNo" runat="server" ErrorMessage="(Mobile number should not be empty and only 10 digits are allowed)" ControlToValidate="txtMobileNo" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revMobileNo" runat="server" ErrorMessage="Invalid mobile number" ControlToValidate="txtMobileNo" ValidationExpression="^\d{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Address:</td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="(Address should not be empty)" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Pincode:</td>
                <td>
                    <asp:TextBox ID="txtPincode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPincode" runat="server" ErrorMessage="(Pincode should not be empty and only 6 digits are allowed)" ControlToValidate="txtPincode" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPincode" runat="server" ErrorMessage="Pincode should be a number" ControlToValidate="txtPincode" ValidationExpression="^\d+$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Select Gender:</td>
                <td>
                    <asp:RadioButton ID="rbMale" runat="server" GroupName="Gender" Text="Male" />
                    <asp:RadioButton ID="rbFemale" runat="server" GroupName="Gender" Text="Female" />
                    <asp:CustomValidator ID="cvGender" runat="server" ErrorMessage="(Gender should not be empty)" ForeColor="Red" ClientValidationFunction="ValidateGender"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>Select Student City:</td>
                <td>
                    <asp:DropDownList ID="ddlCity" runat="server">
                        <asp:ListItem Text="Select City" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Rajkot" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Jamnagar" Value="2"></asp:ListItem>
                        <asp:ListItem Text="Morbi" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCity" runat="server" InitialValue="0" ErrorMessage="(City should not be empty)" ControlToValidate="ddlCity" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Select Student State:</td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem Text="Select State" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Gujarat" Value="1"></asp:ListItem>
                        <asp:ListItem Text="UP" Value="2"></asp:ListItem>
                        <asp:ListItem Text="MH" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvState" runat="server" InitialValue="0" ErrorMessage="(State should not be empty)" ControlToValidate="ddlState" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Select Student Country:</td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server">
                        <asp:ListItem Text="Select Country" Value="0"></asp:ListItem>
                        <asp:ListItem Text="India" Value="1"></asp:ListItem>
                        <asp:ListItem Text="China" Value="2"></asp:ListItem>
                        <asp:ListItem Text="USA" Value="3"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCountry" runat="server" InitialValue="0" ErrorMessage="(Country should not be empty)" ControlToValidate="ddlCountry" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Select Student Hobby:</td>
                <td>
                    <asp:CheckBoxList ID="cblHobby" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem ID="liChess" Text="Chess" Value="Chess"></asp:ListItem>
                        <asp:ListItem ID="liFootball" Text="Football" Value="Football"></asp:ListItem>
                        <asp:ListItem ID="liCricket" Text="Cricket" Value="Cricket"></asp:ListItem>
                        <asp:ListItem ID="liReading" Text="Reading" Value="Reading"></asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:CustomValidator ID="cvHobby" runat="server" ErrorMessage="(Minimum one hobby required)" ClientValidationFunction="ValidateHobbies" ForeColor="Red"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="(Password should not blank)" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ErrorMessage="(Confirm password should not blank)" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="(password & confirm password should be same)" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblEnrollmentNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMobileNo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblPincode" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblGender" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblState" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblCountry" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblHobbies" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
    <script type="text/javascript">
        function ValidateGender(source, args) {
            var rbMale = document.getElementById('<%= rbMale.ClientID %>');
            var rbFemale = document.getElementById('<%= rbFemale.ClientID %>');
            args.IsValid = rbMale.checked || rbFemale.checked;
        }
        function ValidateHobbies(source, args) {
            var checkBoxList = document.getElementById('<%= cblHobby.ClientID %>');
            var inputs = checkBoxList.getElementsByTagName("input");
            var isChecked = false;
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type == "checkbox" && inputs[i].checked) {
                    isChecked = true;
                    break;
                }
            }
            args.IsValid = isChecked;
        }
    </script>
</body>
</html>
