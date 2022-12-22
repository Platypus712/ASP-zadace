using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV6_Primjer1_Primjer2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            mojKalendar.SelectedDate = DateTime.Now.Date;
            lblKalendar.Text = mojKalendar.SelectedDate.ToShortDateString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["indeks"] == "0")
            {
                this.MultiView1.ActiveViewIndex = 0;
            }
            else if (Request.QueryString["indeks"] == "1")
            {
                this.MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                this.MultiView1.ActiveViewIndex = -1;
            }
        }

        protected void btnZbrajanje_Click(object sender, EventArgs e)
        {
            double prviBroj = Convert.ToDouble(txtPrviUnos.Text);
            double drugiBroj = Convert.ToDouble(txtDrugiUnos.Text);
            double rezultat = prviBroj + drugiBroj;
            this.lblResult.Text = rezultat.ToString();
        }

        protected void mojKalendar_SelectionChanged(object sender, EventArgs e)
        {
            lblKalendar.Text = mojKalendar.SelectedDate.ToShortDateString();
        }
    }
}