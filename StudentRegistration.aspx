<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="PratheekshaSite.StudentRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Application Form</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css"/>
  <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <script type="text/javascript">
        
  $(function() {
      $( "#datepicker" ).datepicker();
  });
  </script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 132px
        }
        .auto-style3 {
            width: 234px;
        }
        .auto-style4 {
            width: 132px;
            height: 42px;
        }
        .auto-style5 {
            width: 234px;
            height: 42px;
        }
        </style>
</head>
<body>
    
    <h1>Registration<span class="badge">High School</span></h1>
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
    <div>
   
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><h5>Name</h5></td>
                <td class="auto-style3">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                     <asp:TextBox ID="name_txt" runat="server" required="req" AutoPostBack="True" OnTextChanged="name_txt_TextChanged"></asp:TextBox>
                            </ContentTemplate>
                    </asp:UpdatePanel>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Gender</h5></td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="gender_rdio" runat="server" RepeatDirection="Horizontal" Width="216px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Date of Birth</h5></td>
                <td class="auto-style3">
                    <asp:TextBox id="datepicker" runat="server" required="req"></asp:TextBox>
                   </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><h5>Class</h5></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="cls" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Medium</h5></td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="medium_rdio" runat="server" RepeatDirection="Horizontal" Width="217px">
                        <asp:ListItem>MAL</asp:ListItem>
                        <asp:ListItem>ENG</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>School</h5></td>
                <td class="auto-style3">
                    <asp:TextBox ID="school_txt" runat="server" required="req"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Branch</h5></td>
                <td class="auto-style3">
                    <asp:DropDownList ID="branchList1" runat="server">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>IDA</asp:ListItem>
                        <asp:ListItem>Mattancherry</asp:ListItem>
                        <asp:ListItem>Nellukadau</asp:ListItem>
                        <asp:ListItem>Thangal Nagar</asp:ListItem>
                        <asp:ListItem>Kacheripady</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Guardian Name</h5></td>
                <td class="auto-style3">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:TextBox ID="gname_txt" runat="server" required="req" AutoPostBack="True" OnTextChanged="gname_txt_TextChanged"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Contact Number</h5></td>
                <td class="auto-style3">
                    <asp:TextBox ID="cname_txt" runat="server" required="req"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-lg active" OnClick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="msg_lbl" runat="server" ForeColor="#FF3300" Text="Label"></asp:Label>
                </td>
                <td>
                    
                </td>
            </tr>
        </table>
   
    </div>
        
    </form>
        
</body>
</html>
