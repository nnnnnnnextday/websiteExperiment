<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowInitialValue.aspx.cs" Inherits="ShowInitialValue" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:Label id="lblFavoriteColor" Text="喜欢的颜色：" Runat="server" />
<asp:DropDownList id="dropFavoriteColor" Runat="server">
    <asp:ListItem Text="请选择颜色" Value="0" />
    <asp:ListItem Text="红色" Value="1" />    
    <asp:ListItem Text="蓝色" Value="2" />    
    <asp:ListItem Text="绿色" Value="3" />    
</asp:DropDownList>
<asp:RequiredFieldValidator id="reqFavoriteColor" Text="请选择颜色" InitialValue="3" 
            ControlToValidate="dropFavoriteColor" Runat="server" />
<asp:Button id="btnSubmit" Text="提交" Runat="server" OnClick="btnSubmit_Click" /><br />
<asp:Label id="lblResult" Runat="server" />
    </div>
    </form>
</body>
</html>
