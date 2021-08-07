<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultilineTextBox.aspx.cs" Inherits="MultilineTextBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Share Your Thoughts:<br />
        <asp:TextBox ID="TextBox1" runat="server" Columns="25" Rows="5" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Results2" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
