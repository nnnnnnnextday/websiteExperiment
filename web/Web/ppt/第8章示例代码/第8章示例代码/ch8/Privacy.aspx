<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Privacy.aspx.cs" Inherits="Privacy" Theme="主题1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <div id="menu">
           <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" 
               StaticEnableDefaultPopOutImage="False">
               <StaticMenuItemStyle ItemSpacing="10px" />
               <Items>
                   <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home">
                   </asp:MenuItem>
                   <asp:MenuItem NavigateUrl="~/Business/Default.aspx" Text="Business" 
                       Value="Business"></asp:MenuItem>
                   <asp:MenuItem NavigateUrl="~/Fiction/Default.aspx" Text="Fiction" 
                       Value="Fiction"></asp:MenuItem>
                   <asp:MenuItem Text="Technology" Value="Technology">
                       <asp:MenuItem NavigateUrl="~/Technology/Computers/Default.aspx" 
                           Text="Computers" Value="Computers"></asp:MenuItem>
                       <asp:MenuItem NavigateUrl="~/Technology/Electronics/Default.aspx" 
                           Text="Electronics" Value="Electronics"></asp:MenuItem>
                   </asp:MenuItem>
                   <asp:MenuItem Text="About" Value="About">
                       <asp:MenuItem NavigateUrl="~/Legal.aspx" Text="Legal" Value="Legal">
                       </asp:MenuItem>
                       <asp:MenuItem NavigateUrl="~/Privacy.aspx" Text="Privacy" Value="Privacy">
                       </asp:MenuItem>
                   </asp:MenuItem>
                   <asp:MenuItem NavigateUrl="~/OnSale.aspx" Text="On Sale" Value="On Sale">
                   </asp:MenuItem>
               </Items>
           </asp:Menu>
        <br />
       </div>
    </div>
    </form>
</body>
</html>
