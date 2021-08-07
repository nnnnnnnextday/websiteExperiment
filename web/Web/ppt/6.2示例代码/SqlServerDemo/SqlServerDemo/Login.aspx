<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .style1
        {
            width: 313px;
        }
        .style2
        {
            width: 121px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table width="500">
            <tr>
                <td colspan="3" style="width: 300px">
                    用户登录：</td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
                    用户名：</td>
                <td class="style1">
                    <asp:TextBox ID="txtName" runat="server" Width="236px" Height="23px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="用户名不能为空" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="style2">
                    密&nbsp;&nbsp;&nbsp; 码：</td>
                <td class="style1">
                    <asp:TextBox ID="txtPassword" runat="server" Width="233px" TextMode="Password"></asp:TextBox>
                </td>
                <td width="200">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="登录" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnSafeLogin" runat="server" onclick="btnSafeLogin_Click" 
                        Text="安全登录" />
                &nbsp;
                    <asp:Button ID="btnStoredProcdureLogin" runat="server" 
                        onclick="btnStoredProcdureLogin_Click" Text="存储过程登录" />
                </td>
                <td>
                    &nbsp;</&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
      
    </div>
    </form>
</body>
</html>
