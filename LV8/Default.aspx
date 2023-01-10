<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LV8.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Naziv preglednika: <asp:Label ID="lblBrowser" runat="server"></asp:Label>
            <br />
            Status kolačića: <asp:Label ID="lblCookies" runat="server"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="txtUnos" runat="server"></asp:TextBox>
            &nbsp&nbsp
            <asp:Button ID="btnPosalji" runat="server" Text="Pošalji" OnClick="btnPosalji_Click" />
            <br />
            <br />
            <asp:Button ID="btnIspis" runat="server" Text="Ispis" OnClick="btnIspis_Click"/>
            &nbsp&nbsp
            <asp:Label ID="lblIspis" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnObrisi" runat="server" Text="Obriši" OnClick="btnObrisi_Click" />
        </div>
    </form>
</body>
</html>
