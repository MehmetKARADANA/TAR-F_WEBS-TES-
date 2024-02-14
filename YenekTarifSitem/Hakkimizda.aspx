<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style5 {
            text-align: center;
            
        }
        .auto-style6 {
            font-size: x-large;
            text-align: center;
            height: 40px;
            width: 450px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style6">
        <strong>Hakkimizda</strong></p>
    <div class="auto-style5">
        <asp:DataList ID="DataList2" runat="server"  Width="450px">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl="~/ProjectAssets/blog.jpg" Width="450px" />
    </div>
</asp:Content>

