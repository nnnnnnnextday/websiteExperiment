<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownListDemo.aspx.cs" Inherits="DropDownListDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        DropDownList控件的使用<br />
        文本：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; 值：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnNew" runat="server" onclick="btnNew_Click" Text="添加项" />
        <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
            Text="删除项" />
        <asp:Button ID="btnShow" runat="server" onclick="btnShow_Click" Text="显示选中项" />
    
    </div>
    </form>
</body>
</html>
