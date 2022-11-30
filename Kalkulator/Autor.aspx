<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Autor.aspx.cs" Inherits="Kalkulator.Autor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>Ime: Nikola</p>
            <p>Prezime: Pustišek</p>
            <p>Adresa: Jaroslava Šidaka 8</p>
            <p>JMBAG: 77220395</p>
            <p>Mjesto rođenja: Zagreb</p>
            <p>Država rođenja: Hrvatska</p>
            <br />
            <asp:Button ID="btnKalkulator" runat="server" Text="Odvedi me natrag na kalkulator!"
                OnClick="btnKalkulator_Click" />
        </div>
    </form>
</body>
</html>
