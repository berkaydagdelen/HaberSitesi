<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="HaberListesiAyrinti.aspx.cs" Inherits="HaberListesiAyrinti" %>

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
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">
                        <!-- jquery validation -->
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Haber Ayrıntı </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">

                                    <div class="form-group">
                                        <label for="Txtid">Haber id</label>

                                        <asp:TextBox ID="Txtid" CssClass="form-control"   runat="server" Enabled="False"></asp:TextBox>
                                        

                                    </div>


                                    <div class="form-group">
                                        <label for="TxtBaslik">Haber Baslik</label>

                                        <asp:TextBox ID="TxtBaslik" CssClass="form-control" runat="server" Enabled="False"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="Txticerik">Haber İçerik</label>

                                        <asp:TextBox ID="Txticerik" CssClass="form-control" runat="server" Height="250px"  TextMode="MultiLine"  Enabled="False"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtAlticerik">Haber Alt İçerik</label>

                                        <asp:TextBox ID="TxtAlticerik" CssClass="form-control"  runat="server" Height="200px" TextMode="MultiLine"  Enabled="False"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="Image1">Haber Resim</label>
                                        <br />
                                        <br />
                                        <asp:Image ID="Image1" Style="width: 350px; height: 400px;" runat="server" />

                                    </div>



                                    <br />
                                    <br />



                                    <div class="form-group">
                                        <label for="TxtKategori">Haber Kategori</label>

                                        <asp:TextBox ID="TxtKategori" CssClass="form-control"  runat="server" Enabled="False" ></asp:TextBox>

                                    </div>



                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="BtnSil" runat="server" class="btn btn-danger" Text="SİL" OnClick="BtnSil_Click" />
                                    <asp:Button ID="BtnGuncelle" runat="server" class="btn btn-success" Text="GÜNCELLE" OnClick="BtnGuncelle_Click" />
                                    <asp:Button ID="BtnPopuler" runat="server" class="btn btn-primary" Text="POPÜLER YAP" OnClick="BtnPopuler_Click" />



                                </div>
                            </form>

                        </div>
                        <!-- /.card -->
                    </div>
                    <!--/.col (left) -->
                    <!-- right column -->

                    <!--/.col (right) -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->





</asp:Content>

