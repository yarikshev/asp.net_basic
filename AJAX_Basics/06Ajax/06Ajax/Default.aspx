<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_06Ajax.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript">
        var par;
        
            function onComplete(result) {
                document.getElementById("Label1").value="eeeee";
            }

            function onError(error) {
                alert(error._message);
            }
    
        function run() {

            
           // document.getElementById("ww").innerHTML = "ssssss";
            var parA = parseInt(document.getElementById("TextBox1").value);
            var parB = parseInt(sedocument.getElementById("TextBox2").value);


            var ip = _06Ajax.WebServiceDefault.MethodSum(parA, parB, onComplete, onError);
            document.getElementById("ww").value = "999";
        }
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/WebServiceDefault.asmx" />
            </Services>
        </asp:ScriptManager>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
       
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="result" />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Button ID="Button5" runat="server" Text="Button55" OnClick="Button5_Click"/>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </ContentTemplate>
        </asp:UpdatePanel>


         <input type="button" value="Run" name="Run" onclick="run()"  />
        <input id="ww" type="text" value="Run222" name="Run1" onclick="run1()"  />
    </div>
    </form>
</body>
</html>
