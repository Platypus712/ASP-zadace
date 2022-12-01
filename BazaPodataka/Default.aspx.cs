using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace BazaPodataka
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection bazaStudenti = new SqlConnection(ConfigurationManager.ConnectionStrings["Studenti"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            bazaStudenti.Open();
        }

        protected void btnNoviStudent_Click(object sender, EventArgs e)
        {
            SqlCommand insertCommand =
                new SqlCommand("insert into Student values('"+txtId.Text+ "', '" +txtIme.Text+ "', '" +txtPrezime.Text+ "', '" + txtJMBAG.Text + "', '" + txtKontakt.Text + "')", bazaStudenti);
            insertCommand.ExecuteNonQuery();
            bazaStudenti.Close();
            lblUspjeh.Text = "Uspješno ste dodali studenta u bazu!";
            GridView1.DataBind();   
            txtId.Text = "";
            txtIme.Text = "";
            txtPrezime.Text = "";
            txtJMBAG.Text = "";
            txtKontakt.Text = "";
        }
    }
}