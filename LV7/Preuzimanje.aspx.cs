using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV7
{
    public partial class Preuzimanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string put = Server.MapPath("~/Uploads");
            DirectoryInfo mapa = new DirectoryInfo(put);
            FileInfo[] datoteke = mapa.GetFiles();

            for (int i = 0; i < datoteke.Length; i++)
            {
                TableRow red = new TableRow();
                TableCell celija = new TableCell();
                HyperLink veza = new HyperLink();
                veza.ID = "Veza" + i;
                veza.NavigateUrl = "~/Downloads.aspx?Name=" + datoteke[i].Name;
                veza.Text = datoteke[i].Name;
                celija.Controls.Add(veza);
                red.Controls.Add(celija);
                this.t1.Rows.Add(red);

            }
        }

        protected void btnPovratak_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}