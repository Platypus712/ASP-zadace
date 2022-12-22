<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ispis.aspx.cs" Inherits="LV7.Ispis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Podaci o pregledniku</h1>
            <br />
            <asp:TextBox ID="txtPodaciOPregledniku" runat="server" TextMode="MultiLine" Rows="10" Columns="30"></asp:TextBox>
            <br />
            <asp:Button ID="btnPovratak" runat="server" Text="Povratak" OnClick="btnPovratak_Click" />
        </div>
    </form>
</body>
</html>
