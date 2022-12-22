using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LV4_MasterPages
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated == true)
            {
                Response.Redirect("~/Kalkulator.aspx");
            }
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string loginIme = this.Login1.UserName;
            string loginLozinka = this.Login1.Password;
            string bazaIme = string.Empty;
            string bazaLozinka = string.Empty;

            if (!string.IsNullOrEmpty(loginIme) && !string.IsNullOrEmpty(loginLozinka))
            {
                string konekcija = ConfigurationManager.ConnectionStrings["konekcija"].ToString();
                SqlConnection prvaKonekcija = new SqlConnection(konekcija);
                prvaKonekcija.Open();
                SqlCommand naredbaSelect = new SqlCommand();
                naredbaSelect.Connection = prvaKonekcija;
                naredbaSelect.CommandType = System.Data.CommandType.Text;
                naredbaSelect.CommandText = "select * from registrirani_korisnici where Ime = @ime and Lozinka = @lozinka";
                naredbaSelect.Parameters.AddWithValue("@ime", loginIme);
                naredbaSelect.Parameters.AddWithValue("@lozinka", loginLozinka);

                SqlDataReader citanjeIzBaze = naredbaSelect.ExecuteReader();

                while (citanjeIzBaze.Read())
                {
                    bazaIme = citanjeIzBaze["Ime"].ToString();
                    bazaLozinka = citanjeIzBaze["Lozinka"].ToString();
                }

                citanjeIzBaze.Close();
                prvaKonekcija.Close();

                if (loginIme == bazaIme && loginLozinka == bazaLozinka)
                {
                    e.Authenticated = true;
                }
                else
                {
                    e.Authenticated = false;
                }
            }
            else
            {
                e.Authenticated = false;
            }
        }

        protected void CreateUserWizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            string ime = this.CreateUserWizard1.UserName;
            string lozinka = this.CreateUserWizard1.Password;
            string email = this.CreateUserWizard1.Email;

            if (!string.IsNullOrEmpty(ime) && !string.IsNullOrEmpty(lozinka))
            {
                string konekcija = ConfigurationManager.ConnectionStrings["konekcija"].ToString();
                SqlConnection drugaKonekcija = new SqlConnection(konekcija);
                drugaKonekcija.Open();
                SqlCommand naredbaInsert = new SqlCommand();
                naredbaInsert.Connection = drugaKonekcija;
                naredbaInsert.CommandType = System.Data.CommandType.Text;
                naredbaInsert.CommandText = "insert into registrirani_korisnici(Id, Ime, Email, Lozinka) values(@id, @ime, @email, @lozinka)";
                naredbaInsert.Parameters.AddWithValue("@id", 1);
                naredbaInsert.Parameters.AddWithValue("@ime", ime);
                naredbaInsert.Parameters.AddWithValue("@email", email);
                naredbaInsert.Parameters.AddWithValue("@lozinka", lozinka);

                int uspjesan_unos = naredbaInsert.ExecuteNonQuery();
                drugaKonekcija.Close();

                if (uspjesan_unos == 1)
                {
                    e.Cancel = false;
                }
                else
                {
                    e.Cancel = true;
                }
            }
            else
            {
                e.Cancel = false;
            }
        }
    }
}