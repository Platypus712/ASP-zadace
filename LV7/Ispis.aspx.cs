using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV7
{
    public partial class Ispis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.txtPodaciOPregledniku.Text = "Type= " + Request.Browser.Type + "\n"
                + "Name= " + Request.Browser.Browser + "\n"
                + "Version= " + Request.Browser.Version + "\n"
                + "Is Beta= " + Request.Browser.Beta + "\n"
                + "Supprots Frames= " + Request.Browser.Frames + "\n"
                + "Supports Tables= " + Request.Browser.Tables + "\n"
                + "Supports Cookies= " + Request.Browser.Cookies + "\n"
                + "Supports JavaScript= " + Request.Browser.EcmaScriptVersion.ToString();
        }

        protected void btnPovratak_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}