<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FishionAndClassic.aspx.cs" Inherits="FishionAndClassic" Theme="classic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="欢迎光临！"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="classic" runat="server" 
            NavigateUrl="FishionAndClassic.aspx?theme=classic">经典</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="fishion" runat="server" 
            NavigateUrl="FishionAndClassic.aspx?theme=fashion">时尚</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
