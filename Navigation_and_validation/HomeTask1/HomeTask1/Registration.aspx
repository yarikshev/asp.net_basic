<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HomeTask1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                Login<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Это поле не может быть пустым!" ForeColor="Red" ValidationGroup="g1">
            
                </asp:RequiredFieldValidator>

            </p>



            <p>
                Password<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    runat="server"
                    ControlToValidate="TextBox2"
                    ErrorMessage="Это поле не может быть пустым!"
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>

            </p>
            <p>
                Confirm password<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ControlToCompare="TextBox2"
                    ControlToValidate="TextBox3"
                    ErrorMessage="CompareValidator" ValidationGroup="g1"></asp:CompareValidator>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    runat="server"
                    ControlToValidate="TextBox3"
                    ErrorMessage="Это поле не может быть пустым!"
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>

            </p>
            <p>
                Email<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4"
                    runat="server"
                    ControlToValidate="TextBox4"
                    ErrorMessage="Это поле не может быть пустым!"
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>

            </p>
            <p>
                Phone<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5"
                    runat="server"
                    ControlToValidate="TextBox5"
                    ErrorMessage="Это поле не может быть пустым!"
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>

            </p>
            <p>
                Date of birthday<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ValidationGroup="g1" ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator6"
                    runat="server"
                    ControlToValidate="TextBox6"
                    ErrorMessage="Это поле не может быть пустым!"
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>

            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="REGISTRATION" OnClick="Button1_Click" ValidationGroup="g1" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </p>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
                <Triggers>
                     <asp:AsyncPostBackTrigger ControlID="Button3" />
                    </Triggers>
            </asp:UpdatePanel>
        </div>
        <p>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" style="height: 26px" Text="Button" />
                    </p>
    </form>
</body>
</html>
