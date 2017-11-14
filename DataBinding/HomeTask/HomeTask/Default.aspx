<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HomeTask.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Fname :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Surname:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        NemeWork:
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        NominationWork:
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        Aprobation :
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" OnTextChanged="RadioButtonList1_TextChanged">
            <asp:ListItem>True</asp:ListItem>
            <asp:ListItem>False</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        AprobationLavel:
        <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        <br />
        FullNameofOrgani: <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        OurPosition:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        CityVillage:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        Region:
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        Tell:
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        Email:
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        Howdid you know ous?:
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree for  processinf my personalized information" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="93px" />
    
    </div>
    </form>
</body>
</html>
