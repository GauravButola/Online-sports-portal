using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con;
    int user_id;

    protected void Page_Load(object sender, EventArgs e)
    {
        //If user is not logged in, redirect to the SignIn page
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }

        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query;
            //Check if user is signed in
            if (Session["UserName"] != null)
            {
                query = string.Format("SELECT * FROM users WHERE user_name='{0}'", Session["UserName"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                //Get data from db if user is signed in
                if (dt.Rows.Count != 0)
                {
                    txtFrom.Text = dt.Rows[0]["email"].ToString();
                    user_id = Convert.ToInt32(dt.Rows[0]["user_id"]);
                }
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "A database errr has occured";
        }
    }
    protected void txtSubmit_Click(object sender, EventArgs e)
    {
        if (txtFrom.Text.Trim() == "" || txtMessage.Text.Trim() == "")
        {
            lblError.Text = "Please fill all given fields";
        }
        else
        {
            //Remove the onscreen error message.
            lblError.Text = "";

            //Building the SQL query string.
            string query = string.Format("INSERT INTO feedbacks VALUES('{0}','{1}','{2}')", txtMessage.Text, user_id, DateTime.Now.ToString("MM.dd.yyyy"));

            //Executing the query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            txtMessage.Text = "";
            Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Feedback received! Thanks for your time.')</SCRIPT>");
        }
    }
}
