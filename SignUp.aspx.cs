using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class SignUp : System.Web.UI.Page
{
    //If user is already logged in, redirect to the HomePage
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
            Response.Redirect("Home.aspx");
    }

    //Declaring connection object
    SqlConnection con;
  
    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query = string.Format("SELECT * FROM users WHERE user_name='{0}'", txtUserName.Text);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                lblError.Text = "This UserName is taken, please try another one";
            }
            //Check if both password fields match.
            else if (!(txtPassword.Text.Equals(txtConfirmPassword.Text)))
            {
                lblError.Text = "Password fields didn't match";
            }
            else
            {
                //Check if all fields are filled or not.
                if (txtName.Text.Trim() == "" || txtUserName.Text.Trim() == "" || txtAddress.Text.Trim() == "" || txtContactNumber.Text.Trim() == "" || txtPassword.Text.Trim() == "" || txtEmail.Text.Trim() == "")
                {
                    lblError.Text = "Please fill all given fields";
                }
                else
                {
                    lblError.Text = "";

                    //Setting up the connection object to our SQL server
                    con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                    con.Open();

                    //Building the SQL query string
                    query = string.Format("INSERT INTO users VALUES('{0}','{1}','{2}','{3}','{4}','{5}',{6})", txtName.Text, txtUserName.Text, txtPassword.Text, txtAddress.Text, txtContactNumber.Text, txtEmail.Text, 0);
                    //Executing the query;
                    da = new SqlDataAdapter(query, con);
                    dt = new DataTable();
                    da.Fill(dt);

                    Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Registration complete! You can Sign into your account now')</SCRIPT>");

                    //Clearing text fields
                    txtName.Text = "";
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                    txtConfirmPassword.Text = "";
                    txtAddress.Text = "";
                    txtContactNumber.Text = "";
                    txtEmail.Text = "";
                }
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occured";
        }
    }
}