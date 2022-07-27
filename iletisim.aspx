<%@ Page Title="" Language="C#" MasterPageFile="~/haberler.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <div class="contact_area">
        <h2>İLETİŞİM</h2>


        <form action="#" runat="server" class="contact_form">
            <%--    <input class="form-control" type="text" placeholder="Name*">
            <input class="form-control" type="email" placeholder="Email*">
            <textarea class="form-control" cols="30" rows="10" placeholder="Message*"></textarea>


                                            <input type="submit" value="Send Message">--%>

            <asp:TextBox ID="iletisimAdSoyad" class="form-control" type="text" placeholder="Ad Soyad*" runat="server"></asp:TextBox>
            <asp:TextBox ID="İletisimMail" class="form-control" type="Email" placeholder="Email*" runat="server"></asp:TextBox>
            <asp:TextBox ID="iletisimBaslik" class="form-control" type="text" placeholder="Başlik*" runat="server"></asp:TextBox>
            <asp:TextBox ID="iletisimMesaj" class="form-control" placeholder="Mesaj*" runat="server" Height="250px" TextMode="MultiLine" Width="710px"></asp:TextBox>



            <asp:Button ID="Button1" runat="server" Text="Mesaj Gönder" OnClick="Button1_Click" />
        </form>
    </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>

