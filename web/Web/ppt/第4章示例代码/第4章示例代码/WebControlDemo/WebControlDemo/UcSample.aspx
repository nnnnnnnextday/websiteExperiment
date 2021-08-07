<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UcSample.aspx.cs" Inherits="UcSample" %>

<%@ Register src="WebUserControlDemo.ascx" tagname="WebUserControlDemo" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:WebUserControlDemo ID="WebUserControlDemo1" runat="server" MinValue="20" 
            MaxValue="40" />
    
    </div>
    </form>
</body>
</html>
