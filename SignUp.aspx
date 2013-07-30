<%@ Page Title="CricVision.com | Sign Up" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style33
        {
            height: 291px;
        }
        .style34
        {
            width: 144px;
            text-align: right;
        }
        .style35
        {
            height: 291px;
            width: 9px;
        }
        .style37
        {
            height: 291px;
            width: 616px;
        }
        .style38
        {
            width: 144px;
            text-align: right;
        }
        .style40
        {
        }
        .style41
        {
            font-size: large;
        }
        .style42
        {
            width: 355px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="background-image: url('/CricVision/Images/cricket_back.jpg')">
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp; <strong><span class="style41">&nbsp; Sign Up</span></strong></td>
        </tr>
        <tr>
            <td>
                <table class="style1" style="height: 371px">
                    <tr>
                        <td class="style35">
                            &nbsp;</td>
                        <td class="style37" valign="middle">
                         <asp:Panel ID="Panel1" runat="server" BorderStyle="Outset" Width="516px" 
                                BackColor="White" DefaultButton="btnSignUp">
                            <table class="style1" style="margin-left: 35">
                                <tr>
                                    <td class="style38">
                                        &nbsp;</td>
                                    <td class="style42">
                                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        Name:</td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtName" runat="server" Width="270px"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        User Name:</td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtUserName" runat="server" Width="270px"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        Password:</td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtPassword" runat="server" Width="270px" 
                                            TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        Confirm Password:</td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" 
                                            Width="270px"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style34">
                                        Address:<br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtAddress" runat="server" Height="95px" TextMode="MultiLine" 
                                            Width="273px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        Contact Number:</td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtContactNumber" runat="server" Width="270px"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style38">
                                        Email ID:</td>
                                    <td class="style42">
                                        <asp:TextBox ID="txtEmail" runat="server" Width="270px"></asp:TextBox>
                                    </td>
                                    <td class="style40">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style42">
                                       <asp:Button ID="btnSignUp" runat="server" Height="32px" Text="Submit" 
                                            Width="82px" onclick="btnSignUp_Click" style="text-align: center" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                            </asp:Panel>
                        </td>
                        <td class="style33">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

