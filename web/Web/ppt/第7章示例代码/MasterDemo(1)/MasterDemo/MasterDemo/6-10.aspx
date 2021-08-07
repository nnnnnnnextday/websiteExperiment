<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="6-10.aspx.cs" Inherits="_6_10" %>
<%@ MasterType VirtualPath="~/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="读取" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="设置" />
</asp:Content>

