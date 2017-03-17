<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmSetupMaintenance1.aspx.cs" Inherits="MiCar.frmSetupMaintenance1" %>
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
        .auto-style20 {
            position: absolute;
            top: 163px;
            left: 40px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 232px;
            left: 5px;
            z-index: 1;
            width: 226px;
            height: 20px;
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
        .auto-style25 {
            position: absolute;
            top: 290px;
            left: 88px;
            z-index: 1;
            width: 789px;
            margin-top: 0em;
        }
        .auto-style21 {
            position: absolute;
            top: 212px;
            left: 10px;
            z-index: 1;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:DropDownList ID="cboregno" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Registration No:"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboRegNo1" CssClass="auto-style20" ErrorMessage="Registration number must be selected" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Advance Date:"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style25" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="mileage_reading" HeaderText="mileage_reading" SortExpression="mileage_reading" />
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
    <asp:Label ID="txtUserlabel" runat="server" CssClass="auto-style21" Text="txtUserlabel" Visible="False"></asp:Label>
    <asp:Calendar ID="dtadvdate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style7" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True" style="left: 268px; top: 130px">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 114px; left: 817px; height: 19px; width: 71px">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 149px; left: 817px; height: 19px; width: 71px">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 187px; left: 819px; height: 19px; width: 71px">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style10" style="z-index: 1; position: absolute; top: 233px; left: 820px; height: 19px; width: 71px">Exit</asp:LinkButton>
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Registration No:"></asp:Label>
    <asp:Calendar ID="dtreminderdate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" CssClass="auto-style7" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" ShowGridLines="True" style="left: 532px; top: 128px">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <br />
    <br />
</asp:Content>
