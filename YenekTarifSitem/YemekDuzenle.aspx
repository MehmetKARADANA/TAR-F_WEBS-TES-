<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #33CCFF;
        }
        .auto-style11 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #66FF33;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">Yemek Adı:</td>
            <td>
                <asp:TextBox ID="txtYemekAd" runat="server"  CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Malzemeler:</td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server"  CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tarif:</td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server"  CssClass="tb5" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Kategori:</td>
            <td>
                <asp:DropDownList ID="DropDownList1"  CssClass="tb5" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Yemek Görüntü:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GÜNCELLE" CssClass="auto-style10" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="GÜNÜN YEMEĞİ SEÇ" CssClass="auto-style11" Width="250px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

