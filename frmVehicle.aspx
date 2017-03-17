<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmVehicle.aspx.cs" Inherits="MiCar.frmVehicle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 116px;
            left: 17px;
            z-index: 1;
            width: 145px;
            height: 10px;
        }
        .auto-style2 {
            position: absolute;
            top: 115px;
            left: 185px;
            z-index: 1;
            width: 147px;
        }
        .auto-style3 {
            position: absolute;
            top: 145px;
            left: 499px;
            z-index: 1;
            width: 147px;
            height: 16px;
        }
        .auto-style4 {
            position: absolute;
            top: 147px;
            left: 13px;
            z-index: 1;
            width: 147px;
        }
        .auto-style5 {
            position: absolute;
            top: 147px;
            left: 186px;
            z-index: 1;
            width: 147px;
        }
        .auto-style6 {
            position: absolute;
            top: 107px;
            left: 508px;
            z-index: 1;
            width: 147px;
        }
        .auto-style7 {
            position: absolute;
            top: 191px;
            left: 8px;
            z-index: 1;
            width: 147px;
        }
        .auto-style8 {
            position: absolute;
            top: 190px;
            left: 185px;
            z-index: 1;
            width: 174px;
        }
        .auto-style9 {
            position: absolute;
            top: 113px;
            left: 351px;
            z-index: 1;
            width: 147px;
        }
        .auto-style10 {
            position: absolute;
            top: 233px;
            left: 11px;
            z-index: 1;
            width: 147px;
        }
        .auto-style11 {
            position: absolute;
            top: 234px;
            left: 189px;
            z-index: 1;
            width: 147px;
        }
        .auto-style12 {
            position: absolute;
            top: 279px;
            left: 15px;
            z-index: 1;
            width: 92px;
            height: 17px;
        }
        .auto-style13 {
            position: absolute;
            top: 378px;
            left: 514px;
            z-index: 1;
            width: 147px;
        }
        .auto-style14 {
            position: absolute;
            top: 147px;
            left: 655px;
            z-index: 1;
            width: 147px;
        }
        .auto-style15 {
            position: absolute;
            top: 108px;
            left: 659px;
            z-index: 1;
            width: 147px;
        }
        .auto-style16 {
            position: absolute;
            top: 180px;
            left: 491px;
            z-index: 1;
            width: 162px;
            height: 20px;
        }
        .auto-style17 {
            position: absolute;
            top: 184px;
            left: 320px;
            z-index: 1;
            width: 174px;
            height: 17px;
        }
        .auto-style18 {
            position: absolute;
            top: 182px;
            left: 655px;
            z-index: 1;
            width: 147px;
        }
        .auto-style19 {
            position: absolute;
            top: 130px;
            left: 793px;
            z-index: 1;
            width: 104px;
            height: 113px;
        }
        .auto-style20 {
            position: absolute;
            top: 375px;
            left: 15px;
            z-index: 1;
            width: 147px;
        }
        .auto-style21 {
            position: absolute;
            top: 375px;
            left: 184px;
            z-index: 1;
            width: 147px;
        }
        .auto-style22 {
            position: absolute;
            top: 374px;
            left: 798px;
            z-index: 1;
            width: 79px;
        }
        .auto-style23 {
            position: absolute;
            top: 132px;
            left: 19px;
            z-index: 1;
            height: 13px;
        }
        .auto-style24 {
            position: absolute;
            top: 163px;
            left: 19px;
            z-index: 1;
            height: 13px;
        }
        .auto-style25 {
            position: absolute;
            top: 163px;
            left: 184px;
            z-index: 1;
            height: 13px;
        }
        .auto-style26 {
            position: absolute;
            top: 206px;
            left: 19px;
            z-index: 1;
            height: 13px;
        }
        .auto-style27 {
            position: absolute;
            top: 205px;
            left: 184px;
            z-index: 1;
            height: 13px;
        }
        .auto-style28 {
            position: absolute;
            top: 130px;
            left: 351px;
            z-index: 1;
            height: 13px;
        }
        .auto-style30 {
            position: absolute;
            top: 396px;
            left: 516px;
            z-index: 1;
            height: 13px;
        }
        .auto-style31 {
            position: absolute;
            top: 203px;
            left: 351px;
            z-index: 1;
            height: 13px;
        }
        .auto-style32 {
            position: absolute;
            top: 394px;
            left: 16px;
            z-index: 1;
            height: 14px;
        }
        .auto-style33 {
            position: absolute;
            top: 393px;
            left: 181px;
            z-index: 1;
            height: 13px;
        }
        .auto-style34 {
            position: absolute;
            top: 394px;
            left: 344px;
            z-index: 1;
            height: 13px;
        }
        .auto-style35 {
            position: absolute;
            top: 129px;
            left: 183px;
            z-index: 1;
            width: 130px;
        }
        .auto-style36 {
            position: absolute;
            top: 250px;
            left: 20px;
            z-index: 1;
            width: 130px;
        }
        .auto-style37 {
            position: absolute;
            top: 250px;
            left: 184px;
            z-index: 1;
            width: 130px;
        }
        .auto-style38 {
            position: absolute;
            top: 199px;
            left: 654px;
            z-index: 1;
            width: 130px;
            bottom: 330px;
        }
        .auto-style43 {
            left: 17px;
            top: 432px;
            width: 998px;
        }
        .auto-style44 {
            position: absolute;
            top: 256px;
            left: 797px;
            z-index: 1;
            height: 17px;
            width: 79px;
        }
        .auto-style45 {
            position: absolute;
            top: 377px;
            left: 347px;
            z-index: 1;
            width: 147px;
            height: 17px;
        }
        .auto-style46 {
            position: absolute;
            top: 334px;
            left: 798px;
            z-index: 1;
            width: 78px;
            height: 17px;
        }
        .auto-style47 {
            position: absolute;
            top: 295px;
            left: 797px;
            z-index: 1;
            width: 79px;
        }
        .auto-style48 {
            position: absolute;
            top: 414px;
            left: 11px;
            z-index: 1;
            height: 20px;
            width: 149px;
        }
        .auto-style49 {
            position: absolute;
            top: 130px;
            left: 509px;
            z-index: 1;
            height: 14px;
        }
        .auto-style50 {
            position: absolute;
            top: 198px;
            left: 507px;
            z-index: 1;
        }
        .auto-style51 {
            position: absolute;
            top: 164px;
            left: 510px;
            z-index: 1;
            height: 12px;
        }
        .auto-style52 {
            position: absolute;
            top: 162px;
            left: 656px;
            z-index: 1;
            height: 12px;
        }
        .auto-style53 {
            position: absolute;
            top: 125px;
            left: 654px;
            z-index: 1;
            height: 12px;
        }
        .auto-style54 {
            position: absolute;
            top: 232px;
            left: 335px;
            z-index: 1;
            width: 174px;
            height: 17px;
        }
        .auto-style55 {
            position: absolute;
            top: 249px;
            left: 350px;
            z-index: 1;
            height: 13px;
        }
        .auto-style56 {
            position: absolute;
            top: 231px;
            left: 490px;
            z-index: 1;
            width: 162px;
            height: 20px;
        }
        .auto-style57 {
            position: absolute;
            top: 244px;
            left: 504px;
            z-index: 1;
        }
        .auto-style58 {
            position: absolute;
            top: 231px;
            left: 651px;
            z-index: 1;
            width: 147px;
        }
        .auto-style59 {
            position: absolute;
            top: 246px;
            left: 656px;
            z-index: 1;
            width: 130px;
            bottom: 283px;
        }
        .auto-style60 {
            position: absolute;
            top: 312px;
            left: 12px;
            z-index: 1;
            width: 98px;
        }
        .auto-style61 {
            position: absolute;
            top: 308px;
            left: 107px;
            z-index: 1;
            height: 14px;
            width: 116px;
        }
        .auto-style62 {
            position: absolute;
            top: 315px;
            left: 288px;
            z-index: 1;
            width: 98px;
        }
        .auto-style63 {
            position: absolute;
            top: 311px;
            left: 608px;
            z-index: 1;
            height: 14px;
            width: 116px;
        }
        .auto-style64 {
            position: absolute;
            top: 315px;
            left: 529px;
            z-index: 1;
            width: 98px;
        }
        .auto-style65 {
            position: absolute;
            top: 310px;
            left: 389px;
            z-index: 1;
            height: 14px;
            width: 116px;
        }
        .auto-style66 {
            position: absolute;
            top: 277px;
            left: 96px;
            z-index: 1;
            width: 359px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <asp:Label ID="txtUserLabel" runat="server"></asp:Label>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="Vehicle Registration Date"></asp:Label>
    <asp:TextBox ID="DTpurchDate" runat="server" CausesValidation="True" CssClass="auto-style49" TextMode="Date"></asp:TextBox>
    <asp:TextBox ID="dtRWdateofIssue" runat="server" CausesValidation="True" CssClass="auto-style50" TextMode="Date"></asp:TextBox>
    <asp:TextBox ID="DTRegDate" runat="server" CausesValidation="True" CssClass="auto-style51" TextMode="Date"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Machine Type"></asp:Label>
    <asp:Label ID="Label2" runat="server" CssClass="auto-style7" Text="Wheel Size:"></asp:Label>
    <asp:Label ID="Label7" runat="server" CssClass="auto-style8" Text="Rim Size"></asp:Label>
    <asp:Label ID="Label9" runat="server" CssClass="auto-style4" Text="Chassis No:"></asp:Label>
    <asp:Label ID="Label10" runat="server" CssClass="auto-style10" Text="Department:"></asp:Label>
    <asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text="Location:"></asp:Label>
    <asp:Label ID="Label12" runat="server" CssClass="auto-style12" Text="Picture Path:"></asp:Label>
    <asp:Label ID="Label13" runat="server" CssClass="auto-style13" Text="Engine Capacity:"></asp:Label>
    <asp:Label ID="Label14" runat="server" CssClass="auto-style14" Text="First Service Date:"></asp:Label>
    <asp:Label ID="Label15" runat="server" CssClass="auto-style15" Text="Next Service Date:"></asp:Label>
    <asp:Label ID="Label16" runat="server" CssClass="auto-style16" Text="Road Worthy Date of Issue:"></asp:Label>
    <asp:Label ID="Label17" runat="server" CssClass="auto-style54" Text="Imsurance Place of Issue:"></asp:Label>
    <asp:Label ID="Label18" runat="server" CssClass="auto-style58" Text="Insurance Validity:"></asp:Label>
    <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Text="Vehicle Registration No:"></asp:Label>
    <asp:Label ID="Label19" runat="server" CssClass="auto-style60" Text="Total Income:" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
    <asp:Label ID="Label20" runat="server" CssClass="auto-style21" Text="Total Mileage:"></asp:Label>
    <asp:Label ID="Label21" runat="server" CssClass="auto-style45" Text="Kilometers Per Gallon:"></asp:Label>
    <asp:TextBox ID="txtchassesno" runat="server" CssClass="auto-style24"></asp:TextBox>
    <asp:TextBox ID="txtWheelSize" runat="server" CssClass="auto-style26"></asp:TextBox>
    <asp:TextBox ID="txtmake" runat="server" CssClass="auto-style25"></asp:TextBox>
    <asp:TextBox ID="txtRimSize" runat="server" CssClass="auto-style27"></asp:TextBox>
    <asp:TextBox ID="txtweightofvehicle" runat="server" CssClass="auto-style28"></asp:TextBox>
    <asp:TextBox ID="txtEngineCapacity" runat="server" CssClass="auto-style30"></asp:TextBox>
    <asp:TextBox ID="txtRWplaceofissue" runat="server" CssClass="auto-style31"></asp:TextBox>
    <asp:TextBox ID="txtTotalmileage" runat="server" CssClass="auto-style33" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="txtregno" runat="server" CssClass="auto-style23"></asp:TextBox>
    <asp:DropDownList ID="txtDepartment" runat="server" CssClass="auto-style36" AutoPostBack="True" DataSourceID="SqlDataSourceDept" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_dept]"></asp:SqlDataSource>
    <asp:DropDownList ID="txttype" runat="server" CssClass="auto-style35" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [name] FROM [tb_types]"></asp:SqlDataSource>
    <asp:DropDownList ID="cboRWvalidity" runat="server" CssClass="auto-style38" AutoPostBack="True">
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:LinkButton ID="cmdDelete" runat="server" BorderStyle="Outset" CssClass="auto-style46">Delete</asp:LinkButton>
    <asp:TextBox ID="dtfirstservicedate" runat="server" CausesValidation="True" CssClass="auto-style52" TextMode="Date"></asp:TextBox>
    <asp:TextBox ID="dtnextservicedate" runat="server" CausesValidation="True" CssClass="auto-style53" TextMode="Date"></asp:TextBox>
    <br />
    <asp:Image ID="ImageVehicle" runat="server" BorderStyle="Outset" CssClass="auto-style19" />
    <asp:DropDownList ID="cbolocation" runat="server" CssClass="auto-style37" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="code" DataValueField="code">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT * FROM [tb_location]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style43" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="make" HeaderText="make" SortExpression="make" />
            <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
            <asp:BoundField DataField="regno" HeaderText="regno" SortExpression="regno" />
            <asp:BoundField DataField="chassesno" HeaderText="chassesno" SortExpression="chassesno" />
            <asp:BoundField DataField="wheelsize" HeaderText="wheelsize" SortExpression="wheelsize" />
            <asp:BoundField DataField="rimsize" HeaderText="rimsize" SortExpression="rimsize" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FleetConnectionString %>" SelectCommand="SELECT [make], [type], [regno], [chassesno], [wheelsize], [rimsize] FROM [tb_vehicle] ORDER BY [regno]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Vehicle Purchase Date:"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Make:"></asp:Label>
    <br />
    <asp:TextBox ID="txtINplaceofissue" runat="server" CssClass="auto-style55"></asp:TextBox>
    <asp:Label ID="Label23" runat="server" CssClass="auto-style56" Text="Road Worthy Date of Issue:"></asp:Label>
    <asp:TextBox ID="dtINdateofissue" runat="server" CausesValidation="True" CssClass="auto-style57" TextMode="Date"></asp:TextBox>
    <br />
    <asp:Label ID="Label8" runat="server" CssClass="auto-style9" Text="Weight of Vehicle"></asp:Label>
    <asp:Label ID="Label22" runat="server" CssClass="auto-style17" Text="Road Worthy Place of Issue:"></asp:Label>
    <asp:Label ID="Label24" runat="server" CssClass="auto-style18" Text="Road Worthy Validity:"></asp:Label>
    <br />
    <asp:DropDownList ID="cboINvalidity" runat="server" CssClass="auto-style59" AutoPostBack="True">
        <asp:ListItem>YES</asp:ListItem>
        <asp:ListItem>NO</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:FileUpload ID="txtPicturePath" runat="server" CssClass="auto-style66" />
    <br />
    <asp:Label ID="Label25" runat="server" CssClass="auto-style20" Text="Total Gallons:"></asp:Label>
    <asp:TextBox ID="txtExpense" runat="server" CssClass="auto-style65" Enabled="False"></asp:TextBox>
    <asp:Label ID="Label27" runat="server" CssClass="auto-style64" Text="Profit/Loss:" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
    <br />
    <asp:TextBox ID="txtTotalgallons0" runat="server" CssClass="auto-style32" Enabled="False"></asp:TextBox>
    <br />
    <asp:Label ID="Label26" runat="server" CssClass="auto-style62" Text="Total Expenses:" Font-Bold="True" ForeColor="#3399FF"></asp:Label>
    <asp:TextBox ID="txtProfitLoss" runat="server" CssClass="auto-style63" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:LinkButton ID="cmdExit" runat="server" BorderStyle="Outset" CssClass="auto-style22">Exit</asp:LinkButton>
    <asp:TextBox ID="txtIncome" runat="server" CssClass="auto-style61" Enabled="False"></asp:TextBox>
    <br />
    <asp:LinkButton ID="cmdAdd" runat="server" BorderStyle="Outset" CssClass="auto-style44" OnClick="cmdAdd_Click1">Add</asp:LinkButton>
    <asp:LinkButton ID="cmdEdit" runat="server" BorderStyle="Outset" CssClass="auto-style47">Edit</asp:LinkButton>
    <asp:Label ID="lblResults" runat="server" CssClass="auto-style48" EnableViewState="False" Font-Bold="True" ForeColor="#FF33CC"></asp:Label>
    <asp:TextBox ID="txtKilopergallon" runat="server" CssClass="auto-style34" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
