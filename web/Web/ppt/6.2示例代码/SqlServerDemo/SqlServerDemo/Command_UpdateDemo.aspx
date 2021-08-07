<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Command_UpdateDemo.aspx.cs" Inherits="Command_UpdateDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table width="450">
            <tr>
                <td  colspan="2">
                    修改密码：</td>
            </tr>
            <tr>
                <td style="text-align: right" width="150" >
                    用户名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtName" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" >
                    密&nbsp;&nbsp;&nbsp; 码：</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="修改" onclick="btnUpdate_Click" />
                </td>
            </tr>
            <tr>
                <td width="1" >
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
