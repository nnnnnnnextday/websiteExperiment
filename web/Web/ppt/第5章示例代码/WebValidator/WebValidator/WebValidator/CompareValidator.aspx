<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CompareValidator.aspx.cs" Inherits="CompareValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
密码：<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword"
    Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
<br />
重复密码：<asp:TextBox ID="txtRePassword" runat="server"></asp:TextBox>
<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword"
    ControlToValidate="txtRePassword" Display="Dynamic" ErrorMessage="密码输入不一致"></asp:CompareValidator>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRePassword"
    Display="Dynamic" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
<br />
出生年月：<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtDate"
    Display="Dynamic" ErrorMessage="日期格式不正确" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
<br />
<asp:Button ID="btnSubmit" runat="server" Text="提交" />
        <br />
        &nbsp;</div>
    </form>
</body>
</html>
