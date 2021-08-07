﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReadOnlyDemo.aspx.cs" Inherits="ReadOnlyDemo" %>

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
            DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" 
            InsertCommand="INSERT INTO [Books] ([Title], [Author], [YearPublished], [Price], [LastReadOn], [PageCount]) VALUES (@Title, @Author, @YearPublished, @Price, @LastReadOn, @PageCount)" 
            SelectCommand="SELECT * FROM [Books]" 
            UpdateCommand="UPDATE [Books] SET [Author] = @Author, [YearPublished] = @YearPublished, [Price] = @Price, [LastReadOn] = @LastReadOn, [PageCount] = @PageCount WHERE [BookID] = @BookID">
            <DeleteParameters>
                <asp:Parameter Name="BookID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="YearPublished" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="LastReadOn" Type="DateTime"  />
                <asp:Parameter Name="PageCount" Type="Int32" />
                <asp:Parameter Name="BookID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="YearPublished" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="LastReadOn" Type="DateTime" />
                <asp:Parameter Name="PageCount" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="BookID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" 
                    SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="YearPublished" HeaderText="YearPublished" 
                    SortExpression="YearPublished" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="LastReadOn" HeaderText="LastReadOn" 
                    SortExpression="LastReadOn" />
                <asp:BoundField DataField="PageCount" HeaderText="PageCount" 
                    SortExpression="PageCount" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
