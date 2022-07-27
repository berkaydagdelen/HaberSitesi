<%@ Page Title="" Language="C#" MasterPageFile="~/haberler.master" AutoEventWireup="true" CodeFile="Haberler.aspx.cs" Inherits="deneme" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="width: 700px;">
        <ol class="breadcrumb">
            <li><a href="AnaSayfa.aspx">AnaSayfa</a></li>

            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>

                    <li><a href="Haberler.aspx?HaberKategoriid=<%#Eval("HaberKategoriid") %>"><%#Eval("HaberKategoriAd") %></a></li>
                </ItemTemplate>

            </asp:Repeater>


        </ol>
    </div>

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>



            <h1><%#Eval("HaberBaslik") %> </h1>
            <div class="post_commentbox"><a href="#"><i class="fa fa-user"></i>berkay</a> <span><i class="fa fa-calendar"></i><%#Eval("HaberTarih") %></span></div>
            <div class="single_page_content">
                <img class="img-center" src="<%#Eval("HaberResim") %>" alt="">
                <p><%#Eval("Habericerik") %></p>
                <blockquote><%#Eval("HaberAlticerik") %></blockquote>
            </div>
        </ItemTemplate>

    </asp:Repeater>

    <div style="float: right">
        <cc1:CollectionPager ID="CollectionPager1" runat="server" PageSize="1" SliderSize="1000" ControlCssClass="Sayfalama" ResultsLocation="None" QueryStringKey="Sayfa" BackText="« Geri" LabelText="" NextText="İleri»"></cc1:CollectionPager>
    </div>





</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
   
   
    
    
    
    <div class="related_post">
        <h2>İlgili Yazı <i class="fa fa-thumbs-o-up"></i></h2>
        <ul class="spost_nav wow fadeInDown animated">
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>



                    <li>
                        <div class="media">
                            <a class="media-left" href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>">
                                <img src="<%#Eval("HaberResim") %>" alt="">
                            </a>
                            <div class="media-body">

                                <div class="kısıtlama"><a class="catg_title"  href="HaberlerDetay.aspx?Haberid=<%#Eval("Haberid") %>"><%#Eval("HaberBaslik") %></a> </></div>
                            </div>
                    </li>
                </ItemTemplate>

            </asp:Repeater>

        </ul>
    </div>
</asp:Content>
