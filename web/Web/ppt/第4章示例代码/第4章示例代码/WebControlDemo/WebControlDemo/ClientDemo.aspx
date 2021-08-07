<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClientDemo.aspx.cs" Inherits="ClientDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>以声明方式向 ASP.NET 服务器控件添加客户端事件处理程序</title>
        <script type="text/javascript">
          var previousColor;
          function MakeRed()
          {
              previousColor = window.event.srcElement.style.color;
              window.event.srcElement.style.color = "blue";
          }
          function RestoreColor()
          {
              window.event.srcElement.style.color = previousColor;
          }
      </script>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Button ID="btnClientClick" runat="server" 
                    onclientclick="return confirm('是否提交')" Text="测试" />
                <asp:Button ID="Button1" runat="server" Text="Button"  onmouseover="MakeRed();" 
                    onmouseout="RestoreColor();"/>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <span id="spanCounter" />
            </div>
        </form>
    </body>
</html>
