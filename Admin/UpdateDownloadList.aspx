<%@ Page Title="Admin | Downloads" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateDownloadList.aspx.cs" Inherits="Admin_DownloadInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style34">
        <tr>
            <td>
                <strong><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload pictures</em></strong></td>
        </tr>
    </table>
    <table class="style34">
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="395px" 
                                Height="97px">
                                <table class="style34">
                                    <tr>
                                        <td style="text-align: left; width: 120px;">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblMessage" runat="server" style="color: #006600"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: left; width: 120px;">
                                            Selelect Image:
                                        </td>
                                        <td>
                                            <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" 
                                                style="text-align: right" Width="228px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right; width: 120px;">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="b" runat="server" Height="28px" style="text-align: center" 
                                                Text="Upload" Width="84px" onclick="buttonUpload_Click"/>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <table class="style34">
                    <tr>
                        <td>
                            <asp:Panel ID="Panel2" runat="server" Height="234px" style="margin-left: 16px" 
                                Width="389px" BorderStyle="None" Visible="False">
                                <asp:Image ID="imgUpload" runat="server" Height="233px" Width="388px" 
                                    BorderStyle="None" />
                            </asp:Panel>
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
                <br />
                <br />
                <br />
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

