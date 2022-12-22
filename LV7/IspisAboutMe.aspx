<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IspisAboutMe.aspx.cs" Inherits="LV7.IspisAboutMe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ime: Nikola
            <br />
            Prezime: Pustišek
            <br />
            JMBAG: 77220395
            <br />
            Država: Hrvatska
            <br />
            Datum ispisa:
            <asp:Label ID="lblDatum" runat="server" Text="" OnLoad="Page_Load"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnPovratak" runat="server" Text="Povratak" OnClick="btnPovratak_Click" />
        </div>
    </form>
</body>
</html>
