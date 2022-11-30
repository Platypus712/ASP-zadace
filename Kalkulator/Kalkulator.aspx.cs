using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kalkulator
{
    public partial class Kalkulator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var datum = DateTime.Now;
            this.lblDatum.Text = datum.ToString();
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

        protected void btnSin_Click(object sender, EventArgs e)
        {
            double prviBrojNapredni = Convert.ToDouble(txtNapOpcije.Text);
            double rezultatNapredni = Math.Sin(prviBrojNapredni);
            this.lblRezultatNapredni.Text = rezultatNapredni.ToString();
        }

        protected void btnCos_Click(object sender, EventArgs e)
        {
            double prviBrojNapredni = Convert.ToDouble(txtNapOpcije.Text);
            double rezultatNapredni = Math.Cos(prviBrojNapredni);
            this.lblRezultatNapredni.Text = rezultatNapredni.ToString();
        }

        protected void btnTan_Click(object sender, EventArgs e)
        {
            double prviBrojNapredni = Convert.ToDouble(txtNapOpcije.Text);
            double rezultatNapredni = Math.Tan(prviBrojNapredni);
            this.lblRezultatNapredni.Text = rezultatNapredni.ToString();
        }

        protected void btnCot_Click(object sender, EventArgs e)
        {
            double prviBrojNapredni = Convert.ToDouble(txtNapOpcije.Text);
            double rezultatNapredni = 1 / Math.Tan(prviBrojNapredni);
            this.lblRezultatNapredni.Text = rezultatNapredni.ToString();
        }

        protected void btnTablicaMnozenja_Click(object sender, EventArgs e)
        {
            for (int i = 0; i <= 10; i++)
            {
                for (int j = 0; j <= 10; j++)
                {

                    if (i == 0)
                    {
                        lblTablicaMnozenja.Text += (j);

                    }
                    else
                    {
                        if (j == 0)
                        {
                            lblTablicaMnozenja.Text += (i);

                        }
                        else
                        {
                            lblTablicaMnozenja.Text += (i * j);

                        }
                    }

                }
                lblTablicaMnozenja.Text += ("\n<br />");
            }
        }
    }
}