<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinkButtonDemo.aspx.cs" Inherits="LinkButtonDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">提交</asp:LinkButton>
        <br />
        <asp:Label ID="lblTime" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
