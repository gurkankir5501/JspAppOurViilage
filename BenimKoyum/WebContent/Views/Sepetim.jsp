<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="Model.urunModel,java.util.*,Controller.urunController" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sepetim</title>

    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="../css/Urunler.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body style="background-image: url(../img/dogal.png)">
		
		
		<%@ include file="Header.jsp" %>
		
		
		<% 
				String oturum = (String)session.getAttribute("session");

		%>
		
		
		
		
		<%
				String urk=request.getParameter("urunk");
				if(urk!=null){
					
					int sepetUrunSil=Integer.valueOf(urk);
					List<urunModel> sepetim= (List<urunModel>)session.getAttribute("sepet");
					if(sepetim!=null){
						
						for(urunModel u:sepetim){
							
							if(u.getUrunKodu()==sepetUrunSil){
								
								sepetim.remove(u);
								break;
							}
						}
						
						session.setAttribute("sepet", sepetim);
					}
				}
				
					
					List<urunModel> sepetim= (List<urunModel>)session.getAttribute("sepet");
				
				
				
				if(oturum==null){
					
					sepetim=null;
				}
		
		%>
		
		<div class="row mx-auto" style="width: 100%;margin-top:200px">


        <div class="col-2 ">

        </div>
        
        
      
					<%int sayac=0; %>

        <div class="col-7 ">
			
			<%
            	if(sepetim==null){
            		%>
            		
            		<div class="alert alert-danger" role="alert">
 						 Urun Bulunmamaktadir
					</div>
            		
            	<%}
            	else{
            		
            		
            			
            			
            			for(urunModel urun:sepetim){

            				 	%>
                    			
                            	<div class="m-2 ml-5 ">
                                <div class="card mt-2 ml-4 mb-3 " style="width: 14rem;float: left">
                                    <img src="../img/<%=urun.getFotograf() %>" class="card-img-top" style="height: 150px" alt="...">
                                    <div class="card-body">
                                        <h5 class="card-title"><%=urun.getUrunAdi() %> </h5>
                                        <span class="border-bottom text-dark float-left" style="font-size: 30px"><%=urun.getUrunFiyat()%> <img src="../img/turk-lirasi-sembol.png" style="height: 15px" alt="">
                                        </span>
                                        <div class="row  mt-3">

												  
                                        </div>
											<a href="Sepetim.jsp?urunk=<%=urun.getUrunKodu()%>"><button class="btn btn-danger float-right stic ml-2" style="width: 100px ;padding: 2px"><img src="../img/sepet.png" alt="" style="width: 30px;"> Sil</button></a>
                                    </div>
                                    
                                </div>
									
                            </div>
                           <%
                           sayac=sayac+urun.getUrunFiyat();
            				}
            			session.setAttribute("sayac",sayac);
            			}
            %>
				
				
            
				
        </div>

  

        <div class="col-3 ">



            <div class="row bg-white m-2 p-3 text-secondary">
                <b>Sepet Toplami</b>
                <hr>
                <p>Sepet Toplami <span class="ml-5"><%=sayac %> TL</span></p>
                <p>Genel Toplam <span class="ml-5"><%=sayac %> TL</span></p>

            </div>
			
			<%if(sayac!=0){
				%>
				<a href="OdemeSayfasi.jsp"><button class="btn btn-success  stic ml-2" style="width: 170px ;padding: 2px"><img src="../img/sepet.png" alt="" style="width: 30px;"> Satin Al</button> </a>
				
				
			<%}
			else{
				%>
				<button class="btn btn-danger  stic ml-2" style="width: 170px ;padding: 2px"><img src="../img/sepet.png" alt="" style="width: 30px;"> Satin Al</button> 
	<%		}
			%>
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