using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_ManageNews : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

        //Fill the 'Writer' field from DB, so that current user can't spoof the writer name.
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query = "";
        try
        {
            //Building the SQL query string
            query = string.Format("SELECT * FROM users WHERE user_name=('{0}')", Session["UserName"].ToString());
        }
        catch (NullReferenceException ex)
        {
            //Session is not created so redirecting to the sign in page
            Response.Redirect("~/SignIn.aspx");
        }
        //Executing the query;
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        //Fill query result in dt table
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Get the writer name from db
        if(dt.Rows.Count != 0)
        {
            txtWriter.Text = dt.Rows[0]["name"].ToString();
        }
    }
    protected void btnPost_Click(object sender, EventArgs e)
    {
        //Check if all fields are filled
        if (txtWriter.Text.Trim() == "" || txtDescription.Text.Trim() == "" || txtTitle.Text.Trim() == "")
        {
            lblError.Text = "Please fill all given fields";
        }
        else
        {
            lblError.Text = "";
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            //Replacing single quotes for SQL query
            txtTitle.Text = txtTitle.Text.Replace("'", "''");
            txtDescription.Text = txtDescription.Text.Replace("'", "''");

            //Building the SQL query string
            string query = string.Format("INSERT INTO news VALUES('{0}','{1}','{2}','{3}')", DateTime.Now.ToString("MM-dd-yyyy"), txtWriter.Text, txtTitle.Text, txtDescription.Text);
            //Executing the query;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Clearing text fields
            txtTitle.Text = "";
            txtDescription.Text = "";
        }
    }
}