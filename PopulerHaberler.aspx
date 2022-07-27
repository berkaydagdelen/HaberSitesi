<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="PopulerHaberler.aspx.cs" Inherits="PopulerHaberler" %>

<%--<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>--%>

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
                        <h3 class="card-title">Popüler Haberler </h3>
                    </div>

                </div>
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

                                            <td><%#Eval("Haberid") %> </td>
                                            <td><%#Eval("HaberBaslik") %></td>


                                            <td>

                                                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/PopulerHaberiptal.aspx?Haberid="+Eval("Haberid") %>' CssClass="btn btn-danger"  runat="server">İPTAL ET</asp:HyperLink>


                                             <%--   <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="İPTAL ET" />--%>


                                            </td>



                                        </tr>

                                    </ItemTemplate>

                                </asp:Repeater>




                            </tbody>
                        </table>
                        <div class="float-right">
                            <!-- /.btn-group -->
                        </div>



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

    <%--<div class="float-right">
        <cc1:CollectionPager ID="CollectionPager1" runat="server" PageSize="15" SliderSize="10" ControlCssClass="Sayfalama" ResultsLocation="None" QueryStringKey="Sayfa" BackText="« Geri" LabelText="" NextText="İleri»"></cc1:CollectionPager>
        <!-- /.btn-group -->
    </div>--%>






</asp:Content>

