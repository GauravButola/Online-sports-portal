using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Payment : System.Web.UI.Page
{
    SqlConnection con;
    //Defining here for global scope
    SqlDataAdapter da;
    DataTable dt;

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

            //Get current date
            string currDate = DateTime.Now.ToString("MM-dd-yyyy");

            //Show future matchs in gridview
            string query = string.Format("SELECT * FROM  match WHERE match_date>'{0}'", currDate);
            da = new SqlDataAdapter(query, con);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occurred";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Selected row in gridview
        int row = GridView1.SelectedIndex;
        txtMatchId.Text = dt.Rows[row]["match_id"].ToString();
        //Get teams in the textbox
        txtBookingFor.Text = dt.Rows[row]["team1"].ToString() + " V/S " + dt.Rows[row]["team2"].ToString(); ;
    }
    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();
        //Object for card detail validation
        BookingService cardAuth = new BookingService();
        bool auth = cardAuth.CheckCard(txtCardNumber.Text, txtCVV.Text);
        if(txtMatchId.Text.Trim()=="" || txtSeats.Text.Trim()=="" || txtAmount.Text.Trim()=="" || txtCardNumber.Text.Trim()=="" || txtCVV.Text.Trim()=="")
            lblError.Text = "Please fill all the given fields";
        else if (auth)
        {
            lblError.Text = "";
            //Query to get the user id from DB
            string query = string.Format("SELECT user_id FROM users WHERE user_name='{0}'", Session["UserName"].ToString());
            da = new SqlDataAdapter(query, con);
            dt = new DataTable();
            da.Fill(dt);
            
            int user_id = Convert.ToInt32(dt.Rows[0]["user_id"].ToString());
            int match_id = Convert.ToInt32(txtMatchId.Text);
            int amount = Convert.ToInt32(txtSeats.Text) * 1500;
            string card_type;

            if (rdoCreditCard.Checked == true)
                card_type = rdoCreditCard.Text;
            else
                card_type = rdoDebitCard.Text;

            //Inserting payment details after all the validations.
            query = string.Format("INSERT INTO booking VALUES({0},{1},{2},{3},'{4}')", user_id, match_id, amount, Convert.ToInt32(txtSeats.Text), card_type);
            
            //Executing query
            da = new SqlDataAdapter(query, con);
            dt = new DataTable();
            da.Fill(dt);
            lblError.Text = "Booking successfull. You'll recieve your tickets through postal mail in few days";
        }
        else
        {
            lblError.Text = "Please press on \"Validate Card\" button to get your card verified.";
        }
    }
    protected void btnValidate_Click(object sender, EventArgs e)
    {
        //Object for card detail validation
        BookingService cardAuth = new BookingService();
        bool auth = cardAuth.CheckCard(txtCardNumber.Text, txtCVV.Text);
        if (auth)
        {
            lblError.Text = ""; 
            lblError.Text = "Validation successfull";
        }
        else
        {
            lblError.Text = "Validation Failed. Card number or CVV code is invalid";
        }
    }
}