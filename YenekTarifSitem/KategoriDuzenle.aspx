<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 180px;
        }
        .auto-style10 {
            width: 180px;
            text-align: right;
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
        }
        .auto-style13 {
            width: 180px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Kategori Ad:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txtKtgrAd"  CssClass="tb5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Adet:</strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txtKtgrAdet"  CssClass="tb5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Resim:</strong></td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileupTxtResim"  CssClass="tb5" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style6">
                <asp:Button ID="btnGuncelle" runat="server" CssClass="tb5" Text="Güncelle" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

