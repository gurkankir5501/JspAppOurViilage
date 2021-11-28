
 <%@page import ="Controller.urunController,Model.urunModel,java.util.*"%>
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
		 				
		 				String id="Home.jsp#"+uk;
		 				response.sendRedirect(id);
 %>