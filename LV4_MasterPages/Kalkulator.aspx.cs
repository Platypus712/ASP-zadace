using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV4_MasterPages
{
    public partial class Kalkulator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == false)
            {
                Response.Redirect("~/Main.aspx");
            }
        }

        protected void btnZbrajanje_Click(object sender, EventArgs e)
        {
            double prviBroj = Convert.ToDouble(txtPrviUnos.Text);
            double drugiBroj = Convert.ToDouble(txtDrugiUnos.Text);
            double rezultat = prviBroj + drugiBroj;
            this.lblResult.Text = rezultat.ToString();
        }

        protected void btnOduzimanje_Click(object sender, EventArgs e)
        {
            double prviBroj = Convert.ToDouble(txtPrviUnos.Text);
            double drugiBroj = Convert.ToDouble(txtDrugiUnos.Text);
            double rezultat = prviBroj - drugiBroj;
            this.lblResult.Text = rezultat.ToString();
        }

        protected void btnMnoženje_Click(object sender, EventArgs e)
        {
            double prviBroj = Convert.ToDouble(txtPrviUnos.Text);
            double drugiBroj = Convert.ToDouble(txtDrugiUnos.Text);
            double rezultat = prviBroj * drugiBroj;
            this.lblResult.Text = rezultat.ToString();
        }

        protected void btnDijeljenje_Click(object sender, EventArgs e)
        {
            double prviBroj = Convert.ToDouble(txtPrviUnos.Text);
            double drugiBroj = Convert.ToDouble(txtDrugiUnos.Text);
            double rezultat = prviBroj / drugiBroj;
            this.lblResult.Text = rezultat.ToString();
        }
    }
}