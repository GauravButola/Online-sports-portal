<%@ Page Title="Change password" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style34
        {
            width: 100%;
        }
        .style35
        {
            width: 24px;
        }
        .style36
        {
            width: 142px;
        }
        .style37
        {
            width: 504px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style34">
        <tr>
            <td>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em><strong>Change Password</strong></em>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style37" valign="top">
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" 
                                DefaultButton="btnSubmit" Width="363px">
                                <table class="style34">
                                    <tr>
                                        <td class="style36" style="text-align: right">
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style36" style="text-align: right">
                                            User Name:</td>
                                        <td>
                                            <asp:TextBox ID="txtUserName" runat="server" Enabled="False" Width="216px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style36" style="text-align: right">
                                            Current Password:</td>
                                        <td>
                                            <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" 
                                                Width="218px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style36" style="text-align: right">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style36" style="text-align: right">
                                            New Password:</td>
                                        <td>
                                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" 
                                                Width="218px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style36" style="text-align: right">
                                            Confirm Password:</td>
                                        <td>
                                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                                                Width="218px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style36">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnSubmit" runat="server" Height="29px" 
                                                onclick="btnSubmit_Click" style="text-align: center" Text="Submit" 
                                                Width="92px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="315px" 
                                ImageUrl="~/Images/change_password.png" Width="284px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

