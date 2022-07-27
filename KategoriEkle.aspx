<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="KategoriEkle.aspx.cs" Inherits="KategoriEkle" %>

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
                                <h3 class="card-title">Kategori Oluştur </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            
                                <div class="card-body">



                                    <div class="form-group">
                                        <label for="TxtBaslik">Kategori Ekle</label>

                                        <asp:TextBox ID="TxtKategori" class="form-control" placeholder="Kategori Ekle" runat="server"></asp:TextBox>

                                    </div>




                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Üst Kategori Oluştur" OnClick="Button1_Click" />

                                    <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="Alt Kategori Oluştur" OnClick="Button2_Click"  />


                                </div>
                            
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

