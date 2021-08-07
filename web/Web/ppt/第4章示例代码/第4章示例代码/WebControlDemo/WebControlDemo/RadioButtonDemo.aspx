<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButtonDemo.aspx.cs" Inherits="RadioButton" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>RadioButton Demo</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div style="font-size: xx-large; text-align: center">
        &nbsp; &nbsp;&nbsp; 请选择性别:<br />
        <hr />
        
            <asp:RadioButton ID="RadioButton1" runat="server" Text="男" Checked="True" 
            GroupName="Sex" />
&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="Sex" />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="height: 26px" Text="确定" />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        </div>
    </form>
</body>
</html>
