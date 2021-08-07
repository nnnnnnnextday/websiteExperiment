<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidationSummary.aspx.cs" Inherits="ValidationSummary" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            ShowMessageBox="True" ShowSummary="False" />
        <br />
        用户名：<asp:TextBox ID="txtName" runat="server" Width="128px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtName" ErrorMessage="用户名不能为空" Display="None">*</asp:RequiredFieldValidator>
        <br />
        密码：<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtPassword" ErrorMessage="密码不能为空">*</asp:RequiredFieldValidator>
        <br />
        重复密码：<asp:TextBox ID="txtRePassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtRePassword" ErrorMessage="重复密码不能为空">*</asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtPassword" ControlToValidate="txtRePassword" 
            ErrorMessage="密码不一致">*</asp:CompareValidator>
        <br />
        <asp:Button ID="btnRegister" runat="server" Text="注册" />
    
    </div>
    </form>
</body>
</html>
