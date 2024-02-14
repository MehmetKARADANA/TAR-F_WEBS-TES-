<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="TariflerDetay.aspx.cs" Inherits="TariflerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            text-align: right;
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
            <td class="auto-style9">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tarif Malzemeler:</td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tarif:</td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tarif Resim:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="200px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Tarif Öneren:</td>
            <td>
                <asp:TextBox ID="txtTarifOneren" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Öneren Mail:</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" CssClass="tb5" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Kategori Seçimi:</td>
            <td>
                <asp:DropDownList ID="DropDownListKategori" runat="server" CssClass="tb5">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="tb5" OnClick="Button1_Click" Text="ONAYLA" Width="200px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

