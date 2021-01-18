<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .auto-style16 {
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style10 {
            background-color: #CCFFFF;
        }
        .auto-style13 {
            width: 40px;
        }
        .auto-style15 {
            font-weight: bold;
            font-size: x-large;
        }
        .auto-style14 {
            width: 42px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel4" runat="server">
        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style10">
        <table class="auto-style7">
            <tr>
                <td class="auto-style13">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                </td>
                <td>ONAYLANAN TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DataList ID="DataList2" runat="server"  Width="412px" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style16"><a href ="TarifOnerDetay.aspx?TarifId=<%# Eval("TarifId") %>">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/tarif.png" Width="60px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Panel ID="Panel5" runat="server" CssClass="auto-style10" style="margin-top:15px;">
            <table class="auto-style7">
                <tr>
                    <td class="auto-style13">
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                    </td>
                    <td class="auto-style14">
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="30px"  Text="-" Width="30px" S OnClick="Button4_Click" />
                    </td>
                    <td>ONAYLANMAYAN TARİF LİSTESİ</td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server">
        <asp:DataList ID="DataList1" runat="server"  Width="412px" >
            <ItemTemplate>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style16"><a href ="TarifOnerDetay.aspx?TarifId=<%# Eval("TarifId") %>">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/tarif.png" Width="60px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    </asp:Content>

