<%@ page language="java" import="Controller.uyeController,Model.uyeModel" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kisisel Bilgilerim</title>

    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="../css/Urunler.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>


<div class="row" style="margin-top:200px">

		<%@ include file="Header.jsp" %>

       <%@ include file="HesapAyarlari.jsp" %>
   
   		<%

		String cookieNamee = "username";
		Cookie cookiess [] = request.getCookies();
		Cookie myCookiee = null;
		if (cookiess != null){
			
			for (int i = 0; i < cookiess.length; i++){
				
				if (cookiess [i].getName().equals(cookieNamee)){
						
					myCookiee = cookiess[i];
					break;
				}
			}
			
			
				
			
			
		}
   		
   		%>
   		
        <div class="col-4 ">

            <form class="needs-validation" action="bilgiControl.jsp" novalidate>

                <div class="md mt-3 ml-5">

                    <input type="text" class="form-control" id="validationCustom01" name="ad" placeholder="Ad" value="" required>
                    <div class="valid-feedback">
                        Adinizi Giriniz
                    </div>
                </div>
                <div class="md mt-3 ml-5">

                    <input type="text" class="form-control" id="validationCustom02" name="soyad" placeholder="Soyad " required>
                    <div class="valid-feedback">
                        Soyadinizi Giriniz
                    </div>
                </div>
                <div class="md mt-3 ml-5">

                    <div class="input-group">
                        <input type="text" class="form-control" name="telefon" id="validationCustomUsername" aria-describedby="inputGroupPrepend" placeholder="Cep Telefonu" required>
                        <div class="invalid-feedback">
                            Cep Telefonunuzu Giriniz
                        </div>
                    </div>
                </div>
                <div class="form-group md mt-3 ml-5">

                    <input type="text" class="form-control" name="mail" aria-describedby="inputGroupPrepend" placeholder="Email" required>
                    <div class="invalid-feedback">
                        Email Adresinizi Giriniz
                    </div>
                </div>

                <div class=" mt ml-5 mt-3">
                    <select class="custom-select" name="sehir" id="validationCustom04" required>
                        <option selected disabled value="">sehir</option>
                        <option>samsun</option>
                        <option>istanbul</option>
                        <option>ankara</option>
                        <option>izmir</option>
                    </select>
                    <div class="invalid-feedback">
                        Sehir giriniz
                    </div>
                </div>

                <div class=" mt ml-5 mt-3">
                    <select class="custom-select" id="validationCustom04" name="ilce" required>
                        <option selected disabled value="">ilce</option>
                        <option>ilkadim</option>
                        <option>atakum</option>
                        <option>canik</option>
                        
                    </select>
                    <div class="invalid-feedback">
                        İlce giriniz
                    </div>
                </div>
                <div class="form-group md mt-3 ml-5">

                    <input type="text" class="form-control" aria-describedby="inputGroupPrepend" name="adres" placeholder="Adres" required >
                    <div class="invalid-feedback">
                        Adres Giriniz
                    </div>
                </div>


                <button class="btn bg-secondary btn-lg btn-block mt-5 ml-4 mb-4" type="submit" style="color: white">Guncelle</button>
            </form>



        </div>



        <div class="col-2 "></div>

    </div>
<%@ include file="Footer.jsp" %>
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