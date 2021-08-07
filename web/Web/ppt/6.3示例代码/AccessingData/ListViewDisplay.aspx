<%@ Page Language="C#"  Debug="true" AutoEventWireup="true" CodeFile="ListViewDisplay.aspx.cs" Inherits="ListViewDisplay" %>

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
               <h2 >My Bookshelf</h2>
               <asp:PlaceHolder runat="server" ID ="itemPlaceholder"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemTemplate >
                <p>
                    <asp:Label ID="TitleLabel"  runat ="server" Text ='<%# Eval("Title") %>'></asp:Label>
                    <br />
                    (Written by:<%#Eval("Author")%>)
                </p>
            </ItemTemplate>
        </asp:ListView>
    
        <br />
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="BookID" 
            DataSourceID="BooksDataSource">
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td>
                        <asp:Label ID="YearPublishedLabel" runat="server" 
                            Text='<%# Eval("YearPublished") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LastReadOnLabel" runat="server" 
                            Text='<%# Eval("LastReadOn") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PageCountLabel" runat="server" Text='<%# Eval("PageCount") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td>
                        <asp:Label ID="YearPublishedLabel" runat="server" 
                            Text='<%# Eval("YearPublished") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LastReadOnLabel" runat="server" 
                            Text='<%# Eval("LastReadOn") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PageCountLabel" runat="server" Text='<%# Eval("PageCount") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" 
                    style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>
                            未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="YearPublishedTextBox" runat="server" 
                            Text='<%# Bind("YearPublished") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LastReadOnTextBox" runat="server" 
                            Text='<%# Bind("LastReadOn") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PageCountTextBox" runat="server" 
                            Text='<%# Bind("PageCount") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">
                                        BookID</th>
                                    <th runat="server">
                                        Title</th>
                                    <th runat="server">
                                        Author</th>
                                    <th runat="server">
                                        YearPublished</th>
                                    <th runat="server">
                                        Price</th>
                                    <th runat="server">
                                        LastReadOn</th>
                                    <th runat="server">
                                        PageCount</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" 
                            style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="YearPublishedTextBox" runat="server" 
                            Text='<%# Bind("YearPublished") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="LastReadOnTextBox" runat="server" 
                            Text='<%# Bind("LastReadOn") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PageCountTextBox" runat="server" 
                            Text='<%# Bind("PageCount") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                    </td>
                    <td>
                        <asp:Label ID="YearPublishedLabel" runat="server" 
                            Text='<%# Eval("YearPublished") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="LastReadOnLabel" runat="server" 
                            Text='<%# Eval("LastReadOn") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PageCountLabel" runat="server" Text='<%# Eval("PageCount") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
