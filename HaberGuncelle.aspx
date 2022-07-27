<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="HaberGuncelle.aspx.cs" Inherits="HaberGuncelle" %>

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
                                <h3 class="card-title">Haber Güncelle </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form role="form" id="quickForm">
                                <div class="card-body">



                                    <div class="form-group">
                                        <label for="TxtBaslik">Haber Baslik</label>

                                        <asp:TextBox ID="TxtBaslik" class="form-control" placeholder="Haber Baslik" runat="server"></asp:TextBox>

                                    </div>

                                    <div class="form-group">
                                        <label for="Txticerik">Haber İçerik</label>

                                        <asp:TextBox ID="Txticerik" class="form-control" placeholder="Haber İçerik" runat="server" Height="250px" TextMode="MultiLine"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="TxtAlticerik">Haber Alt İçerik</label>

                                        <asp:TextBox ID="TxtAlticerik" class="form-control" placeholder="Haber Alt İçerik" runat="server" Height="200px" TextMode="MultiLine"></asp:TextBox>

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


                                        <label for="FileUpload1">RESİM</label>

                                        <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />

                                    </div>






                                    <div class="form-group">

                                        <label for="DropDownList1">Haber Kategori</label>
                                        <asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>


                                    </div>



                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer">

                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Güncelle" OnClick="Button1_Click" />
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

