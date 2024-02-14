<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
           
        }
        .auto-style5 {
            height: 60px;
            color: #FF0000;
            background-color: #FF3300;
            width: 450px;
        }
    .auto-style6 {
        margin-right: 0px;
    }
        .auto-style8 {
            width: 450px;
        }
        .auto-style9 {
            width: 450px;
            text-align: center;
        }
    </style>
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        deneme</p>
</asp:Content>--%>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
   
                    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style6">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style5"><strong><!-- altta dinamik veri bağlama Tblyemekler tablosuna göre yemekid değişkeni
                                        ile veri bağlama yaptık ayrıca burası nasıl karıştı anlamadım kategori detaya nasıl döndü burası -->
                                       <a href="YemekDetay.aspx?yemekid=<%#Eval("Yemekid") %>"> <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style4"></asp:Label></a>
                                        </strong></td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>Malzemeler:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>Tarif:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style9">
                                        <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("YemekResim") %>' Width="421px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8"><strong>Eklenme Tarihi:</strong>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                        &nbsp;-<strong>Puan: </strong>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style8">&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
    
</asp:Content>


