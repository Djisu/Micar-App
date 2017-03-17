<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmVehicleInspection.aspx.cs" Inherits="MiCar.frmVehicleInspection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 112px;
            left: 11px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 110px;
            left: 181px;
            z-index: 1;
        }
        .auto-style3 {
            left: 180px;
            top: 121px;
            width: 221px;
            height: 62px;
        }
        .auto-style4 {
            position: absolute;
            top: 108px;
            left: 465px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 126px;
            left: 466px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 276px;
            left: 14px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 362px;
            left: 13px;
            z-index: 1;
            width: 282px;
        }
        .auto-style8 {
            position: absolute;
            top: 341px;
            left: 15px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 361px;
            left: 339px;
            z-index: 1;
            width: 282px;
        }
        .auto-style10 {
            position: absolute;
            top: 274px;
            left: 340px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 297px;
            left: 16px;
            z-index: 1;
            width: 282px;
        }
        .auto-style12 {
            position: absolute;
            top: 341px;
            left: 343px;
            z-index: 1;
            width: 52px;
        }
        .auto-style13 {
            position: absolute;
            top: 296px;
            left: 341px;
            z-index: 1;
            width: 282px;
        }
        .auto-style14 {
            position: absolute;
            top: 390px;
            left: 16px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 326px;
            left: 16px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 330px;
            left: 343px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 385px;
            left: 333px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 320px;
            left: 434px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style25 {
            position: absolute;
            top: 161px;
            left: 446px;
            z-index: 1;
            width: 308px;
            height: 20px;
        }
        .auto-style26 {
            position: absolute;
            top: 373px;
            left: 713px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 130px;
            left: 14px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style26"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno], [date], [mileage_reading], [details_spec], [findings], [recommendations], [remarks] FROM [tb_weeklyMaint]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style28" DataSourceID="SqlDataSource1" GridLines="Horizontal" style="left: 17px; top: 408px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="mileage_reading" HeaderText="mileage_reading" SortExpression="mileage_reading" />
            <asp:BoundField DataField="details_spec" HeaderText="details_spec" SortExpression="details_spec" />
            <asp:BoundField DataField="findings" HeaderText="findings" SortExpression="findings" />
            <asp:BoundField DataField="recommendations" HeaderText="recommendations" SortExpression="recommendations" />
            <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
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
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Mileage Reading:"></asp:Label>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style1" Text="Vehicle Registration No:"></asp:Label>
    <asp:TextBox ID="txtDetailsofInspenction" runat="server" CssClass="auto-style11"></asp:TextBox>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style24" style="z-index: 1; position: absolute; top: 252px; left: 670px; width: 54px">Delete</asp:LinkButton>
    <br />
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Date:"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" Width="139px" DataSourceID="SqlDataSource3" DataTextField="regno" DataValueField="regno" CssClass="auto-style27">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style8" Text="Findings:"></asp:Label>
    <asp:Calendar ID="dtDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" CssClass="auto-style3" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDetailsofInspenction" CssClass="auto-style15" ErrorMessage="Details of inspection cannot be empty" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text="Recommendations:"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style25" style="z-index: 1; position: absolute; top: 288px; left: 670px; width: 53px">Exit</asp:LinkButton>
    <br />
    <asp:TextBox ID="txtFindings" runat="server" CssClass="auto-style7"></asp:TextBox>
    <asp:TextBox ID="txtRecommendations" runat="server" CssClass="auto-style13"></asp:TextBox>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style44" style="z-index: 1; position: absolute; top: 181px; left: 668px; width: 58px">Add</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtREcommendations" CssClass="auto-style16" ErrorMessage="recommendations " ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRemarks" CssClass="auto-style17" ErrorMessage="Remarks cannot be empty" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="txtMileageReading" runat="server" CssClass="auto-style5" Enabled="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtRemarks" runat="server" CssClass="auto-style9"></asp:TextBox>
    <br />
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style22" style="z-index: 1; position: absolute; top: 217px; left: 669px; width: 57px">Edit</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFindings" CssClass="auto-style14" ErrorMessage="Findings cannot be empty" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text="Remarks"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Details of Inspections:"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style25" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <br />
</asp:Content>
