using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for BookingService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class BookingService : System.Web.Services.WebService {

    public BookingService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }
    SqlConnection con;
    [WebMethod]
    public bool CheckCard(string card, string cvv)
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
        con.Open();
        string query = string.Format("SELECT * FROM bank WHERE card_no='{0}' AND cvv='{1}'", card, cvv);
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
            return false;
        else
            return true;
    }
    
}
