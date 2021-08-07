<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="clear: both;">&nbsp;</div>
    <div class="entry">
    <p> 
    <asp:LoginView ID="LoginView1" runat="server">
        <RoleGroups>
            <asp:RoleGroup>
            </asp:RoleGroup>
        </RoleGroups>
        <LoggedInTemplate>
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            <asp:LoginName ID="LoginName1" runat="server" />
        </LoggedInTemplate>
        <AnonymousTemplate>
            <asp:Login ID="Login1" runat="server" onauthenticate="Login1_Authenticate">
            </asp:Login>
        </AnonymousTemplate>
    </asp:LoginView>
    </p>
    <br /><br /><br /><br />
    <p><img alt="" src="Resource/1.png" height="150" width="480" /></p>
    <br />
    </div>
</asp:Content>

