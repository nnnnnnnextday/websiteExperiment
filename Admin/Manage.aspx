<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Admin_Manage" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <authorization>
        <allow roles="Administrator"/>
        <deny users="*"/>
    </authorization>
    
    <body>
    <h1>欢迎登录</h1>
    <h1>当前已登录管理员管理页面</h1>
    </body>
    
        <div></div>
    <p><img alt="" src="../Resource/1.png" height="150" width="480" /></p>
</asp:Content>

