using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_UpdateLiveScores : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Filling up date lists
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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Check if all fields are filled
        if (txtTeam1.Text.Trim() == "" || txtTeam2.Text.Trim() == "" || txtVenue.Text.Trim() == "")
        {
            lblError.Text = "Please fill all given fields";
        }
        else
        {
            lblError.Text = "";
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            //formatting date.
            string date = string.Format("{0}-{1}-{2}", ddlMonth.Text, ddlDay.Text, ddlYear.Text);

            //Building the SQL query string
            string query = string.Format("INSERT INTO match VALUES('{0}','{1}','{2}','{3}','{4}')", txtTeam1.Text, txtTeam2.Text, date, txtVenue.Text, txtTournament.Text);
            
            //Catch the exception if tournament id doesn't exist
            try
            {
                //Executing the query;
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                lblError.Text = "Record successfully inserted";
            }
            catch(SqlException ex)
            {
                lblError.Text = "Tournament id doesn't exist.";
            }
        }
    }
}