using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_ManageMatchesHistory : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Filling up date lists.
        for (int i = 1; i <= 31; i++)
        {
            ddlDay.Items.Add(i.ToString());
        }
        for (int i = 1; i <= 12; i++)
        {
            ddlMonth.Items.Add(i.ToString());
        }
        for (int i = 2000; i <= 2020; i++)
        {
            ddlYear.Items.Add(i.ToString());
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //Check if all fields are filled
        if (txtTeam1.Text.Trim() == "" || txtTeam2.Text.Trim() == "" || txtVenue.Text.Trim() == "" || txtScore1.Text.Trim() == "" || txtScore2.Text.Trim() == "" || txtResult.Text.Trim() == "" || txtMM.Text.Trim() == "" || txtTournamentId.Text.Trim() == "")
        {
            lblError.Text = "Please fill all given fields";
        }
        else
        {
            lblError.Text = "";
            //Try to catch any datbase errror
            try
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                con.Open();
                //formatting date.
                string date = string.Format("{0}-{1}-{2}", ddlMonth.Text, ddlDay.Text, ddlYear.Text);

                //Building the SQL query string
                string query = string.Format("INSERT INTO match_history VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", date, txtTeam1.Text, txtTeam2.Text, txtVenue.Text, txtScore1.Text, txtScore2.Text, txtResult.Text, txtMM.Text, txtTournamentId.Text);
                //Executing the query
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                //Fetching data in the dt table
                DataTable dt = new DataTable();
                da.Fill(dt);

                txtTeam1.Text = "";
                txtTeam2.Text = "";
                txtVenue.Text = "";
                txtMM.Text = "";
                txtTournamentId.Text = "";
                txtScore1.Text = "";
                txtScore2.Text = "";
                txtResult.Text = "";

                //Success Message
                lblError.Text = "Record inserted";
            }
            catch (Exception ex)
            {
                //Print the error if db error occurs
                lblError.Text = "A database error has occured";
            }
        }
    }
}