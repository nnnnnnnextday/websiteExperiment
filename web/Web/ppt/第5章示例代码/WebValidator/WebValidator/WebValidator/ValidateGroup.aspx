<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidateGroup.aspx.cs" Inherits="ValidateGroup" %>

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
            ErrorMessage="不能为空" ValidationGroup="Button1Group"></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="不能为空" ValidationGroup="Button1Group"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" Text="Button" 
            ValidationGroup="Button1Group" onclick="Button1_Click" /><br />
        <asp:TextBox ID="TextBox3" runat="server" ValidationGroup="Button2Group"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="不能为空" ValidationGroup="Button2Group"></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="Button2Group"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4"
            ErrorMessage="不能为空" ValidationGroup="Button2Group"></asp:RequiredFieldValidator>
        <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="Button2Group" /><br />
    
    </div>
    </form>
</body>
</html>
