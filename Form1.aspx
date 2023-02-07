<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="Registration_Form.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">REGISTRATION FORM</span></strong></div>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Enter  Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ErrorMessage="Name cannot be blank" ControlToValidate="txtName1" EnableClientScript="False">Name cannot be blank</asp:RequiredFieldValidator>
        &nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtName1" EnableClientScript="False" ErrorMessage="RegularExpressionValidator" Font-Bold="True" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$">*Characters Only</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Enter Mobile Number"></asp:Label>
&nbsp;
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtMobile" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Mobile Number Cannot be Blank</asp:RequiredFieldValidator>
&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtMobile" EnableClientScript="False" ErrorMessage="RegularExpressionValidator" Font-Bold="True" ForeColor="Red" ValidationExpression="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[789]\d{9}|(\d[ -]?){10}\d$">*Number Only</asp:RegularExpressionValidator>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Enter Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Email Cannot be Blank</asp:RequiredFieldValidator>
&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Put Proper Email" ForeColor="Red" ControlToValidate="txtEmail" EnableClientScript="False" ValidationExpression="\w+([-+.']\w+)@\w+([-.]\w+)\.\w+([-.]\w+)" Font-Bold="True">*Put Proper Email</asp:RegularExpressionValidator>
        </p>
        <asp:Label ID="Label6" runat="server" Text="Enter Age"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAge" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Age Cannot be Blank</asp:RequiredFieldValidator>
&nbsp; <asp:RangeValidator ID="RangeValidator2" runat="server" ForeColor="Red" ControlToValidate="txtAge" MaximumValue="50" MinimumValue="18" EnableClientScript="False" Font-Bold="True">*Age Limit Doesn&#39;t Fit </asp:RangeValidator>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
            <asp:ListItem>Maharashtra</asp:ListItem>
            <asp:ListItem>Madhya Pradesh</asp:ListItem>
            <asp:ListItem>Gujarat</asp:ListItem>
            <asp:ListItem>Rajasthan</asp:ListItem>
            <asp:ListItem>Goa</asp:ListItem>
            <asp:ListItem>Kerala</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text=" City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlCity" runat="server">
        </asp:DropDownList>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Enter Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Password Cannot be Blank</asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label7" runat="server" Text="Re-Enter Password"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtReEnterPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtReEnterPassword" ErrorMessage="Password doesn't match" ForeColor="Red" ValueToCompare="TextBox7" ControlToCompare="txtPassword" EnableClientScript="False" Font-Bold="True" EnableTheming="True" Font-Strikeout="False" Font-Underline="False">*Password doesn&#39;t match</asp:CompareValidator>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
