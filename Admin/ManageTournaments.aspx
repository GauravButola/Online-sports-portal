<%@ Page Title="Manage tournaments" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageTournaments.aspx.cs" Inherits="Admin_ManageTournaments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td>
                &nbsp;</td>
            <td style="font-size: large">
                <strong><em>Add new tournament</em></strong></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="710px" 
                    DefaultButton="btnAdd">
                    <table class="style34">
                        <tr>
                            <td>
                                <table class="style34">
                                    <tr>
                                        <td style="text-align: right; width: 142px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 142px">
                                            Tournament Name:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTournamentName" runat="server" Width="252px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 142px">
                                            Venue:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtVenue" runat="server" Width="252px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 142px">
                                            Start Date:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlStartDay" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlStartMonth" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlStartYear" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 142px">
                                            End Date:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="ddlEndDay" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlEndMonth" runat="server">
                                            </asp:DropDownList>
                                            <asp:DropDownList ID="ddlEndYear" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 142px">
                                            Match Details:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDetails" runat="server" Height="89px" TextMode="MultiLine" 
                                                Width="552px"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="style34">
                                    <tr>
                                        <td style="text-align: right; width: 143px">
                                            Team 1:
                                        </td>
                                        <td style="width: 137px">
                                            <asp:TextBox ID="txtTeam1" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 72px">
                                            Team 2:
                                        </td>
                                        <td style="width: 139px">
                                            <asp:TextBox ID="txtTeam2" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 63px">
                                            Team 3:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 143px">
                                            Team 4:
                                        </td>
                                        <td style="width: 137px">
                                            <asp:TextBox ID="txtTeam4" runat="server" style="margin-left: 0"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 72px">
                                            Team 5:
                                        </td>
                                        <td style="width: 139px">
                                            <asp:TextBox ID="txtTeam5" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 63px">
                                            Team 6:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam6" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 143px">
                                            Team 7:
                                        </td>
                                        <td style="width: 137px">
                                            <asp:TextBox ID="txtTeam7" runat="server" style="margin-left: 15"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 72px">
                                            Team 8:
                                        </td>
                                        <td style="width: 139px">
                                            <asp:TextBox ID="txtTeam8" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 63px">
                                            Team 9:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTeam9" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 143px">
                                            Team 10:
                                        </td>
                                        <td style="width: 137px">
                                            <asp:TextBox ID="txtTeam10" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="text-align: right; width: 72px">
                                            Team 11:</td>
                                        <td style="width: 139px">
                                            <asp:TextBox ID="txtTeam11" runat="server"></asp:TextBox>
                                        </td>
                                        <td style="width: 63px">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 143px">
                                            &nbsp;</td>
                                        <td style="width: 137px">
                                            &nbsp;</td>
                                        <td style="text-align: right; width: 72px">
                                            &nbsp;</td>
                                        <td style="width: 139px">
                                            &nbsp;</td>
                                        <td style="width: 63px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnAdd" runat="server" Height="33px" 
                                                style="text-align: center" Text="Add Tournament" Width="120px" 
                                                onclick="btnAdd_Click"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <table>
                <tr>
                <td>
                </td>
                </tr>
                    <tr>
                        <td>
                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

