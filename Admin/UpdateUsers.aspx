<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateUsers.aspx.cs" Inherits="Admin_UpdateUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td style="width: 213px">
                            &nbsp;</td>
                        <td style="font-size: large">
                            <strong><em>Enter User Name to update account details:</em></strong></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 213px">
                            &nbsp;</td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" Width="449px" BorderStyle="Outset" 
                                Height="363px">
                            
                            <table class="style1" style="margin-left: 35; width: 98%; height: 290px;">
                                <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
                                        &nbsp;</td>
                                    <td class="style36" style="text-align: left">
                                        <asp:Label ID="lblError" runat="server" ForeColor="Red" 
                                            style="text-align: left"></asp:Label>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
                                        User Name:</td>
                                    <td class="style36" style="text-align: left">
                                        <table class="style34">
                                            <tr>
                                                <td style="width: 188px; text-align: center">
                                                    <asp:TextBox ID="txtUserNameCheck" runat="server" style="margin-left: 68" 
                                                        Width="163px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="btnLoad" runat="server" Height="30px" onclick="btnLoad_Click" 
                                                        style="text-align: center" Text="Load Info" Width="94px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
                                        Name:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtName" runat="server" Enabled="False" Width="270px"></asp:TextBox>
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
                                        User Name:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtUserName" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
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
                                    <td class="style34" style="text-align: right; width: 29%">
                                        Contact Number:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtContactNumber" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
                                        Email ID:</td>
                                    <td class="style36">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="270px" Enabled="False"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                 <tr>
                                    <td class="style34" style="text-align: right; width: 29%">
                                        Account Type:</td>
                                    <td class="style36" style="text-align: left">
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:DropDownList ID="dlistAccountType" runat="server" Height="26px" 
                                            Width="124px" Enabled="False">
                                            <asp:ListItem>User</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr style="background-color: #FFFFFF">
                                    <td class="style34" style="height: 19px; width: 29%">
                                    </td>
                                    <td class="style36" style="height: 19px">
                                        <table class="style1" style="background-color: #FFFFFF">
                                            <tr>
                                                <td class="style38" style="background-color: #FFFFFF">
                                       <asp:Button ID="btnSaveChanges" runat="server" Height="32px" Text="Save Changes" 
                                            Width="90px" onclick="btnSaveshanges_Click" Enabled="False" 
                                                        style="text-align: center"/>
                                                </td>
                                                <td class="style38" style="background-color: #FFFFFF">
                                       <asp:Button ID="btnCancel" runat="server" Height="32px" Text="Cancel" 
                                            Width="82px" Enabled="False" onclick="btnCancel_Click" style="text-align: center"/>
                                                </td>
                                                <td class="style38" style="background-color: #FFFFFF">
                                                    </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="height: 19px">
                                    </td>
                                </tr>
                            </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

