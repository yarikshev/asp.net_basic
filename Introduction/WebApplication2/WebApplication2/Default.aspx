<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <br />
        введите имя<asp:TextBox ID="name" runat="server" Height="17px" Width="239px" OnTextChanged="name_TextChanged"></asp:TextBox>
        <br />
        <asp:Button ID="getResult" runat="server" Text="Button" Width="98px" BorderStyle="Double" ForeColor="#FF6600" OnClick="getResult_Click" />
        <asp:Label ID="result" runat="server" Text="Label"></asp:Label>

    </div>
    </form>
</body>
</html>
