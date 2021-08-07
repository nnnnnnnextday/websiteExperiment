<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiViewDemo.aspx.cs" Inherits="MultiViewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center"> 
        <br />
        按书名、类别或出版社搜索？<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" AutoPostBack="True" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>书名</asp:ListItem>
            <asp:ListItem>类别</asp:ListItem>
            <asp:ListItem>出版社</asp:ListItem>
        </asp:RadioButtonList>
    
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                输入书名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:View>
            <asp:View ID="View2" runat="server">
                输入类别：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </asp:View>
            <asp:View ID="View3" runat="server">
                输入出版社：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </asp:View>
        </asp:MultiView>
    <asp:Button ID="btnSerch" runat="server" Text="搜索" onclick="btnSerch_Click" />
    
    </div>
    </form>
</body>
</html>
