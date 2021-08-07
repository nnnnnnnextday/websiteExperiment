<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <MailDefinition BodyFileName="TextFile1.txt" From="2675423670@qq.com" 
            IsBodyHtml="True" Subject="注册">
        </MailDefinition>
        <HeaderTemplate>
            <table border="0" cellpadding="0" cellspacing="0" 
                style="height:100%;width:100%;border-collapse:collapse;">
                <tr>
                    <td style="height:100%;width:100%;">
                        <table border="0" style="height:100%;width:100%;">
                            <tr>
                                <td align="center" colspan="2">
                                    Sign Up for Your New Account</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label for="CreateUserWizard1_CreateUserStepContainer_UserName">
                                    User Name:</label></td>
                                <td>
                                    <input ID="CreateUserWizard1_CreateUserStepContainer_UserName" 
                                        name="CreateUserWizard1$CreateUserStepContainer$UserName" type="text" /><span 
                                        ID="CreateUserWizard1_CreateUserStepContainer_UserNameRequired" 
                                        style="color:Red;" title="User Name is required.">*</span></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label for="CreateUserWizard1_CreateUserStepContainer_Password">
                                    Password:</label></td>
                                <td>
                                    <input ID="CreateUserWizard1_CreateUserStepContainer_Password" 
                                        name="CreateUserWizard1$CreateUserStepContainer$Password" type="password" /><span 
                                        ID="CreateUserWizard1_CreateUserStepContainer_PasswordRequired" 
                                        style="color:Red;" title="Password is required.">*</span></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label for="CreateUserWizard1_CreateUserStepContainer_ConfirmPassword">
                                    Confirm Password:</label></td>
                                <td>
                                    <input ID="CreateUserWizard1_CreateUserStepContainer_ConfirmPassword" 
                                        name="CreateUserWizard1$CreateUserStepContainer$ConfirmPassword" 
                                        type="password" /><span 
                                        ID="CreateUserWizard1_CreateUserStepContainer_ConfirmPasswordRequired" 
                                        style="color:Red;" title="Confirm Password is required.">*</span></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label for="CreateUserWizard1_CreateUserStepContainer_Email">
                                    E-mail:</label></td>
                                <td>
                                    <input ID="CreateUserWizard1_CreateUserStepContainer_Email" 
                                        name="CreateUserWizard1$CreateUserStepContainer$Email" type="text" /><span 
                                        ID="CreateUserWizard1_CreateUserStepContainer_EmailRequired" style="color:Red;" 
                                        title="E-mail is required.">*</span></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label for="CreateUserWizard1_CreateUserStepContainer_Question">
                                    Security Question:</label></td>
                                <td>
                                    <input ID="CreateUserWizard1_CreateUserStepContainer_Question" 
                                        name="CreateUserWizard1$CreateUserStepContainer$Question" type="text" /><span 
                                        ID="CreateUserWizard1_CreateUserStepContainer_QuestionRequired" 
                                        style="color:Red;" title="Security question is required.">*</span></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <label for="CreateUserWizard1_CreateUserStepContainer_Answer">
                                    Security Answer:</label></td>
                                <td>
                                    <input ID="CreateUserWizard1_CreateUserStepContainer_Answer" 
                                        name="CreateUserWizard1$CreateUserStepContainer$Answer" type="text" /><span 
                                        ID="CreateUserWizard1_CreateUserStepContainer_AnswerRequired" 
                                        style="color:Red;" title="Security answer is required.">*</span></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <span ID="CreateUserWizard1_CreateUserStepContainer_PasswordCompare" 
                                        style="color:Red;">The Password and Confirmation Password must match.</span></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </HeaderTemplate>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
    <authorization>
        <allow users="*" />
    </authorization>
</asp:Content>

