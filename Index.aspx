<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PratheekshaSite.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 136px
        }
        .auto-style2 {
            width: 233px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <h2>Login<img src="images/logo.jpg" class="img-circle" width="100" height="100"/></h2>
        
       
    <div>
    
        <table >
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><h5>Username</h5></td>
                <td class="auto-style2">
                    <asp:TextBox ID="username_txt" runat="server" Width="200px" required="req"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"><h5>Password</h5></td>
                <td class="auto-style2">
                    <asp:TextBox ID="password_txt" runat="server" Width="200px" TextMode="Password" required="req"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary"/>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
