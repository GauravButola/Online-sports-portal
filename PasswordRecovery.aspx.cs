using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mail;
using System.Web.Configuration;

public partial class PasswordRecovery : System.Web.UI.Page
{
    SqlConnection con;

    protected void btnRecoverPassword_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query = string.Format("SELECT * FROM users WHERE email='{0}'", txtEmail.Text);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (lblError.Text != null)
                    lblError.Text = "";
                //Create Mail Message object and construct mail
                MailMessage recoverPassword = new MailMessage();
                recoverPassword.To = dt.Rows[0]["email"].ToString();
                recoverPassword.From = "GauravButola@gmail.com  ";
                recoverPassword.Subject = "Your password";
                recoverPassword.Body = "Your CricVision user password is " + dt.Rows[0]["password"].ToString();
                //SmtpMail.Send(recoverPassword);
                lblError.Text = "Your password has been sent to your Email";
            }
            else
                lblError.Text = "Email address not found. Try again!";
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occurred";
        }
    }
}