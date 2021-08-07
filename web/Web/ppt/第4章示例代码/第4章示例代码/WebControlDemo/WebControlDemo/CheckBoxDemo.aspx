<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBoxDemo.aspx.cs" Inherits="CheckBoxDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">请选择你的兴趣：<br />
        </span>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="唱歌" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="跳舞" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="运动" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
