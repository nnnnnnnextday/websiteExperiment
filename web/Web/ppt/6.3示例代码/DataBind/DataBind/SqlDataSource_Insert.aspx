<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SqlDataSource_Insert.aspx.cs" Inherits="SqlDataSource_Insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        使用SqlDataSource更新数据：<br />
        学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 号：<asp:TextBox ID="txtStuNo" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtStuNo" ErrorMessage="学号不能为空"></asp:RequiredFieldValidator>
        <br />
        姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtName" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
        <br />
        性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别：<asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtSex" ErrorMessage="性别不能为空"></asp:RequiredFieldValidator>
        <br />
        出生日期：<asp:TextBox ID="txtBirth" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="txtBirth" Display="Dynamic" 
            ErrorMessage="必须输入日期格式数据，如2000-10-12" Operator="DataTypeCheck"></asp:CompareValidator>
        <br />
        专&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 业：<asp:DropDownList ID="dpMajor" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="MajorName" 
            DataValueField="MajorId">
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnAdd" runat="server" onclick="btnAdd_Click" Text="添加" />
        <br />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StuNo" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="StuNo" HeaderText="StuNo" ReadOnly="True" 
                    SortExpression="StuNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                <asp:BoundField DataField="Birth" HeaderText="Birth" SortExpression="Birth" />
                <asp:BoundField DataField="MajorId" HeaderText="MajorId" 
                    SortExpression="MajorId" />
            </Columns>
        </asp:GridView>
        <br />
        
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            SelectCommand="SELECT * FROM [Major]">            
            </asp:SqlDataSource>   
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" 
            InsertCommand="INSERT INTO StuInfo(StuNo, Name, Sex, Birth, MajorId) VALUES (@StuNo, @Name, @Sex, @Birth, @MajorId)" 
            SelectCommand="SELECT * FROM StuInfo">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtStuNo" Name="StuNo" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtName" Name="Name" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtSex" Name="Sex" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtBirth" Name="Birth" PropertyName="Text" />
                <asp:ControlParameter ControlID="dpMajor" Name="MajorId" 
                    PropertyName="SelectedValue" />
            </InsertParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
