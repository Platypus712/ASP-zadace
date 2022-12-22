using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV6
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            mojKalendar.SelectedDate = DateTime.Now.Date;
            lblKalendar.Text = "<br><strong>Današnji dan:</strong> " + mojKalendar.SelectedDate.ToShortDateString();
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
            }else if (Request.QueryString["indeks"] == "2")
            {
                this.MultiView1.ActiveViewIndex = 2;
            }else if (Request.QueryString["indeks"] == "3")
            {
                this.MultiView1.ActiveViewIndex = 3;
            }else if (Request.QueryString["indeks"] == "4")
            {
                this.MultiView1.ActiveViewIndex = 4;
            }else if (Request.QueryString["indeks"] == "5")
            {
                this.MultiView1.ActiveViewIndex = 5;
            }else if (Request.QueryString["indeks"] == "6")
            {
                this.MultiView1.ActiveViewIndex = 6;
            }
            else
            {
                this.MultiView1.ActiveViewIndex = -1;
            }

            if (Request.QueryString["indeks"] == "6")
            {
                string put = Server.MapPath("~/Prenesene_datoteke");
                DirectoryInfo mapa = new DirectoryInfo(put);
                FileInfo[] datoteke = mapa.GetFiles();

                for (int i = 0; i < datoteke.Length; i++)
                {
                    TableRow red = new TableRow();
                    TableCell celija = new TableCell();
                    HyperLink veza = new HyperLink();
                    veza.ID = "Veza" + i;
                    veza.NavigateUrl = "~/Main.aspx?indeks=6&Name=" + datoteke[i].Name;
                    veza.Text = datoteke[i].Name;
                    celija.Controls.Add(veza);
                    red.Controls.Add(celija);
                    this.t1.Rows.Add(red);

                }

                if (Request.QueryString["Name"] != null)
                {
                    string ime = Request.QueryString["Name"].ToString();

                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + ime + "\"");
                    Response.TransmitFile(Server.MapPath("~/Prenesene_datoteke") + "\\" + ime);
                    Response.End();
                }


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

        protected void mojKalendar_SelectionChanged(object sender, EventArgs e)
        {

        }


        protected void btnPrenesi_Click1(object sender, EventArgs e)
        {
            string success = "Uspješno ste prenijeli datoteku!!";
            string fail = "Neuspješan pokušaj prijenosa datoteke!!";
            try
            {
                string putanja = Server.MapPath("~/Prenesene_datoteke");
                string nazivDatoteke = fileUpload1.FileName;
                string odrediste = putanja + "\\" + nazivDatoteke;
                fileUpload1.SaveAs(odrediste);
                this.lblPrijenos.Text = success;
            }
            catch (Exception)
            {
                this.lblPrijenos.Text = fail;
                throw;
            }
        }
    }
}