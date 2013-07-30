using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Content_ContentMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //If user is not logged in, redirect to the SignIn page
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (ddlSearchCategory.Text == "Player")
        {
            Response.Redirect(string.Format("~/Content/Players.aspx?player={0}", txtSearch.Text));
        }
        else if (ddlSearchCategory.Text == "Tournament")
        {
            Response.Redirect(string.Format("~/Content/Tournament.aspx?tournament={0}", txtSearch.Text));
        }
        else if (ddlSearchCategory.Text == "News")
        {
            Response.Redirect(string.Format("~/Content/News.aspx?news={0}", txtSearch.Text));
        }
        else if (ddlSearchCategory.Text == "Live")
        {
            Response.Redirect(string.Format("~/Content/Live.aspx?live={0}", txtSearch.Text));
        }
        else if(ddlSearchCategory.Text == "Downloads")
        {
            Response.Redirect(string.Format("~/Content/Downloads.aspx?download={0}", txtSearch.Text));
        }
    }
}
