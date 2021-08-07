<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SkinDemo.aspx.cs" Inherits="SkinDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Your name:<asp:TextBox ID="Name" runat="server" EnableViewState="False"></asp:TextBox>
        <br />
        Your age:<asp:TextBox ID="Age" runat="server" EnableViewState="False"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" onclick="SubmitButton_Click" 
            Text="Click Me" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
        <br />
    
        <br />
        
        <asp:Label ID="Label1" runat="server" Text="Label控件的外观，在skin文件中设置的。"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" SkinID="BlueSkin" 
            Text="SkinID属性改变了我原先的外观"></asp:Label>
        
        <br />
        
        <br />
        
        
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        
        
        <br />
    </div>
    </form>
</body>
</html>
