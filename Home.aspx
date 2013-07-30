<%@ Page Title="CricVision.com | Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style18
        {
        width: 323px;
        }
        .style19
        {
        width: 1217px;
        }
        .style22
        {
            height: 49px;
        font-size: x-large;
            width: 292px;
        }
        .style25
        {
            width: 1217px;
            height: 64px;
        }
        .style29
        {
            height: 43px;
        }
        .style30
        {
            width: 354px;
            height: 43px;
        }
        .style31
        {
            width: 363px;
            height: 43px;
        }
        .style32
        {
            height: 64px;
            font-size: small;
            width: 292px;
        }
    .style33
    {
        width: 338px;
        height: 54px;
    }
    .style34
    {
        width: 1217px;
        height: 49px;
            font-size: x-large;
        }
        .style36
        {
            font-size: small;
        }
        .style37
        {
            width: 935px;
            height: 32px;
            background-color: #FFFFFF;
        }
        .style38
        {
            width: 935px;
            height: 32px;
            text-align: left;
            background-color: #FFFFFF;
        }
        .style39
        {
            width: 1217px;
            height: 43px;
            font-size: small;
        }
        .style42
        {
            width: 292px;
            background-color: #FFFFFF;
            height: 29px;
        }
        .style43
        {
            width: 292px;
        }
        .style44
        {
            width: 935px;
            height: 29px;
            background-color: #FFFFFF;
        }
        .style45
        {
            width: 935px;
            height: 49px;
            font-size: x-large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
    <table class="style1">
        <tr>
            <td class="style45">
                Instant live match updates</td>
            <td class="style34">
                Know your favourite player</td>
            <td class="style22">
                Get all the latest updates</td>
        </tr>
        <tr>
            <td class="style38">
                <span class="style36">CricVision keeps you updated with all the live matches happening around 
                the world.</span><br class="style36" />
                <span class="style36">You can get instant Live score updates by going to the Live scores page on the 
                sites navigation bar.<br />
                </span></td>
            <td class="style25">
                <span class="style36">We provide easily accessible platform for you to keep yourself up-to-date with 
                the latest records and details about your favourate player.</span><br 
                    class="style36" />
                <span class="style36">You can check the player information and records from the player page.</span></td>
            <td class="style32">
                You can stay update regarding the latest happening in the Cricket world by going 
                to the News &amp; Update section of our site. It&#39;s an easy and efficient way to get 
                all the updates of your favourite game.<br />
                Create an account now and avail all the premium benefits.</td>
        </tr>
        <tr>
            <td class="style44">
                <asp:LinkButton ID="lnkLiveMatch" runat="server" onclick="LinkButton1_Click" 
                    style="font-size: large" PostBackUrl="~/Content/Live.aspx">Check out Live match info &gt;</asp:LinkButton>
            </td>
            <td class="style39">
                <asp:LinkButton ID="lnkPlayers" runat="server" onclick="LinkButton2_Click" 
                    style="font-size: large" PostBackUrl="~/Content/Players.aspx">More about the players &gt;</asp:LinkButton>
            </td>
            <td class="style42">
                <asp:LinkButton ID="lnkLive" runat="server" onclick="LinkButton3_Click" 
                    style="font-size: large" PostBackUrl="~/Content/News.aspx">See the latest News &amp; Updates &gt;</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style37">
                <asp:ImageButton ID="imgLive" runat="server" Height="208px" 
                    ImageUrl="~/Images/dhoni.jpg" Width="291px" onclick="imgLive_Click" 
                    PostBackUrl="~/Content/Live.aspx"/>
            </td>
            <td class="style19">
                <asp:ImageButton ID="imgPlayers" runat="server" Height="210px" 
                    ImageUrl="~/Images/brett-lee-australi_1215647c.jpg" style="margin-top: 0px" 
                    Width="305px" onclick="imgPlayers_Click" 
                    PostBackUrl="~/Content/Players.aspx"/>
            </td>
            <td class="style43">
                <asp:ImageButton ID="imgNews" runat="server" Height="213px" 
                    ImageUrl="~/Images/Virat-Kohli.jpg" Width="290px" 
                    onclick="imgNews_Click" PostBackUrl="~/Content/News.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>

