<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListViewDemoTwo.aspx.cs" Inherits="ListViewDemoTwo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="StuNo" 
            DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <LayoutTemplate>
                <div ID="itemPlaceholderContainer" runat="server" style="">
                    学生基本信息：<br />
                    <span ID="itemPlaceholder" runat="server" />
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <span style="">学号:
                <asp:Label ID="StuNoLabel" runat="server" Text='<%# Eval("StuNo") %>' />；
                姓名:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                性别:
                <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />；
                出生年月:
                <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth") %>' />；
                专业:
                <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Eval("MajorId") %>' />
                <br />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                <br />
                </span>
            </ItemTemplate>
            <ItemSeparatorTemplate>
                <hr />
            </ItemSeparatorTemplate>
            <EmptyDataTemplate>
                <span>未返回数据。</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">学号:
                <asp:TextBox ID="StuNoTextBox" runat="server" Text='<%# Bind("StuNo") %>' />
                姓名:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                性别:
                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                出生日期:
                <asp:TextBox ID="BirthTextBox" runat="server" Text='<%# Bind("Birth") %>' />
                专业:
                <asp:TextBox ID="MajorIdTextBox" runat="server" Text='<%# Bind("MajorId") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                <br />
                </span>
            </InsertItemTemplate>          
            <EditItemTemplate>
                <span style="">学号:
                <asp:Label ID="StuNoLabel1" runat="server" Text='<%# Eval("StuNo") %>' />；
                姓名:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                性别:
                <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                出生日期:
                <asp:TextBox ID="BirthTextBox" runat="server" Text='<%# Bind("Birth") %>' />
                专业:
                <asp:TextBox ID="MajorIdTextBox" runat="server" Text='<%# Bind("MajorId") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                <br />
                </span>
            </EditItemTemplate>
         </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            DeleteCommand="delete from StuInfo where StuNo=@StuNo" 
            InsertCommand="insert into StuInfo values(@StuNo,@Name,@Sex,@Birth,@majorId)" 
            SelectCommand="select * from StuInfo" 
            UpdateCommand="update StuInfo set Name=@Name,Sex=@Sex,Birth=@Birth,MajorId=@MajorId where StuNo=@StuNo">
            <DeleteParameters>
                <asp:Parameter Name="StuNo" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Sex" />
                <asp:Parameter Name="Birth" />
                <asp:Parameter Name="MajorId" />
                <asp:Parameter Name="StuNo" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="StuNo" />
                <asp:Parameter Name="Name" />
                <asp:Parameter Name="Sex" />
                <asp:Parameter Name="Birth" />
                <asp:Parameter Name="majorId" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
