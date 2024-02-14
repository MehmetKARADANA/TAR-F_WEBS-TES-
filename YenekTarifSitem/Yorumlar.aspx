<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style15 {
            background-color: #999999;
        }
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
        .auto-style13 {
            width: 196px;
        }
        .auto-style16 {
            width: 40px;
            text-align: center;
        }
    
        .auto-style17 {
            width: 40px;
        }
    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="45px" CssClass="auto-style15">
        <table class="auto-style9">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnYemekVisible" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnYemekVisible_Click"  />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="btnyemekNonvisible" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnyemekNonvisible_Click"  />
                    </strong></td>
                <td>ONAYLI YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style9" border="1" >
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <a href="Yorumlar.aspx?idYorum=<%#Eval("Yorumid") %>&islem=sil"></abbr><asp:Image ID="Image2" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/delete1.png" Width="40px" />
                            </a>
</td> 
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="45px" style="margin-top:15px" CssClass="auto-style15">
        <table class="auto-style9" >
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnYemekVisible0" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnYemekVisible0_Click"  />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="btnyemekNonvisible0" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnyemekNonvisible0_Click"  />
                    </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        <asp:Panel ID="Panel4"  runat="server">
        
        <asp:DataList ID="DataList2" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style9" border="1" >
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                       <%-- <td class="auto-style16"><%-- burada çağırırken islem değerine sil atıyoruz onıda id gibi request etcez </td>--%>
                        <td class="auto-style16">
                            <a href="YorumDetay.aspx?idYorum=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/update1.png" Width="40px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
            </asp:Panel>
    <div style="height:10px"></div>
    </asp:Content>

