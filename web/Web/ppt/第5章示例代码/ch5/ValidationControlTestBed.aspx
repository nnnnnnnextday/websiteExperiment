<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidationControlTestBed.aspx.cs" Inherits="ValidationControlTestBed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your name:<asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="Name" ErrorMessage="You must provide a value for input"></asp:RequiredFieldValidator>
        <br />
        <br />
        Your Age:<asp:TextBox ID="Age" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" 
            ErrorMessage="Age must be between 0 and 150" MaximumValue="150" 
            MinimumValue="0" Type="Integer">0~150</asp:RangeValidator>
        <br />
        <br />
        Social Security number:<asp:TextBox ID="SSN" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="SSN" 
            ErrorMessage="Your social security number must be in the format XXX-XX-XXXX" 
            ValidationExpression="\d{3}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
        <br />
        <br />
        Number of children:<asp:TextBox ID="TotalChildren" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="TotalChildren" 
            ErrorMessage="The total number of children must be a whole number greater than or equal to 0" 
            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
        <br />
        <br />
        Number of male children:<asp:TextBox ID="MaleChildren" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" 
            ControlToCompare="TotalChildren" ControlToValidate="MaleChildren" 
            ErrorMessage="The number of male children must be less than or equal to the number of total children" 
            Operator="LessThanEqual" Type="Integer"></asp:CompareValidator>
        <asp:CompareValidator ID="CompareValidator3" runat="server" 
            ControlToValidate="MaleChildren" 
            ErrorMessage="The number of male children must be greater than or equal to 0" 
            Operator="GreaterThanEqual" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" Text="Click Me" 
            onclick="SubmitButton_Click" />
        <br />
        <br />
        <asp:Label ID="Results" runat="server"></asp:Label>
    
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
