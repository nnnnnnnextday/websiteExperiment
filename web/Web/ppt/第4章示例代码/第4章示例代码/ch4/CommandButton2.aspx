<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CommandButton2.aspx.cs" Inherits="CommandButton2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" oncommand="Button1_Click" 
            Text="Spring" CommandName="btn1" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" oncommand="Button1_Click" Text="Autumn" 
            CommandName="btn2" />
    
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" CommandName="a" onclick="Button3_Click" 
            Text="Button" />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" CommandName="b" Text="Button" />
    
    </div>
    </form>
</body>
</html>
