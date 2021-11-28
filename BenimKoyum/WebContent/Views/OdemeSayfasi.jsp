<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Odeme Sayfasi</title>

    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="../css/Urunler.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body style="background-color: #E6E6E6">
<%@ include file="Header.jsp" %>


		
		
	<div class="row" style="margin-top:200px">

				


        <div class="col-2 ">
        </div>

		
      		
        <div class="col-6 bg-white mt-2">
				
				
            <div class="row text-secondary ml-2 mt-2">
                <b>Odeme Secenekleri</b>
                <hr>
            </div>
            <div class=" mt-2 ml-2 ">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link " id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                            <div class="col-3 ">
                                <p class="px-4 ml-2 mt-2 text-secondary"><img src="../img/1338-512.png" style="width: 60px" alt=""><br>Kapida Odeme</p>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">
                            <div class="col-3">
                                <p class="px-4 ml-2 mt-2 text-secondary"><img src="../img/credit-512.png" style="width: 60px;" alt=""><br>Kredi Karti</p>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">
                            <div class="col-3">
                                <p class="px-4 ml-2 mt-2 text-secondary"><img src="../img/Donate_Dollar-512.png" style="width: 85px" alt=""><br>Havale</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show" id="home" role="tabpanel" aria-labelledby="home-tab">
                    
                   <a href="odemecontrol.jsp?tip=kapidaOdeme"> <button class="btn btn-success pos stic ml-2" style="width: 190px ;padding: 2px"><img src="../img/sepet.png" alt="" style="width: 40px;"> Siparisi Tamamla </button></a>
                    
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                        <a href="odemecontrol.jsp?tip=krediKarti"> <button class="btn btn-success pos stic ml-2" style="width: 190px ;padding: 2px"><img src="../img/sepet.png" alt="" style="width: 40px;"> Siparisi Tamamla </button></a>
                </div>
                <div class="tab-pane fade show" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                    
                    <a href="odemecontrol.jsp?tip=havale&"> <button class="btn btn-success pos stic ml-2" style="width: 190px ;padding: 2px"><img src="../img/sepet.png" alt="" style="width: 40px;"> Siparisi Tamamla </button></a>
                    
                </div>
            </div>

        </div>

 


	

        <div class="col-4 ">
            <div class=" bg-white mt-2 py-3 pl-3 pb-5 text-secondary mb-5" style="width: 300px;height:285px">
               
					
			<%
				String onay=(String)session.getAttribute("onay");
				if(onay=="true"){
			%>
				
				<div class="alert alert-success" role="alert">
 					Siparisiniz Alindi
				</div>	
				
			<%	}
			%>

					<b>Siparis Ozeti</b>
	                <hr>
	                <p>Sepet Toplami <span class="ml-5 "><%=session.getAttribute("sayac")%></span></p>
	                <p>Genel Toplam <span class="ml-5 mb-5"><%=session.getAttribute("sayac")%></span></p>
			
            </div>

        </div>
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