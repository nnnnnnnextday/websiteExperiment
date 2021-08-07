<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordTextBox.aspx.cs" Inherits="PasswordTextBox" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Username:<asp:TextBox ID="Username" runat="server" 
            EnableViewState="False"></asp:TextBox>
        <br />
        Password:<asp:TextBox ID="UsersPassword" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="LoginButton" runat="server" Text="Login" 
            onclick="LoginButton_Click" />
    
    </div>
    </form>
</body>
</html>
