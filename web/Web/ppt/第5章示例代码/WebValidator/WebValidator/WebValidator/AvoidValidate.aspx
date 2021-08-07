<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AvoidValidate.aspx.cs" Inherits="AvoidValidate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="RequiredFieldValidator">不能为空</asp:RequiredFieldValidator>
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click"
            Text="提交" />
        <asp:Button ID="btnCancel" runat="server" CausesValidation="False"
            Text="取消" /></div>
    </form>
</body>
</html>
