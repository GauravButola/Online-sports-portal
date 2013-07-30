<%@ Page Title="News & Updates" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Content_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%; background-color: #E6E6E6;">
    <tr>
        <td>
            <asp:Label ID="lblPageName" runat="server" style="font-size: large" 
                Text="News &amp; Updates"></asp:Label>
        </td>
    </tr>
</table>
<table style="width: 100%">
    <tr>
        <td>
            <table style="width: 100%">
                <tr>
                    <td style="width: 238px">
                        &nbsp;</td>
                    <td>
                        <table style="width: 73%">
                            <tr>
                                <td style="width: 608px">
                                    <asp:Panel ID="Panel1" runat="server" BorderStyle="None" Width="596px">
                                        <table style="width: 100%">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="lnkNewsTitle1" runat="server" 
                                                        
                                                        
                                                        style="color: #0000CC; text-decoration: underline; font-size: large; font-family: 'Times New Roman', Times, serif;"></asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="style31" style="color: #339933">
                                                    http://CricVision.com/Content/NewsPage.aspx?NewsId=</span><asp:Label ID="lblQuery1" 
                                                        runat="server" CssClass="style31" style="color: #339933"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblNews1" runat="server" style="font-size: small"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 608px">
                                    <asp:Panel ID="Panel2" runat="server" BorderStyle="None" Width="596px">
                                        <table style="width: 100%">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="lnkNewsTitle2" runat="server" 
                                                        
                                                        
                                                        style="color: #0000CC; text-decoration: underline; font-size: large; font-family: 'Times New Roman', Times, serif;"></asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="style31" style="color: #339933">
                                                    http://CricVision.com/Content/NewsPage.aspx?NewsId=</span><asp:Label ID="lblQuery2" 
                                                        runat="server" CssClass="style31" style="color: #339933"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblNews2" runat="server" style="font-size: small"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 608px">
                                    <asp:Panel ID="Panel3" runat="server" BorderStyle="None" Width="596px">
                                        <table style="width: 100%">
                                            <tr>
                                                <td>
                                                    <asp:LinkButton ID="lnkNewsTitle3" runat="server" 
                                                        
                                                        
                                                        style="color: #0000CC; text-decoration: underline; font-size: large; font-family: 'Times New Roman', Times, serif;"></asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <span class="style31" style="color: #339933">
                                                    http://CricVision.com/Content/NewsPage.aspx?NewsId=</span><asp:Label ID="lblQuery3" 
                                                        runat="server" CssClass="style31" style="color: #339933"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblNews3" runat="server" style="font-size: small"></asp:Label>
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
            <table style="width: 78%">
                <tr>
                    <td style="text-align: right; width: 694px">
                        <asp:Button ID="btnPrevious" runat="server" Height="29px" 
                            onclick="btnPrevious_Click" style="text-align: center" Text="Previous" 
                            Width="93px" />
                    </td>
                    <td style="text-align: right">
                        <asp:Button ID="btnNext" runat="server" Height="29px" onclick="btnNext_Click" 
                            style="text-align: center" Text="Next" Width="93px" />
&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

