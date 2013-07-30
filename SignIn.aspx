<%@ Page Title="CricVision.com | Sign in" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Sign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style34
        {
            width: 87px;
        }
        .style37
        {
            width: 24px;
        }
        .style38
        {
            width: 236px;
        }
        .style39
        {
            font-size: large;
        }
        .style40
        {
            width: 418px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please enter your username and 
                password.
                <asp:LinkButton ID="lnkRegister" runat="server" onclick="lnkRegister_Click">Register </asp:LinkButton>
                if you don&#39;t have an account.<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; </strong><span class="style39"><em>
                <strong>Sign In&nbsp;</strong></em></span><br /></td>
        </tr>
        <tr>
            <td>
                <table class="style1" style="height: 161px">
                    <tr>
                        <td class="style37">
                            &nbsp;</td>
                        <td valign="top" class="style40">
                            <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSignIn" 
                                BorderStyle="Outset" Width="336px">
                                <table class="style1">
                                    <tr>
                                        <td class="style34">
                                            &nbsp;</td>
                                        <td class="style38">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                        <td valign="top">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            User Name</td>
                                        <td class="style38">
                                            <asp:TextBox ID="txtUserName" runat="server" Width="200px"></asp:TextBox>
                                        </td>
                                        <td valign="top">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            Password</td>
                                        <td class="style38">
                                            <asp:TextBox ID="txtPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            &nbsp;</td>
                                        <td class="style38">
                                            <asp:LinkButton ID="lnkForgotPassword" runat="server" 
                                                style="font-size: small; text-align: right" 
                                                onclick="lnkForgotPassword_Click">Forgot Password?</asp:LinkButton>
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style34">
                                            &nbsp;</td>
                                        <td class="style38">
                                            <asp:Button ID="btnSignIn" runat="server" Height="29px" 
                                                onclick="btnSignIn_Click" Text="Sign In" Width="83px" 
                                                style="text-align: center" />
                                        </td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="229px" 
                                ImageUrl="~/Images/login.jpg" Width="365px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </asp:Content>