<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsViewDemo.aspx.cs" Inherits="DetailsViewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="StuNo" HeaderText="StuNo" ReadOnly="True" 
                    SortExpression="StuNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            SelectCommand="SELECT [StuNo], [Name] FROM [StuInfo]"></asp:SqlDataSource>
        <br />
        详细信息：<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="StuNo" 
            DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" 
            Width="197px" onitemdeleted="DetailsView1_ItemDeleted" 
            oniteminserted="DetailsView1_ItemInserted" 
            onitemupdated="DetailsView1_ItemUpdated">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <Fields>
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
                    <InsertItemTemplate>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                            RepeatDirection="Horizontal" SelectedValue='<%# Bind("Sex") %>'>
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField ApplyFormatInEditMode="True" DataField="Birth" 
                    DataFormatString="{0:d}" HeaderText="出生日期" SortExpression="Birth" />
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
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource3" DataTextField="MajorName" 
                            DataValueField="MajorId" SelectedValue='<%# Bind("MajorId") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
                            SelectCommand="SELECT * FROM [Major]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MajorId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <AlternatingRowStyle BackColor="#F7F7F7" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            DeleteCommand="delete  from StuInfo where StuNo=@StuNo" 
            InsertCommand="insert into StuInfo values(@StuNo,@Name,@Sex,@Birth,@MajorId)" 
            SelectCommand="SELECT * FROM [StuInfo] where StuNo=@StuNo" 
            UpdateCommand="update StuInfo Set Name=@Name,Sex=@Sex,Birth=@Birth,MajorId=@MajorId where StuNo=@StuNo">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="StuNo" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
