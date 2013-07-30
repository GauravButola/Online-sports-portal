<%@ Page Title="Ticket Booking" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style34
        {
            width: 100%;
            margin-left: 263;
        }
        .style35
        {
            width: 178px;
        }
        .style36
        {
            font-size: large;
        }
        .style37
        {
            width: 100%;
        }
        .style42
        {
        }
        .style43
        {
            text-align: right;
            width: 148px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style34">
        <tr>
            <td class="style36">
                <strong><em>Book ticket for upcoming matches</em></strong></td>
        </tr>
        <tr>
            <td>
                <table class="style34">
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td>
                            <asp:Panel ID="Panel1" runat="server">
                                <asp:Wizard ID="Wizard1" runat="server" Width="785px" ActiveStepIndex="0" 
                                    onfinishbuttonclick="Wizard1_FinishButtonClick">
                                    <WizardSteps>
                                        <asp:WizardStep runat="server" title="Step 1">
                                            <table class="style34">
                                                <tr>
                                                    <td>
                                                        Enter match id of match in the below to book ticket.</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="txtMatchId" runat="server" BorderColor="#FF9933" Width="386px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                                                            GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
                                                            ShowFooter="True">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:CommandField ShowSelectButton="True" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                            <SortedDescendingHeaderStyle BackColor="#820000" />
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:WizardStep>
                                        <asp:WizardStep runat="server" title="Step 2">
                                            <asp:Panel ID="Panel2" runat="server" BorderStyle="Ridge" Width="518px">
                                                <table class="style37">
                                                    <tr>
                                                        <td class="style42" colspan="2">
                                                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            Booking for:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtBookingFor" runat="server" Width="240px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            No. of seats to book:
                                                        </td>
                                                        <td>
                                                            <table class="style37">
                                                                <tr>
                                                                    <td>
                                                                        <asp:TextBox ID="txtSeats" runat="server" Width="240px"></asp:TextBox>
                                                                    </td>
                                                                    <td style="color: #FFFFFF; background-color: #5F5F5F">
                                                                        1500/- Per seat</td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            Amount to pay:&nbsp;
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAmount" runat="server" 
                                                                Width="240px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            Card type:
                                                        </td>
                                                        <td>
                                                            <asp:Panel ID="Panel3" runat="server">
                                                                <table class="style37">
                                                                    <tr>
                                                                        <td>
                                                                            <asp:RadioButton ID="rdoCreditCard" runat="server" Text="Credit Card" 
                                                                                GroupName="card" Checked="True"/>
                                                                        </td>
                                                                        <td>
                                                                            <asp:RadioButton ID="rdoDebitCard" runat="server" Text="Debit Card" 
                                                                                GroupName="card" />
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            Card Number: </td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txtCardNumber" runat="server" Width="240px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            CVV</td>
                                                        <td style="text-align: left">
                                                            <asp:TextBox ID="txtCVV" runat="server" Width="240px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            &nbsp;</td>
                                                        <td style="text-align: right">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style43">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </asp:WizardStep>
                                    </WizardSteps>
                                </asp:Wizard>
                            </asp:Panel>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

