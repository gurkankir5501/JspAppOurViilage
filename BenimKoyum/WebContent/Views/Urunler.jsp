<%@ page language="java" import="Model.urunModel,java.util.*,Controller.urunController" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Controller.kategoriController,Model.kategoriModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> urunler </title>
<link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="../css/Urunler.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>

<body class=".bg-light">

		<%@ include file="Header.jsp" %>
	
    	<%@ include file="AnaMenu.jsp" %>
    	
    	
 				<%		
 						
 						String uk=request.getParameter("urunKodu");
		 				String urunFotograf=request.getParameter("urunFotograf");
		 				String urunAd=request.getParameter("urunAdi");
		 				String uf=request.getParameter("urunFiyati");
						
		 				if((uk!=null) && (urunFotograf!=null) && (urunAd!=null) && (uf!=null)){
		 					
		 					int urunKodu=Integer.valueOf(uk);
			 				int urunFiyati=Integer.valueOf(uf);
	 						List<urunModel> sepetim= (List<urunModel>)session.getAttribute("sepet");
	 						if(sepetim==null){
	 							
	 							sepetim=new ArrayList<>();
	 							
	 						}
	 						
	 						urunModel sepetUrun=new urunModel(urunKodu,urunFotograf,urunAd,urunFiyati);
		 					sepetim.add(sepetUrun);
		 					session.setAttribute("sepet",sepetim);
		 				}
		 				
		 				
 						
 				%>
    	
    	
    <div class="row" style="margin-top:200px">

    
        
		<div class="col-3"></div>
        
		

       
        <div class="col-7 ">

            <nav class="mt-1 bg-white pl-2 ml-2" style="height: 30px">

                <li class="breadcrumb-item float-left"><a href="Home.jsp" class="ab text-secondary">Anasayfa</a></li>
                <li class="breadcrumb-item active float-left" aria-current="page">Yeni Urunler</li>

            </nav>
				
            <%
    		String veri=request.getParameter("k");
    		if(veri!=null){
    			
    			int kategoriKodu=Integer.valueOf(veri);
        		urunController kategori=new urunController();	
        		List<urunModel> urunler= kategori.readingData();
        		
        		
        		for(urunModel urun:urunler){
					
        			
        			if(urun.getKategoriKodu()==kategoriKodu){
        				
        				
        				%>
    					<div class="card mt-2 ml-4 mb-3 hover12" style="width: 16rem;float: left">
                        <img src="../img/<%=urun.getFotograf() %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%=urun.getUrunAdi() %></h5>
                       
                            <span><%=urun.getUrunFiyat() %></span>
                            <a href="Urunler.jsp?urunKodu=<%=urun.getUrunKodu()%>&urunFotograf=<%=urun.getFotograf()%>&urunAdi=<%=urun.getUrunAdi()%>&urunFiyati=<%=urun.getUrunFiyat()%>&k=<%=kategoriKodu%>" class="btn btn-success float-right"><span><img src="../img/sepet.png" alt="" style="width: 25px" class="mr-1"></span>Sepete Ekle</a>
                        </div>
                    </div>
    				<%
        			}
        		}
        		
        		
    		}
    		else if(veri==null){
    		%>	
    			
    			<div class="alert alert-success" role="alert">
				  ürün Bulunmamaktadir
			</div>
    			
    		<%}
    		
    	%>
				
						
							
							

			

        <div class="col-2 "></div>

    </div>

	 </div>
    	
    	
    		
		
			<%@ include file="Footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>