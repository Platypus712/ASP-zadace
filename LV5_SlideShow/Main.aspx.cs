using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV5_SlideShow
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                postaviUrlSlike();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            postaviUrlSlike();
        }

        private void postaviUrlSlike()
        {
            if (ViewState["trenutnaSlika"] == null)
            {
                Image1.ImageUrl = "~/Pictures/1.jpg";
                ViewState["trenutnaSlika"] = 1;
                lblOpisSlike.Text = "Prikazuje se slika 1.jpg";
            }
            else
            {
                int brojSlike = (int)ViewState["trenutnaSlika"];
                if (brojSlike == 15)
                {
                    Image1.ImageUrl = "~/Pictures/1.jpg";
                    ViewState["trenutnaSlika"] = 1;
                    lblOpisSlike.Text = "Prikazuje se slika 1.jpg";
                }
                else
                {
                    brojSlike++;
                    Image1.ImageUrl = "~/Pictures/" + brojSlike.ToString() + ".jpg";
                    ViewState["trenutnaSlika"] = brojSlike;
                    lblOpisSlike.Text = "Prikazuje se slika: " + brojSlike + ".jpg";
                }
            }
            
        }
    }
}