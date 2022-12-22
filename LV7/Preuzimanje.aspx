<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preuzimanje.aspx.cs" Inherits="LV7.Preuzimanje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Preuzmite vaše dokumente</h1>
            <br />
            <asp:Table ID="t1" runat="server"></asp:Table>
            <br />
            <asp:Button ID="btnPovratak" runat="server" Text="Povratak" OnClick="btnPovratak_Click" />
        </div>
    </form>
</body>
</html>
