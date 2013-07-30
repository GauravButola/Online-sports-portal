<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserSettings.aspx.cs" Inherits="Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style32
        {
            width: 32px;
        }
        .style33
        {
            width: 311px;
        }
        .style34
        {
            width: 220px;
            text-align: right;
        }
        .style35
        {
            height: 3px;
            width: 870px;
        }
        .style36
        {
            width: 359px;
        }
        .style37
        {
            height: 35px;
            width: 434px;
        }
        .style38
        {
            height: 59px;
        }
        .style39
        {
            font-size: medium;
        }
        .style40
        {
            width: 22px;
        }
        .style41
        {
            width: 6px;
        }
        .style42
        {
            width: 7px;
        }
        .style43
        {
            width: 240px;
        }
        .style44
        {
            width: 870px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-image: url('/CricVision/Images/sachin.jpg')">
        <tr>
            <td class="style35">
                &nbsp;&nbsp;&nbsp; <strong><em>Update Account information</em></strong></td>
            <td style="background-color: #FFFFFF; text-decoration: underline;">
                                                    <asp:Panel ID="pnlAdmin" runat="server" BorderStyle="Outset" Height="26px" 
                                                        style="text-align: center" Width="199px" Visible="False">
                                                        <asp:LinkButton ID="lnkAdminPanel" 
                    runat="server" onclick="lnkAdminPanel_Click" 
    style="font-size: x-large; font-style: italic;">Admin Panel</asp:LinkButton>
                                                    </asp:Panel>
                                                </td>
        </tr>
        <tr>
            <td class="style44">
                <table class="style1" style="margin-top: 0">
                    <tr>
                        <td class="style42">
                            &nbsp;</td>

                        <td class="style37">
                            <asp:Panel ID="Panel1" runat="server" Width="412px" BorderStyle="Outset" 
                                Height="338px">
                            
                            <table class="style1" style="margin-left: 35; width: 105%;">
                                <tr>
                                    <td class="style34">
                                        &nbsp;</td>
                                    <td class="style36">
                                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        Name:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtName" runat="server" Enabled="False" Width="270px"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        User Name:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtUserName" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        Address:<br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtAddress" runat="server" Height="95px" TextMode="MultiLine" 
                                            Width="273px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        Contact Number:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtContactNumber" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        Email ID:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                 <tr>
                                    <td class="style34">
                                        Account Type:</td>
                                    <td class="style36">
                                        <asp:DropDownList ID="dlistAccountType" runat="server" Height="26px" 
                                            Width="124px" Enabled="False">
                                            <asp:ListItem>User</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                    </td>
                                    <td class="style36">
                                        <table class="style1">
                                            <tr>
                                                <td class="style38">
                                       <asp:Button ID="btnEdit" runat="server" Height="32px" Text="Edit/Update" 
                                            Width="88px" onclick="btnEdit_Click" style="text-align: center"/>
                                                </td>
                                                <td class="style38">
                                                    </td>
                                                <td class="style38">
                                       <asp:Button ID="btnSaveChanges" runat="server" Height="32px" Text="Save Changes" 
                                            Width="90px" onclick="btnSaveshanges_Click" Enabled="False" 
                                                        style="text-align: center"/>
                                                </td>
                                                <td class="style38">
                                       <asp:Button ID="btnClear" runat="server" Height="32px" Text="Clear" 
                                            Width="82px" Enabled="False" onclick="btnClear_Click" style="text-align: center"/>
                                                </td>
                                                <td class="style38">
                                                    </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                            </asp:Panel>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style42">
                            &nbsp;</td>

                        <td class="style37">
                            <table class="style1">
                                <tr>
                                    <td class="style39">
                                        <strong>Other Settings</strong></td>
                                </tr>
                                <tr>
                                    <td>
                                        <table class="style1">
                                            <tr>
                                                <td class="style41">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &gt;
                                                    <asp:LinkButton ID="lnkChangePassword" runat="server" 
                                                        onclick="lnkChangePassword_Click">Change My Password</asp:LinkButton>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style41">
                                                    &nbsp;</td>
                                                <td class="style43">
                                                    &gt; 
                                                    <asp:LinkButton ID="lnkDeleteAccount" runat="server" 
                                                        onclick="lnkDeleteAccount_Click" BorderColor="Black" ForeColor="Red">Delete My Account</asp:LinkButton>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

