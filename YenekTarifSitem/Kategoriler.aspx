<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 100%;
            height: 45px;
        }
        .auto-style10 {
            width: 50px;
        }
        .auto-style12 {
            width: 49px;
        }
        .auto-style15 {
            background-color: #999999;
        }
        .auto-style13 {
            width: 196px;
        }
        .auto-style16 {
            width: 40px;
            text-align: center;
        }
    
        .auto-style24 {
            height: 40px;
        }
        .auto-style25 {
            height: 30px;
        }
        .auto-style26 {
            height: 30px;
            width: 160px;
        }
        .auto-style28 {
            height: 40px;
            width: 160px;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="45px" CssClass="auto-style15">
        <table class="auto-style9">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnKtgrVisible" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnKtgrVisible_Click" />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="btnKtgrNonvisible" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnKtgrNonvisible_Click" />
                    </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style9" border="1" >
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style16"><%-- burada çağırırken islem değerine sil atıyoruz onıda id gibi request etcez--%>
                            <a href="Kategoriler.aspx?kategoriid=<%#Eval("Kategoriid") %>&islem=sil"><asp:Image ID="Image2" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/delete1.png" Width="40px" /></a>
                        </td>
                        <td class="auto-style16">
                            <a href="KategoriDuzenle.aspx?kategoriid=<%#Eval("Kategoriid") %>"><asp:Image ID="Image3" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/update1.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="height:10px"> </div>
    <asp:Panel ID="Panel3" runat="server" Height="45px" CssClass="auto-style15">
        <table class="auto-style9">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="btnktgekleVisible" runat="server" Text="+" Height="40px" Width="40px" CssClass="tb5" Font-Size="X-Large" OnClick="btnktgekleVisible_Click"/>
                </td>
                <td class="auto-style10">
                    <strong>
                    <asp:Button ID="btnktgrekleNonvisible" runat="server" CssClass="tb5" Font-Size="X-Large" Height="40px" Text="-" Width="40px" OnClick="btnktgrekleNonvisible_Click" />
                    </strong>
                </td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" style=" height:auto">
        <table class="auto-style5">
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style28">Kategori Ad:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="txtKtgrAd" CssClass="tb5" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Kategori İkon:</td>
                <td class="auto-style24">
                    <asp:FileUpload ID="fuploadicon"  CssClass="tb5" runat="server" Height="30px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style25">
                    <asp:Button ID="btnKtgrEkle" runat="server" Text="Ekle" CssClass="tb5" Height="30px" OnClick="btnKtgrEkle_Click"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    
      <div style="height:10px"></div>
 
</asp:Content>

