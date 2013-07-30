using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Live : System.Web.UI.Page
{
    SqlConnection con;
    int row = 0;
    string live;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Recieving the query string from the browser url
        row = Convert.ToInt32(Request.QueryString["row"]);
        live = Request.QueryString["live"];

        //Disable previous button if 0th or no results found
        if (row < 1)
            btnPrevious.Enabled = false;

        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query;
        //if no search term found, lookup whole table data
        if (live == null)
        {
            query = "SELECT * FROM match";
        }
        else
        {
            //Set page label
            lblPageName.Text = "Live Match search results for \"" + live + "\"";
            //Set page title to search term
            Page.Title = "Live Match Search | " + live;
            query = string.Format("SELECT * FROM match WHERE team1 LIKE '%{0}%'  OR team2 LIKE '%{0}%'", live);
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        try
        {
            //Check if the returned match row is being played live using date field
            DateTime dbDate = Convert.ToDateTime(dt.Rows[row]["match_date"]);
            DateTime currDate = DateTime.Now;
            if (dbDate.ToString("MM-dd-yyyy") == currDate.ToString("MM-dd-yyyy"))
            {
                lblTeam1.Text = dt.Rows[row]["team1"].ToString();
                lblTeam2.Text = dt.Rows[row]["team2"].ToString();
                lblDate.Text = currDate.ToString("dd-MM-yyyy") + " (Today)";

                //getting tournament name using the tournament_id field
                string tourQuery = string.Format("SELECT * FROM tournaments WHERE tournament_id={0}", dt.Rows[row]["tournament_id"].ToString());
                da = new SqlDataAdapter(tourQuery, con);
                DataTable tourDT = new DataTable();
                da.Fill(tourDT);
                lblTournament.Text = tourDT.Rows[0]["tournament_name"].ToString();
                row++;
            }
            else
            {
                row++;
                //skip the record if it's not a live match
                if (live == null)
                {
                    Response.Redirect(string.Format("~/Content/Live.aspx?row={0}", row));
                }
                else
                {
                    Response.Redirect(string.Format("~/Content/Live.aspx?row={0}&live={1}", row, live));
                }
            }
        }
        catch (IndexOutOfRangeException ex)
        {
            Panel2.Visible = false;
            btnNext.Enabled = false;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        //If search term found go to else part
        if (live == null)
        {
            Response.Redirect(string.Format("~/Content/Live.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Live.aspx?row={0}&live={1}", row, live));
        }
    }
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        //Go one record back
        row = row - 1;

        //If search term found, go to else part
        if (live == null)
        {
            Response.Redirect(string.Format("~/Content/Live.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Live.aspx?row={0}&live={1}", row, live));
        }
    }
}