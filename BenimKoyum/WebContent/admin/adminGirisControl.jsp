<%@page import ="Model.yoneticiModel,Controller.yoneticiController"  %>

<%

	String kullaniciAdi=request.getParameter("kullaniciAdi");
	String sifre=request.getParameter("sifre");

	yoneticiModel uModel=new yoneticiModel(kullaniciAdi,sifre);
	yoneticiController yoneticiControl=new yoneticiController();
	boolean result=yoneticiControl.control(uModel);
	if(result) {
	 
		 session.setAttribute("adminSession","true");
		 
		 response.sendRedirect("adminpanel.jsp");
	 		
	}
	else {
	 	
		
		
		session.setAttribute("adminSession","false");
		response.sendRedirect("adminGiris.jsp");
	 
	}

%>