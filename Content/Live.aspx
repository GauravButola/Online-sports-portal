<%@ Page Title="Live match" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="Live.aspx.cs" Inherits="Live" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="background-color: #E6E6E6">
                <asp:Label ID="lblPageName" runat="server" style="font-size: large" 
                    Text="Live Matches"></asp:Label>
            &nbsp;<asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%; height: 323px;">
                    <tr>
                        <td style="width: 210px">
                            &nbsp;</td>
                        <td style="width: 628px">
                            <asp:Panel ID="Panel2" runat="server" BorderStyle="Ridge" Width="614px" 
                                Height="282px">
                                <table style="width: 100%">
                                    <tr>
                                        <td style="text-align: center; background-color: #E6E6E6; color: #808080; height: 41px;">
                                            This match is currently being played Live</td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Label ID="lblTeam1" runat="server" style="font-size: xx-large"></asp:Label>
                                            &nbsp;V/S
                                            <asp:Label ID="lblTeam2" runat="server" style="font-size: xx-large"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="width: 308px; background-color: #E6E6E6">
                                                        Venue:
                                                    </td>
                                                    <td style="text-align: right; background-color: #E6E6E6">
                                                        <asp:Label ID="lblVenue" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 308px">
                                                        Tournament:
                                                    </td>
                                                    <td style="text-align: right">
                                                        <asp:Label ID="lblTournament" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 308px; background-color: #E6E6E6">
                                                        Date:
                                                    </td>
                                                    <td style="text-align: right; background-color: #E6E6E6">
                                                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 308px">
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                            <table style="width: 100%">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Image ID="Image1" runat="server" Height="91px" 
                                                            ImageUrl="~/Images/live.jpg" Width="454px" />
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
                </table>
                <table style="width: 100%">
                    <tr>
                        <td class="style35" style="width: 610px">
                            &nbsp;</td>
                        <td style="width: 131px">
                            <asp:Button ID="btnPrevious" runat="server" Height="32px" 
                                onclick="btnPrevious_Click" style="text-align: center" Text="Previous" 
                                Width="96px" />
                        </td>
                        <td>
                            <asp:Button ID="btnNext" runat="server" Height="32px" onclick="btnNext_Click" 
                                style="text-align: center" Text="Next" Width="96px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

