<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckAndRadio.aspx.cs" Inherits="CheckAndRadio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Books]" DataSourceMode="DataReader"></asp:SqlDataSource>
        <br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Title" 
            DataValueField="BookID" RepeatColumns="3" RepeatDirection="Horizontal">
        </asp:CheckBoxList>
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Title" 
            DataValueField="BookID" RepeatColumns="3">
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="SubmitButton" runat="server" onclick="SubmitButton_Click" 
            Text="Click Me" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
