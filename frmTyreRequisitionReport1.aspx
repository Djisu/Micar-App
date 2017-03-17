<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmTyreRequisitionReport1.aspx.cs" Inherits="MiCar.frmTyreRequisitionReport1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 173px;
            left: 10px;
            right: 692px;
        }
        .auto-style2 {
            position: absolute;
            top: 179px;
            left: 111px;
            z-index: 1;
            width: 90px;
        }
        .auto-style3 {
            position: absolute;
            top: 170px;
            left: 328px;
            right: 374px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 169px;
            left: 431px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 215px;
            left: 11px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 215px;
            left: 328px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 214px;
            left: 432px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 212px;
            left: 101px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 244px;
            left: 89px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 245px;
            left: 11px;
            z-index: 1;
            right: 714px;
        }
        .auto-style11 {
            position: absolute;
            top: 247px;
            left: 434px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 252px;
            left: 330px;
            z-index: 1;
            right: 395px;
        }
        .auto-style13 {
            position: absolute;
            top: 283px;
            left: 13px;
            z-index: 1;
            right: 730px;
        }
        .auto-style14 {
            position: absolute;
            top: 292px;
            left: 91px;
            z-index: 1;
            width: 184px;
        }
        .auto-style15 {
            position: absolute;
            top: 166px;
            left: 579px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 228px;
            left: 582px;
            z-index: 1;
            width: 80px;
        }
    .auto-style17 {
        position: absolute;
        top: 241px;
        left: 10px;
    }
    .auto-style18 {
        position: absolute;
        top: 294px;
        left: 334px;
        z-index: 1;
        width: 271px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Registration No:"></asp:Label>
    <asp:DropDownList ID="cboRegno1" runat="server" AutoPostBack="True" CssClass="auto-style2" DataSourceID="SqlDataSourceRegno" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceRegno" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [regno] FROM [tb_vehicle]"></asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Department:"></asp:Label>
    <asp:DropDownList ID="cboRegno2" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSourceRegno" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Date:"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSourceDate0" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDate22" runat="server" AutoPostBack="True" CssClass="auto-style7" DataSourceID="SqlDataSourceDate" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:DropDownList ID="cboDept11" runat="server" AutoPostBack="True" CssClass="auto-style9" DataSourceID="SqlDataSourceDept" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_dept]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboDept22" runat="server" AutoPostBack="True" CssClass="auto-style11" DataSourceID="SqlDataSourceDept" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style18" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style12" Text="Department:"></asp:Label>
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style16">Exit</asp:LinkButton>
    <asp:LinkButton ID="cmdReport0" runat="server" BorderStyle="Outset" CssClass="auto-style15" OnClick="cmdReport0_Click">Produce Report</asp:LinkButton>
    <br />
    <asp:DropDownList ID="cboPart11" runat="server" AutoPostBack="True" CssClass="auto-style14" DataSourceID="SqlDataSource1" DataTextField="regno" DataValueField="regno">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_tyreRequisition] WHERE ([item] = @item)">
        <SelectParameters>
            <asp:QueryStringParameter Name="item" QueryStringField="Tyre" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="auto-style1" style="z-index: 1" Text="Registration No:"></asp:Label>
    <asp:DropDownList ID="cboDate11" runat="server" AutoPostBack="True" CssClass="auto-style8" DataSourceID="SqlDataSourceDate" DataTextField="date" DataValueField="date">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceDate" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [date] FROM [tb_dailyCheckOut]"></asp:SqlDataSource>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Date:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style13" Text="Item:"></asp:Label>
<asp:Label ID="txtUserLabel" runat="server" CssClass="auto-style17" style="z-index: 1" Text=" " Visible="False"></asp:Label>
</asp:Content>
