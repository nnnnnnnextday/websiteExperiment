<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControlDemo.ascx.cs" Inherits="WebUserControlDemo" %>
<asp:TextBox ID="txtNum" runat="server" ReadOnly="True"></asp:TextBox>
<asp:Button ID="btnUp" runat="server"  Text="Up" onclick="btnUp_Click" />
<asp:Button ID="btnDown" runat="server" Text="Down" onclick="btnDown_Click" />
