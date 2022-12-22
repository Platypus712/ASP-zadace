<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LV6.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlJednostavniKalkulator" runat="server"
                NavigateUrl="~/Main.aspx?indeks=0">Jednostavni kalkulator</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="hlNapredniKalkulator" runat="server"
                NavigateUrl="~/Main.aspx?indeks=1">Napredni kalkulator</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="hlTablicaMnozenja" runat="server"
                NavigateUrl="~/Main.aspx?indeks=2">Tablica množenja</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="hlAbout" runat="server"
                NavigateUrl="~/Main.aspx?indeks=3">Podaci o autoru</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="hlKalendar" runat="server"
                NavigateUrl="~/Main.aspx?indeks=4">Kalendar</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="hlUpload" runat="server"
                NavigateUrl="~/Main.aspx?indeks=5">Prijenos</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="hlDownload" runat="server"
                NavigateUrl="~/Main.aspx?indeks=6">Preuzimanje</asp:HyperLink>
            <br />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="viewJednostavniKalkulator" runat="server">
                    <h3>Jednostavni kalkulator</h3>
                    Unesite prvi broj:
                    <asp:TextBox ID="txtPrviUnos" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Unesite drugi broj:
                    <asp:TextBox ID="txtDrugiUnos" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Odaberi računsku operaciju od ponuđenih
                    <br />
                    <asp:Button ID="btnZbrajanje" runat="server" Text="+" OnClick="btnZbrajanje_Click" />
                    &nbsp
                    <asp:Button ID="btnOduzimanje" runat="server" Text="-" OnClick="btnOduzimanje_Click" />
                    &nbsp
                    <asp:Button ID="btnMnoženje" runat="server" Text="*" OnClick="btnMnoženje_Click" />
                    &nbsp
                    <asp:Button ID="btnDijeljenje" runat="server" Text="%" OnClick="btnDijeljenje_Click" />
                    <br />
                    <br />
                    Rezultat: 
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </asp:View>
                <asp:View ID="viewNapredniKalkulator" runat="server">
                    <h3>Naprednije opcije kalkulatora</h3>
                    Unesi broj:
                    <asp:TextBox ID="txtNapOpcije" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Odaberi operaciju
                    <br />
                    <asp:Button ID="btnSin" runat="server" Text="Sin()" OnClick="btnSin_Click" />
                    &nbsp
                    <asp:Button ID="btnCos" runat="server" Text="Cos()" OnClick="btnCos_Click" />
                    &nbsp
                    <asp:Button ID="btnTan" runat="server" Text="Tan()" OnClick="btnTan_Click" />
                    &nbsp
                    <asp:Button ID="btnCot" runat="server" Text="Cot()" OnClick="btnCot_Click" />
                    <br />
                    <br />
                    Rezultat:
                    <asp:Label ID="lblRezultatNapredni" runat="server"></asp:Label>
                </asp:View>
                <asp:View ID="viewTablicaMnozenja" runat="server">
                    <h3>Ispis tablice množenja do 10</h3>
                    <asp:Button ID="btnTablicaMnozenja" runat="server" Text="Klikni za ispis tablice!"
                        OnClick="btnTablicaMnozenja_Click" />
                    <br />
                    <br />
                    <asp:Label ID="lblTablicaMnozenja" runat="server"></asp:Label>
                </asp:View>
                <asp:View ID="viewAbout" runat="server">
                    <h3>Podaci o autoru</h3>
                    <p>Ime: Nikola</p>
                    <p>Prezime: Pustišek</p>
                    <p>Adresa: Jaroslava Šidaka 8</p>
                    <p>JMBAG: 77220395</p>
                    <p>Mjesto rođenja: Zagreb</p>
                    <p>Država rođenja: Hrvatska</p>
                </asp:View>
                <asp:View ID="ViewKalendar" runat="server">
                    <h3>Kalendar</h3>
                    <asp:Calendar ID="mojKalendar" runat="server"></asp:Calendar>
                    <asp:Label ID="lblKalendar" runat="server"></asp:Label>
                </asp:View>
                <asp:View ID="viewUpload" runat="server">
                    <h3>Prenesite vaše dokumente</h3>
                    <asp:FileUpload ID="fileUpload1" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="Kriva datoteka!" ControlToValidate="fileUpload1">
                    </asp:RequiredFieldValidator>
                    <asp:Label ID="lblPrijenos" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="btnPrenesi" runat="server" Text="Prenesi" OnClick="btnPrenesi_Click1" />
                </asp:View>
                <asp:View ID="viewDownload" runat="server">
                    <h3>Preuzmite dostupne dokumente</h3>
                    <br />
                    <asp:Table ID="t1" runat="server"></asp:Table>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
