using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_PlayerPage : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Get player query from the URL
        string player = Request.QueryString["player"]; 
        //Check if it has any value
        if (player == null)
            Response.Redirect("~/Content/Players.aspx");

        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query = "SELECT * FROM players WHERE player_id=" + player;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Fill in player details in the page.
            lblPlayerName.Text = dt.Rows[0]["player_name"].ToString();
            lblInnings.Text = dt.Rows[0]["innings"].ToString();
            lblPlayed.Text = dt.Rows[0]["matches_played"].ToString();
            lblBalls.Text = dt.Rows[0]["balls_faced"].ToString();
            lblRuns.Text = dt.Rows[0]["runs_scored"].ToString();
            lblSix.Text = dt.Rows[0]["six_scored"].ToString();
            lblFour.Text = dt.Rows[0]["four_scored"].ToString();
            lblOver.Text = dt.Rows[0]["over_bowled"].ToString();
            lblWicket.Text = dt.Rows[0]["wicket_taken"].ToString();
            imgPlayer.ImageUrl = dt.Rows[0]["image"].ToString();

            //Check if bio is null or not
            if (string.IsNullOrEmpty(dt.Rows[0]["bio"].ToString()))
                lblBio.Text = "Not available";
            else
                lblBio.Text = dt.Rows[0]["bio"].ToString();

            //Setting page title
            Page.Title = dt.Rows[0]["player_name"].ToString() + " | Player page";
        }
        catch (Exception ex)
        {
            lblPlayerName.Text = "A database error has occured";
        }
    }
}