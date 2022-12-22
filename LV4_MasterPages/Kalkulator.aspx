<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Kalkulator.aspx.cs" Inherits="LV4_MasterPages.Kalkulator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Ovo je stranica broj 1. gdje se prikazuje jednostavni kalkulator</p>
    <br />
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
    <br />
    <br />
    Logo VVG-a
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="~/logo-vvg.png" AlternateText="Logo VVG"
        Width="500" />
</asp:Content>
