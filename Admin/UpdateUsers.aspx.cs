using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_UpdateUsers : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //If user is not logged in, redirect to the SignIn page
            if (Session["UserName"] == null)
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }
        catch (Exception ex)
        {
            //Print the error if db error occurs
            lblError.Text = "Session is not set, you need to sign in first.";
        }

        //Set page title
        Page.Title = "Update User";
    }
    protected void btnSaveshanges_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();
        string query = string.Format("UPDATE users SET name='{0}', user_name='{1}', address='{2}', contact_number='{3}', email='{4}', user_type={5} WHERE user_name='{6}'", txtName.Text, txtUserName.Text, txtAddress.Text, txtContactNumber.Text, txtEmail.Text, dlistAccountType.Text.ToString() == "User" ? 0 : 1, txtUserNameCheck.Text);
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Setting enabled to false, after record is insert.
        txtUserName.Enabled = false;
        txtAddress.Enabled = false;
        txtContactNumber.Enabled = false;
        txtEmail.Enabled = false;
        dlistAccountType.Enabled = false;
        txtName.Enabled = false;
        btnSaveChanges.OnClientClick = "alert('Record successfully updated.')";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/UpdateUsers.aspx");
    }
    protected void btnLoad_Click(object sender, EventArgs e)
    {
        //Setting up the connection object to our SQL server
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query = string.Format("SELECT * FROM users WHERE user_name=('{0}')", txtUserNameCheck.Text);
        //Executing the query;
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count == 0)
        {
            lblError.Text = "No user found with the given User Name.";
        }
        else
        {
            lblError.Text = "";

            //Enabling controls
            txtName.Enabled = true;
            txtUserName.Enabled = true;
            txtAddress.Enabled = true;
            txtContactNumber.Enabled = true;
            txtEmail.Enabled = true;
            dlistAccountType.Enabled = true;
            btnSaveChanges.Enabled = true;
            btnCancel.Enabled = true;

            query = string.Format("SELECT * FROM users WHERE user_name = '{0}'", txtUserNameCheck.Text);
            da = new SqlDataAdapter(query, con);
            dt = new DataTable();
            da.Fill(dt);

            //Fetching data from the db returned dt rows
            txtName.Text = dt.Rows[0]["name"].ToString();
            txtUserName.Text = dt.Rows[0]["user_name"].ToString();
            txtAddress.Text = dt.Rows[0]["address"].ToString();
            txtContactNumber.Text = dt.Rows[0]["contact_number"].ToString();
            txtEmail.Text = dt.Rows[0]["email"].ToString();
            dlistAccountType.SelectedValue = dt.Rows[0]["user_type"].ToString() == "0" ? "User" : "Admin";
        }
    }
}