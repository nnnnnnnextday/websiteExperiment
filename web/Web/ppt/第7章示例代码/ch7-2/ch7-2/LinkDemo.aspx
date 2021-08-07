<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinkDemo.aspx.cs" Inherits="LinkDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="LinkStyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div >
       <a href="StyleDemo1.aspx">内联样式页面</a><br />
        <br />
&nbsp;<a href="StyleDemo2.aspx">嵌入样式页面</a><br />
        <br />
&nbsp;<a href="StyleDemo3.aspx">链接样式页面</a>
    </div>
    </form>
</body>
</html>
