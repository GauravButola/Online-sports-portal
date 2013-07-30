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

public partial class Images_Feedback : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query;
            //Check if user is logged in
            if (Session["UserName"] != null)
            {
                query = string.Format("SELECT * FROM users WHERE user_name='{0}'", Session["UserName"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                //If user is logged in, auto fill his/her email id
                if (dt.Rows.Count != 0)
                {
                    txtFrom.Text = dt.Rows[0]["email"].ToString();
                }
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occured";
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        if (txtFrom.Text.Trim() == "" || txtSubject.Text.Trim() == "" || txtMessage.Text.Trim() == "")
        {
            lblError.Text = "Please fill all given fields";
        }
        else
        {
            lblError.Text = "";

            //Create MailMessage object and send mail
            MailMessage message = new MailMessage();
            message.To = txtAdminEmail.Text;
            message.From = txtFrom.Text;
            message.Subject = txtSubject.Text;
            message.Body = txtMessage.Text;
            //SMTP needs to be installed for below mentioned method to work
            //SmtpMail.Send(recoverPassword);

            txtMessage.Text = "";
            txtSubject.Text = "";

            lblError.Text = "Message Successfully sent";
        }
    }
}