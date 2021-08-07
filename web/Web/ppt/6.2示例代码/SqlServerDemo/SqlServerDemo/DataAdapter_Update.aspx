<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataAdapter_Update.aspx.cs" Inherits="DataAdapter_Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        使用DataAdapter更新数据：<br />
        学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 号：<asp:TextBox ID="txtStuNo" 
            runat="server"></asp:TextBox>
    
        <br />
        姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名：<asp:TextBox ID="txtName" 
            runat="server"></asp:TextBox>
        <br />
        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：<asp:TextBox ID="txtSex" 
            runat="server"></asp:TextBox>
        <br />
        出生日期：<asp:TextBox ID="txtBirth" runat="server"></asp:TextBox>
        <br />
        专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 业：<asp:DropDownList ID="dpMajor" 
            runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnAdd" runat="server" style="text-align: center" Text="添加" 
            onclick="btnAdd_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnUpdate" runat="server" onclick="btnUpdate_Click" Text="修改" />
        &nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" Text="删除" />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
        <br />
        <asp:GridView ID="gvStuInfo" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
