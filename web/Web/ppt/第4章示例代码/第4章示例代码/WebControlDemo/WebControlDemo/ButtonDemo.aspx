<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ButtonDemo.aspx.cs" Inherits="ButtonDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="btnSubmit" runat="server" Height="22px" 
            onclick="btnSubmit_Click" Text="提交" />
        <br />
        <asp:Label ID="lblTime" runat="server"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/linzhong.jpg" 
            ToolTip="ttt" />
    
    </div>
    </form>
</body>
</html>
