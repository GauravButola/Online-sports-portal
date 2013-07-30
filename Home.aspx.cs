using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Content/Live.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Players.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("News.aspx");
    }

    protected void imgLive_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Content/Live.aspx");
    }
    protected void imgPlayers_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Players.aspx");
    }
    protected void imgNews_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("News.aspx");
    }
}