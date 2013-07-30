using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class DeleteAccount : System.Web.UI.Page
{
    SqlConnection con;

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserSettings.aspx");
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();
            //Create Delete query for current session user
            string query = string.Format("DELETE FROM users WHERE user_name='{0}'", Session["UserName"]);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            
            //Closing session and redirecting to the homepage
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occurred";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserName"] == null)
            Response.Redirect("~/SignIn.aspx");
    }
}