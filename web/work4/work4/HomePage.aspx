<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="work4.HomePage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
HomePage</div>
<asp:LoginView ID="LoginView1" runat="server">
<AnonymousTemplate>
    <asp:Login ID="Login1" runat="server" DestinationPageUrl = "Default.aspx" 
        FailureAction=RedirectToLoginPage onauthenticate="Login1_Authenticate" 
        >
    </asp:Login>
</AnonymousTemplate>
<LoggedInTemplate>
    <asp:LoginName ID="LoginName1" runat="server" />
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
</LoggedInTemplate>
</asp:LoginView>
</asp:Content>