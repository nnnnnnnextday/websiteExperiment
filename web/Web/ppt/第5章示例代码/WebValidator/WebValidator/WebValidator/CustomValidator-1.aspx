<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="CustomValidator-1.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script type="text/jscript" language="javascript">
function ClientValidate(source, arguments)
{
// 判断是否为偶数
    if (arguments.Value%2 == 0)
        arguments.IsValid = true;
    else
        arguments.IsValid = false;
}
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <span style="font-family: 宋体">
            <br />
            <span style="font-family: 宋体">CustomValidator 示例</span><p>
                <asp:Label ID="lblOutput" runat="server" Font-Name="宋体" Font-Size="10.5pt" Text="输入一个偶数:"></asp:Label><br />
            </p>
            <p>
                <asp:TextBox ID="Text1" runat="server" Font-Size="XX-Large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Text1"
                    Display="Dynamic" ErrorMessage="请输入一个数字" Font-Name="verdana" Font-Size="10pt"></asp:RequiredFieldValidator>&nbsp;
                <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ClientValidate"
                    ControlToValidate="Text1" ErrorMessage="输入的数字必须是偶数" OnServerValidate="ServerValidate" EnableClientScript="False"></asp:CustomValidator></p>
            <asp:Button ID="Button1" runat="server" OnClick="ValidateBtn_OnClick" Text="验证" Width="185px" Height="41px" /></span>
    </form>
</body>
</html>
