<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButtonListDemo.aspx.cs" Inherits="RadioButtonListDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <div style="font-size: xx-large; text-align: center">
        &nbsp; &nbsp;&nbsp; 请选择性别:<br /><hr />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
   		    <asp:ListItem Selected="True">男</asp:ListItem>
   		    <asp:ListItem>女</asp:ListItem>
        </asp:RadioButtonList>&nbsp; <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>
