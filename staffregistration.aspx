<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="staffregistration.aspx.cs" Inherits="PratheekshaSite.staffregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Registration</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 162px;
        }
        .auto-style3 {
            width: 238px;
        }
        .auto-style4 {
            width: 162px;
            height: 42px;
        }
        .auto-style5 {
            width: 238px;
            height: 42px;
        }
        .auto-style6 {
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel panel-success">
           <div class="panel-heading"><h3>Staff Registration</h3></div>  
            
  
    <div>
     
        <table class="table table-hover">
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="name_txt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Age</td>
                <td class="auto-style3">
                    <asp:TextBox ID="age_txt" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td class="auto-style3">
                    <asp:TextBox ID="address_txt" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile</td>
                <td class="auto-style3">
                    <asp:TextBox ID="mobile_txt" runat="server" required="req"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="email_txt" runat="server" type="email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Username</td>
                <td class="auto-style5">
                    <asp:TextBox ID="username_txt" runat="server" required="req"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="password_txt" runat="server" TextMode="Password" required="req"></asp:TextBox>
                </td>
                <td>
                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password_txt" ControlToValidate="cpassword_txt" ErrorMessage="missmatch"></asp:CompareValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="cpassword_txt" runat="server" TextMode="Password" required="req"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-default" OnClick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="msg_lbl" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
               </div> 
            
    </form>
</body>
</html>
