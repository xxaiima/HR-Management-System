<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeForm.aspx.cs" Inherits="HR.UI.EmployeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 126px;
        }
        .auto-style2 {
            width: 1264px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Full Name</td>
                    <td class="auto-style2">&nbsp; <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email</td>
                    <td class="auto-style2">&nbsp; <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Date of Birth</td>
                    <td class="auto-style2">&nbsp; <asp:TextBox ID="txtDoB" runat="server"></asp:TextBox><br /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Gender</td>
                    <td class="auto-style2">&nbsp; <asp:TextBox ID="txtGender" runat="server"></asp:TextBox><br /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Department</td>
                    <td class="auto-style2">&nbsp; <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox><br /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2">&nbsp; 
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style2">&nbsp; <asp:Label ID="lblMessage" runat="server" ForeColor="Green" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
