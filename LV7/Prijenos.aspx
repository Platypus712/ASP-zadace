<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prijenos.aspx.cs" Inherits="LV7.Prijenos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prenesite vaše dokumente</h1>
            <br />
            <asp:FileUpload ID="fu1" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Kriva datoteka!" ControlToValidate="fu1">
            </asp:RequiredFieldValidator>
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnPosalji" runat="server" Text="Pošalji" OnClick="btnPosalji_Click" /> 
            &nbsp
            <asp:Button ID="btnPovratak" runat="server" Text="Povratak" OnClick="btnPovratak_Click" />
        </div>
    </form>
</body>
</html>
