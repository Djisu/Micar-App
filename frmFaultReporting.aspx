<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmFaultReporting.aspx.cs" Inherits="MiCar.frmFaultReporting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 130px;
            left: 208px;
            z-index: 1;
            width: 142px;
        }
        .auto-style2 {
            position: absolute;
            top: 111px;
            left: 209px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 112px;
            left: 415px;
            z-index: 1;
            right: 494px;
        }
        .auto-style4 {
            position: absolute;
            top: 173px;
            left: 11px;
            z-index: 1;
            width: 27px;
        }
        .auto-style5 {
            position: absolute;
            top: 156px;
            left: 208px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 172px;
            left: 412px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 239px;
            left: 9px;
            z-index: 1;
            height: 15px;
        }
        .auto-style8 {
            position: absolute;
            top: 111px;
            left: 10px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 131px;
            left: 11px;
            z-index: 1;
            width: 142px;
        }
        .auto-style10 {
            position: absolute;
            top: 129px;
            left: 416px;
            z-index: 1;
            width: 201px;
        }
        .auto-style11 {
            position: absolute;
            top: 193px;
            left: 208px;
            z-index: 1;
            width: 173px;
        }
        .auto-style12 {
            position: absolute;
            top: 195px;
            left: 7px;
            z-index: 1;
            width: 173px;
        }
        .auto-style13 {
            position: absolute;
            top: 192px;
            left: 416px;
            z-index: 1;
            width: 142px;
        }
        .auto-style14 {
            position: absolute;
            top: 256px;
            left: 6px;
            z-index: 1;
            width: 142px;
        }
        .auto-style15 {
            position: absolute;
            top: 201px;
            left: 665px;
            z-index: 1;
            width: 95px;
        }
        .auto-style16 {
            position: absolute;
            top: 164px;
            left: 666px;
            z-index: 1;
            width: 95px;
        }
        .auto-style17 {
            position: absolute;
            top: 125px;
            left: 668px;
            z-index: 1;
            width: 95px;
        }
        .auto-style18 {
            position: absolute;
            top: 236px;
            left: 664px;
            z-index: 1;
            width: 95px;
        }
        .auto-style19 {
            position: absolute;
            top: 212px;
            left: 208px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 214px;
            left: 6px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 154px;
            left: 416px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 295px;
            left: 14px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            left: 18px;
            top: 332px;
            height: 203px;
            width: 789px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="txtPart" runat="server" CssClass="auto-style10"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Part/Vehicle:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Date:"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFault" CssClass="auto-style20" ErrorMessage="Fault must be entered" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Approved by:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Fault"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Cost:"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Prepared by:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text="Vehicle Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" CssClass="auto-style9" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDate" runat="server" AutoPostBack="True" CssClass="auto-style1" DataSourceID="SqlDataSource2" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [rep_dailyCheckOut]"></asp:SqlDataSource>
    <asp:TextBox ID="txtFault" runat="server" CssClass="auto-style12"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCost" CssClass="auto-style19" ErrorMessage="It must be a numeric figure" ForeColor="#FF3399"></asp:RegularExpressionValidator>
    <asp:TextBox ID="txtCost" runat="server" CssClass="auto-style11"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPart" CssClass="auto-style21" ErrorMessage="Part/Vehicle must be entered" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="cboPreparedby" runat="server" AutoPostBack="True" CssClass="auto-style13" DataSourceID="SqlDataSource3" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [code], [fname], [lname], [position] FROM [tb_personnel]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboApprovedby" runat="server" AutoPostBack="True" CssClass="auto-style14" DataSourceID="SqlDataSource3" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style17">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style16">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style15">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style18">Exit</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style25" DataSourceID="SqlDataSource4" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="m_date" HeaderText="m_date" SortExpression="m_date" />
            <asp:BoundField DataField="part_vehicle" HeaderText="part_vehicle" SortExpression="part_vehicle" />
            <asp:BoundField DataField="fault" HeaderText="fault" SortExpression="fault" />
            <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
            <asp:BoundField DataField="prepared_by" HeaderText="prepared_by" SortExpression="prepared_by" />
            <asp:BoundField DataField="approved_by" HeaderText="approved_by" SortExpression="approved_by" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_maintenance]"></asp:SqlDataSource>
</asp:Content>
