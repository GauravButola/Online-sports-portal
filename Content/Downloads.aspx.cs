using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_Downloads : System.Web.UI.Page
{
    SqlConnection con;
    int row = 0;
    string download;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Recieving the query string from the browser URL
        row = Convert.ToInt32(Request.QueryString["row"]);
        download = Request.QueryString["download"];

        //If there's only one initial record, disable the previous button
        if(row < 1)  
            btnPrevious.Enabled = false;

        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query;
        //If search query for download is found in the URL go to else part otherwise
        //get all the rows from the download table
        if (download == null)
        {
            query = "SELECT * FROM downloads";
        }
        else
        {
            //Set page's label to current search term
            lblPageName.Text = "Downloads search results for \"" + download + "\"";
            //Change page title to the search term user is looking up
            Page.Title = "downloads Search | " + download;
            query = string.Format("SELECT * FROM downloads WHERE picture_name LIKE '%{0}%'", download);
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Catch the exception if row is empty for a specific query
        try
        {
            //Fetching data in the page control properties
            lblName1.Text = dt.Rows[row]["picture_name"].ToString();
            imgDownload1.ImageUrl = dt.Rows[row]["picture_path"].ToString();
            imgDownload1.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName1.Text);
            lnkDownload1.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName1.Text);
            row++;

            lblName2.Text = dt.Rows[row]["picture_name"].ToString();
            imgDownload2.ImageUrl = dt.Rows[row]["picture_path"].ToString();
            imgDownload2.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName2.Text);
            lnkDownload2.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName2.Text);
            row++;

            lblName3.Text = dt.Rows[row]["picture_name"].ToString();
            imgDownload3.ImageUrl = dt.Rows[row]["picture_path"].ToString();
            imgDownload3.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName3.Text);
            lnkDownload3.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName3.Text);
            row++;

            lblName4.Text = dt.Rows[row]["picture_name"].ToString();
            imgDownload4.ImageUrl = dt.Rows[row]["picture_path"].ToString();
            imgDownload4.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName4.Text);
            lnkDownload4.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName4.Text);
            row++;

            lblName5.Text = dt.Rows[row]["picture_name"].ToString();
            imgDownload5.ImageUrl = dt.Rows[row]["picture_path"].ToString();
            imgDownload5.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName5.Text);
            lnkDownload5.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName5.Text);
            row++;

            lblName6.Text = dt.Rows[row]["picture_name"].ToString();
            imgDownload6.ImageUrl = dt.Rows[row]["picture_path"].ToString();
            imgDownload6.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName6.Text);
            lnkDownload6.PostBackUrl = string.Format("~/Content/DownloadNow.aspx?FileName={0}", lblName6.Text);
            row++;
        }
        catch (IndexOutOfRangeException ex)
        {
            //If exception is caught, there are no results, so hide the redundant panels
            if (lblName1.Text == "")
            {
                Panel2.Visible = false;
                Panel1.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
            }
            if (lblName2.Text == "")
            {
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
            }
            else if (lblName3.Text == "")
            {
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
            }
            else if (lblName4.Text == "")
            {
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
            }
            else if (lblName5.Text == "")
            {
                Panel5.Visible = false;
                Panel6.Visible = false;
            }
            else if (lblName6.Text == "")
            {
                Panel6.Visible = false;
            }
            //No further records found, so disable next button
            btnNext.Enabled = false;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        //If search term is not found, get all data else only searched part
        if (download == null)
        {
            Response.Redirect(string.Format("~/Content/Downloads.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Downloads.aspx?row={0}&download={1}", row, download));
        }
    }
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        row = row - 12;
        //row can't be less tha 0
        if (row < 0)
            row = 0;
        //If search term is not found, get all data else only searched part
        if (download == null)
        {
            Response.Redirect(string.Format("~/Content/Downloads.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/Downloads.aspx?row={0}&download={1}", row, download));
        }
    }
}