<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RichDataSourceEx.aspx.cs" Inherits="RichDataSourceEx" %>

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
            UpdateCommand="UPDATE [Books] SET [Title] = @Title, [Author] = @Author, [YearPublished] = @YearPublished, [Price] = @Price, [LastReadOn] = @LastReadOn, [PageCount] = @PageCount WHERE [BookID] = @BookID">
            <DeleteParameters>
                <asp:Parameter Name="BookID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="YearPublished" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="LastReadOn" />
                <asp:Parameter Name="PageCount" Type="Int32" />
                <asp:Parameter Name="BookID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="YearPublished" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="LastReadOn" />
                <asp:Parameter Name="PageCount" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
