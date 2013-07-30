using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_DownloadNow : System.Web.UI.Page
{
    SqlConnection con;
    string fileName;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Getting File's name from the browser URL
        fileName = Request.QueryString["fileName"];
        try
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();

            string query = string.Format("SELECT * FROM downloads WHERE picture_name='{0}'", fileName);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            imgDownload.ImageUrl = dt.Rows[0]["picture_path"].ToString();
            //Set Page name
            Page.Title = dt.Rows[0]["picture_name"].ToString();
        }
        catch (Exception ex)
        {
            //Print the error if db error occurs
            lblError.Text = "A database error has occured";
        }
    }
    protected void lnkStartDownload_Click(object sender, EventArgs e)
    {
        string fpath = Server.MapPath("~/site_image_data/downloads/" + fileName);
        //Setting file in open mode
        FileStream fs = new FileStream(fpath, FileMode.Open);
        Response.ContentType = "application/octet-steam";
        //Calculating file size
        long filesize = fs.Length;
        Response.AppendHeader("content-disposition", "attachment; filename=" + fileName);
        fs.Close();
        Response.AddHeader("content-length", filesize.ToString());
        Response.WriteFile(fpath); 
        Response.Flush();
    }
}