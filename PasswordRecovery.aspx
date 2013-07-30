<%@ Page Title="Forgot password" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style34
        {
            width: 248px;
        }
        .style35
        {
            width: 102px;
            text-align: right;
        }
        .style38
        {
            width: 45px;
        }
        .style40
        {
            width: 33px;
        }
        .style41
        {
            width: 494px;
            text-align: center;
        }
        .style42
        {
            width: 347px;
        }
        .style43
        {
            width: 33px;
            height: 33px;
        }
        .style44
        {
            width: 102px;
            text-align: right;
            height: 33px;
        }
        .style45
        {
            width: 248px;
            height: 33px;
        }
        .style46
        {
            width: 45px;
            height: 33px;
        }
        .style47
        {
            width: 349px;
        }
        .style48
        {
            width: 414px;
            font-size: small;
        }
        .style49
        {
            width: 33px;
            height: 38px;
        }
        .style50
        {
            width: 102px;
            height: 38px;
        }
        .style51
        {
            width: 248px;
            height: 38px;
        }
        .style52
        {
            width: 45px;
            height: 38px;
        }
        .style53
        {
            width: 33px;
            height: 28px;
        }
        .style54
        {
            height: 28px;
        }
        .style55
        {
            width: 248px;
            height: 28px;
        }
        .style56
        {
            width: 45px;
            height: 28px;
        }
        .style57
        {
            width: 347px;
            height: 156px;
        }
        .style58
        {
            width: 494px;
            height: 156px;
        }
        .style59
        {
            height: 156px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-image: url('Images/tetexture.jpg')">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style47">
                            &nbsp;</td>
                        <td class="style48">
                            Enter your Email address to recover your password:</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1" style="height: 394px">
                    <tr>
                        <td class="style57">
                            </td>
                        <td class="style58">
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="413px" 
                                DefaultButton="btnRecoverPassword">
                                <table class="style1" style="width: 100%; background-color:white">
                                    <tr>
                                        <td class="style43">
                                        </td>
                                        <td class="style44">
                                            Email:&nbsp; </td>
                                        <td class="style45">
                                            <asp:TextBox ID="txtEmail" runat="server" Width="247px"></asp:TextBox>
                                        </td>
                                        <td class="style46">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style49">
                                            </td>
                                        <td class="style50">
                                            </td>
                                        <td class="style51" style="text-align: right">
                                            <asp:Button ID="btnRecoverPassword" runat="server" Height="31px" 
                                                Text="Recover Password" Width="121px" onclick="btnRecoverPassword_Click" 
                                                style="text-align: center" />
                                        </td>
                                        <td class="style52">
                                            </td>
                                    </tr>
                                    <tr>
                                        <td class="style53">
                                        </td>
                                        <td class="style54" colspan="2">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red" 
                                                style="font-size: medium"></asp:Label>
                                        </td>
                                        <td class="style56">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style40">
                                            &nbsp;</td>
                                        <td class="style35">
                                        <hr />
                                            &nbsp;<asp:LinkButton ID="lnkSignIn" runat="server" PostBackUrl="~\SignIn.aspx">Sign In</asp:LinkButton>
                                            &nbsp;|</td>
                                        <td class="style34">
                                        <hr />
                                            <asp:LinkButton ID="lnkSignUp" runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                                        </td>
                                        <td class="style38">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td class="style59">
                            </td>
                    </tr>
                    <tr>
                        <td class="style42">
                            &nbsp;</td>
                        <td class="style41">
                            <asp:Image ID="Image1" runat="server" Height="266px" 
                                ImageUrl="~/Images/forgot.gif" Width="322px" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

