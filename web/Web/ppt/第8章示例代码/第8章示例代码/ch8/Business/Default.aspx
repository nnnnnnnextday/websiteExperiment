<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Business_Default" Theme="主题1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server">
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Default.aspx" Text="Home" Value="Home">
                    <asp:TreeNode NavigateUrl="~/About.aspx" Text="About" Value="About">
                        <asp:TreeNode NavigateUrl="~/Legal.aspx" Text="Lagal" Value="Lagal">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Privacy.aspx" Text="Privacy" Value="Privacy">
                        </asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/OnSale.aspx" Text="On Sale" Value="On Sale">
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Business/Default.aspx" Text="Business" 
                        Value="Business"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Fiction/Default.aspx" Text="Fiction" 
                        Value="Fiction"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Technology/Default.aspx" Text="Technology" 
                        Value="Technology">
                        <asp:TreeNode NavigateUrl="~/Technology/Computers/Default.aspx" 
                            Text="Computers" Value="Computers"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Technology/Electronics/Default.aspx" 
                            Text="Electronics" Value="Electronics"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    
        <br />
    
    </div>
    </form>
</body>
</html>
