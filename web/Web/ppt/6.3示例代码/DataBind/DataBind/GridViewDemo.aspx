<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridViewDemo.aspx.cs" Inherits="GridViewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource1" PageSize="4" 
            onrowcreated="GridView1_RowCreated" onrowdatabound="GridView1_RowDataBound" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
            AllowSorting="True" onrowcommand="GridView1_RowCommand"  >
            <PagerSettings FirstPageText="首页" LastPageText="末页" 
                Mode="NextPreviousFirstLast" NextPageText="&amp;lt;" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="StuNo" HeaderText="学号" ReadOnly="True" 
                    SortExpression="StuNo" />
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                <asp:TemplateField HeaderText="性别" SortExpression="Sex">
                    <EditItemTemplate>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("Sex") %>'>
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Birth" HeaderText="出生日期" SortExpression="Birth" 
                    ApplyFormatInEditMode="True" DataFormatString="{0:d}" />
                <asp:TemplateField HeaderText="专业" SortExpression="MajorId">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource2" DataTextField="MajorName" 
                            DataValueField="MajorId" SelectedValue='<%# Bind("MajorId") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
                            SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MajorId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <SelectedRowStyle BackColor="Yellow" />
        </asp:GridView>
        <asp:DetailsView onitem>
        </asp:DetailsView>
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
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
    
        <br />
    
    </div>
    </form>
</body>
</html>
