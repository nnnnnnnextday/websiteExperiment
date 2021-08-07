<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TextBoxDemo.aspx.cs" Inherits="TextBoxDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Textbox Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size:xx-large;font-weight:bold;font-family:隶书;color:Blue">      
        <table style="width: 616px; height: 276px">
            <tr>
                <td colspan="2">
                    请输入用户名和密码：</td>
            </tr>
            <tr>
                <td style="width: 141px">
                    用户名：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 141px">
                    密码：</td>
                <td style="width: 100px">
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" 
                        OnTextChanged="txtPwd_TextChanged" AutoPostBack="True"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:TextBox ID="txtResult" runat="server" ReadOnly="True" TextMode="MultiLine" 
                        Columns="50" Rows="3"></asp:TextBox></td>
                        
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>
