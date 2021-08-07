<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RangeValidator.aspx.cs" Inherits="RangeValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
年龄：<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge"
    Display="Dynamic" ErrorMessage="年龄应在0-200之间" MaximumValue="200" MinimumValue="0"
    Type="Integer"></asp:RangeValidator>
<asp:Button ID="btnSubmit" runat="server" Text="提交" />
    </div>
    </form>
</body>
</html>
