<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegularExpressionValidator.aspx.cs" Inherits="RegularExpressionValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Email：<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="请输入Email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
    ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" 
    ValidationExpression="[A-Z]\d{5}">输入不正确</asp:RegularExpressionValidator>
<br />
<asp:Button ID="btnSubmit" runat="server" Text="提交" /></div>
    </form>
</body>
</html>
