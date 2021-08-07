<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="work1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>在线问答</title>
<script language="javascript" type="text/javascript">
// <!CDATA[

function Text1_onclick() {

}

// ]]>
</script>
</head>
<body>
<div align =center>
    
    <h1>在线知识问答系统</h1>
        
    
    </div>
    <div align = "center" >
    
    <form id="form1" runat="server">

    <table >
    <tr>
    <td class="style2">姓名:</td><td class="style3">
        <asp:TextBox ID="Name_Input" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="**" ControlToValidate="Name_Input" ></asp:RequiredFieldValidator>
                </td>
    <td class="style6">编号:</td><td class="style2">
                <asp:TextBox ID="ID_Input" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="请输入8位数字" ControlToValidate="ID_Input" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="请输入8位数字" ValidationExpression="\d{8,8}" ControlToValidate = "ID_Input"></asp:RegularExpressionValidator>
                </td>
    </tr>
    <tr>
    <td class="style4">email :</td><td class="style5">
                <asp:TextBox ID="Email_Input" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="电子邮件格式" ControlToValidate="Email_Input" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="电子邮件格式" ValidationExpression=".*@.*\.com" ControlToValidate = "Email_Input"></asp:RegularExpressionValidator>
                </td>
    </tr>
    
    <tr>
    <td class="style4">选择知识类型：</td><td class="style5">
                <asp:DropDownList ID="ProType" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="height: 22px">
                   <asp:ListItem Value= "1" > 人文知识</asp:ListItem> 
                    <asp:ListItem Value= "2" > 地理知识</asp:ListItem> 
                    <asp:ListItem Value= "3" > 生物知识</asp:ListItem> 
                </asp:DropDownList>
                </td>
                <td class="style7">
                    
                    <asp:Button ID="BeginBtn" runat="server" Text="开始答题" 
                        onclick="BeginBtn_Click" />
                    
                </td>
    </tr>
    <tr>
    <td>
        <asp:Button ID="QuitBtn" runat="server" onclick="QuitBtn_Click1" CommandName = "Quit" OnCommand = "Btn_Command"
            Text="退出" />
        </td>
    
    <td>
        <asp:Button ID="RestartBtn" runat="server" Text="重新答题" CommandName = "Restart" OnCommand = "Btn_Command"
            onclick="RestartBtn_Click" />
        </td>
    </tr>
    </table>
    <div align =left>
    
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <div >
                <asp:Label ID="title01_01" runat="server" Text="一、单项选择题"></asp:Label>
                <br />
                <asp:Label ID="que1" runat="server" Text = "问题1 (25分)"></asp:Label>
                <br />
                <asp:RadioButtonList ID="QueList1" runat="server" 
                    onselectedindexchanged="QueList1_SelectedIndexChanged">
                    <asp:ListItem>正确答案a</asp:ListItem>
                    <asp:ListItem>错误答案1</asp:ListItem>
                    <asp:ListItem>错误答案2</asp:ListItem>
                    <asp:ListItem>错误答案3</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="que2" runat="server" Text="问题2 (25分)"></asp:Label>
                <br />
                
                <asp:RadioButtonList ID="QueList2" runat="server" 
                    onselectedindexchanged="QueList2_SelectedIndexChanged" >
                    <asp:ListItem>正确答案b</asp:ListItem>
                    <asp:ListItem>错误答案1</asp:ListItem>
                    <asp:ListItem>错误答案2</asp:ListItem>
                    <asp:ListItem>错误答案3</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="title01_4" runat="server" Text="二、多项选择题"></asp:Label>
                <br />
                问题1 (50分 答错不得分) <asp:CheckBoxList ID="QueList3" runat="server" 
                    onselectedindexchanged="QueList3_SelectedIndexChanged1">
                    <asp:ListItem>正确答案c</asp:ListItem>
                    <asp:ListItem>正确答案d</asp:ListItem>
                    <asp:ListItem>错误答案1</asp:ListItem>
                    <asp:ListItem>错误答案2</asp:ListItem>
                </asp:CheckBoxList>
                <br />
                
                <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click"  />
                <br />
            </div>
        </asp:Panel>
    
        <asp:Panel ID="Panel2" runat="server" Visible = false >
            <div >
                <br />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
                <br />
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Visible =false>
            <div >
                <br />
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
                <br />
            </div>
        </asp:Panel>
    
        <asp:Panel ID="Panel4" runat="server">
        </asp:Panel>
    
        <br />
    </div>
   
    </form>
    </div>

</body>
</html>
