<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ImageButtonDemo.aspx.cs" Inherits="ImageButtonDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ImageButton Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageButton ID="ImageButton1" runat="server" 
          ImageUrl="~/images/linzhong.jpg" OnClick="ImageButton1_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
       
        </div>
    </form>
</body>
</html>
