using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //If user is not logged in, redirect to the SignIn page
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }

        //Check wheather the current user also an Admin.
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        //Building the SQL query string
        string query = string.Format("SELECT * FROM users WHERE user_name=('{0}')", Session["UserName"].ToString());
        //Executing the query;
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //use the full name fetched in the above query.
        if ((dt.Rows.Count == 0) && (dt.Rows[0]["user_type"].ToString() == "0"))
        {
            //Make Admin settings available only if the user is an Admin
            Response.Redirect("~/Home.aspx");
        }
    }

    protected void lnkUpdatePlayers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/UpdatePlayers.aspx");
    }
    protected void lnkManageTournaments_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ManageTournaments.aspx");
    }
    protected void imgAdminHome_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Admin/Manage.aspx");
    }
    protected void lnkUpdateMatches_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/UpdateMatches.aspx");
    }
    protected void lnkManageNews_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ManageNews.aspx");
    }
    protected void lnkDownloadInventory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/UpdateDownloadList.aspx");
    }
    protected void blnMatchHistory_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ManageMatchesHistory.aspx");
    }
    protected void lnkUpdateUsers_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/UpdateUsers.aspx");
    }
}
