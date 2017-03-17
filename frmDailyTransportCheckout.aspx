<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmDailyTransportCheckout.aspx.cs" Inherits="MiCar.frmDailyTransportCheckout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 111px;
            left: 162px;
            z-index: 1;
            width: 126px;
        }
        .auto-style2 {
            position: absolute;
            top: 119px;
            left: 565px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 153px;
            left: 10px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 157px;
            left: 158px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 159px;
            left: 324px;
            z-index: 1;
            height: 12px;
        }
        .auto-style7 {
            position: absolute;
            top: 152px;
            left: 383px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 198px;
            left: 16px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 231px;
            left: 17px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 222px;
            left: 92px;
            z-index: 1;
            width: 342px;
            right: 525px;
        }
        .auto-style12 {
            position: absolute;
            top: 289px;
            left: 17px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 232px;
            left: 796px;
            z-index: 1;
            width: 71px;
            height: 17px;
        }
        .auto-style14 {
            position: absolute;
            top: 187px;
            left: 798px;
            z-index: 1;
            width: 71px;
            height: 17px;
        }
        .auto-style15 {
            position: absolute;
            top: 146px;
            left: 800px;
            z-index: 1;
            width: 71px;
            height: 17px;
        }
        .auto-style16 {
            position: absolute;
            top: 273px;
            left: 796px;
            z-index: 1;
            width: 71px;
            height: 17px;
            right: 30px;
        }
        .auto-style17 {
            left: 17px;
            top: 332px;
            height: 206px;
            width: 914px;
        }
        .auto-style18 {
            position: absolute;
            top: 283px;
            left: 94px;
            z-index: 1;
            width: 342px;
            right: 523px;
        }
        .auto-style19 {
            position: absolute;
            top: 134px;
            left: 9px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 133px;
            left: 349px;
            z-index: 1;
            width: 136px;
        }
        .auto-style21 {
            position: absolute;
            top: 200px;
            left: 318px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 263px;
            left: 96px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 318px;
            left: 92px;
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
            top: 115px;
            left: 16px;
            z-index: 1;
            height: 12px;
        }
        .auto-style26 {
            position: absolute;
            top: 128px;
            left: 524px;
            z-index: 1;
            width: 148px;
            height: 41px;
        }
        .auto-style27 {
            position: absolute;
            top: 197px;
            left: 99px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style24" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT DISTINCT [date] FROM [tb_dailyCheckOut] WHERE ([regno] = @regno)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cboRegNo" Name="regno" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" CssClass="auto-style26" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <asp:DropDownList ID="txtDriversName" runat="server" AutoPostBack="True" CssClass="auto-style27" DataSourceID="SqlDataSource5" DataTextField="driverno" DataValueField="driverno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [driverno], [fname], [lname] FROM [tb_driver]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Vehicle Registration No:" CssClass="auto-style25"></asp:Label>
    <asp:DropDownList ID="cboRegNo" runat="server" AutoPostBack="True" CssClass="auto-style1" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Time in:"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Date:"></asp:Label>
    <asp:TextBox ID="txtTimeIn" runat="server" CausesValidation="True" CssClass="auto-style5" OnTextChanged="txtTimeIn_TextChanged" TextMode="Time"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text="Assignment:"></asp:Label>
    <asp:TextBox ID="txtAssignment" runat="server" CssClass="auto-style11" TextMode="MultiLine"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Time Out:"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT DISTINCT [date] FROM [tb_dailyCheckOut] WHERE ([regno] = @regno)">
        <SelectParameters>
            <asp:ControlParameter ControlID="cboRegNo" Name="regno" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:TextBox ID="txtTimeOut" runat="server" CssClass="auto-style7" OnTextChanged="txtTimeOut_TextChanged1"></asp:TextBox>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text="Driver's Name:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text="Remarks:"></asp:Label>
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style15">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style14">Edit</asp:LinkButton>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style13">Delete</asp:LinkButton>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style16">Exit</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style17" DataSourceID="SqlDataSource4" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="time_out" HeaderText="time_out" SortExpression="time_out" />
            <asp:BoundField DataField="time_in" HeaderText="time_in" SortExpression="time_in" />
            <asp:BoundField DataField="driver_name" HeaderText="driver_name" SortExpression="driver_name" />
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
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno], [date], [time_out], [time_in], [driver_name] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:TextBox ID="txtRemarks" runat="server" CssClass="auto-style18" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="auto-style20" ErrorMessage="Enter the time out" ForeColor="#FF0066" SetFocusOnError="True" ControlToValidate="txtTimeOut"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style21" ErrorMessage="Enter the assignment" ForeColor="#FF0066" SetFocusOnError="True" ControlToValidate="txtAssignment"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style22" ErrorMessage="Enter the remarks" ForeColor="#FF0066" SetFocusOnError="True" ControlToValidate="txtRemarks"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="auto-style19" ErrorMessage="Select the registration number" ForeColor="#FF0066" SetFocusOnError="True" ControlToValidate="cboRegNo"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="auto-style23" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" SetFocusOnError="True"></asp:RequiredFieldValidator>
</asp:Content>
