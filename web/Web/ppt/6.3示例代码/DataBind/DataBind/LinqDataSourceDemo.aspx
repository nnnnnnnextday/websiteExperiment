<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqDataSourceDemo.aspx.cs" Inherits="LinqDataSourceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" 
            ContextTypeName="StudentDataContext" Select="new (MajorId, MajorName)" 
            TableName="Major">
        </asp:LinqDataSource>
    
    </div>
    <p>
        &nbsp;</p>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="LinqDataSource1" DataTextField="MajorName" 
        DataValueField="MajorId">
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="LinqDataSource2">
        <Columns>
            <asp:BoundField DataField="StuNo" HeaderText="StuNo" ReadOnly="True" 
                SortExpression="StuNo" />
            <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                SortExpression="Name" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" ReadOnly="True" 
                SortExpression="Sex" />
            <asp:BoundField DataField="Birth" HeaderText="Birth" ReadOnly="True" 
                SortExpression="Birth" />
            <asp:BoundField DataField="MajorId" HeaderText="MajorId" ReadOnly="True" 
                SortExpression="MajorId" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource2" runat="server" 
        ContextTypeName="StudentDataContext" 
        Select="new (StuNo, Name, Sex, Birth, MajorId)" TableName="StuInfo" 
        Where="MajorId == @MajorId">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="MajorId" 
                PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
    </asp:LinqDataSource>
    </form>
</body>
</html>
