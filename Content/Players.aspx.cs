using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_Players : System.Web.UI.Page
{
    SqlConnection con;
    int row = 0;
    string player;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Recieving the query string from the browser url
        row = Convert.ToInt32(Request.QueryString["row"]);
        player = Request.QueryString["player"];

        //disable prevous button if 0th or no record found
        if(row < 1)  
            btnPrevious.Enabled = false;

        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query;
        if (player == null)
        {
            query = "SELECT * FROM players";
        }
        else
        {
            lblPageName.Text = "Player search results for \"" + player + "\"";
            Page.Title = "Players Search | " + player;
            query = string.Format("SELECT * FROM players WHERE player_name LIKE '%{0}%'", player);
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Catch the exception if row is empty for a specific query
        try
        {
            //Fetching data from db
            lblPlayerName0.Text = dt.Rows[row]["player_name"].ToString();
            lblMatches0.Text = dt.Rows[row]["matches_played"].ToString();
            lblRuns0.Text = dt.Rows[row]["runs_scored"].ToString();
            lblWicket0.Text = dt.Rows[row]["wicket_taken"].ToString();
            ImageButton0.ImageUrl = dt.Rows[row]["image"].ToString();
            ImageButton0.PostBackUrl = @"~/Content/PlayerPage.aspx?player="+ dt.Rows[row]["player_id"].ToString();
            row++;

            lblPlayerName1.Text = dt.Rows[row]["player_name"].ToString();
            lblMatches1.Text = dt.Rows[row]["matches_played"].ToString();
            lblRuns1.Text = dt.Rows[row]["runs_scored"].ToString();
            lblWicket1.Text = dt.Rows[row]["wicket_taken"].ToString();
            ImageButton1.ImageUrl = dt.Rows[row]["image"].ToString();
            ImageButton1.PostBackUrl = @"~/Content/PlayerPage.aspx?player=" + dt.Rows[row]["player_id"].ToString();
            row++;

            lblPlayerName2.Text = dt.Rows[row]["player_name"].ToString();
            lblMatches2.Text = dt.Rows[row]["matches_played"].ToString();
            lblRuns2.Text = dt.Rows[row]["runs_scored"].ToString();
            lblWicket2.Text = dt.Rows[row]["wicket_taken"].ToString();
            ImageButton2.ImageUrl = dt.Rows[row]["image"].ToString();
            ImageButton2.PostBackUrl = @"~/Content/PlayerPage.aspx?player=" + dt.Rows[row]["player_id"].ToString();
            row++;

            lblPlayerName3.Text = dt.Rows[row]["player_name"].ToString();
            lblMatches3.Text = dt.Rows[row]["matches_played"].ToString();
            lblRuns3.Text = dt.Rows[row]["runs_scored"].ToString();
            lblWicket3.Text = dt.Rows[row]["wicket_taken"].ToString();
            ImageButton3.ImageUrl = dt.Rows[row]["image"].ToString();
            ImageButton3.PostBackUrl = @"~/Content/PlayerPage.aspx?player=" + dt.Rows[row]["player_id"].ToString();
            row++;
        }
        catch (IndexOutOfRangeException ex)
        {
            //Hide panels when index goes out of range i.e. if no record found
            if (lblPlayerName0.Text == "")
            {
                Panel2.Visible = false;
                Panel1.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            if (lblPlayerName1.Text == "")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            else if (lblPlayerName2.Text == "")
            {
                Panel3.Visible = false;
                Panel4.Visible = false;
            }
            else if (lblPlayerName3.Text == "")
            {
                Panel4.Visible = false;
            }
            btnNext.Enabled = false;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        if (player == null)
        {
            Response.Redirect(string.Format("~/Content/Players.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Players.aspx?row={0}&player={1}", row, player));
        }
    }
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        //Set row to 8 records back
        row = row - 8;
        //Row can't be in negative
        if (row < 0)
            row = 0;
        if (player == null)
        {
            Response.Redirect(string.Format("~/Content/Players.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Players.aspx?row={0}&player={1}", row, player));
        }
    }
}