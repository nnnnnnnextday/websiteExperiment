  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteUpdate.aspx.cs" Inherits="work2.deleteUpdate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="删除教师信息"></asp:Label><br />
       编号： <asp:TextBox ID="TIDBox" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="删除" onclick="Button1_Click" />
        <asp:Label ID="DeleteLabel" runat="server" Text=""></asp:Label>
        <br /><br />
    
         <asp:Label ID="Label2" runat="server" Text="修改系名"></asp:Label><br />
        系编号：<asp:TextBox ID="DepID" runat="server"></asp:TextBox><br />
        系名：<asp:TextBox ID="DepName" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button2" runat="server" Text="更改" onclick="Button2_Click" />
        <asp:Label ID="UpdateLab" runat="server" Text=""></asp:Label><br />
        <asp:GridView ID="gvInfo" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
