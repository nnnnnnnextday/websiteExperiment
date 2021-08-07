<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButton.aspx.cs" Inherits="RadioButton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        What is your favorite ice cream flavor?<br />
        <asp:RadioButton ID="Vanilla" runat="server" GroupName="Flavors" 
            Text="Vanilla" />
        <br />
        <asp:RadioButton ID="Chocolate" runat="server" GroupName="Flavors" 
            Text="Chocolate" />
        <br />
        <asp:RadioButton ID="Strawberry" runat="server" GroupName="Flavors" 
            Text="Strawberry" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Click Me" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
        <br />
        <br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>tt</asp:ListItem>
            <asp:ListItem>ee</asp:ListItem>
        </asp:RadioButtonList>
        <br />
    
    </div>
    </form>
</body>
</html>
