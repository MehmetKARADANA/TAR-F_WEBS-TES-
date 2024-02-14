<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

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
        .auto-style17 {
            text-align: left;
        width: 380px;
    }
        .auto-style18 {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="45px" CssClass="auto-style15">
    <table class="auto-style9" >
        <tr >
            <td class="auto-style10"><strong >
                <asp:Button ID="btnYemekVisible" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnYemekVisible_Click"  />
                </strong></td>
            <td class="auto-style12" ><strong >
                <asp:Button ID="btnyemekNonvisible" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnyemekNonvisible_Click"  />
                </strong></td>
            <td>YEMEK LİSTESİ</td>
        </tr>
    </table></asp:Panel>
     <asp:Panel ID="Panel2" runat="server">
         <div class="auto-style18">
             <asp:DataList ID="DataList1" runat="server" Width="450px">
                 <ItemTemplate>
                     <table border="1" class="auto-style9">
                         <tr>
                             <td class="auto-style17">
                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>
                             </td>
                             <td class="auto-style18"><a href='YemekDuzenle.aspx?idYemek=<%#Eval("Yemekid") %>'>
                                 <asp:Image ID="Image3" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/imagestick.png" Width="40px" />
                                 </a></td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:DataList>
         </div>
 </asp:Panel>
   <div style="height:10px"></div>
</asp:Content>

