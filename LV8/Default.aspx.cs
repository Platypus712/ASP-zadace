using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV8
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblBrowser.Text = Request.Browser.Browser;

            if (Request.Browser.Cookies == true)
            {
                this.lblCookies.Text = "Ovaj preglednik podržava kolačiće!";
            }
            else
            {
                this.lblCookies.Text = "Ovaj preglednik ne podržava kolačiće!";
            }
        }

        protected void btnPosalji_Click(object sender, EventArgs e)
        {
            Response.Cookies["Input"].Value = this.txtUnos.Text;
            Response.Cookies["Input"].Expires = DateTime.Now.AddDays(1);
            this.txtUnos.Text = string.Empty;

        }

        protected void btnIspis_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Input"] != null)
            {
                this.lblIspis.Text = Server.HtmlEncode(Request.Cookies["Input"].Value);
            }
            else
            {
                this.lblIspis.Text = string.Empty;
            }
        }

        protected void btnObrisi_Click(object sender, EventArgs e)
        {
            Response.Cookies["Input"].Expires = DateTime.Now.AddDays(-1);
        }
    }
}