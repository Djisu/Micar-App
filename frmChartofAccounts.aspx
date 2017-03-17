<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmChartofAccounts.aspx.cs" Inherits="MiCar.frmChartofAccounts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        position: absolute;
        top: 173px;
        left: 10px;
    }
    .auto-style2 {
        position: absolute;
        top: 170px;
        left: 101px;
        z-index: 1;
        width: 207px;
        height: 17px;
    }
    .auto-style3 {
        position: absolute;
        top: 212px;
        left: 10px;
        z-index: 1;
    }
    .auto-style4 {
        position: absolute;
        top: 204px;
        left: 101px;
        z-index: 1;
        width: 198px;
    }
    .auto-style5 {
        position: absolute;
        top: 241px;
        left: 7px;
        z-index: 1;
    }
    .auto-style6 {
        position: absolute;
        top: 237px;
        left: 100px;
        z-index: 1;
    }
    .auto-style7 {
        position: absolute;
        top: 149px;
        left: 469px;
        z-index: 1;
        width: 89px;
    }
    .auto-style8 {
        position: absolute;
        top: 216px;
        left: 467px;
        z-index: 1;
        width: 89px;
    }
    .auto-style9 {
        position: absolute;
        top: 253px;
        left: 467px;
        z-index: 1;
        width: 89px;
    }
    .auto-style10 {
        position: absolute;
        top: 248px;
        left: 272px;
        z-index: 1;
    }
    .auto-style11 {
        position: absolute;
        top: 274px;
        left: 17px;
        z-index: 1;
        width: 371px;
    }
        .auto-style12 {
            left: 18px;
            top: 286px;
            width: 701px;
        }
        .auto-style13 {
            position: absolute;
            top: 179px;
            left: 467px;
            z-index: 1;
            width: 89px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Account Type:"></asp:Label>
<asp:DropDownList ID="cboType" runat="server" AutoPostBack="True" CssClass="auto-style2" OnSelectedIndexChanged="cboType_SelectedIndexChanged">
    <asp:ListItem>INC       INCOME</asp:ListItem>
    <asp:ListItem>EXP      EXPENSE</asp:ListItem>
    <asp:ListItem></asp:ListItem>
</asp:DropDownList>
<asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Particulars:"></asp:Label>
<asp:TextBox ID="txtDescription" runat="server" CssClass="auto-style4"></asp:TextBox>
<asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="Account Code:"></asp:Label>
<asp:TextBox ID="txtCode" runat="server" CssClass="auto-style6"></asp:TextBox>
<asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style13">Edit</asp:LinkButton>
<asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style8">Delete</asp:LinkButton>
<asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style9">Exit</asp:LinkButton>
<asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style10" Visible="False"></asp:Label>
<asp:Label ID="lblResults" runat="server" CssClass="auto-style11" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style12" DataKeyNames="code" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="code" HeaderText="code" ReadOnly="True" SortExpression="code" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_chartofaccounts]"></asp:SqlDataSource>
<asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style7">Add</asp:LinkButton>
</asp:Content>
