<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListViewDemoOne.aspx.cs" Inherits="ListViewDemoOne" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<asp:ListView ID="ListView1" runat="server" DataKeyNames="StuNo" 
DataSourceID="SqlDataSource1">
<ItemTemplate>
    <tr style="">
        <td>
            <asp:Label ID="StuNoLabel" runat="server" Text='<%# Eval("StuNo") %>' />
        </td>
        <td>
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        </td>
        <td>
            <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
        </td>
        <td>
            <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>' />
        </td>
        <td>
            <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Eval("MajorId") %>' />
        </td>
    </tr>
</ItemTemplate>
<AlternatingItemTemplate>
    <tr style="">
        <td>
            <asp:Label ID="StuNoLabel" runat="server" Text='<%# Eval("StuNo") %>' />
        </td>
        <td>
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        </td>
        <td>
            <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
        </td>
        <td>
            <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>' />
        </td>
        <td>
            <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Eval("MajorId") %>' />
        </td>
    </tr>
</AlternatingItemTemplate>
<EmptyDataTemplate>
    <table runat="server" style="">
        <tr>
            <td>
                未返回数据。</td>
        </tr>
    </table>
</EmptyDataTemplate>
<InsertItemTemplate>
    <tr style="">
        <td>
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
        </td>
        <td>
            <asp:TextBox ID="StuNoTextBox" runat="server" Text='<%# Bind("StuNo") %>' />
        </td>
        <td>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        </td>
        <td>
            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
        </td>
        <td>
            <asp:TextBox ID="BirthTextBox" runat="server" Text='<%# Bind("Birth") %>' />
        </td>
        <td>
            <asp:TextBox ID="MajorIdTextBox" runat="server" Text='<%# Bind("MajorId") %>' />
        </td>
    </tr>
</InsertItemTemplate>
<LayoutTemplate>
    <table runat="server">
        <tr runat="server">
            <td runat="server">
                <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                    <tr runat="server" style="">
                        <th runat="server">
                            <asp:LinkButton ID="StuNoLink" CommandName="Sort" CommandArgument="StuNo" runat="server">StuNo</asp:LinkButton>
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="NameLink" CommandName="Sort" CommandArgument="Name"  runat="server">Name</asp:LinkButton>
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="SexLink" CommandName="Sort" CommandArgument="Sex" runat="server">Sex</asp:LinkButton>
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="BirthLink" CommandName="Sort" CommandArgument="Birth" runat="server">Birth</asp:LinkButton>
                        </th>
                        <th runat="server">
                            <asp:LinkButton ID="MajorIdLink" CommandName="Sort" CommandArgument="MajorId" runat="server">MajorId</asp:LinkButton>
                        </th>
                    </tr>
                    <tr ID="itemPlaceholder" runat="server">
                    </tr>
                </table>
            </td>
        </tr>
        <tr runat="server">
            <td runat="server" style="">
            </td>
        </tr>
    </table>
</LayoutTemplate>
<EditItemTemplate>
    <tr style="">
        <td>
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
        </td>
        <td>
            <asp:Label ID="StuNoLabel1" runat="server" Text='<%# Eval("StuNo") %>' />
        </td>
        <td>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        </td>
        <td>
            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
        </td>
        <td>
            <asp:TextBox ID="BirthTextBox" runat="server" Text='<%# Bind("Birth") %>' />
        </td>
        <td>
            <asp:TextBox ID="MajorIdTextBox" runat="server" Text='<%# Bind("MajorId") %>' />
        </td>
    </tr>
</EditItemTemplate>
<SelectedItemTemplate>
    <tr style="">
        <td>
            <asp:Label ID="StuNoLabel" runat="server" Text='<%# Eval("StuNo") %>' />
        </td>
        <td>
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        </td>
        <td>
            <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
        </td>
        <td>
            <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>' />
        </td>
        <td>
            <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Eval("MajorId") %>' />
        </td>
    </tr>
</SelectedItemTemplate>
</asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            SelectCommand="SELECT * FROM [StuInfo]" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [StuInfo] WHERE [StuNo] = @original_StuNo AND [Name] = @original_Name AND [Sex] = @original_Sex AND [Birth] = @original_Birth AND [MajorId] = @original_MajorId" 
            InsertCommand="INSERT INTO [StuInfo] ([StuNo], [Name], [Sex], [Birth], [MajorId]) VALUES (@StuNo, @Name, @Sex, @Birth, @MajorId)" 
            OldValuesParameterFormatString="original_{0}" 
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
    
    </div>
    </form>
</body>
</html>
