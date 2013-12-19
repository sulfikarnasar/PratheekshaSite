<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="markentries.aspx.cs" Inherits="PratheekshaSite.markentries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Marks Entries</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 137px;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td><h2>Mark Entry</h2></td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><h5>Branch</h5></td>
                <td>
                    <asp:DropDownList ID="branchList" runat="server">
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
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
            <tr>
                <td class="auto-style2"><h5>Class</h5></td>
                <td>
                    
                    <asp:DropDownList ID="classList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="classList_SelectedIndexChanged">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                            
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr id="tr1" runat="server">
                <td class="auto-style2"><h5>Name</h5></td>
                <td>
                    <asp:DropDownList ID="nameList" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
                            </ContentTemplate>
                    </asp:UpdatePanel>
            <tr>
                <td class="auto-style2"><h5>Term</h5></td>
                <td>
                    <asp:DropDownList ID="termList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="termList_SelectedIndexChanged">
                        <asp:ListItem>SELECT</asp:ListItem>
                        <asp:ListItem>Quarter</asp:ListItem>
                        <asp:ListItem>Half</asp:ListItem>
                        <asp:ListItem>Final</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" Height="50px" Width="125px" HeaderText="MARK SHEET" class="table table-hover">
                        <Fields>
                            <asp:TemplateField HeaderText="MAL1">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("MAL1") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MAL2">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("MAL2") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ENG">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("ENG") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="HINDI">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" requured="req" Text='<%# Eval("HINDI") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="SOCIAL">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" requured="req" Text='<%# Eval("SOCIAL") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="PHY">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" requured="req" Text='<%# Eval("PHY") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="CHE">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" requured="req" Text='<%# Eval("CHE") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="BIO">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server"  requured="req" Text='<%# Eval("BIO") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="MATHS">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" requured="req" Text='<%# Eval("MATHS") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="IT">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" requured="req" Text='<%# Eval("IT") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="SUBMIT" class="btn btn-success" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
       
    </div>
    </form>
</body>
</html>
