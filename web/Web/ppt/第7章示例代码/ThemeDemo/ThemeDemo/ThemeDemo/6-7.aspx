<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6-7.aspx.cs" Inherits="_6_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Label ID="Label1" runat="server" style="text-align: center" Text="欢迎光临！"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="时尚" />
&nbsp;
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="经典" />
    
    </div>
    </form>
</body>
</html>
