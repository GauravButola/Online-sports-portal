using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Settings : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //If user is not logged in, redirect to the SignIn page
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/SignIn.aspx");
        }

        try
        {
            //Check wheather the current user also an Admin.
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            //Building the SQL query string
            string query = string.Format("SELECT * FROM users WHERE user_name=('{0}')", Session["UserName"].ToString());
            //Executing the query;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Set page title
            Page.Title = "User Settings | " + dt.Rows[0]["name"].ToString();

            //Only make the Admin settings available if the user is an Admin
            if ((dt.Rows.Count != 0) && (dt.Rows[0]["user_type"].ToString() == "1"))
            {
                pnlAdmin.Visible = true;
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occured";
        }
    }
    protected void btnSaveshanges_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();
        string query = string.Format("UPDATE users SET name='{0}', user_name='{1}', address='{2}', contact_number='{3}', email='{4}', user_type={5} WHERE user_name='{6}'", txtName.Text, txtUserName.Text, txtAddress.Text, txtContactNumber.Text, txtEmail.Text, dlistAccountType.Text.ToString() == "User" ? 0 : 1, Session["UserName"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        //Enabling controls
        txtName.Enabled = true;
        txtUserName.Enabled = true;
        txtAddress.Enabled = true;
        txtContactNumber.Enabled = true;
        txtEmail.Enabled = true;
        //dlistAccountType.Enabled = true;

        btnSaveChanges.Enabled = true;
        btnClear.Enabled = true;

        //Setting up the connection object to our SQL server
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query = string.Format("SELECT * FROM users WHERE user_name = '{0}'", Session["UserName"].ToString());
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        txtName.Text = dt.Rows[0]["name"].ToString();
        txtUserName.Text = dt.Rows[0]["user_name"].ToString();
        txtAddress.Text = dt.Rows[0]["address"].ToString();
        txtContactNumber.Text = dt.Rows[0]["contact_number"].ToString();
        txtEmail.Text = dt.Rows[0]["email"].ToString();
        dlistAccountType.SelectedValue = dt.Rows[0]["user_type"].ToString() == "0" ? "User" : "Admin";
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtUserName.Text = "";
        txtAddress.Text = "";
        txtContactNumber.Text = "";
        txtEmail.Text = "";
    }
    protected void lnkDeleteAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteAccount.aspx");
    }
    protected void lnkChangePassword_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void lnkAdminPanel_Click(object sender, EventArgs e)
    {
        Response.Redirect(@"Admin\Manage.aspx");
    }
}