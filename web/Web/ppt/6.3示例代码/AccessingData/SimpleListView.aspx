<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SimpleListView.aspx.cs" Inherits="SimpleListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="BooksDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
        <br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="BooksDataSource"> 
            <LayoutTemplate >
               <h2 >Welcome to My Bookshelf</h2>
               <blockquote >
                   <asp:PlaceHolder runat ="server" ID ="itemPlaceholder">
                   </asp:PlaceHolder>
               </blockquote>
            </LayoutTemplate> 
            <ItemTemplate >
                <h3 ><%#Eval("Title")%></h3>
                <p >
                      <b >Genre:</b>
                      <asp:Label runat ="server" ID ="GenreLabel" Text ='<%# Eval("Genre")%> '></asp:Label>
                      <br />
                      <b >Price:</b>
                      <%#Eval("Price", "{0:c}")%>
                      <br />
                      <asp:CheckBox ID ="RecommendedCheckBox" runat ="server" 
                                    Checked ='<%# Eval("Recommended")%> '
                                    Text="Recommended" Enabled ="false" />
                                    
                </p>
            </ItemTemplate>
            <ItemSeparatorTemplate >
                 <hr />
            </ItemSeparatorTemplate>
            
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
