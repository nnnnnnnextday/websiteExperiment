<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListViewDemoThree.aspx.cs" Inherits="ListViewDemoThree" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            GroupItemCount="3">
            <LayoutTemplate>
                <table>
                    <asp:PlaceHolder ID="groupPlaceholder" runat="server" />
                </table>
                <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
                    <Fields>
                        <asp:NextPreviousPagerField ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                 </asp:DataPager>
            </LayoutTemplate>
            <GroupTemplate>
                <tr>
                    <asp:PlaceHolder runat="server" ID="itemPlaceholder" /> 
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td>
                    学号:
                    <asp:Label ID="StuNoLabel" runat="server" Text='<%# Eval("StuNo") %>' />
                    姓名:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    性别:
                    <asp:Label ID="SexLabel" runat="server" Text='<%# Eval("Sex") %>' />
                    出生年月:
                    <asp:Label ID="BirthLabel" runat="server" Text='<%# Eval("Birth","{0:d}") %>' />
                    <br />
                    专业:
                    <asp:Label ID="MajorIdLabel" runat="server" Text='<%# Eval("MajorId") %>' />
                    <br /><br />
                </td>
            </ItemTemplate>
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
