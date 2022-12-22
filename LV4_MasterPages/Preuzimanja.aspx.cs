using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV4_MasterPages
{
    public partial class Preuzimanja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                int id;
                string file = string.Empty;
                int.TryParse(Request.QueryString["id"], out id);

                if (id > 0 && id < 4)
                {
                    switch (id)
                    {
                        case 1:
                            file = "10.2.jpg";
                            break;
                        case 2:
                            file = "14.4.jpg";
                            break;
                        case 3:
                            file = "7.4.jpg";
                            break;
                        default:
                            break;
                    }
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + file + "\"");
                    Response.TransmitFile(Server.MapPath("~/Dokumenti") + "\\" + file);
                    Response.End();
                }
            }
        }
    }
}