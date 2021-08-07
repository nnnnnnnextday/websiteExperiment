<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomValidator.aspx.cs" Inherits="CustomValidator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<script language="javascript" type="text/javascript">
    function ClientValidate(source,arguments)
    {
        if(arguments.Value.length>8)
            arguments.IsValid =false; 
        else
            arguments.IsValid = true;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" 
            ClientValidationFunction="ClientValidate" ErrorMessage="输入字符不能超过8个字符" 
            ControlToValidate="TextBox1" OnServerValidate="Server_Validate"></asp:CustomValidator>
        <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
