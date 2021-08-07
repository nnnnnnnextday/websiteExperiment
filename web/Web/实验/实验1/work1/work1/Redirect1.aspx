<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirect1.aspx.cs" Inherits="work1.Redirect1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    
    <form id="form1" runat="server">
    <div align =center >
    <h1>在线知识问答系统</h1>
    <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
    <asp:Label ID="Label3" runat="server" Text="密码："></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />
    </div>
    
    
    </form>
</body>
</html>
