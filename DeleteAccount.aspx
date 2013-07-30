<%@ Page Title="Remove user account" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteAccount.aspx.cs" Inherits="DeleteAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style32
        {
            width: 323px;
        }
        .style34
        {
            width: 347px;
        }
        .style35
        {
            width: 347px;
            height: 167px;
        }
        .style36
        {
            height: 167px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style34">
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style34">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="410px">
                    <table class="style1" style="height: 53px; width: 100%; color:#00405d">
                        <tr>
                            <td class="style31">
                                <strong>Are you sure?</strong></td>
                        </tr>
                        <tr>
                            <td><hr />
                                Are you sure you want to permanently remove your account from CrivVision .com. 
                                This action cannot be undone.</td>
                        </tr>
                        <tr>
                            <td><hr />
                                <table class="style1">
                                    <tr>
                                        <td style="text-align: right">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnConfirm" runat="server" Height="28px" 
                                                onclick="btnConfirm_Click" Text="Confirm" Width="77px" 
                                                style="text-align: center" />
                                            <asp:Button ID="btnCancel" runat="server" Height="28px" 
                                                onclick="btnCancel_Click" Text="Cancel" Width="77px" 
                                                style="text-align: center" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35">
                </td>
            <td class="style36">
                </td>
            <td class="style36">
                </td>
        </tr>
    </table>
</asp:Content>

