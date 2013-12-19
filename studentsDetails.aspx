<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentsDetails.aspx.cs" Inherits="PratheekshaSite.studentsDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student's Details</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 152px;
            height: 22px;
        }
        .auto-style3 {
            height: 22px;
        }
        .auto-style4 {
            height: 22px;
            width: 72px;
        }
        .auto-style5 {
            width: 72px
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                
                <td>
                    <asp:TextBox ID="admid_txt" runat="server" placeholder="Admission ID"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Go" class="btn btn-primary" OnClick="Button1_Click"/>
                </td>
                <td>
                    <asp:Label ID="msg_lbl" runat="server" ForeColor="#FF3300"></asp:Label></td>
            </tr>
        </table>
    
    </div>
        <div class="row">
  <div class="col-xs-6 col-md-3">
      <asp:DataList ID="DataList1" runat="server">
          <ItemTemplate>
              <table class="table table-striped">
                  <tr>
                      <td colspan="2">
                          <asp:Label ID="Label1" runat="server" Text='<%# bind("name") %>' ForeColor="#007ACC"></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style4">Class</td>
                      <td class="auto-style3">
                          <asp:Label ID="Label2" runat="server" Text='<%# bind("cls") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style5">Medium</td>
                      <td>
                          <asp:Label ID="Label3" runat="server" Text='<%# bind("medium") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style5">School</td>
                      <td>
                          <asp:Label ID="Label4" runat="server" Text='<%# bind("school") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style5">Branch</td>
                      <td>
                          <asp:Label ID="Label5" runat="server" Text='<%# bind("branch") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style5">Guardian</td>
                      <td>
                          <asp:Label ID="Label6" runat="server" Text='<%# bind("guardian") %>'></asp:Label>
                      </td>
                  </tr>
                  <tr>
                      <td class="auto-style5">Contact</td>
                      <td>
                          <asp:Label ID="Label7" runat="server" Text='<%# bind("contact") %>'></asp:Label>
                      </td>
                  </tr>
              </table>
          </ItemTemplate>
      </asp:DataList>
  </div>
   <div class="col-xs-6 col-md-3" >
       <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="177px" AutoGenerateRows="False" class="table table-striped" HeaderText="First Term">
           <Fields>
               <asp:BoundField DataField="mal1" HeaderText="Malayalam 1" />
               <asp:BoundField DataField="mal2" HeaderText="Malayalam 2" />
               <asp:BoundField DataField="eng" HeaderText="English" />
               <asp:BoundField DataField="hindi" HeaderText="Hindi" />
               <asp:BoundField DataField="social" HeaderText="Social" />
               <asp:BoundField DataField="phy" HeaderText="Physics" />
               <asp:BoundField DataField="che" HeaderText="Chemistry" />
               <asp:BoundField DataField="bio" HeaderText="Biology" />
               <asp:BoundField DataField="maths" HeaderText="Maths" />
               <asp:BoundField DataField="it" HeaderText="IT" />
           </Fields>
          
             
        
           <HeaderStyle BackColor="#FF3300" />
          
             
        
       </asp:DetailsView>
  </div>
             <div class="col-xs-6 col-md-3">
                 <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" class="table table-striped" AutoGenerateRows="False" HeaderText="Second Term">
            <Fields>
               <asp:BoundField DataField="mal1" HeaderText="Malayalam 1" />
               <asp:BoundField DataField="mal2" HeaderText="Malayalam 2" />
               <asp:BoundField DataField="eng" HeaderText="English" />
               <asp:BoundField DataField="hindi" HeaderText="Hindi" />
               <asp:BoundField DataField="social" HeaderText="Social" />
               <asp:BoundField DataField="phy" HeaderText="Physics" />
               <asp:BoundField DataField="che" HeaderText="Chemistry" />
               <asp:BoundField DataField="bio" HeaderText="Biology" />
               <asp:BoundField DataField="maths" HeaderText="Maths" />
               <asp:BoundField DataField="it" HeaderText="IT" />
           </Fields>
                     <HeaderStyle BackColor="#00CC00" />
                 </asp:DetailsView>
  </div>
             <div class="col-xs-6 col-md-3">
                 <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" class="table table-striped" HeaderText="Third Term">
                     <Fields>
               <asp:BoundField DataField="mal1" HeaderText="Malayalam 1" />
               <asp:BoundField DataField="mal2" HeaderText="Malayalam 2" />
               <asp:BoundField DataField="eng" HeaderText="English" />
               <asp:BoundField DataField="hindi" HeaderText="Hindi" />
               <asp:BoundField DataField="social" HeaderText="Social" />
               <asp:BoundField DataField="phy" HeaderText="Physics" />
               <asp:BoundField DataField="che" HeaderText="Chemistry" />
               <asp:BoundField DataField="bio" HeaderText="Biology" />
               <asp:BoundField DataField="maths" HeaderText="Maths" />
               <asp:BoundField DataField="it" HeaderText="IT" />
           </Fields>
                     <HeaderStyle BackColor="#0066CC" />
                 </asp:DetailsView>
  </div>
             
</div>
    </form>
</body>
</html>
