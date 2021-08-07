<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBoxDemo.aspx.cs" Inherits="ListBoxDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>ListBox Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;&nbsp;
        <br />
        <br />
        <table style="width: 464px; height: 212px">
            <tr>
                <td style="width: 100px">
                    <asp:ListBox ID="ListBox1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue"
                        Height="192px" Width="164px">
                        <asp:ListItem>中国</asp:ListItem>
                        <asp:ListItem>日本</asp:ListItem>
                        <asp:ListItem>美国</asp:ListItem>
                        <asp:ListItem>俄罗斯</asp:ListItem>
                    </asp:ListBox></td>
                <td style="width: 100px">
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text=">>"
                        Width="68px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="39px" OnClick="Button2_Click" Text="<<"
                        Width="68px" /></td>
                <td style="width: 100px">
                    <asp:ListBox ID="ListBox2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue"
                        Height="192px" Width="164px"></asp:ListBox></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
