<%@ Page Title="Feedback" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style34
        {
            width: 100%;
        }
        .style36
        {
            width: 376px;
        }
        .style38
        {
            width: 68px;
        }
        .style39
        {
            width: 374px;
        }
        .style40
        {
            width: 414px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style34">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td class="style39">
                            &nbsp;</td>
                        <td class="style40">
                            <em><strong>Feedback<br />
                            <br />
                            </strong></em><span class="style31">Welcome to our feedback page. If you would 
                            like to send us your views or report technical problems, fill out the form below 
                            and click &#39;Submit&#39;.</span></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table class="style34">
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td class="style36">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/feedback.jpg" 
                                Width="300px" />
                        </td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="409px">
                                <table class="style34">
                                    <tr>
                                        <td class="style38" style="text-align: right">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38" style="text-align: right">
                                            From:&nbsp;
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtFrom" runat="server" Enabled="False" Width="322px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38" style="text-align: right">
                                            Message:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtMessage" runat="server" Height="137px" TextMode="MultiLine" 
                                                Width="322px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38" style="text-align: right">
                                            &nbsp;</td>
                                        <td style="text-align: right">
                                            <asp:Button ID="txtSubmit" runat="server" Height="31px" 
                                                style="text-align: center" Text="Submit" Width="77px" 
                                                onclick="txtSubmit_Click" />
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

