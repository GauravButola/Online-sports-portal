<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="NewsPage.aspx.cs" Inherits="Content_NewsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <table style="width: 100%">
                    <tr valign="top">
                        <td style="width: 182px">
                            &nbsp;</td>
                        <td style="width: 597px">
                            <asp:Panel ID="Panel2" runat="server" Width="615px">
                                <table style="width: 89%; margin-left: 61px;">
                                    <tr>
                                        <td style="width: 607px">
                                            <asp:Label ID="lblNewsTitle" runat="server" 
                                                style="font-size: x-large; color: #4D1F41"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 607px">
                                            <span class="style31">By </span>
                                            <asp:Label ID="lblWriter" runat="server" CssClass="style31" 
                                                style="color: #4FDCFF"></asp:Label>
                                            <span class="style31">, posted </span>
                                            <asp:Label ID="lblDate" runat="server" style="color: #4FDCFF; font-size: small"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 607px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 607px">
                                            <asp:Label ID="lblDescription" runat="server" 
                                                style="font-family: sans-serif; font-size: small; text-align: justify"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Panel ID="Panel3" runat="server">
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

