using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_UpdatePlayers : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAddPlayer_Click(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();


            //Check if all fields are filled
            if (txtPlayerName.Text.Trim() == "" || txtMatchesPlayed.Text.Trim() == "" || txtInnings.Text.Trim() == "" || txtBallsFaced.Text.Trim() == "" || txtRunsScored.Text.Trim() == "" || txtFourScored.Text.Trim() == "" || txtSixScored.Text.Trim() == "" || txtOverBowled.Text.Trim() == "" || txtWicketTaken.Text.Trim() == "")
            {
                lblError.Text = "Please fill all given fields";
            }
            else
            {
                string query;
                //Remove error
                lblError.Text = "";

                //Setting path to store player image\
                string imagePath = @"~/site_image_data/players/" + FileUpload1.FileName;
                if (FileUpload1.HasFile)
                {
                    //Save player Image
                    FileUpload1.SaveAs(Server.MapPath(imagePath));
                }
                else
                {
                    imagePath = @"~/site_image_data/players/no_image.jpg";
                }

                //Building the SQL query string
                query = string.Format("INSERT INTO players VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')", txtPlayerName.Text, txtMatchesPlayed.Text, txtInnings.Text, txtBallsFaced.Text, txtRunsScored.Text, txtSixScored.Text, txtFourScored.Text, txtOverBowled.Text, txtWicketTaken.Text, imagePath, txtPlayerBio.Text.Replace("'","''"));
                //Executing the query;
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                lblError.Text = "Record successfully uploaded";

                //Clearing text fields
                txtPlayerName.Text = "";
                txtMatchesPlayed.Text = "";
                txtInnings.Text = "";
                txtBallsFaced.Text = "";
                txtRunsScored.Text = "";
                txtSixScored.Text = "";
                txtFourScored.Text = "";
                txtOverBowled.Text = "";
                txtWicketTaken.Text = "";
                txtPlayerBio.Text = "";
            }
        }
        catch (Exception ex)
        {
            //Print the error if db error occurs
            lblError.Text = "A database error has occured";
        }
    }
}