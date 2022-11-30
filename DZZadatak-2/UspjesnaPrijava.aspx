<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UspjesnaPrijava.aspx.cs" Inherits="Zadatak_2.UspjesnaPrijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Uspješno ste se prijavili:
            <asp:LoginName ID="LoginName1" runat="server" />
            <br />
            <br />
            <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutText="Odjavi me"
                LogoutAction="RedirectToLoginPage" />
        </div>
    </form>
</body>
</html>
