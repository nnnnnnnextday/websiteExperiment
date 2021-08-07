<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList.aspx.cs" Inherits="DropDownList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="GenresDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Genre] FROM [Books]">
        </asp:SqlDataSource>
        <br />
        Choose a genre:
        <asp:DropDownList ID="Genres" runat="server" AutoPostBack="True" 
            DataSourceID="GenresDataSource" DataTextField="Genre" 
            DataValueField="Genre" AppendDataBoundItems="True">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="BooksDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Books] WHERE ([Genre] = @Genre)">
            <SelectParameters>
                <asp:ControlParameter ControlID="Genres" Name="Genre" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="Books" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="BookID" DataSourceID="BooksDataSource">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="YearPublished" HeaderText="YearPublished" 
                    SortExpression="YearPublished" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="LastReadOn" HeaderText="LastReadOn" 
                    SortExpression="LastReadOn" />
                <asp:BoundField DataField="PageCount" HeaderText="PageCount" 
                    SortExpression="PageCount" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:CheckBoxField DataField="Recommended" HeaderText="Recommended" 
                    SortExpression="Recommended" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
