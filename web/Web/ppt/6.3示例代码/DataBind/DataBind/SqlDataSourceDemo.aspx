<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDataSourceDemo.aspx.cs" Inherits="SqlDataSourceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
             SelectCommand="SELECT * FROM [StuInfo]">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="StuNo" HeaderText="StuNo" ReadOnly="True" 
                    SortExpression="StuNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Birth" HeaderText="Birth" SortExpression="Birth" />
                <asp:BoundField DataField="MajorId" HeaderText="MajorId" 
                    SortExpression="MajorId" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
