<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjectDataSourceDemo.aspx.cs" Inherits="ObjectDataSourceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="StuNo" HeaderText="StuNo" ReadOnly="True" 
                    SortExpression="StuNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Birth" HeaderText="Birth" SortExpression="Birth" />
                <asp:BoundField DataField="MajorId" HeaderText="MajorId" 
                    SortExpression="MajorId" />
            </Columns>
        </asp:GridView>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="DeleteStuInfo" SelectMethod="GetStuInfo" TypeName="StuInfoDAL" 
            UpdateMethod="UpdateStuInfo" ondeleted="ObjectDataSource1_Deleted" 
            ondeleting="ObjectDataSource1_Deleting">
            <DeleteParameters>
                <asp:Parameter Name="stuNo" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="stuNo" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="sex" Type="String" />
                <asp:Parameter Name="birth" Type="DateTime" />
                <asp:Parameter Name="majorId" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
