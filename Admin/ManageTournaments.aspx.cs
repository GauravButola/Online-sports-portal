using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_ManageTournaments : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Filling up date lists
        for (int i = 1; i <= 31; i++)
        {
            ddlStartDay.Items.Add(i.ToString());
            ddlEndDay.Items.Add(i.ToString());
        }
        for (int i = 1; i <= 12; i++)
        {
            ddlStartMonth.Items.Add(i.ToString());
            ddlEndMonth.Items.Add(i.ToString());
        }
        for (int i = 1950; i <= 2020; i++)
        {
            ddlStartYear.Items.Add(i.ToString());
            ddlEndYear.Items.Add(i.ToString());
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //Check if all fields are filled
        if (txtTournamentName.Text.Trim() == "" || txtVenue.Text.Trim() == "" || txtDetails.Text.Trim() == "" || txtTeam1.Text.Trim() == "" || txtTeam2.Text.Trim() == "" || txtTeam3.Text.Trim() == "")
        {
            lblError.Text = "Please fill all given fields";
        }
        else
        {
            //Formatting dates for input in query
            string startDate = string.Format("{0}-{1}-{2}",ddlStartMonth.Text, ddlStartMonth.Text, ddlStartYear.Text);
            string endDate = string.Format("{0}-{1}-{2}",ddlEndMonth.Text, ddlEndDay.Text,ddlEndYear.Text);

            lblError.Text = "";

            try
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                con.Open();

            //Building the SQL query string
            string query = string.Format("INSERT INTO tournaments VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}')", txtTournamentName.Text, txtVenue.Text, startDate, endDate, txtDetails.Text, txtTeam1.Text, txtTeam2.Text, txtTeam3.Text, txtTeam4.Text, txtTeam5.Text, txtTeam6.Text, txtTeam7.Text, txtTeam8.Text, txtTeam9.Text, txtTeam10.Text, txtTeam11.Text);
            //Executing the query;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            }
            catch (Exception ex)
            {
                //Print the error if db error occurs
                lblError.Text = "A database error has occured";
            }

            //Clearing text fields
            txtTournamentName.Text = "";
            txtVenue.Text = "";
            txtDetails.Text = "";
            txtTeam1.Text = "";
            txtTeam2.Text = "";
            txtTeam3.Text = "";
            txtTeam4.Text = "";
            txtTeam5.Text = "";
            txtTeam6.Text = "";
            txtTeam7.Text = "";
            txtTeam8.Text = "";
            txtTeam9.Text = "";
            txtTeam10.Text = "";
            txtTeam11.Text = "";
        }
    }
}