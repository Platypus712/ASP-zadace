using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV7
{
    public partial class Downloads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ime = Request.QueryString["Name"].ToString();

            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "attachment;filename=\"" + ime + "\"");
            Response.TransmitFile(Server.MapPath("~/Uploads") + "\\" + ime);
            Response.End();
        }
    }
}