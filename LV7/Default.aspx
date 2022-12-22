<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LV7.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function changeBackgroundColor() {
            var color = '#' + Math.floor(Math.random() * 16777215).toString(16);
            document.body.style.background = color;
        }
    </script>
</head>
<body onload="changeBackgroundColor()">
    <form id="form1" runat="server">
        <div>
            Stranica za prijenos dokumenata
            <asp:Button ID="btnPrijenos" runat="server" Text="Odvedi me!" OnClick="btnPrijenos_Click" />
            <br />
            <br />
            Stranica za preuzimanje dokumenata
            <asp:Button ID="btnPreuzimanje" runat="server" Text="Odvedi me!" OnClick="btnPreuzimanje_Click" />
            <br />
            <br />
            Ispis informacija o pregledniku
            <asp:Button ID="btnIspis" runat="server" Text="Odvedi me!" OnClick="btnIspis_Click" />
            <br />
            <br />
            Ispis podataka o nama
            <asp:Button ID="btnIpisAboutMe" runat="server" Text="Odvedi me!" OnClick="btnIpisAboutMe_Click" />
        </div>
    </form>
</body>
</html>
