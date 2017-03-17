<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmRoleUser1.aspx.cs" Inherits="MiCar.frmRoleUser1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 351px;
            left: 694px;
            z-index: 1;
        }
        .auto-style47 {
            z-index: 1;
            left: 49px;
            top: 209px;
            position: absolute;
            width: 64px;
        }
        .auto-style48 {
            z-index: 1;
            top: 208px;
            position: absolute;
            left: 136px;
            height: 16px;
            width: 153px;
        }
                        
        .auto-style3
        {
            position: absolute;
            top: 154px;
            left: 48px;
            z-index: 1;
            width: 100px;
            bottom: 394px;
            right: 787px;
        }
        .auto-style49 {
            z-index: 1;
            left: 52px;
            top: 252px;
            position: absolute;
            width: 64px;
        }
        .auto-style50 {
            z-index: 1;
            left: 136px;
            top: 254px;
            position: absolute;
            width: 147px;
            right: 620px;
        }
        .auto-style45
        {
            position: absolute;
            top: 170px;
            left: 313px;
            z-index: 1;
            width: 264px;
        }
        
        .auto-style51 {
            position: absolute;
            top: 267px;
            left: 645px;
            z-index: 1;
            width: 136px;
        }
        .auto-style52 {
            position: absolute;
            top: 212px;
            left: 646px;
            z-index: 1;
            width: 136px;
        }
        .auto-style53 {
            left: 85px;
            top: 296px;
            width: 674px;
            height: 167px;
        }
        .auto-style54 {
            position: absolute;
            top: 167px;
            left: 647px;
            z-index: 1;
            width: 136px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style53" DataKeyNames="role,userid" DataSourceID="SqlDataSource4" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="role" HeaderText="role" ReadOnly="True" SortExpression="role" />
            <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" SortExpression="userid" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_RoleUser]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="txtUserLabel0" runat="server" CssClass="auto-style1"></asp:Label>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style52">Delete Transaction</asp:LinkButton>
    <br />
        <asp:DropDownList ID="cboRole" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="role" DataValueField="role" CssClass="auto-style48">
        </asp:DropDownList>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style54">Add Transaction</asp:LinkButton>
    <br />
    
        <asp:Label ID="Label1" runat="server" Text="Role:" CssClass="auto-style47"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_RoleUser]"></asp:SqlDataSource>
            <br />
    
            <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="User:"></asp:Label>
        
                <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style51">Exit</asp:LinkButton>
    <br />
            <asp:Label ID="lblResults1" runat="server" CssClass="auto-style45" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_Role]"></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString2 %>" SelectCommand="SELECT * FROM [tb_RoleUser]"></asp:SqlDataSource>
        <br />
                <asp:Label ID="txtUserLabel" runat="server" style="z-index: 1; left: 396px; top: 120px; position: absolute; width: 171px" Visible="False"></asp:Label>
        <br />
    
        <asp:Label ID="Label3" runat="server" Text="User:" CssClass="auto-style49"></asp:Label>
        
                <asp:TextBox ID="cboOperatorId" runat="server" CssClass="auto-style50"></asp:TextBox>
        
        </asp:Content>
