using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Zadatak_2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                Response.Redirect("~/UspjesnaPrijava.aspx");
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            var user = ConfigurationManager.AppSettings["user"];
            var pass = ConfigurationManager.AppSettings["password"];
            var loggedInUser = Login1.UserName;
            var loggedInPass = Login1.Password;
            if (pass == loggedInPass && user == loggedInUser)
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }
        }
    }
}