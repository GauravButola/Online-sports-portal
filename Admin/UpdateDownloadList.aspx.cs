using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Admin_DownloadInventory : System.Web.UI.Page
{
    SqlConnection con;
    protected void buttonUpload_Click(object sender, EventArgs e)
    {
        //Catch exception if no file is chosen by the user
        try
        {
            lblMessage.Text = "";
            //Save the file on server's downloads folder kepping the original filename
            FileUpload1.SaveAs(Server.MapPath(@"~/site_image_data/downloads/" + FileUpload1.FileName));

            //Get filesize
            int fileSize = FileUpload1.PostedFile.ContentLength;

            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query = string.Format("INSERT INTO downloads VALUES('{0}','{1}','{2}')", FileUpload1.FileName, fileSize, @"~\site_image_data\downloads\" + FileUpload1.FileName);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Setting message and showing the uploaded picture
            lblMessage.Text = "Image successfully uploaded";
            imgUpload.ImageUrl = @"~\site_image_data\downloads\" + FileUpload1.FileName;
            Panel2.Visible = true;
        }
        catch (System.IO.DirectoryNotFoundException ex)
        {
            lblMessage.Text = "Select a file first.";
        }
    }
}