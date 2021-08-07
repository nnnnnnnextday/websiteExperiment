<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TextBoxPractice.aspx.cs" Inherits="TextBoxPractice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your name:<asp:TextBox ID="Name" runat="server" EnableViewState="False"></asp:TextBox>
        <br />
        Your age:<asp:TextBox ID="Age" runat="server" EnableViewState="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" onclick="SubmitButton_Click" 
            Text="Click Me" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
        <br />
    
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/asp.net 3.5.jpg" />
        <br />
        </div>
    </form>
</body>
</html>
