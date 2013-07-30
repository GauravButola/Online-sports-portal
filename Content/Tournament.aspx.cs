using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_Tournament : System.Web.UI.Page
{
    SqlConnection con;
    int row = 0;
    string tournament;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Recieving the query string from the browser url
        row = Convert.ToInt32(Request.QueryString["row"]);
        tournament = Request.QueryString["tournament"];

        //Disable previous button if no or 0th or no row found
        if (row < 1)
            btnPrevious.Enabled = false;

        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query;
        if (tournament == null)
        {
            query = "SELECT * FROM tournaments";
        }
        else
        {
            lblPageName.Text = "Tournament search results for \"" + tournament + "\"";
            //Setting page title
            Page.Title = "Tournament Search | " + tournament;
            query = string.Format("SELECT * FROM tournaments WHERE tournament_name LIKE '%{0}%'  OR match_details LIKE '%{0}%' ORDER BY start_date DESC", tournament);
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Catch the exception if row is empty for a specific query
        try
        {
            //Fetching data from db
            lblName1.Text = dt.Rows[row]["tournament_name"].ToString();
            lblVenue1.Text = dt.Rows[row]["venue"].ToString();
            lblStartDate1.Text = Convert.ToDateTime(dt.Rows[row]["start_date"].ToString()).ToString("dd-MM-yyyy");
            lblEndDate1.Text = Convert.ToDateTime(dt.Rows[row]["end_date"].ToString()).ToString("dd-MM-yyyy");
            lblDescription1.Text = dt.Rows[row]["match_details"].ToString();
            lblTeam01.Text = dt.Rows[row]["team1"].ToString();
            lblTeam02.Text = dt.Rows[row]["team2"].ToString();
            lblTeam03.Text = dt.Rows[row]["team3"].ToString();
            lblTeam04.Text = dt.Rows[row]["team4"].ToString();
            lblTeam05.Text = dt.Rows[row]["team5"].ToString();
            lblTeam06.Text = dt.Rows[row]["team6"].ToString();
            lblTeam07.Text = dt.Rows[row]["team7"].ToString();
            lblTeam08.Text = dt.Rows[row]["team8"].ToString();
            lblTeam09.Text = dt.Rows[row]["team9"].ToString();
            lblTeam010.Text = dt.Rows[row]["team10"].ToString();
            lblTeam011.Text = dt.Rows[row]["team11"].ToString();
            row++;

            lblName2.Text = dt.Rows[row]["tournament_name"].ToString();
            lblVenue2.Text = dt.Rows[row]["venue"].ToString();
            lblStartDate2.Text = Convert.ToDateTime(dt.Rows[row]["start_date"].ToString()).ToString("dd-MM-yyyy");
            lblEndDate2.Text = Convert.ToDateTime(dt.Rows[row]["end_date"].ToString()).ToString("dd-MM-yyyy");
            lblDescription2.Text = dt.Rows[row]["match_details"].ToString();
            lblTeam11.Text = dt.Rows[row]["team1"].ToString();
            lblTeam12.Text = dt.Rows[row]["team2"].ToString();
            lblTeam13.Text = dt.Rows[row]["team3"].ToString();
            lblTeam14.Text = dt.Rows[row]["team4"].ToString();
            lblTeam15.Text = dt.Rows[row]["team5"].ToString();
            lblTeam16.Text = dt.Rows[row]["team6"].ToString();
            lblTeam17.Text = dt.Rows[row]["team7"].ToString();
            lblTeam18.Text = dt.Rows[row]["team8"].ToString();
            lblTeam19.Text = dt.Rows[row]["team9"].ToString();
            lblTeam110.Text = dt.Rows[row]["team10"].ToString();
            lblTeam111.Text = dt.Rows[row]["team11"].ToString();
            row++;
        }
        catch (IndexOutOfRangeException ex)
        {
            //Hide panels and disable next button if no record at current row
            if (lblName1.Text == "")
            {
                panel1.Visible = false;
                panel2.Visible = false;
            }
            if (lblName2.Text == "")
            {
                panel2.Visible = false;
            }
            btnNext.Enabled = false;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        if (tournament == null)
        {
            Response.Redirect(string.Format("~/Content/tournament.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/tournament.aspx?row={0}&tournament={1}", row, tournament));
        }
    }
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        //Go 4 rows back in datatable
        row = row - 4;
        //Row can't be in negative
        if (row < 0)
            row = 0;
        if (tournament == null)
        {
            Response.Redirect(string.Format("~/Content/Tournament.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Tournament.aspx?row={0}&tournament={1}", row, tournament));
        }
    }
}