using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV7
{
    public partial class Prijenos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPovratak_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

        protected void btnPosalji_Click(object sender, EventArgs e)
        {
            string success = "Uspješno ste prenijeli datoteku!!";
            string fail = "Neuspješan pokušaj prijenosa datoteke!!";
            try
            {
                string put = Server.MapPath("~/Uploads");
                string ime = fu1.FileName;
                string odrediste = put + "\\" + ime;
                fu1.SaveAs(odrediste);
                this.lblStatus.Text = success;
            }
            catch (Exception)
            {
                this.lblStatus.Text = fail;
                throw;
            }

        }
    }
}