<%@ Page Title="" Language="C#" MasterPageFile="~/haberler.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <img class="img-center" src="<%#Eval("hakkimizdaResim") %>" style="width:650px; height:450px;" alt="">
            </br>
            <p><%#Eval("hakkimizda") %></p>

        </ItemTemplate>

    </asp:Repeater>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

