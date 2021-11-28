<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>uye kayit</title>

    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>

<body style="background-color: #f2f2f2">

    <div class="row " style="width: 100%">
        <div class="col-4"></div>
        <div class="col-4 bg-white py-3 my-3">

            <div style="background-color: white">
                <div class="mb-5 order-bottom">
                    <a href="Home.jsp"><img src="../img/gk.jpg" class="img6 trans1 b" alt=""></a>

                </div>
				
                <div style="margin-left: 150px;margin-top: 150px">
                    <p>Hesabinizi Olusturun <br> Hesabiniz Var Mi?<a href="uyeGiris.jsp" class="ab ml-1" style="color: #985634">Giris Yapin</a></p>

                </div>
              
  
                	<%
                		String kayit = (String)session.getAttribute("kayit");
 						 if(kayit=="true"){
 							
 							
 					%>
 							<div class="alert alert-danger mx-3"  role="alert">
 	      					Kullanici Kayitli
 	    				</div>
 					<% }else if(kayit=="false"){
 					%>
 							<div class="alert alert-success mx-3"  role="alert">
 	      					Kayit Tamamlandi
 	    				</div>
 					<%	
 						}
					%>
              
                <div style="margin-top: px;" class="p-3 mb-3">
                
                
                    <form class="needs-validation " action="kayitControl.jsp" novalidate>

                        <div class="md mt-3">

                            <input type="text" class="form-control" id="validationCustom01" name="ad" placeholder="Ad " required>
                            <div class="valid-feedback">
                                Adinizi Giriniz
                            </div>
                        </div>
                        <div class="md mt-3">

                            <input type="text" class="form-control" id="validationCustom02" name="soyad" placeholder="Soyad " required>
                            <div class="valid-feedback">
                                Soyadinizi Giriniz
                            </div>
                        </div>
                        <div class="md mt-3">

                            <div class="input-group">
                                <input type="text" class="form-control" id="validationCustomUsername" name="kullaniciAdi" aria-describedby="inputGroupPrepend" placeholder="Kullanici Adi" required>
                                <div class="invalid-feedback">
                                    Kullanici Adinizi Giriniz
                                </div>
                            </div>
                        </div>
                        <div class="form-group md mt-3">

                            <input type="text" class="form-control" aria-describedby="inputGroupPrepend" name="eMail" placeholder="Email" required>
                            <div class="invalid-feedback">
                                Email Adresinizi Giriniz
                            </div>
                        </div>
                        <div class="form-group md">

                            <input type="password" class="form-control" aria-describedby="inputGroupPrepend" name="sifre" placeholder="Sifre" required>
                            <div class="invalid-feedback">
                                Sifrenizi Giriniz
                            </div>
                        </div>

                        

                        <button class="btn bg-secondary btn-lg btn-block mt-5 ml-1 mb-4" type="submit" style="color: white">Kayit Ol</button>
                    </form>


                </div>

            </div>
        </div>
        <div class="col-4"></div>
    </div>




    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script>
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();

    </script>
</body>

</html>