<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            color: #FFFF00;
        }
         .auto-style5 {
     height: 60px;
     color: #FF0000;
     background-color: #FF3300;
            width: 450px;
        }
        .auto-style7 {
            height: 30px;
            text-align: left;
            background-color: #0066FF;
        }
        .auto-style8 {
            width: 164px;
        }
        .auto-style9 {
            width: 164px;
            text-align: right;
        }

       
        .auto-style10 {
            text-align: center;
           
        }

       
        .auto-style11 {
            text-align: left;
        }

       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server">
    <div style="height:10px"></div>
    <table class="auto-style5">
        <tr>
            <td ><strong>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                </strong></td>
        </tr>
    </table>
    <div style="height:10px"></div>
       
    
        
            
       
    
        
             <asp:DataList ID="DataList1" Width="444px" runat="server" CssClass="auto-style10"  >
        <ItemTemplate>
           
                <strong>Malzemeler:</strong><asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                <br />
                <br />
                <strong>Tarif:</strong><asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" Height="200px" Width="420px"/>
                <strong>
                <br />
                <br />
                Eklenme Tarihi:</strong>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                &nbsp;-<strong>Puan: </strong>
                <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                <br />
           
        </ItemTemplate>
</asp:DataList>
        
  
       
    
        
  
       
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            </strong>
     
            <table class="auto-style1">

                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
              
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp; -------------------------------------------------------</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <div class="auto-style7">&nbsp; Yorum Yapma Paneli</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style9">Ad Soyad:</td>
                    <td>
                        <asp:TextBox ID="txtAdSoyad" runat="server" Height="30px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Mail:</td>
                    <td><strong>
                        <asp:TextBox ID="txtMail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">Yorumunuz:</td>
                    <td><strong>
                        <asp:TextBox ID="txtYorum" runat="server" Height="30px" TextMode="MultiLine" Width="200px">Yorum yapınız...</asp:TextBox>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" Width="120px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </asp:Panel>
</asp:Content>

