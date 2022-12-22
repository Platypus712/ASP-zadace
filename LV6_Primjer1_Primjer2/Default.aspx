<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LV6_Primjer1_Primjer2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HLZbrajanje" runat="server"
                NavigateUrl="~/Default.aspx?indeks=0">Zbrajanje</asp:HyperLink>
            &nbsp&nbsp&nbsp
            <asp:HyperLink ID="HLKalendar" runat="server"
                NavigateUrl="~/Default.aspx?indeks=1">Kalendar</asp:HyperLink>
            <br />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="ViewZbrajanje" runat="server">
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
                    <br />
                    Rezultat: 
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </asp:View>
                <asp:View ID="ViewKalendar" runat="server">
                    <asp:Calendar ID="mojKalendar" OnSelectionChanged="mojKalendar_SelectionChanged" 
                        runat="server"></asp:Calendar>
                    <asp:Label ID="lblKalendar" runat="server" Text="Label"></asp:Label>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
