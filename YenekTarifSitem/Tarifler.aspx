<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

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
                    <asp:Button ID="btnPanel2Visible" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnPanel2Visible_Click"    />
                    </strong></td>
                <td class="auto-style12"><strong>
                    <asp:Button ID="btnPanel2Nonvisible" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnPanel2Nonvisible_Click"   />
                    </strong></td>
                <td>ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table class="auto-style9" border="1" >
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>' ></asp:Label>
                       <%-- burada çağırırken islem değerine sil atıyoruz onıda id gibi request etcez--%></td>
                        <td class="auto-style16">
                            <a href="TariflerDetay.aspx?idTarif=<%#Eval("Tarifid") %>"><asp:Image ID="Image3" runat="server" CssClass="tb5" Height="40px" ImageUrl="~/Projecticons/imagesread.jpeg" Width="40px" /></a>
                            </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="height:10px">
    </div>
      <asp:Panel ID="Panel3" runat="server" Height="45px" CssClass="auto-style15">
      <table class="auto-style9">
          <tr>
              <td class="auto-style10"><strong>
                  <asp:Button ID="btnPanel4visible" runat="server"  CssClass="tb5" Text="+" Width="40px" Height="40px" Font-Size="X-Large" OnClick="btnPanel4visible_Click"    />
                  </strong></td>
              <td class="auto-style12"><strong>
                  <asp:Button ID="btnPanel4Nonvisible" runat="server" Text="-" Width="40px" CssClass="tb5" Height="40px" Font-Size="X-Large" OnClick="btnPanel4Nonvisible_Click"   />
                  </strong></td>
              <td>ONAYLI TARİF LİSTESİ</td>
          </tr>
      </table>
  </asp:Panel>
  <asp:Panel ID="Panel4" runat="server">
      <asp:DataList ID="DataList2" runat="server" Width="450px">
          <ItemTemplate>
              <table class="auto-style9" border="1" >
                  <tr>
                      <td class="auto-style13">
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>' ></asp:Label>
                     <%-- burada çağırırken islem değerine sil atıyoruz onıda id gibi request etcez--%></td>
                      
                  </tr>
              </table>
          </ItemTemplate>
      </asp:DataList>
  </asp:Panel>
     <div style="height:10px">
 </div>
</asp:Content>

