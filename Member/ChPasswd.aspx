<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChPasswd.aspx.cs" Inherits="Member_ChPasswd" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server">
</asp:ChangePassword>
    <authorization>
        <allow roles="Administrator"/>
        <deny users="?"/>
    </authorization>
        <h1>欢迎登录</h1>
    <h1>当前已登录用户修改密码页面</h1>
    </body>
    <div></div>
    <p><img alt="" src="../Resource/1.png" height="150" width="480" /></p>
</asp:Content>

