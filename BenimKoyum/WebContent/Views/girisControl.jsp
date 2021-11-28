<%@page import ="Model.uyeModel,Controller.uyeController"  %>

<%

	String kullaniciAdi=request.getParameter("kullaniciAdi");
	String sifre=request.getParameter("sifre");

	uyeModel uModel=new uyeModel(kullaniciAdi,sifre);
	uyeController uye=new uyeController();
	boolean result=uye.control(uModel);
	if(result) {
	 
		 session.setAttribute("session","true");
		 Cookie cookie = new Cookie("username",kullaniciAdi);
		 cookie.setMaxAge(60 * 60 * 24);
         response.addCookie(cookie);
		 response.sendRedirect("Home.jsp");
	 		
	}
	else {
	 	
		
		Cookie cookie = new Cookie("username","false");
		cookie.setMaxAge(60 * 60 * 24);
        response.addCookie(cookie);
		session.setAttribute("session","false");
		response.sendRedirect("uyeGiris.jsp");
	 
	}

%>