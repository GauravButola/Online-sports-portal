<%@ Page Title="Players" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="Players.aspx.cs" Inherits="Content_Players" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="background-color: #E6E6E6">
                <asp:Label ID="lblPageName" runat="server" style="font-size: large" 
                    Text="Players"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 273px">
                                        <asp:Panel ID="Panel1" runat="server" BorderStyle="Ridge" Width="178px">
                                            <table style="width: 96%">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:ImageButton ID="ImageButton0" runat="server" Width="160px" 
                                                            Height="230px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Label ID="lblPlayerName0" runat="server" 
                                                            style="color: #000000; font-weight: bold;"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table style="width: 101%" border="solid" frame="hsides">
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Matches Played:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblMatches0" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Runs Scored:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblRuns0" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Wicket Taken:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblWicket0" runat="server" style="text-align: right"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>&nbsp;</td>
                                    <td style="width: 299px">
                                        <asp:Panel ID="Panel2" runat="server" BorderStyle="Ridge" Width="178px">
                                            <table style="width: 96%">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:ImageButton ID="ImageButton1" runat="server" Width="160px" 
                                                            Height="230px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Label ID="lblPlayerName1" runat="server" 
                                                            style="color: #000000; font-weight: bold;"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table style="width: 101%" frame="hsides">
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Matches Played:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblMatches1" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Runs Scored:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblRuns1" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Wicket Taken:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblWicket1" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>&nbsp;</td>
                                    <td style="width: 290px">
                                        <asp:Panel ID="Panel3" runat="server" BorderStyle="Ridge" Width="178px">
                                            <table style="width: 96%">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:ImageButton ID="ImageButton2" runat="server" Width="160px" 
                                                            Height="230px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Label ID="lblPlayerName2" runat="server" 
                                                            style="color: #000000; font-weight: bold;"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table style="width: 101%" frame="hsides">
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Matches Played:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblMatches2" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Runs Scored:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblRuns2" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Wicket Taken:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblWicket2" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>&nbsp;</td>
                                    <td>
                                        <asp:Panel ID="Panel4" runat="server" BorderStyle="Ridge" Width="178px">
                                            <table style="width: 96%">
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:ImageButton ID="ImageButton3" runat="server" Width="160px" 
                                                            Height="230px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center">
                                                        <asp:Label ID="lblPlayerName3" runat="server" 
                                                            style="color: #000000; font-weight: bold;"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <table style="width: 101%" frame="hsides">
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Matches Played:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblMatches3" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Runs Scored:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblRuns3" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: right; width: 101px" class="style31">
                                                                    Wicket Taken:
                                                                </td>
                                                                <td style="text-align: right">
                                                                    <asp:Label ID="lblWicket3" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 273px">
                                        &nbsp;</td>
                                    <td style="width: 299px">
                                        &nbsp;</td>
                                    <td style="width: 290px; text-align: right;">
                                        <asp:Button ID="btnPrevious" runat="server" Height="33px" 
                                            onclick="btnPrevious_Click" style="text-align: center" Text="Previous" 
                                            Width="95px" />
                                    </td>
                                    <td style="text-align: right">
                                        <asp:Button ID="btnNext" runat="server" Height="33px" Text="Next" 
                                            Width="95px" onclick="btnNext_Click" style="text-align: center" />
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

