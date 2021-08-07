<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="BookID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" 
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
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:CheckBoxField DataField="Recommended" HeaderText="Recommended" 
                    SortExpression="Recommended" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="#0033CC" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
            Font-Italic="True" ForeColor="White">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" 
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
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:CheckBoxField DataField="Recommended" HeaderText="Recommended" 
                    SortExpression="Recommended" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="BookID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="BookID" SortExpression="BookID" 
                    InsertVisible="False" ReadOnly="True">
                </asp:BoundField>
                <asp:BoundField DataField="Title" HeaderText="Title" 
                    SortExpression="Title" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="YearPublished" HeaderText="YearPublished" 
                    SortExpression="YearPublished" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="LastReadOn" 
                    HeaderText="LastReadOn" SortExpression="LastReadOn" />
                <asp:BoundField DataField="PageCount" HeaderText="PageCount" 
                    SortExpression="PageCount" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:CheckBoxField DataField="Recommended" HeaderText="Recommended" 
                    SortExpression="Recommended" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
            CellPadding="3" CellSpacing="1" DataKeyNames="BookID" 
            DataSourceID="SqlDataSource1" GridLines="None">
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="BookID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" 
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
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:CheckBoxField DataField="Recommended" HeaderText="Recommended" 
                    SortExpression="Recommended" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
