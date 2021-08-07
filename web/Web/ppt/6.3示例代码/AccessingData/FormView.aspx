<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FormView.aspx.vb" Inherits="AccessingData_FormView" %>

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
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="BookID" DataSourceID="BooksDataSource">
            <EditItemTemplate>
                BookID:
                <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                YearPublished:
                <asp:TextBox ID="YearPublishedTextBox" runat="server" 
                    Text='<%# Bind("YearPublished") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                LastReadOn:
                <asp:TextBox ID="LastReadOnTextBox" runat="server" 
                    Text='<%# Bind("LastReadOn") %>' />
                <br />
                PageCount:
                <asp:TextBox ID="PageCountTextBox" runat="server" 
                    Text='<%# Bind("PageCount") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                YearPublished:
                <asp:TextBox ID="YearPublishedTextBox" runat="server" 
                    Text='<%# Bind("YearPublished") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                LastReadOn:
                <asp:TextBox ID="LastReadOnTextBox" runat="server" 
                    Text='<%# Bind("LastReadOn") %>' />
                <br />
                PageCount:
                <asp:TextBox ID="PageCountTextBox" runat="server" 
                    Text='<%# Bind("PageCount") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                YearPublished:
                <asp:Label ID="YearPublishedLabel" runat="server" 
                    Text='<%# Bind("YearPublished") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                LastReadOn:
                <asp:Label ID="LastReadOnLabel" runat="server" 
                    Text='<%# Bind("LastReadOn") %>' />
                <br />
                PageCount:
                <asp:Label ID="PageCountLabel" runat="server" Text='<%# Bind("PageCount") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:FormView ID="FormView2" runat="server" AllowPaging="True" CellPadding="4" 
            DataKeyNames="BookID" DataSourceID="BooksDataSource" ForeColor="#333333">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <EditItemTemplate>
                BookID:
                <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                <br />
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                YearPublished:
                <asp:TextBox ID="YearPublishedTextBox" runat="server" 
                    Text='<%# Bind("YearPublished") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                LastReadOn:
                <asp:TextBox ID="LastReadOnTextBox" runat="server" 
                    Text='<%# Bind("LastReadOn") %>' />
                <br />
                PageCount:
                <asp:TextBox ID="PageCountTextBox" runat="server" 
                    Text='<%# Bind("PageCount") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />
                Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                YearPublished:
                <asp:TextBox ID="YearPublishedTextBox" runat="server" 
                    Text='<%# Bind("YearPublished") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                LastReadOn:
                <asp:TextBox ID="LastReadOnTextBox" runat="server" 
                    Text='<%# Bind("LastReadOn") %>' />
                <br />
                PageCount:
                <asp:TextBox ID="PageCountTextBox" runat="server" 
                    Text='<%# Bind("PageCount") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:Label ID="TitleLabel" runat="server" Font-Bold="True" 
                    Font-Size="X-Large" Text='<%# Bind("Title") %>' />
                <br />
                Written By
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" 
                    Text='<%# Bind("Price", "{0:C}") %>' />
                <br />
                Pages
                <asp:Label ID="PageCountLabel" runat="server" Text='<%# Bind("PageCount") %>' />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
