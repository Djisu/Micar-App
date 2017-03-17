<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmSetupRoadWorthy.aspx.cs" Inherits="MiCar.frmSetupRoadWorthy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            position: absolute;
            top: 116px;
            left: 49px;
            z-index: 1;
            width: 95px;
        }
        .auto-style2 {
            position: absolute;
            top: 141px;
            left: 41px;
            z-index: 1;
            width: 131px;
        }
        .auto-style5 {
            position: absolute;
            top: 114px;
            left: 275px;
            z-index: 1;
            width: 95px;
        }
        .auto-style6 {
            position: absolute;
            top: 116px;
            left: 542px;
            z-index: 1;
            width: 95px;
        }
        .auto-style7 {
            left: 258px;
            top: 122px;
            width: 151px;
            height: 78px;
        }
        .auto-style8 {
            left: 529px;
            top: 125px;
            width: 151px;
            height: 78px;
        }
        .auto-style9 {
            left: 25px;
            top: 306px;
            height: 261px;
            width: 934px;
        }
        .auto-style20 {
            position: absolute;
            top: 163px;
            left: 40px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 126px;
            left: 0px;
        }
        .auto-style26 {
            position: absolute;
            top: 132px;
            left: 802px;
            z-index: 1;
            width: 85px;
        }
        .auto-style27 {
            position: absolute;
            top: 169px;
            left: 804px;
            z-index: 1;
            width: 85px;
        }
        .auto-style28 {
            position: absolute;
            top: 208px;
            left: 807px;
            z-index: 1;
            width: 85px;
        }
        .auto-style29 {
            position: absolute;
            top: 250px;
            left: 808px;
            z-index: 1;
            width: 85px;
        }
        .auto-style24 {
            position: absolute;
            top: 286px;
            left: 20px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel1" runat="server" CssClass="auto-style25" style="z-index: 1" Visible="False"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Advance Date:"></asp:Label>
    <asp:DropDownList ID="cboregno" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Registration No:"></asp:Label>
    <asp:Calendar ID="dtreminderdate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style8" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:GridView ID="GridView11" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style9" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="reminder_date" HeaderText="reminder_date" SortExpression="reminder_date" />
            <asp:BoundField DataField="adv_date" HeaderText="adv_date" SortExpression="adv_date" />
            <asp:BoundField DataField="statusflag" HeaderText="statusflag" SortExpression="statusflag" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_roadWorthyAlert]"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdEdit1" runat="server" BorderStyle="Outset" CssClass="auto-style27">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete1" runat="server" BorderStyle="Outset" CssClass="auto-style28">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style29">Exit</asp:LinkButton>
    <br />
    <asp:Calendar ID="dtadvdate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style7" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:LinkButton ID="cmdAdd1" runat="server" BorderStyle="Outset" CssClass="auto-style26">Add</asp:LinkButton>
    <asp:Label ID="lblResults1" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboRegNo1" CssClass="auto-style20" ErrorMessage="Registration number must be selected" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    </asp:Content>
