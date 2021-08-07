<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormViewDemo.aspx.cs" Inherits="FormViewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 122%;
        }
        .style2
        {
            text-align: right;
            width: 85px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource1" Width="425px">
            <EditItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            学号：</td>
                        <td>
                            <asp:Label ID="StuNoLabel1" runat="server" Text='<%# Eval("StuNo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            姓名：</td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            性别：</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal" SelectedValue='<%# Bind("Sex") %>'>
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            出生日期：</td>
                        <td>
                            <asp:TextBox ID="BirthTextBox" runat="server" 
                                Text='<%# Bind("Birth", "{0:d}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            专业：</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="MajorName" 
                                DataValueField="MajorId" SelectedValue='<%# Bind("MajorId") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
                                SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="更新"></asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            学号：</td>
                        <td>
                            <asp:TextBox ID="StuNoTextBox" runat="server" Text='<%# Bind("StuNo") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            姓名：</td>
                        <td>
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            性别：</td>
                        <td>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                RepeatDirection="Horizontal" SelectedValue='<%# Bind("Sex") %>'>
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            出生日期：</td>
                        <td>
                            <asp:TextBox ID="BirthTextBox" runat="server" 
                                Text='<%# Bind("Birth", "{0:d}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            专业：</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="MajorName" 
                                DataValueField="MajorId" SelectedValue='<%# Bind("MajorId") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
                                SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="插入"></asp:LinkButton>
                        </td>
                        <td>
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            学号：</td>
                        <td>
                            <asp:Label ID="StuNoLabel" runat="server" Text='<%# Bind("StuNo") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            姓名：</td>
                        <td>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            性别：</td>
                        <td>
                            <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            出生日期：</td>
                        <td>
                            <asp:Label ID="BirthLabel" runat="server" 
                                Text='<%# Bind("Birth", "{0:d}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            专业：</td>
                        <td>
                            <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Bind("MajorId") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit">编辑</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete">删除</asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CommandName="New">新建</asp:LinkButton>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
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
    
    </div>
    </form>
</body>
</html>
