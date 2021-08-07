<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LabelControl.aspx.cs" Inherits="LabelControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Hello,World!"></asp:Label>
        <br />
        <br />
        <asp:Label ID="CurrentTime" runat="server"></asp:Label>
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" BackColor="Blue" ForeColor="White" 
            Text="This is a test of color Properties" Font-Italic="True"></asp:Label>
    
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" BackColor="#CC6699" BorderColor="#66FF33" 
            Font-Bold="True" Font-Italic="True" Font-Size="Larger" Text="hhhhuuu"></asp:Label>
    
    </div>
    </form>
</body>
</html>
