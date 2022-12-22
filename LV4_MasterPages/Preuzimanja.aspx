<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preuzimanja.aspx.cs" Inherits="LV4_MasterPages.Preuzimanja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            1. <asp:HyperLink ID="Slika1" runat="server" NavigateUrl="~/Preuzimanja.aspx?id=1">Slika 1.</asp:HyperLink>
            <br />
            2. <asp:HyperLink ID="Slika2" runat="server" NavigateUrl="~/Preuzimanja.aspx?id=2">Slika 2.</asp:HyperLink>
            <br />
            3. <asp:HyperLink ID="Slika3" runat="server" NavigateUrl="~/Preuzimanja.aspx?id=3">Slika 3.</asp:HyperLink>
        </div>
    </form>
</body>
</html>
