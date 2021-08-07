<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StyleDemo2.aspx.cs" Inherits="StyleDemo2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>第7章</title>
    <style type="text/css">
        div
        {
            font-family: 华文新魏;
            color: #808000;
            background-color: #00FF00;
            font-size: xx-large;
            font-weight: 700;
            font-style: italic;
        }
        body
        {
            text-align: center;
        }
        h1
        {
            font-family: 新宋体;
            color: #008080;
            background-color: #FF66FF;
        }
                
        #p2
        {
            color: #FF3300;
            font-size: x-large;
            font-style: italic;
            background-color: #C0C0C0;
        }
                
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        嵌入式样式示例
        <h1 class="style1" >一级标题</h1>
        <p>这是一个段落。没有专门设置样式，因此使用的是DIV块中设置的样式。</p>
        <p id ="p2" >本段落定义了样式，因此覆盖了DIV原有的样式。</p></div>
    </form>
</body>
</html>
