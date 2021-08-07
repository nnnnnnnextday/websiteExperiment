<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList.aspx.cs" Inherits="DropDownList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        What is your favorite ice cream flavor?<asp:DropDownList ID="Flavors" 
            runat="server" >
            <asp:ListItem>Vanilla</asp:ListItem>
            <asp:ListItem>Chocolate</asp:ListItem>
            <asp:ListItem Selected="True">Strawberry</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" onclick="Button1_Click" 
            Text="Click Me" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>kk</asp:ListItem>
            <asp:ListItem>mm</asp:ListItem>
            <asp:ListItem>ii</asp:ListItem>
        </asp:DropDownList>
        <br />
    
    </div>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem>uuuu</asp:ListItem>
        <asp:ListItem>yyy</asp:ListItem>
        <asp:ListItem>ffff</asp:ListItem>
    </asp:DropDownList>
    </form>
</body>
</html>
