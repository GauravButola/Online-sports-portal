<%@ Page Title="Tournament" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="Tournament.aspx.cs" Inherits="Content_Tournament" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%; background-color: #E6E6E6;">
        <tr>
            <td>
                <asp:Label ID="lblPageName" runat="server" 
                    style="color: #000000; font-size: large; " 
                    Text="Tournaments"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 37px">
                            &nbsp;</td>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 622px">
                                        <asp:Panel ID="panel1" runat="server" BorderStyle="Ridge" Height="320px" 
                                            Width="464px" style="background-color: #F5F5F5">
                                            <table style="width: 99%">
                                                <tr>
                                                    <td style="text-align: center; width: 457px">
                                                        <asp:Label ID="lblName1" runat="server" ForeColor="Red" 
                                                            style="font-size: large; font-weight: 700; text-align: center; color: #006600;"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="width: 457px">
                                                        <span class="style31"><strong>Venue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <asp:Label ID="lblVenue1" runat="server" CssClass="style31"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="width: 457px">
                                                        <span class="style31"><strong>Start Date</strong>&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <asp:Label ID="lblStartDate1" runat="server" CssClass="style31"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="width: 457px">
                                                        <span class="style31"><strong>End Date&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <asp:Label ID="lblEndDate1" runat="server" CssClass="style31"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 457px">
                                                        <br />
                                                        <asp:Label ID="lblDescription1" runat="server" 
                                                            style="font-size: small; font-style: italic"></asp:Label>
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 457px">
                                                        <strong>Participating Teams:</strong></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 457px">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam01" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam02" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam03" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam04" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam05" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam06" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam07" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam08" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam09" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam010" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam011" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="panel2" runat="server" BorderStyle="Ridge" Height="320px" 
                                            Width="464px" style="background-color: #F5F5F5">
                                            <table style="width: 99%">
                                                <tr>
                                                    <td style="text-align: center; width: 457px">
                                                        <asp:Label ID="lblName2" runat="server" ForeColor="Red" 
                                                            style="font-size: large; font-weight: 700; text-align: center; color: #006600;"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="width: 457px">
                                                        <span class="style31"><strong>Venue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <asp:Label ID="lblVenue2" runat="server" CssClass="style31"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="width: 457px">
                                                        <span class="style31"><strong>Start Date</strong>&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <asp:Label ID="lblStartDate2" runat="server" CssClass="style31"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="width: 457px">
                                                        <span class="style31"><strong>End Date&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                                        <asp:Label ID="lblEndDate2" runat="server" CssClass="style31"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 457px">
                                                        <br />
                                                        <asp:Label ID="lblDescription2" runat="server" 
                                                            style="font-size: small; font-style: italic"></asp:Label>
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 457px">
                                                        <strong>Participating Teams:</strong></td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 457px">
                                                        <table style="width: 100%">
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam11" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam12" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam13" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam14" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam15" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam16" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam17" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam18" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam19" runat="server"></asp:Label>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 174px">
                                                                    <asp:Label ID="lblTeam110" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    <asp:Label ID="lblTeam111" runat="server"></asp:Label>
                                                                </td>
                                                                <td>
                                                                    &nbsp;</td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                            <table style="width: 100%">
                                <tr>
                                    <td class="style35" style="width: 731px">
                                        &nbsp;</td>
                                    <td style="width: 183px">
                                        <asp:Button ID="btnPrevious" runat="server" Height="33px" 
                                            style="text-align: center" Text="Previous" Width="91px" 
                                            onclick="btnPrevious_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="btnNext" runat="server" Height="33px" 
                                            style="text-align: center" Text="Next" Width="91px" 
                                            onclick="btnNext_Click" />
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

