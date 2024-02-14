<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
         
        }
        .auto-style7 {
            height: 30px;
            font-size: x-large;
            text-align: center;
            color: #FF6600;
        }
         
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style7" colspan="2">Tarif Öner</td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Ad:</td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server"  CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Malzemeler:</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtMalzeme" runat="server" Height="100px" TextMode="MultiLine"  CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif:</td>
        <td class="auto-style6">
            <asp:TextBox ID="txtTarif" runat="server" Height="100px" TextMode="MultiLine"  CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Resim:</td>
        <td class="auto-style6">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Tarif Öneren:</td>
        <td class="auto-style6">
            <asp:TextBox ID="TxtToneren" runat="server" Height="25px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">Mail:</td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" AutoCompleteType="Email" Height="25px"  CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td ></td>
        <td >
            <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" BorderColor="Blue" Height="30px" CssClass="tb5" Text="Tarif Öner" Width="150px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

