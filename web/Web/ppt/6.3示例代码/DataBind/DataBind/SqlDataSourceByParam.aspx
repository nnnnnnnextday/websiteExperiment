<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDataSourceByParam.aspx.cs" Inherits="SqlDataSourceByParam" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        请选择专业：
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            DataSourceID="SqlDataSource1" DataTextField="MajorName" 
            DataValueField="MajorId">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>    
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource2">
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            SelectCommand="SELECT * FROM [StuInfo] WHERE ([MajorId] = @MajorId)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="MajorId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
