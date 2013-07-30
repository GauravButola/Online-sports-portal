<%@ Page Title="Update live matches" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateMatches.aspx.cs" Inherits="Admin_UpdateLiveScores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td style="font-size: large">
                <strong><em>&nbsp; Update match details</em></strong></td>
        </tr>
    </table>
    <table class="style34">
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="456px" 
                                BackColor="White">
                                <table class="style34" style="width: 99%">
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            Team 1:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam1" runat="server" Width="320px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            Team 2:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam2" runat="server" Width="320px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            Match Date:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlDay" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlMonth" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlYear" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            Venue:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtVenue" runat="server" Width="320px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            Tournament ID</td>
                                        <td>
                                            <asp:TextBox ID="txtTournament" runat="server" Width="320px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 114px;">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnSubmit" runat="server" Height="30px" 
                                                style="text-align: center" Text="Submit" Width="79px" 
                                                onclick="btnSubmit_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style34">
                    <tr>
                        <td>
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

