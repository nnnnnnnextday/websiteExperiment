<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDataSource_Update.aspx.cs" Inherits="SqlDataSource_Update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            DeleteCommand="DELETE FROM [StuInfo] WHERE [StuNo] = @original_StuNo AND [Name] = @original_Name AND [Sex] = @original_Sex AND [Birth] = @original_Birth AND [MajorId] = @original_MajorId" 
            InsertCommand="INSERT INTO [StuInfo] ([StuNo], [Name], [Sex], [Birth], [MajorId]) VALUES (@StuNo, @Name, @Sex, @Birth, @MajorId)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [StuInfo]" 
            UpdateCommand="UPDATE [StuInfo] SET [Name] = @Name, [Sex] = @Sex, [Birth] = @Birth, [MajorId] = @MajorId WHERE [StuNo] = @original_StuNo AND [Name] = @original_Name AND [Sex] = @original_Sex AND [Birth] = @original_Birth AND [MajorId] = @original_MajorId">
            <DeleteParameters>
                <asp:Parameter Name="original_StuNo" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Sex" Type="String" />
                <asp:Parameter Name="original_Birth" Type="DateTime" />
                <asp:Parameter Name="original_MajorId" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Birth" Type="DateTime" />
                <asp:Parameter Name="MajorId" Type="Int32" />
                <asp:Parameter Name="original_StuNo" Type="String" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Sex" Type="String" />
                <asp:Parameter Name="original_Birth" Type="DateTime" />
                <asp:Parameter Name="original_MajorId" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="StuNo" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Sex" Type="String" />
                <asp:Parameter Name="Birth" Type="DateTime" />
                <asp:Parameter Name="MajorId" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource1">
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
    
    </div>
    </form>
</body>
</html>
