<%@ Page Title="Manage match history" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageMatchesHistory.aspx.cs" Inherits="Admin_ManageMatchesHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td style="font-size: large">
                <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Update match history</em></strong></td>
        </tr>
    </table>
    <table class="style34">
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td class="style35" style="width: 130px">
                            &nbsp;</td>
                        <td style="width: 469px">
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Height="310px" 
                                Width="444px" DefaultButton="btnSave">
                                <table class="style34" style="width: 95%">
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Team 1:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam1" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Team 2:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam2" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Score 1:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtScore1" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Score 2:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtScore2" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
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
                                        <td style="text-align: right; width: 140px">
                                            Venue:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtVenue" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Result:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtResult" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Man of the match:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMM" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            Tournament ID:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTournamentId" runat="server" Width="274px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 140px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnSave" runat="server" Height="26px" 
                                                style="text-align: center" Text="Save" Width="60px" 
                                                onclick="btnSave_Click" />
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
    <table class="style34" style="height: 111px">
        <tr>
            <td style="height: 55px">
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

