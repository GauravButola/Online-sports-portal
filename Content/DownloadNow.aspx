<%@ Page Title="" Language="C#" MasterPageFile="~/Content/ContentMasterPage.master" AutoEventWireup="true" CodeFile="DownloadNow.aspx.cs" Inherits="Content_DownloadNow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <asp:Image ID="imgDownload" runat="server" Height="345px" Width="471px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <asp:LinkButton ID="lnkStartDownload" runat="server" 
                    onclick="lnkStartDownload_Click" style="font-size: x-large">Start Download</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

