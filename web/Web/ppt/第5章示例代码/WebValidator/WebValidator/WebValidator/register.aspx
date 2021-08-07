<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register_register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>注册用户</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="font-weight: bold; width: 95%; color: blue">
            <tr>
                <td align="left" colspan="3" style="height: 51px" width="30%">
                    用 户 注 册</td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                    用户名：</td>
                <td align="left" style="width: 40%">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td align="left">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                    密码：</td>
                <td align="left" style="width: 280px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td align="left">
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                    确认密码：</td>
                <td align="left" style="width: 280px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td align="left">
                    <br />
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="right" colspan="3" width="30%">
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 30%; height: 21px">
                    年龄：</td>
                <td align="left" style="width: 280px; height: 21px">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <td align="left" style="height: 21px">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator"></asp:RangeValidator></td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                    性别：</td>
                <td align="left" style="width: 280px">
                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="sex"
                        Text="男" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="女" /></td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                    出生年月：</td>
                <td align="left" style="width: 280px">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                <td align="left">
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                    爱好：</td>
                <td align="left" style="width: 280px">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>音乐</asp:ListItem>
                        <asp:ListItem>体育</asp:ListItem>
                    </asp:CheckBoxList></td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 30%; height: 21px">
                    联系电话：</td>
                <td align="left" style="width: 280px; height: 21px">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                <td align="left" style="height: 21px">
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td align="left" style="width: 30%; height: 21px">
                    EMail：</td>
                <td align="left" style="width: 280px; height: 21px">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                <td align="left" style="height: 21px">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td align="left" style="width: 30%; height: 26px;">
                    QQ：</td>
                <td align="left" style="width: 280px; height: 26px;">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                <td align="left" style="height: 26px">
                </td>
            </tr>
            <tr>
                <td align="left" style="width: 30%">
                </td>
                <td align="left" style="width: 280px">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue"
                        Text="注册" />
                    &nbsp;&nbsp;
                   <input type="reset" value="重置" style="font-weight: bold; font-size: large; color: blue" size="" /> 
                    </td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="left" colspan="3" width="30%">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
