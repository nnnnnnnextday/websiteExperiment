﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LiteralControl.aspx.cs" Inherits="LiteralControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Literal ID="Literal1" runat="server" Text="Hello,World!"></asp:Literal>
        <br />
        <br />
        <asp:Literal ID="CurrentTime" runat="server"></asp:Literal>
    
    </div>
    </form>
</body>
</html>
