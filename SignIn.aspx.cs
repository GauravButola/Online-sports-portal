using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Sign : System.Web.UI.Page
{
    //If user is already logged in, redirect to the HomePage
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
            Response.Redirect("Home.aspx");
    }

    SqlConnection con;
 
    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            //Creating query for sql
            string query = string.Format("SELECT * FROM users WHERE user_name='{0}' AND password='{1}'", txtUserName.Text, txtPassword.Text);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Check if form is duly filled
            if (txtUserName.Text.Trim() == "" || txtPassword.Text.Trim() == "")
            {
                lblError.Text = "*Please fill all fields";
                Response.Write(@"<SCRIPT LANGUAGE=""JavaScript"">alert('Please fill all the given fields')</SCRIPT>");
            }
            else
            {
                //Check if query returned any results
                if (dt.Rows.Count != 0)
                {
                    Session["UserName"] = dt.Rows[0]["user_name"].ToString();
                    Response.Redirect("Home.aspx");
                }
                else
                    lblError.Text = "*Username or Password wrong";
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occured";
        }
        
    }
    protected void lnkSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }
    protected void lnkForgotPassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("PasswordRecovery.aspx");
    }
    protected void lnkRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/SignUp.aspx");
    }
}