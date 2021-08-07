<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddT.aspx.cs" Inherits="work2.AddT" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>录入信息</title>
</head>
<body>
    <form id="form1" runat="server">
<asp:Label ID="Label1" runat="server" Text="录入教师信息" Font-Size=Larger></asp:Label>
    <div align=center>
        
        
    
        编号：<asp:TextBox ID="IDbox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="必填" ControlToValidate="IDbox"></asp:RequiredFieldValidator>
        <br />
        姓名：<asp:TextBox ID="NameBox" runat="server"></asp:TextBox><br />
        生日：<asp:TextBox ID="TBirth" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="XXXX-XX-XX 或 XXXX/XX/XX" ControlToValidate="TBirth" ValidationExpression="(\d{4}-d{2}-\d{2})|(\d{4}/\d{2}/\d{2})"></asp:RegularExpressionValidator>
        <br />
        教龄：<asp:TextBox ID="Tage" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ErrorMessage="0~50 之间的整数" ControlToValidate="Tage" MinimumValue="0" MaximumValue="50"></asp:RangeValidator>
        <br />
        系属：<asp:TextBox ID="Tdep" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator2" runat="server" 
            ErrorMessage="大于 0 的整数" ControlToValidate="Tdep" MinimumValue="0" MaximumValue=Int32.MaxValue    ></asp:RangeValidator>
        <br />
        照片：<asp:FileUpload ID="FileUpload1" runat="server" ToolTip="浏览"/>
        <asp:Label ID="lMsg" runat="server" ></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
        <asp:Label ID="AddMsg" runat="server" Text="" ></asp:Label>
        <br />
        
    
        
    
    </div>
    </form>
</body>
</html>
