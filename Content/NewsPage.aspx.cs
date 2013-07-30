using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Content_NewsPage : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int news_id = Convert.ToInt32(Request.QueryString["NewsId"].ToString());
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            con.Open();
            string query = string.Format("SELECT * FROM news WHERE news_id='{0}'", news_id);
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            //Use news title as page title
            Page.Title = dt.Rows[0]["news_title"].ToString();

            //fetching data from row
            lblNewsTitle.Text = dt.Rows[0]["news_title"].ToString();
            lblWriter.Text = dt.Rows[0]["news_writer"].ToString();
            //Convert data to datetime and get only date part
            lblDate.Text = Convert.ToDateTime(dt.Rows[0]["news_date"].ToString()).ToString("dd-MM-yyyy");
            lblDescription.Text = dt.Rows[0]["description"].ToString();
        }
        catch (Exception ex)
        {
            lblNewsTitle.Text = "Database error occured";
        }
    }
}