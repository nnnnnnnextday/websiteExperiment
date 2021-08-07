<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        姓名：<asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Name" ErrorMessage="必填" EnableClientScript="False">**</asp:RequiredFieldValidator>
        <br />
        年龄：<asp:TextBox ID="Age" runat="server" CausesValidation="True"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" 
            ErrorMessage="0~150" MaximumValue="150" 
            MinimumValue="0" Type="Integer" EnableClientScript="False">必填</asp:RangeValidator>
        <br />
        <br />
        学号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="输入字符不能超过8个" 
            onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" Text="Click Me" 
            onclick="SubmitButton_Click" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" CausesValidation="False" 
            onclick="Button1_Click" Text="取消" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    
    </div>
    </form>
</body>
</html>
