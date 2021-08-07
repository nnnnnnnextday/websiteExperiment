<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoRedirect.aspx.cs" Inherits="DemoRedirect" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        请输入信息：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Font-Size="Medium" 
            onclick="Button1_Click" Text="提交" />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Font-Size="Medium" 
            onclick="Button2_Click" Text="改变网页" />
    
    </div>
    </form>
</body>
</html>
