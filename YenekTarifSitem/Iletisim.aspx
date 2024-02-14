<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
       
        .auto-style5 {
            font-size: x-large;
            color: #FF6600;
            text-align: center;
        }
        .auto-style6 {
            text-align: right;
        }
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5" colspan="2"><strong>MESAJ PANELİ</strong></td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style6">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" Height="30px" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mail Adresiniz:</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" Height="30px" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Konu:</td>
            <td>
                <asp:TextBox ID="txtKonu" runat="server" Height="30px" Width="200px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mesaj:</td>
            <td>
                <asp:TextBox ID="txtMesaj" runat="server" Height="100px" Width="200px" CssClass="tb5" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="30px" Text="Gönder" Width="150px" CssClass="tb5" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

