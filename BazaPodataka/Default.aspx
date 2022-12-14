<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BazaPodataka.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Studenti %>"
                SelectCommand="SELECT * FROM [Student]" DeleteCommand="delete from Student where Id = @id;"
                UpdateCommand="update Student set Ime = @ime, Prezime = @prezime, JMBAG = @jmbag,
                Kontakt = @kontakt where Id = @id;" >
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="ime" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="prezime" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="jmbag" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="kontakt" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC"
                BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black"
                GridLines="Horizontal" PageSize="5" AutoGenerateSelectButton="True" DataKeyNames="Id">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="Lime" BorderColor="#CCFF66" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#CC3300" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <br />
            Prostor za unos novog studenta
            <br />
            <br />
            Id: <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            Ime: <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            Prezime: <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            JMBAG: <asp:TextBox ID="txtJMBAG" runat="server"></asp:TextBox>
            Kontakt: <asp:TextBox ID="txtKontakt" runat="server"></asp:TextBox>
            <asp:Button ID="btnNoviStudent" runat="server" Text="Unesi" OnClick="btnNoviStudent_Click" />
            <br />
            <br />
            <asp:Label ID="lblUspjeh" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
