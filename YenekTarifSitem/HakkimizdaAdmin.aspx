<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
           .auto-style15 {
       background-color: #999999;
   }
   .auto-style9 {
       width: 100%;
       height: 45px;
   }
        .auto-style16 {
            text-align: center;
        }
        .auto-style17 {
            width: 50px;
            text-align: center;
        }
        .auto-style18 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            background-color: #66FF66;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" Height="45px">
        <table class="auto-style9">
            <tr>
                <td class="auto-style17"><strong>
                    <asp:Button ID="btnPanel2Visible" runat="server" CssClass="tb5" Font-Size="X-Large" Height="40px"  Text="+" Width="40px" OnClick="btnPanel2Visible_Click" />
                    </strong></td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="btnPanel2Nonvisible" runat="server" CssClass="tb5" Font-Size="X-Large" Height="40px"  Text="-" Width="40px" OnClick="btnPanel2Nonvisible_Click" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="240px">
        <asp:TextBox ID="txtHakkimizda" runat="server" CssClass="tb5" Height="180px" TextMode="MultiLine" Width="440px"></asp:TextBox>
        <div style="height:10px">
          
        </div>
          <table class="auto-style5">
      <tr>
          <td class="auto-style16">
              <asp:Button ID="Button1" runat="server" CssClass="auto-style18" Height="30px" OnClick="Button1_Click" Text="GÜNCELLE" Width="150px" />
          </td>
      </tr>
  </table>
    </asp:Panel>
    <div style="height:10px"></div>
</asp:Content>

