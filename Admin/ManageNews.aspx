<%@ Page Title="Manage news" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageNews.aspx.cs" Inherits="Admin_ManageNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td>
                &nbsp; <strong><em><span style="font-size: large">Post new article on site&nbsp;</span></em></strong></td>
        </tr>
    </table>
    <table class="style34" style="width: 97%">
        <tr>
            <td>
                <table class="style34" style="width: 98%">
                    <tr>
                        <td class="style35" style="width: 12px">
                            &nbsp;</td>
                        <td style="width: 409px">
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset">
                                <table class="style34" style="width: 79%">
                                    <tr>
                                        <td style="text-align: right; width: 237px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 237px">
                                            &nbsp;Writer:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtWriter" runat="server" Enabled="False" Width="320px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 237px">
                                            News Title:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtTitle" runat="server" Width="320px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 237px">
                                            Description:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDescription" runat="server" Height="137px" TextMode="MultiLine" 
                                                Width="319px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 237px">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="btnPost" runat="server" Height="27px" 
                                                style="text-align: center" Text="Post" Width="63px" 
                                                onclick="btnPost_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/NewsDigest_logo.jpg" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="style34">
        <tr>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

