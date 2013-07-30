using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_News : System.Web.UI.Page
{
    SqlConnection con;
    int row = 0;
    string news;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Recieving the query string from the browser url
        row = Convert.ToInt32(Request.QueryString["row"]);
        news = Request.QueryString["news"];

        //Disable previous button if 0th or no record found
        if (row < 1)
            btnPrevious.Enabled = false;

        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();

        string query;
        if (news == null)
        {
            query = "SELECT * FROM news ORDER BY news_date DESC";
        }
        else
        {
            lblPageName.Text = "News & Updates search results for \"" + news + "\"";
            Page.Title = "News search | " + news;
            query = string.Format("SELECT * FROM news WHERE description LIKE '%{0}%' ORDER BY news_date DESC", news);
        }
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        //Catch the exception if row is empty for a specific query
        try
        {
            //Fetching data in the page from db
            lnkNewsTitle1.Text = dt.Rows[row]["news_title"].ToString();
            lnkNewsTitle1.PostBackUrl = "~/Content/NewsPage.aspx?NewsId=" + dt.Rows[row]["news_id"].ToString();
            lblQuery1.Text = dt.Rows[row]["news_id"].ToString();
            //Cutting down the text to make it excerpt of the news
            lblNews1.Text = dt.Rows[row]["description"].ToString().Substring(0,190) + "[...]";
            row++;

            lnkNewsTitle2.Text = dt.Rows[row]["news_title"].ToString();
            lnkNewsTitle2.PostBackUrl = "~/Content/NewsPage.aspx?NewsId=" + dt.Rows[row]["news_id"].ToString();
            lblQuery2.Text = dt.Rows[row]["news_id"].ToString();
            //Cutting down the text to make it excerpt of the news
            lblNews2.Text = dt.Rows[row]["description"].ToString().Substring(0, 190) + "[...]";
            row++;

            lnkNewsTitle3.Text = dt.Rows[row]["news_title"].ToString();
            lnkNewsTitle3.PostBackUrl = "~/Content/NewsPage.aspx?NewsId=" + dt.Rows[row]["news_id"].ToString();
            lblQuery3.Text = dt.Rows[row]["news_id"].ToString();
            //Cutting down the text to make it excerpt of the news
            lblNews3.Text = dt.Rows[row]["description"].ToString().Substring(0, 190) + "[...]";
            row++;
        }
        catch(IndexOutOfRangeException ex)
        {
            //Hide panels if no data found
            if (lnkNewsTitle2.Text == "")
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }
            if (lnkNewsTitle3.Text == "")
            {
                Panel3.Visible = false;
            }
            btnNext.Enabled = false;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        if (news == null)
        {
            Response.Redirect(string.Format("~/Content/News.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/News.aspx?row={0}&news={1}", row, news));
        }
    }
    protected void btnPrevious_Click(object sender, EventArgs e)
    {
        //Go 6 records back on prevous button click
        row = row - 6;
        //Record can't be in negative
        if (row < 0)
            row = 0;
        if (news == null)
        {
            Response.Redirect(string.Format("~/Content/News.aspx?row={0}", row));
        }
        else
        {
            Response.Redirect(string.Format("~/Content/News.aspx?row={0}&{1}", row, news));
        }
    }
}