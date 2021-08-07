<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ButtonsDemo.aspx.cs" Inherits="ButtonsDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" CommandName="New" 
            oncommand="Button_Command" Text="新建" Width="40px" />
        <asp:Button ID="Button2" runat="server" CommandName="Delete" 
            oncommand="Button_Command" Text="删除" />
        <asp:Button ID="Button3" runat="server" CommandName="Modify" 
            oncommand="Button_Command" Text="修改" />
    
    </div>
    </form>
</body>
</html>
