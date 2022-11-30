<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kalkulator.aspx.cs" Inherits="Kalkulator.Kalkulator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Zadatak-1 --%>
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
            <hr />
            Ispis obrade zahtjeva:
            <asp:Label ID="lblDatum" runat="server"></asp:Label>
            <hr />
            Odvedi me na VVG službenu stranicu:
            <asp:HyperLink ID="hlVVG" runat="server"
                NavigateUrl="https://vvg.hr/" Target="_blank">Klikni me!</asp:HyperLink>
            <br />
            Informacije o autoru:
            <asp:HyperLink ID="hlAutor" runat="server" NavigateUrl="~/Autor.aspx"
                Target="_blank">Klikni me!</asp:HyperLink>
            <hr />
            Naprednije opcije kalkulatora
            <br />
            <br />
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
            <hr />
            Ispis tablice množenja do 10
            <br />
            <br />
            <asp:Button ID="btnTablicaMnozenja" runat="server" Text="Klikni me za ispis tablice!"
                OnClick="btnTablicaMnozenja_Click"  />
            <br />
            <br />
            <asp:Label ID="lblTablicaMnozenja" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
