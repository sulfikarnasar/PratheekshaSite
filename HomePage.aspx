<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="PratheekshaSite.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="row">
  <div class="col-xs-6 col-md-3">
    <a href="studentsDetails.aspx" class="thumbnail">
        <img src="images/autumn.jpg" alt="Students Records" width="180" height="134" class="img-circle"/>Students Info
    </a>
      
  </div>
  <div class="col-xs-6 col-md-3">
    <a href="staffregistration.aspx" class="thumbnail">
        <img src="images/dew_drops.jpg" alt="Staffs" width="180" height="134" class="img-circle"/>
        Staff Registration
    </a>
  </div>
        <div class="col-xs-6 col-md-3">
    <a href="markentries.aspx" class="thumbnail">
        <img src="images/japan_digital_nature.jpg" alt="Mark Sheet"  width="180" height="134" class="img-circle"/>
         Mark Sheet
    </a>
  </div>
</div>
    </form>
</body>
</html>
