<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="PlayerPage.aspx.cs" Inherits="Content_PlayerPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 67px">
                            &nbsp;</td>
                        <td style="width: 945px; background-color: #FFFFFF" valign="top">
                            <table style="width: 100%">
                                <tr valign="top">
                                    <td valign="top">
                                        <table style="width: 100%">
                                            <tr valign="top">
                                                <td style="width: 236px">
                                                    <asp:Panel ID="Panel2" runat="server" Width="214px">
                                                        <asp:Image ID="imgPlayer" runat="server" Height="253px" Width="202px" />
                                                    </asp:Panel>
                                                </td>
                                                <td>
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td style="text-align: center">
                                                                <asp:Label ID="lblPlayerName" runat="server" style="font-size: xx-large"></asp:Label>
                                                            <hr /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table style="width: 100%; height: 222px">
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Matches Played</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblPlayed" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Innings</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblInnings" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Balls Faced</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblBalls" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Runs Scored</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblRuns" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Six Scored</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblSix" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Four Scored</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblFour" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Over Bowled</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblOver" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="text-align: center; width: 336px; background-color: #F5F5F5">
                                                                            Wicket Taken</td>
                                                                        <td style="text-align: center; background-color: #F5F5F5">
                                                                            <asp:Label ID="lblWicket" runat="server"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table style="width: 100%">
                                            <tr>
                                                <td style="background-color: #F5F5F5">
                                                    <strong>Player Bio:</strong></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblBio" runat="server" 
                                                        style="font-family: sans-serif; font-size: 13px"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

