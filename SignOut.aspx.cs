﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Closing the user session and redirecting to the homepage
        Session.Abandon();
        Response.Redirect("Home.aspx");
    }
}