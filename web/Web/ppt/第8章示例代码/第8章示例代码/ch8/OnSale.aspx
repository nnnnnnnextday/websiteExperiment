<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OnSale.aspx.cs" Inherits="OnSale" Theme="主题1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <div>
    
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem Text="Home" Value="Home">
                    <asp:MenuItem Text="About" Value="About">
                        <asp:MenuItem Text="Legal" Value="Legal"></asp:MenuItem>
                        <asp:MenuItem Text="Privacy" Value="Privacy" NavigateUrl="~/Privacy.aspx"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="On Sale" Value="On Sale"></asp:MenuItem>
                    <asp:MenuItem Text="Business" Value="Business"></asp:MenuItem>
                    <asp:MenuItem Text="Fiction" Value="Fiction"></asp:MenuItem>
                    <asp:MenuItem Text="Technology" Value="Technology">
                        <asp:MenuItem Text="Computer" Value="Computer"></asp:MenuItem>
                        <asp:MenuItem Text="Electronic" Value="Electronic"></asp:MenuItem>
                    </asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
