<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDiscipline.aspx.cs" Inherits="MiCar.frmDiscipline" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 109px;
            z-index: 1;
            width: 191px;
        }
        .auto-style2 {
            position: absolute;
            top: 150px;
            left: 12px;
            z-index: 1;
        }
        .auto-style3 {
            left: 107px;
            top: 150px;
            height: 85px;
            position: absolute;
            z-index: 1;
            width: 177px;
        }
        .auto-style4 {
            position: absolute;
            top: 114px;
            left: 419px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 114px;
            left: 533px;
            z-index: 1;
            width: 347px;
            height: 9px;
        }
        .auto-style6 {
            position: absolute;
            top: 221px;
            left: 838px;
            z-index: 1;
            width: 86px;
        }
        .auto-style7 {
            position: absolute;
            top: 224px;
            left: 417px;
            z-index: 1;
            width: 86px;
        }
        .auto-style8 {
            position: absolute;
            top: 222px;
            left: 697px;
            z-index: 1;
            width: 86px;
        }
        .auto-style9 {
            position: absolute;
            top: 221px;
            left: 560px;
            z-index: 1;
            width: 86px;
        }
        .auto-style10 {
            position: absolute;
            top: 338px;
            left: 17px;
            z-index: 1;
            width: 726px;
        }
        .auto-style11 {
            position: absolute;
            top: 140px;
            left: 111px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 147px;
            left: 537px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 311px;
            left: 22px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            position: absolute;
            top: 114px;
            left: 14px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Driver's Name:" CssClass="auto-style25"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" CssClass="auto-style1" DataSourceID="SqlDataSource1" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver]"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Date:"></asp:Label>
    <asp:Calendar ID="dtDate" runat="server" CssClass="auto-style3" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style10" DataKeyNames="driverno" DataSourceID="SqlDataSource3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="driverno" HeaderText="driverno" ReadOnly="True" SortExpression="driverno" />
            <asp:BoundField DataField="datex" HeaderText="datex" SortExpression="datex" />
            <asp:BoundField DataField="actionx" HeaderText="actionx" SortExpression="actionx" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_Discipline]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style7">Add</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cboDisciplinaryAction" CssClass="auto-style12" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Disciplinary Action:"></asp:Label>
    <asp:DropDownList ID="cboDisciplinaryAction" runat="server" AutoPostBack="True" CssClass="auto-style5" CausesValidation="True">
        <asp:ListItem>Suspension</asp:ListItem>
        <asp:ListItem>Lateness</asp:ListItem>
        <asp:ListItem>Query</asp:ListItem>
        <asp:ListItem>Warning</asp:ListItem>
    </asp:DropDownList>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style9">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style8">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style6">Exit</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style11" ErrorMessage="Select the driver number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
</asp:Content>
