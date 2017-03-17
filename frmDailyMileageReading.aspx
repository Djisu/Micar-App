<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDailyMileageReading.aspx.cs" Inherits="MiCar.frmDailyMileageReading" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style6 {
            position: absolute;
            top: 225px;
            left: 506px;
            z-index: 1;
            width: 80px;
        }
        .auto-style7 {
            position: absolute;
            top: 225px;
            left: 391px;
            z-index: 1;
            width: 80px;
            right: 530px;
        }
        .auto-style8 {
            position: absolute;
            top: 226px;
            left: 623px;
            z-index: 1;
            width: 80px;
        }
        .auto-style9 {
            position: absolute;
            top: 227px;
            left: 740px;
            z-index: 1;
            width: 80px;
        }
        .auto-style10 {
            top: 356px;
            left: 22px;
            height: 225px;
            width: 910px;
            margin-top: 0em;
        }
        .auto-style11 {
            position: absolute;
            top: 128px;
            left: 153px;
            z-index: 1;
            width: 182px;
        }
        .auto-style12 {
            position: absolute;
            top: 128px;
            left: 480px;
            z-index: 1;
            width: 182px;
        }
        .auto-style16 {
            position: absolute;
            top: 128px;
            left: 780px;
            z-index: 1;
            height: 17px;
        }
        .auto-style17 {
            position: absolute;
            top: 176px;
            left: 783px;
            z-index: 1;
            width: 193px;
        }
        .auto-style13 {
            z-index: 1;
            left: 23px;
            top: 317px;
            position: absolute;
            width: 481px;
        }
        .auto-style18 {
            position: absolute;
            top: 262px;
            left: 434px;
            z-index: 1;
        }
        .auto-style19 {
            z-index: 1;
            left: 12px;
            top: 106px;
            position: absolute;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style18"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style13" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 14px; top: 151px; position: absolute" Text="Date:"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    ration No:<asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno" style="z-index: 1; left: 153px; top: 105px; position: absolute" Width="151px">
    </asp:DropDownList>
    <asp:TextBox ID="txtMileageReading" runat="server" style="z-index: 1; left: 780px; top: 105px; position: absolute; bottom: 440px" TextMode="Number"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 655px; top: 100px; position: absolute; width: 120px" Text="Mileage Reading to be entered:"></asp:Label>
    <asp:DropDownList ID="cboDriverNo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="driverno" DataValueField="driverno" style="z-index: 1; left: 481px; top: 105px; position: absolute; height: 15px; width: 150px" OnSelectedIndexChanged="cboDriverNo_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname] FROM [tb_driver]"></asp:SqlDataSource>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" TitleFormat="Month" OnSelectionChanged="Calendar1_SelectionChanged">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
        <DayStyle Width="14%" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:Calendar>
    <asp:Label ID="Label3" runat="server" Text="Vehicle Registration No:" CssClass="auto-style19"></asp:Label>
    <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 386px; top: 108px; position: absolute; width: 90px" Text="Driver No:"></asp:Label>
    <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 657px; top: 151px; position: absolute; height: 28px; width: 105px" Text="Last Mileage Reading:"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style10" DataSourceID="SqlDataSource3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="mileage_reading" HeaderText="mileage_reading" SortExpression="mileage_reading" />
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
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_DailyMileage_Reading]"></asp:SqlDataSource>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cboRegNo" CssClass="auto-style11" ErrorMessage="Select the vehicle registration number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtMileageReading" CssClass="auto-style16" ErrorMessage="Enter the present mileage reading" ForeColor="#FF3399" SetFocusOnError="True"></asp:RangeValidator>
    <br />
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Inset" CssClass="auto-style8" OnClick="LinkButton1_Click">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Inset" CssClass="auto-style9" OnClick="LinkButton1_Click">Exit</asp:LinkButton>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cboDriverNo" CssClass="auto-style12" ErrorMessage="Select the driver id number" ForeColor="#FF3399" SetFocusOnError="True"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 389px; top: 147px; position: absolute; width: 84px" Text="Present Mileage Reading:"></asp:Label>
    <asp:TextBox ID="txtPresentMileageReading" runat="server" style="z-index: 1; left: 481px; top: 147px; position: absolute; width: 141px"></asp:TextBox>
    <asp:TextBox ID="txtLastMileageReading" runat="server" style="z-index: 1; left: 783px; top: 147px; position: absolute"></asp:TextBox>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtLastMileageReading" CssClass="auto-style17" ErrorMessage="Entry must be between 1 and 200" ForeColor="#FF0066" MaximumValue="1" MinimumValue="200" SetFocusOnError="True"></asp:RangeValidator>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Inset" CssClass="auto-style7" OnClick="LinkButton1_Click">Add</asp:LinkButton>
    <br />
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Inset" CssClass="auto-style6" OnClick="LinkButton1_Click">Edit</asp:LinkButton>
</asp:Content>
