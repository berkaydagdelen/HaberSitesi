<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="AdminSponsor.aspx.cs" Inherits="AdminSponsor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <!-- Site wrapper -->
    <div class="wrapper">
        <!-- Navbar -->

        <!-- /.navbar -->

        <!-- Main Sidebar Container -->


        <!-- Content Wrapper. Contains page content -->
        <div class="wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">

                    <!-- jquery validation -->
                    <div class="card card-primary" style="width: 150px">
                        <div class="card-header">
                            <h3 class="card-title " style="margin-left: 20px">Sponsor </h3>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">

                <!-- Default box -->
                <div class="card card-solid">
                    <div class="card-body">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>

                                <div class="row">
                                    <div class="col-12 col-sm-6">
                                        <br />



                                        <div class="col-12">
                                            <img src="<%#Eval("SponsorResim") %>" class="product-image" alt="Product Image">
                                        </div>

                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <br />
                                        <br />

                                        <p><%#Eval("Sponsor") %> </p>

                                        <hr>

                                        <asp:HyperLink ID="HyperLink1" class="btn btn-success" NavigateUrl='<%#"~/SponsorGuncelle.aspx?Sponsorid="+Eval("Sponsorid") %>' runat="server">Güncelle</asp:HyperLink>

                                    </div>
                                </div>



                            </ItemTemplate>

                        </asp:Repeater>

                        <br />
                        <div style="margin-left: 590px">


                            <%-- <asp:Button ID="Button1" class="btn btn-success  btn-lg " runat="server" Text="Güncelle" OnClick="Button1_Click" />--%>
                        </div>

                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->




    </div>
    <!-- ./wrapper -->


</asp:Content>

