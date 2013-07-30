<%@ Page Title="Update players" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdatePlayers.aspx.cs" Inherits="Admin_UpdatePlayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td style="font-size: large">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <em>Add new player</em></strong></td>
        </tr>
    </table>
    <table class="style34">
        <tr>
            <td>
                <table class="style34" style="height: 450px">
                    <tr valign="top">
                        <td style="width: 105px">
                            &nbsp;</td>
                        <td style="width: 450px">
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="459px" 
                                DefaultButton="btnAddPlayer" Height="413px">
                                <table class="style34" style="width: 97%">
                                    <tr>
                                        <td class="style35" style="width: 219px">
                                            &nbsp;</td>
                                        <td>
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Player Name:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPlayerName" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Matches Played:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMatchesPlayed" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Innings:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtInnings" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Balls Faced:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtBallsFaced" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Runs Scored:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtRunsScored" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Six Scored:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSixScored" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Four Scored:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFourScored" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Over Bowled:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtOverBowled" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Wicket Taken:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtWicketTaken" runat="server" Width="202px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Player Bio:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPlayerBio" runat="server" Height="96px" TextMode="MultiLine" 
                                                Width="306px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 219px">
                                            Picture: </td>
                                        <td style="text-align: right">
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td style="text-align: right; width: 219px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnAddPlayer" runat="server" Height="30px" 
                                                onclick="btnAddPlayer_Click" style="text-align: center" Text="Add Player" 
                                                Width="105px" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/player.png" 
                                Width="250px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

