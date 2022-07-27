<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="KategoriListesi.aspx.cs" Inherits="KategoriListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">






    <!-- Content Wrapper. Contains page content -->
    <div class="wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                    </div>

                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="card">
                <div class="card card-primary">


                    <div class="card-header">
                        <h3 class="card-title">Kategori Listesi </h3>
                    </div>



                </div>
                <asp:Button ID="Button1" CssClass="btn-danger" Style="width: 150px; float: left;" runat="server" Text="Üst Kategori" OnClick="Button1_Click" />
               
                <asp:Button ID="Button2" CssClass="btn-primary" Style="width: 150px; float: right; margin-top:2px" runat="server" Text="Alt Kategori" OnClick="Button2_Click" />
                <!-- /.card-header -->
                <div class="card-body">
                    <div id="jsGrid1">

                        <table class="table table-bordered table-hover ">

                            <tr>
                                <th scope="col">İD</th>
                                <th scope="col">HABER BAŞLIK</th>
                                <th scope="col">İŞLEMLER</th>



                            </tr>

                            <tbody>

                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr>

                                            <td><%#Eval("HaberKategoriid") %> </td>
                                            <td><%#Eval("HaberKategoriAd") %></td>


                                            <td>
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/KategoriSil.aspx?HaberKategoriid="+Eval("HaberKategoriid") %>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                                                &nbsp;
                                               <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/KategoriGuncelle.aspx?HaberKategoriid="+Eval("HaberKategoriid") %>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>



                                            </td>


                                        </tr>

                                    </ItemTemplate>

                                </asp:Repeater>




                            </tbody>
                        </table>




                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- Control Sidebar -->

    <!-- /.control-sidebar -->

    <!-- ./wrapper -->








</asp:Content>
