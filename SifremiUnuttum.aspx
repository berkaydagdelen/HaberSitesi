<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SifremiUnuttum.aspx.cs" Inherits="SifremiUnuttum" %>

<!doctype html>
<html lang="en">
<head>
    <title>Giriş</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="loginGiris/css/style.css">


    <script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#TxtTcNo').keydown(function (e) {
                if (e.shiftKey || e.ctrlKey || e.altKey) {
                    e.preventDefault();
                } else {
                    var key = e.keyCode;
                    if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                        e.preventDefault();
                    }
                }
            });
        });
    </script>

    <style>

        .btn {
            cursor: pointer;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            font-size: 15px;
            padding: 10px 20px;
        }

            .btn:hover, .btn:active, .btn:focus {
                outline: none;
            }

            .btn.btn-primary {
                background: #d083cf !important;
                border: 1px solid #d083cf !important;
                color: #fff !important;
            }

                .btn.btn-primary:hover {
                    border: 1px solid #d083cf;
                    background: transparent;
                    color: #d083cf;
                }

                .btn.btn-primary.btn-outline-primary {
                    border: 1px solid #d083cf;
                    background: transparent;
                    color: #d083cf;
                }

                    .btn.btn-primary.btn-outline-primary:hover {
                        border: 1px solid transparent;
                        background: #d083cf;
                        color: #fff;
                    }


           .form-control:focus, .form-control:active {
            outline: none !important;
            -webkit-box-shadow: none;
            box-shadow: none;
            border: 1px solid #d083cf;
        }


    </style>


</head>
<body>
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center">
            </div>
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10">
                    <div class="wrap d-md-flex">


                        <asp:Repeater ID="Repeater13" runat="server">
                            <ItemTemplate>


                                <a href="Login.aspx" class="logo">

                                    <img src="<%#Eval("Logo") %>" class="img" style="width: 300px; height: 70px; margin-top: 150px; margin-left: 50px" alt="">
                                </a>

                            </ItemTemplate>
                        </asp:Repeater>

                        <div class="login-wrap p-4 p-md-5">
                            <div class="d-flex">
                                <div class="w-100">
                                    <h3 class="mb-4">ŞİFREMİ UNUTTUM</h3>
                                </div>




                            </div>
                            <form runat="server" action="#" class="signin-form">

                                <div class="form-group mb-3">
                                    <label class="label" for="TxtTcNo">T.C. KİMLİK NO</label>

                                    <asp:TextBox ID="TxtTcNo" type="text" class="form-control" placeholder="T.C. Kimlik No" runat="server" MaxLength="11"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                                        ControlToValidate="TxtTcNo"
                                        ErrorMessage="T.C. Girmediniz."
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                    <%--min max karakter--%>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TxtTcNo" ForeColor="Red" runat="server" ErrorMessage="Lütfen T.C. No'sunu Doğru Giriniz." ValidationExpression=".{11}.*" ></asp:RegularExpressionValidator>


                                </div>
                                <div class="form-group">
                                    <asp:Button ID="BtnGiris" runat="server" type="submit" class="form-control btn btn-primary rounded submit px-3" Text="Şifreyi Sıfırla" OnClick="BtnGiris_Click"  />
                                </div>
                                <div class="form-group d-md-flex">
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="loginGiris/js/jquery.min.js"></script>
    <script src="loginGiris/js/popper.js"></script>
    <script src="loginGiris/js/bootstrap.min.js"></script>
    <script src="loginGiris/js/main.js"></script>



</body>
</html>