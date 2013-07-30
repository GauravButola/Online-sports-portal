using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Setting sql connection
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query;
            if (Session["UserName"] != null)
            {
                //Formatting query
                query = string.Format("SELECT * FROM users WHERE user_name='{0}'", Session["UserName"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                //Auto update User Name fieled if session is created
                if (dt.Rows.Count != 0)
                {
                    txtUserName.Text = dt.Rows[0]["user_name"].ToString();
                }
            }
            else
                Response.Redirect("~/Home.aspx");
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occurred";
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string query = string.Format("SELECT * FROM users WHERE user_name='{0}' AND password='{1}'", txtUserName.Text, txtCurrentPassword.Text);
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Show error if there's no record returned
        if (dt.Rows.Count == 0)
        {
            lblError.Text = "Authentication failed!";
        }
        else
        {
            //Show error if password field do not match
            if (!(txtNewPassword.Text.Equals(txtConfirmPassword.Text)))
            {
                lblError.Text = "Password fields didn't match";
            }
            else
            {
                //Check if all fields are field
                if (txtCurrentPassword.Text.Trim() == "" || txtNewPassword.Text.Trim() == "" || txtConfirmPassword.Text.Trim() == "")
                {
                    lblError.Text = "Please fill all given fields";
                }
                else
                {
                    //After all validations, set error to blank and execute query
                    lblError.Text = "";
                    query = string.Format("UPDATE users SET password='{0}' WHERE user_name='{1}'", txtNewPassword.Text, txtUserName.Text);
                    da = new SqlDataAdapter(query, con); 
                    da.Fill(dt);
                    lblError.Text = "Password successfully changed";
                }
            }
        }
    }
}