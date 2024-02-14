<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

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
    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="45px" CssClass="auto-style15">
        <table class="auto-style9">
            <tr>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnYemekVisible" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnYemekVisible_Click"   />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="btnyemekNonvisible" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnyemekNonvisible_Click"  />
                    </strong></td>
                <td>MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style9" border="1" >
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>' ></asp:Label>
                       <%-- burada çağırırken islem değerine sil atıyoruz onıda id gibi request etcez--%></td>
                        <td class="auto-style16"><a href="MesajDetay.aspx?idMesaj=<%#Eval("Mesajid") %>">
                            <asp:Image ID="Image3" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/imagesread.jpeg" Width="40px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="height:10px">
    </div>
</asp:Content>

