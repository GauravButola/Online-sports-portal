<%@ Page Title="Downloads" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="Downloads.aspx.cs" Inherits="Content_Downloads" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr style="background-color: #F5F5F5">
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 2190px">
                <asp:Label ID="lblPageName" runat="server" style="font-size: large" 
                    Text="Downloads"></asp:Label>
                        </td>
                        <td style="text-align: right; width: 891px">
                            <asp:Button ID="btnPrevious" runat="server" Height="29px" 
                                onclick="btnPrevious_Click" style="text-align: center" Text="Previous" 
                                Width="90px" />
                            &nbsp;</td>
                        <td style="text-align: right">
                            <asp:Button ID="btnNext" runat="server" Height="29px" onclick="btnNext_Click" 
                                style="text-align: center" Text="Next" Width="90px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 130px">
                            &nbsp;</td>
                        <td>
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 328px">
                                        <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="185px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="imgDownload1" runat="server" Height="180px" 
                                                            Width="180px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="text-align: center">
                                                        <asp:Label ID="lblName1" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #F5F5F5">
                                                        <asp:LinkButton ID="lnkDownload1" runat="server">Download</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="Panel2" runat="server" BorderStyle="Outset" Width="185px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="imgDownload2" runat="server" Height="180px" 
                                                            Width="180px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="text-align: center">
                                                        <asp:Label ID="lblName2" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #F5F5F5">
                                                        <asp:LinkButton ID="lnkDownload2" runat="server">Download</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="Panel3" runat="server" BorderStyle="Outset" Width="185px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="imgDownload3" runat="server" Height="180px" 
                                                            Width="180px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="text-align: center">
                                                        <asp:Label ID="lblName3" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #F5F5F5">
                                                        <asp:LinkButton ID="lnkDownload3" runat="server">Download</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 328px">
                                        <asp:Panel ID="Panel4" runat="server" BorderStyle="Outset" Width="185px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="imgDownload4" runat="server" Height="180px" 
                                                            Width="180px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="text-align: center">
                                                        <asp:Label ID="lblName4" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #F5F5F5">
                                                        <asp:LinkButton ID="lnkDownload4" runat="server">Download</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="Panel5" runat="server" BorderStyle="Outset" Width="185px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="imgDownload5" runat="server" Height="180px" 
                                                            Width="180px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="text-align: center">
                                                        <asp:Label ID="lblName5" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #F5F5F5">
                                                        <asp:LinkButton ID="lnkDownload5" runat="server">Download</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        <asp:Panel ID="Panel6" runat="server" BorderStyle="Outset" Width="185px">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td>
                                                        <asp:ImageButton ID="imgDownload6" runat="server" Height="180px" 
                                                            Width="180px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style31" style="text-align: center">
                                                        <asp:Label ID="lblName6" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="text-align: center; background-color: #F5F5F5">
                                                        <asp:LinkButton ID="lnkDownload6" runat="server">Download</asp:LinkButton>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
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

