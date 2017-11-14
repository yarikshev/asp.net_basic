<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="HomeTask.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tell" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="NameWork" HeaderText="NameWork" SortExpression="NameWork" />
                <asp:BoundField DataField="NominationtWork" HeaderText="NominationtWork" SortExpression="NominationtWork" />
                <asp:BoundField DataField="Aprobation" HeaderText="Aprobation" SortExpression="Aprobation" />
                <asp:BoundField DataField="AprobatchionLevel" HeaderText="AprobatchionLevel" SortExpression="AprobatchionLevel" />
                <asp:BoundField DataField="FullNameofOrgani" HeaderText="FullNameofOrgani" SortExpression="FullNameofOrgani" />
                <asp:BoundField DataField="OurPosition" HeaderText="OurPosition" SortExpression="OurPosition" />
                <asp:BoundField DataField="CityVillage" HeaderText="CityVillage" SortExpression="CityVillage" />
                <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                <asp:BoundField DataField="Tell" HeaderText="Tell" ReadOnly="True" SortExpression="Tell" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="HowyouKnowedOus" HeaderText="HowyouKnowedOus" SortExpression="HowyouKnowedOus" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Questionnaire]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
