<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="work2.edit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:CnnString %>" 
            SelectCommand="SELECT * FROM [Teachers]" 
            DeleteCommand="DELETE FROM [Teachers] WHERE [TeacherID] = @original_TeacherID " 
            ConflictDetection="CompareAllValues" 
            InsertCommand="INSERT INTO [Teachers] ([TeacherID], [TName], [TBirth], [LengthOfTea], [TDepartment], [Image]) VALUES (@TeacherID, @TName, @TBirth, @LengthOfTea, @TDepartment, @Image)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [Teachers] SET [TName] = @TName, [TBirth] = @TBirth, [LengthOfTea] = @LengthOfTea, [TDepartment] = @TDepartment, [Image] = @Image WHERE [TeacherID] = @original_TeacherID  ">
            <DeleteParameters>
                <asp:Parameter Name="original_TeacherID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TName" Type="String" />
                <asp:Parameter Type="DateTime" Name="TBirth" />
                <asp:Parameter Name="LengthOfTea" Type="Int32" />
                <asp:Parameter Name="TDepartment" Type="Int32" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="original_TeacherID" Type="Int32" />
                <asp:Parameter Name="original_TName" Type="String" />
                <asp:Parameter Type="DateTime" Name="original_TBirth" />
                <asp:Parameter Name="original_LengthOfTea" Type="Int32" />
                <asp:Parameter Name="original_TDepartment" Type="Int32" />
                <asp:Parameter Name="original_Image" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="TeacherID" Type="Int32" />
                <asp:Parameter Name="TName" Type="String" />
                <asp:Parameter Type="DateTime" Name="TBirth" />
                <asp:Parameter Name="LengthOfTea" Type="Int32" />
                <asp:Parameter Name="TDepartment" Type="Int32" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="TeacherID" DataSourceID="SqlDataSource1" onselectedindexchanged="GridView1_SelectedIndexChanged" 
            >
            <Columns>
                <asp:BoundField DataField="TeacherID" HeaderText="教师编号" ReadOnly="True" 
                    SortExpression="TeacherID" />
                <asp:BoundField DataField="TName" HeaderText="教师姓名" SortExpression="TName" />
                <asp:BoundField DataField="TBirth" HeaderText="教师生日" 
                    SortExpression="TBirth" DataFormatString="{0:d}"/>
                <asp:BoundField DataField="LengthOfTea" HeaderText="教师教龄" 
                    SortExpression="LengthOfTea" />
                <asp:TemplateField  HeaderText="教师属系" SortExpression="TDepartment">
                    <EditItemTemplate >
 
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="DepName" 
                     DataValueField="DepartmentID" OnSelectedIndexChanged ="selectNewDep" 
                            SelectedValue='<%# Bind("TDepartment") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConflictDetection="CompareAllValues" 
                            ConnectionString="<%$ ConnectionStrings:CnnString %>" 
                            DeleteCommand="DELETE FROM [Department] WHERE [DepartmentID] = @original_DepartmentID AND (([DepName] = @original_DepName) OR ([DepName] IS NULL AND @original_DepName IS NULL))" 
                            InsertCommand="INSERT INTO [Department] ([DepartmentID], [DepName]) VALUES (@DepartmentID, @DepName)" 
                            OldValuesParameterFormatString="original_{0}" 
                            SelectCommand="SELECT * FROM [Department]" 
                            UpdateCommand="UPDATE [Department] SET [DepName] = @DepName WHERE [DepartmentID] = @original_DepartmentID AND (([DepName] = @original_DepName) OR ([DepName] IS NULL AND @original_DepName IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_DepartmentID" Type="Int32" />
                                <asp:Parameter Name="original_DepName" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="DepName" Type="String" />
                                <asp:Parameter Name="original_DepartmentID" Type="Int32" />
                                <asp:Parameter Name="original_DepName" Type="String" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="DepartmentID" Type="Int32" />
                                <asp:Parameter Name="DepName" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TDepartment") %>'></asp:Label>
                    </ItemTemplate>
                    
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Image" SortExpression="Image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <img src='res/<%#Eval("Image")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"/>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
