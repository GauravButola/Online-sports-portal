using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            lblUserName.Text = "Guest";
            lnkSign.Text = "Sign In";
            lnkSign.PostBackUrl = "SignIn.aspx";
            lnkOutSettings.Text = "Sign Up";
            lnkOutSettings.PostBackUrl = "Signup.aspx";
        }
        else
        {
            //Get the user's full name and greet him/her on the header.
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            //Building the SQL query string
            string query = string.Format("SELECT * FROM users WHERE user_name=('{0}')", Session["UserName"].ToString());
            //Executing the query;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //use the full name fetched in the above query.
            if (dt.Rows.Count != 0)
            {
                lblUserName.Text = dt.Rows[0]["name"].ToString();
            }

            lnkSign.Text = "Sign Out";
            lnkSign.PostBackUrl = "SignOut.aspx";
            lnkOutSettings.Text = "Settings";
            lnkOutSettings.PostBackUrl = "UserSettings.aspx";
        }
    }
    protected void lnkHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void lnkNavLive_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Content/Live.aspx");
    }
    protected void lnkNavTournament_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Content/Tournament.aspx");
    }
    protected void lnkNavPlayer_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Content/Players.aspx");
    }
    protected void lnkNavNews_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Content/News.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void lnkDownloads_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Content/Downloads.aspx");
    }
    protected void lnkAboutUs_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/About.aspx");
    }
    protected void lnkFeedback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Feedback.aspx");
    }
    protected void lnkContactUs_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ContactUs.aspx");
    }
    protected void lnkNavBookTicket_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Payment.aspx");
    }
}
