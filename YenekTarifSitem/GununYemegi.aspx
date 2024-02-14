<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style5 {
            height: 29px;
            width: 700px;
        }
        .auto-style6 {
            height: 25px;
            width: 700px;
            text-align: left;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            text-align: left;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2"   ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style7">
        <asp:DataList ID="DataList2"  runat="server"  >
            <ItemTemplate>
                <table >
                    <tr>
                        <td class="auto-style8" ><strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Malzemeler: </strong>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="">
                            <asp:Image ID="Image1" runat="server"   Height="250px" Width="420px" ImageUrl='<%# Eval("YemekResim") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Tarif: </strong>
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6"></td>
                    </tr>
                    <tr>
                        <td class="auto-style8"><strong>Puan: </strong>
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            &nbsp;&nbsp; <strong>&nbsp;&nbsp; Tarih: </strong>
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5"></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>

