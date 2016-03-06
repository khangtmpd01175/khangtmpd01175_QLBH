<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TrangChu.aspx.vb" Inherits="khangtmpd01175_QLBH.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #6600CC;
        }
        .auto-style2 {
            color: #6600CC;
        }
        .auto-style4 {
            background-color: #6600CC;
        }
        .auto-style5 {
            color: #FFFFFF;
            width: 750px;
            background-color: #6600CC;
        }
        .auto-style6 {
            color: #FFFFFF;
            width: 239px;
            background-color: #6600CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 40px">
    
        <h1><strong><span class="auto-style1">Quản Lý Bán Hàng</span></strong></h1>
        <p>
            <span lang="EN-US" style="font-size:11.0pt;line-height:
115%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:Arial;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
mso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"><span class="auto-style2">MSSV: khangtmpd01175</span><br class="auto-style2" />
            <span class="auto-style2">Lớp</span><span class="auto-style2" style="mso-spacerun:yes">&nbsp;&nbsp; </span><span class="auto-style2">: PT10303</span></span></p>
        <h2 class="auto-style5"><strong><span class="auto-style4">Bảng Khách Hàng</span></strong></h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" GridLines="None" Width="750px">
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                <asp:BoundField DataField="Diachi" HeaderText="Diachi" SortExpression="Diachi" />
                <asp:BoundField DataField="Quan" HeaderText="Quan" SortExpression="Quan" />
                <asp:BoundField DataField="Thanhpho" HeaderText="Thanhpho" SortExpression="Thanhpho" />
                <asp:BoundField DataField="Dienthoai" HeaderText="Dienthoai" SortExpression="Dienthoai" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" DeleteCommand="DELETE FROM [KHACH_HANG] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [KHACH_HANG] ([MaKH], [TenKH], [Diachi], [Quan], [Thanhpho], [Dienthoai]) VALUES (@MaKH, @TenKH, @Diachi, @Quan, @Thanhpho, @Dienthoai)" SelectCommand="SELECT * FROM [KHACH_HANG]" UpdateCommand="UPDATE [KHACH_HANG] SET [TenKH] = @TenKH, [Diachi] = @Diachi, [Quan] = @Quan, [Thanhpho] = @Thanhpho, [Dienthoai] = @Dienthoai WHERE [MaKH] = @MaKH">
            <DeleteParameters>
                <asp:Parameter Name="MaKH" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKH" Type="String" />
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Quan" Type="String" />
                <asp:Parameter Name="Thanhpho" Type="String" />
                <asp:Parameter Name="Dienthoai" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenKH" Type="String" />
                <asp:Parameter Name="Diachi" Type="String" />
                <asp:Parameter Name="Quan" Type="String" />
                <asp:Parameter Name="Thanhpho" Type="String" />
                <asp:Parameter Name="Dienthoai" Type="String" />
                <asp:Parameter Name="MaKH" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <h2 class="auto-style6">Thao Tác</h2>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" GridLines="Both" Width="239px">
            <EditItemTemplate>
                MaKH:
                <asp:Label ID="MaKHLabel1" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                TenKH:
                <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                Diachi:
                <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                <br />
                Quan:
                <asp:TextBox ID="QuanTextBox" runat="server" Text='<%# Bind("Quan") %>' />
                <br />
                Thanhpho:
                <asp:TextBox ID="ThanhphoTextBox" runat="server" Text='<%# Bind("Thanhpho") %>' />
                <br />
                Dienthoai:
                <asp:TextBox ID="DienthoaiTextBox" runat="server" Text='<%# Bind("Dienthoai") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MaKH:
                <asp:TextBox ID="MaKHTextBox" runat="server" Text='<%# Bind("MaKH") %>' />
                <br />
                TenKH:
                <asp:TextBox ID="TenKHTextBox" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                Diachi:
                <asp:TextBox ID="DiachiTextBox" runat="server" Text='<%# Bind("Diachi") %>' />
                <br />
                Quan:
                <asp:TextBox ID="QuanTextBox" runat="server" Text='<%# Bind("Quan") %>' />
                <br />
                Thanhpho:
                <asp:TextBox ID="ThanhphoTextBox" runat="server" Text='<%# Bind("Thanhpho") %>' />
                <br />
                Dienthoai:
                <asp:TextBox ID="DienthoaiTextBox" runat="server" Text='<%# Bind("Dienthoai") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MaKH:
                <asp:Label ID="MaKHLabel" runat="server" Text='<%# Eval("MaKH") %>' />
                <br />
                TenKH:
                <asp:Label ID="TenKHLabel" runat="server" Text='<%# Bind("TenKH") %>' />
                <br />
                Diachi:
                <asp:Label ID="DiachiLabel" runat="server" Text='<%# Bind("Diachi") %>' />
                <br />
                Quan:
                <asp:Label ID="QuanLabel" runat="server" Text='<%# Bind("Quan") %>' />
                <br />
                Thanhpho:
                <asp:Label ID="ThanhphoLabel" runat="server" Text='<%# Bind("Thanhpho") %>' />
                <br />
                Dienthoai:
                <asp:Label ID="DienthoaiLabel" runat="server" Text='<%# Bind("Dienthoai") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
        </asp:FormView>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
