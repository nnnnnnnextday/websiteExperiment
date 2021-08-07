<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListControls.aspx.cs" Inherits="ListControls" %>

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
            SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
        <br />
        DropDownList<asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Title" 
            DataValueField="BookID" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        CheckBoxList<br />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="BookID">
        </asp:CheckBoxList>
        <br />
        <br />
        RadioButtonList<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Title" 
            DataValueField="BookID" 
            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
        </asp:RadioButtonList>
    
        <br />
        <asp:Button ID="SubmitButton" runat="server" Text="Click Me" />
        <br />
        <br />
        <asp:Label ID="Status" runat="server"></asp:Label>
    
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
