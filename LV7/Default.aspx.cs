using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV7
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPrijenos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Prijenos.aspx");
        }

        protected void btnPreuzimanje_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Preuzimanje.aspx");
        }

        protected void btnIspis_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Ispis.aspx");
        }

        protected void btnIpisAboutMe_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IspisAboutMe.aspx");
        }
    }
}